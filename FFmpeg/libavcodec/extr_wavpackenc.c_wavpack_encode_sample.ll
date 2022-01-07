; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_wavpack_encode_sample.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_wavpack_encode_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, i32)* @wavpack_encode_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wavpack_encode_sample(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %93

31:                                               ; preds = %3
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %93, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %93

48:                                               ; preds = %37
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = call i32 @encode_flush(%struct.TYPE_8__* %57)
  br label %64

59:                                               ; preds = %53
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %279

64:                                               ; preds = %56
  br label %92

65:                                               ; preds = %48
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = call i32 @put_bits(i32* %70, i32 1, i32 0)
  br label %91

72:                                               ; preds = %65
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @CLEAR(i32* %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 5
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @CLEAR(i32* %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  br label %279

91:                                               ; preds = %68
  br label %92

92:                                               ; preds = %91, %64
  br label %93

93:                                               ; preds = %92, %37, %31, %3
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %6, align 4
  %98 = xor i32 %97, -1
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @GET_MED(i32 0)
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %104 = call i32 @GET_MED(i32 0)
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  %106 = call i32 @DEC_MED(i32 0)
  br label %157

107:                                              ; preds = %99
  %108 = call i32 @GET_MED(i32 0)
  store i32 %108, i32* %9, align 4
  %109 = call i32 @INC_MED(i32 0)
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %9, align 4
  %112 = sub nsw i32 %110, %111
  %113 = call i32 @GET_MED(i32 1)
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %107
  store i32 1, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @GET_MED(i32 1)
  %118 = add nsw i32 %116, %117
  %119 = sub nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  %120 = call i32 @DEC_MED(i32 1)
  br label %156

121:                                              ; preds = %107
  %122 = call i32 @GET_MED(i32 1)
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %9, align 4
  %125 = call i32 @INC_MED(i32 1)
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %9, align 4
  %128 = sub nsw i32 %126, %127
  %129 = call i32 @GET_MED(i32 2)
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %121
  store i32 2, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @GET_MED(i32 2)
  %134 = add nsw i32 %132, %133
  %135 = sub nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  %136 = call i32 @DEC_MED(i32 2)
  br label %155

137:                                              ; preds = %121
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %9, align 4
  %140 = sub nsw i32 %138, %139
  %141 = call i32 @GET_MED(i32 2)
  %142 = sdiv i32 %140, %141
  %143 = add nsw i32 2, %142
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = sub nsw i32 %144, 2
  %146 = call i32 @GET_MED(i32 2)
  %147 = mul nsw i32 %145, %146
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @GET_MED(i32 2)
  %152 = add nsw i32 %150, %151
  %153 = sub nsw i32 %152, 1
  store i32 %153, i32* %10, align 4
  %154 = call i32 @INC_MED(i32 2)
  br label %155

155:                                              ; preds = %137, %131
  br label %156

156:                                              ; preds = %155, %115
  br label %157

157:                                              ; preds = %156, %103
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %184

162:                                              ; preds = %157
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %165, %162
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %172 = call i32 @encode_flush(%struct.TYPE_8__* %171)
  %173 = load i32, i32* %8, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  store i32 1, i32* %177, align 8
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %8, align 4
  br label %183

180:                                              ; preds = %170
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  store i32 0, i32* %182, align 8
  br label %183

183:                                              ; preds = %180, %175
  br label %187

184:                                              ; preds = %157
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  store i32 1, i32* %186, align 8
  br label %187

187:                                              ; preds = %184, %183
  %188 = load i32, i32* %8, align 4
  %189 = mul nsw i32 %188, 2
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %261

195:                                              ; preds = %187
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* %9, align 4
  %198 = sub nsw i32 %196, %197
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* %9, align 4
  %201 = sub nsw i32 %199, %200
  store i32 %201, i32* %13, align 4
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @count_bits(i32 %202)
  store i32 %203, i32* %14, align 4
  %204 = load i32, i32* %14, align 4
  %205 = shl i32 1, %204
  %206 = load i32, i32* %12, align 4
  %207 = sub nsw i32 %205, %206
  %208 = sub nsw i32 %207, 1
  store i32 %208, i32* %15, align 4
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %15, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %228

212:                                              ; preds = %195
  %213 = load i32, i32* %13, align 4
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = shl i32 %213, %216
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 4
  %222 = load i32, i32* %14, align 4
  %223 = sub nsw i32 %222, 1
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, %223
  store i32 %227, i32* %225, align 8
  br label %260

228:                                              ; preds = %195
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %15, align 4
  %231 = add nsw i32 %229, %230
  %232 = ashr i32 %231, 1
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = shl i32 %232, %235
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 4
  %241 = load i32, i32* %14, align 4
  %242 = sub nsw i32 %241, 1
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = add nsw i32 %245, %242
  store i32 %246, i32* %244, align 8
  %247 = load i32, i32* %13, align 4
  %248 = load i32, i32* %15, align 4
  %249 = add nsw i32 %247, %248
  %250 = and i32 %249, 1
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 8
  %255 = shl i32 %250, %253
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 4
  br label %260

260:                                              ; preds = %228, %212
  br label %261

261:                                              ; preds = %260, %187
  %262 = load i32, i32* %11, align 4
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 8
  %267 = shl i32 %262, %265
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 4
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %261
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %278 = call i32 @encode_flush(%struct.TYPE_8__* %277)
  br label %279

279:                                              ; preds = %59, %72, %276, %261
  ret void
}

declare dso_local i32 @encode_flush(%struct.TYPE_8__*) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @CLEAR(i32*) #1

declare dso_local i32 @GET_MED(i32) #1

declare dso_local i32 @DEC_MED(i32) #1

declare dso_local i32 @INC_MED(i32) #1

declare dso_local i32 @count_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
