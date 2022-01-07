; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_write_decoding_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_write_decoding_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__*, %struct.TYPE_9__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@PARAMS_DEFAULT = common dso_local global i32 0, align 4
@PARAM_PRESENCE_FLAGS = common dso_local global i32 0, align 4
@PARAM_BLOCKSIZE = common dso_local global i32 0, align 4
@PARAM_MATRIX = common dso_local global i32 0, align 4
@PARAM_OUTSHIFT = common dso_local global i32 0, align 4
@PARAM_QUANTSTEP = common dso_local global i32 0, align 4
@PARAM_FIR = common dso_local global i32 0, align 4
@FIR = common dso_local global i32 0, align 4
@PARAM_IIR = common dso_local global i32 0, align 4
@IIR = common dso_local global i32 0, align 4
@PARAM_HUFFOFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*, i32)* @write_decoding_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_decoding_params(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %7, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %8, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %9, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PARAMS_DEFAULT, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PARAM_PRESENCE_FLAGS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @put_bits(i32* %31, i32 1, i32 1)
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @put_bits(i32* %33, i32 8, i32 %36)
  br label %41

38:                                               ; preds = %25, %3
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @put_bits(i32* %39, i32 1, i32 0)
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PARAM_BLOCKSIZE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @PARAM_BLOCKSIZE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @put_bits(i32* %54, i32 1, i32 1)
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @put_bits(i32* %56, i32 9, i32 %59)
  br label %64

61:                                               ; preds = %48
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @put_bits(i32* %62, i32 1, i32 0)
  br label %64

64:                                               ; preds = %61, %53
  br label %65

65:                                               ; preds = %64, %41
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @PARAM_MATRIX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @PARAM_MATRIX, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @put_bits(i32* %78, i32 1, i32 1)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @write_matrix_params(%struct.TYPE_11__* %80, i32* %81)
  br label %86

83:                                               ; preds = %72
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @put_bits(i32* %84, i32 1, i32 0)
  br label %86

86:                                               ; preds = %83, %77
  br label %87

87:                                               ; preds = %86, %65
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @PARAM_OUTSHIFT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %126

94:                                               ; preds = %87
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @PARAM_OUTSHIFT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %94
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @put_bits(i32* %100, i32 1, i32 1)
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %118, %99
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ule i32 %103, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %102
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @put_sbits(i32* %109, i32 4, i32 %116)
  br label %118

118:                                              ; preds = %108
  %119 = load i32, i32* %10, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %102

121:                                              ; preds = %102
  br label %125

122:                                              ; preds = %94
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @put_bits(i32* %123, i32 1, i32 0)
  br label %125

125:                                              ; preds = %122, %121
  br label %126

126:                                              ; preds = %125, %87
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @PARAM_QUANTSTEP, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %165

133:                                              ; preds = %126
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @PARAM_QUANTSTEP, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %161

138:                                              ; preds = %133
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @put_bits(i32* %139, i32 1, i32 1)
  store i32 0, i32* %10, align 4
  br label %141

141:                                              ; preds = %157, %138
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp ule i32 %142, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %141
  %148 = load i32*, i32** %5, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @put_bits(i32* %148, i32 4, i32 %155)
  br label %157

157:                                              ; preds = %147
  %158 = load i32, i32* %10, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %141

160:                                              ; preds = %141
  br label %164

161:                                              ; preds = %133
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @put_bits(i32* %162, i32 1, i32 0)
  br label %164

164:                                              ; preds = %161, %160
  br label %165

165:                                              ; preds = %164, %126
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %276, %165
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp ule i32 %170, %173
  br i1 %174, label %175, label %279

175:                                              ; preds = %169
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = load i32, i32* %10, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i64 %180
  store %struct.TYPE_13__* %181, %struct.TYPE_13__** %11, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = and i32 %184, 15
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %272

187:                                              ; preds = %175
  %188 = load i32*, i32** %5, align 8
  %189 = call i32 @put_bits(i32* %188, i32 1, i32 1)
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @PARAM_FIR, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %213

196:                                              ; preds = %187
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @PARAM_FIR, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %196
  %202 = load i32*, i32** %5, align 8
  %203 = call i32 @put_bits(i32* %202, i32 1, i32 1)
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %205 = load i32*, i32** %5, align 8
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* @FIR, align 4
  %208 = call i32 @write_filter_params(%struct.TYPE_11__* %204, i32* %205, i32 %206, i32 %207)
  br label %212

209:                                              ; preds = %196
  %210 = load i32*, i32** %5, align 8
  %211 = call i32 @put_bits(i32* %210, i32 1, i32 0)
  br label %212

212:                                              ; preds = %209, %201
  br label %213

213:                                              ; preds = %212, %187
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @PARAM_IIR, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %237

220:                                              ; preds = %213
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* @PARAM_IIR, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %220
  %226 = load i32*, i32** %5, align 8
  %227 = call i32 @put_bits(i32* %226, i32 1, i32 1)
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %229 = load i32*, i32** %5, align 8
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @IIR, align 4
  %232 = call i32 @write_filter_params(%struct.TYPE_11__* %228, i32* %229, i32 %230, i32 %231)
  br label %236

233:                                              ; preds = %220
  %234 = load i32*, i32** %5, align 8
  %235 = call i32 @put_bits(i32* %234, i32 1, i32 0)
  br label %236

236:                                              ; preds = %233, %225
  br label %237

237:                                              ; preds = %236, %213
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @PARAM_HUFFOFFSET, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %261

244:                                              ; preds = %237
  %245 = load i32, i32* %6, align 4
  %246 = load i32, i32* @PARAM_HUFFOFFSET, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %244
  %250 = load i32*, i32** %5, align 8
  %251 = call i32 @put_bits(i32* %250, i32 1, i32 1)
  %252 = load i32*, i32** %5, align 8
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @put_sbits(i32* %252, i32 15, i32 %255)
  br label %260

257:                                              ; preds = %244
  %258 = load i32*, i32** %5, align 8
  %259 = call i32 @put_bits(i32* %258, i32 1, i32 0)
  br label %260

260:                                              ; preds = %257, %249
  br label %261

261:                                              ; preds = %260, %237
  %262 = load i32*, i32** %5, align 8
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @put_bits(i32* %262, i32 2, i32 %265)
  %267 = load i32*, i32** %5, align 8
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @put_bits(i32* %267, i32 5, i32 %270)
  br label %275

272:                                              ; preds = %175
  %273 = load i32*, i32** %5, align 8
  %274 = call i32 @put_bits(i32* %273, i32 1, i32 0)
  br label %275

275:                                              ; preds = %272, %261
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %10, align 4
  %278 = add i32 %277, 1
  store i32 %278, i32* %10, align 4
  br label %169

279:                                              ; preds = %169
  ret void
}

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @write_matrix_params(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @put_sbits(i32*, i32, i32) #1

declare dso_local i32 @write_filter_params(%struct.TYPE_11__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
