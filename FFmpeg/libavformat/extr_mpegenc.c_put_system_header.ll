; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegenc.c_put_system_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegenc.c_put_system_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_12__**, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_14__ = type { i32 }

@SYSTEM_HEADER_START_CODE = common dso_local global i32 0, align 4
@VIDEO_ID = common dso_local global i32 0, align 4
@AUDIO_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*, i32)* @put_system_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_system_header(%struct.TYPE_16__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @init_put_bits(%struct.TYPE_14__* %12, i32* %21, i32 128)
  %23 = load i32, i32* @SYSTEM_HEADER_START_CODE, align 4
  %24 = call i32 @put_bits32(%struct.TYPE_14__* %12, i32 %23)
  %25 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 16, i32 0)
  %26 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 1)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 22, i32 %29)
  %31 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 1)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @VIDEO_ID, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 6, i32 0)
  br label %47

42:                                               ; preds = %36, %3
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 6, i32 %45)
  br label %47

47:                                               ; preds = %42, %40
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 0)
  %54 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 1)
  br label %58

55:                                               ; preds = %47
  %56 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 0)
  %57 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 0)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63, %58
  %69 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 1)
  %70 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 1)
  br label %74

71:                                               ; preds = %63
  %72 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 0)
  %73 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 0)
  br label %74

74:                                               ; preds = %71, %68
  %75 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 1)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, 224
  %83 = load i32, i32* @AUDIO_ID, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 5, i32 0)
  br label %92

87:                                               ; preds = %80, %74
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 5, i32 %90)
  br label %92

92:                                               ; preds = %87, %85
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 0)
  %99 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 7, i32 127)
  br label %102

100:                                              ; preds = %92
  %101 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 8, i32 255)
  br label %102

102:                                              ; preds = %100, %97
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %201

107:                                              ; preds = %102
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %171, %107
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %174

114:                                              ; preds = %108
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %117, i64 %119
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  store %struct.TYPE_13__* %123, %struct.TYPE_13__** %16, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp eq i32 %127, 189
  br i1 %128, label %129, label %139

129:                                              ; preds = %114
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %15, align 4
  br label %170

139:                                              ; preds = %129, %114
  %140 = load i32, i32* %11, align 4
  %141 = icmp sge i32 %140, 192
  br i1 %141, label %142, label %155

142:                                              ; preds = %139
  %143 = load i32, i32* %11, align 4
  %144 = icmp sle i32 %143, 199
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %14, align 4
  br label %169

155:                                              ; preds = %145, %142, %139
  %156 = load i32, i32* %11, align 4
  %157 = icmp eq i32 %156, 224
  br i1 %157, label %158, label %168

158:                                              ; preds = %155
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %13, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %13, align 4
  br label %168

168:                                              ; preds = %164, %158, %155
  br label %169

169:                                              ; preds = %168, %151
  br label %170

170:                                              ; preds = %169, %135
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %108

174:                                              ; preds = %108
  %175 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 8, i32 185)
  %176 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 2, i32 3)
  %177 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 1)
  %178 = load i32, i32* %13, align 4
  %179 = sdiv i32 %178, 1024
  %180 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 13, i32 %179)
  %181 = load i32, i32* %14, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %174
  store i32 4096, i32* %14, align 4
  br label %184

184:                                              ; preds = %183, %174
  %185 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 8, i32 184)
  %186 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 2, i32 3)
  %187 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 0)
  %188 = load i32, i32* %14, align 4
  %189 = sdiv i32 %188, 128
  %190 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 13, i32 %189)
  %191 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 8, i32 189)
  %192 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 2, i32 3)
  %193 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 0)
  %194 = load i32, i32* %15, align 4
  %195 = sdiv i32 %194, 128
  %196 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 13, i32 %195)
  %197 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 8, i32 191)
  %198 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 2, i32 3)
  %199 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 1)
  %200 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 13, i32 2)
  br label %268

201:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %202

202:                                              ; preds = %264, %201
  %203 = load i32, i32* %9, align 4
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %208, label %267

208:                                              ; preds = %202
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %211, i64 %213
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %216, align 8
  store %struct.TYPE_13__* %217, %struct.TYPE_13__** %17, align 8
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %208
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %6, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %231, label %228

228:                                              ; preds = %222
  %229 = load i32, i32* %6, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %263

231:                                              ; preds = %228, %222, %208
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %11, align 4
  %235 = load i32, i32* %11, align 4
  %236 = icmp slt i32 %235, 192
  br i1 %236, label %237, label %242

237:                                              ; preds = %231
  %238 = load i32, i32* %10, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  br label %264

241:                                              ; preds = %237
  store i32 1, i32* %10, align 4
  store i32 189, i32* %11, align 4
  br label %242

242:                                              ; preds = %241, %231
  %243 = load i32, i32* %11, align 4
  %244 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 8, i32 %243)
  %245 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 2, i32 3)
  %246 = load i32, i32* %11, align 4
  %247 = icmp slt i32 %246, 224
  br i1 %247, label %248, label %255

248:                                              ; preds = %242
  %249 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 0)
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = sdiv i32 %252, 128
  %254 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 13, i32 %253)
  br label %262

255:                                              ; preds = %242
  %256 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 1, i32 1)
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = sdiv i32 %259, 1024
  %261 = call i32 @put_bits(%struct.TYPE_14__* %12, i32 13, i32 %260)
  br label %262

262:                                              ; preds = %255, %248
  br label %263

263:                                              ; preds = %262, %228
  br label %264

264:                                              ; preds = %263, %240
  %265 = load i32, i32* %9, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %9, align 4
  br label %202

267:                                              ; preds = %202
  br label %268

268:                                              ; preds = %267, %184
  %269 = call i32 @flush_put_bits(%struct.TYPE_14__* %12)
  %270 = call i32 @put_bits_ptr(%struct.TYPE_14__* %12)
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = sub nsw i32 %270, %272
  store i32 %273, i32* %8, align 4
  %274 = load i32*, i32** %5, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 4
  %276 = load i32, i32* %8, align 4
  %277 = sub nsw i32 %276, 6
  %278 = call i32 @AV_WB16(i32* %275, i32 %277)
  %279 = load i32, i32* %8, align 4
  ret i32 %279
}

declare dso_local i32 @init_put_bits(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @put_bits32(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @put_bits(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @flush_put_bits(%struct.TYPE_14__*) #1

declare dso_local i32 @put_bits_ptr(%struct.TYPE_14__*) #1

declare dso_local i32 @AV_WB16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
