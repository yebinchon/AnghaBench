; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpeg.c_mpegps_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpeg.c_mpegps_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@SYSTEM_HEADER_START_CODE = common dso_local global i32 0, align 4
@PACK_START_CODE = common dso_local global i32 0, align 4
@VIDEO_ID = common dso_local global i32 0, align 4
@AUDIO_ID = common dso_local global i32 0, align 4
@PRIVATE_STREAM_1 = common dso_local global i32 0, align 4
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @mpegps_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpegps_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %194, %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %197

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %24, 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %25, %32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, -256
  %36 = icmp eq i32 %35, 256
  br i1 %36, label %37, label %193

37:                                               ; preds = %23
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %46, %54
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %37
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = call i64 @check_pes(i32* %65, i32* %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %59, %37
  %77 = phi i1 [ false, %37 ], [ %75, %59 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %15, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = call i32 @check_pack_header(i32* %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @SYSTEM_HEADER_START_CODE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %76
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %192

92:                                               ; preds = %76
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @PACK_START_CODE, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %191

102:                                              ; preds = %96, %92
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %103, 240
  %105 = load i32, i32* @VIDEO_ID, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %111, %112
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %190

116:                                              ; preds = %107, %102
  %117 = load i32, i32* %4, align 4
  %118 = and i32 %117, 224
  %119 = load i32, i32* @AUDIO_ID, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %5, align 4
  br label %189

130:                                              ; preds = %121, %116
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @PRIVATE_STREAM_1, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %5, align 4
  br label %188

143:                                              ; preds = %134, %130
  %144 = load i32, i32* %4, align 4
  %145 = icmp eq i32 %144, 509
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i32, i32* %15, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %187

152:                                              ; preds = %146, %143
  %153 = load i32, i32* %4, align 4
  %154 = and i32 %153, 240
  %155 = load i32, i32* @VIDEO_ID, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  br label %186

163:                                              ; preds = %157, %152
  %164 = load i32, i32* %4, align 4
  %165 = and i32 %164, 224
  %166 = load i32, i32* @AUDIO_ID, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 4
  br label %185

174:                                              ; preds = %168, %163
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @PRIVATE_STREAM_1, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = load i32, i32* %15, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %11, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %11, align 4
  br label %184

184:                                              ; preds = %181, %178, %174
  br label %185

185:                                              ; preds = %184, %171
  br label %186

186:                                              ; preds = %185, %160
  br label %187

187:                                              ; preds = %186, %149
  br label %188

188:                                              ; preds = %187, %137
  br label %189

189:                                              ; preds = %188, %124
  br label %190

190:                                              ; preds = %189, %110
  br label %191

191:                                              ; preds = %190, %99
  br label %192

192:                                              ; preds = %191, %89
  br label %193

193:                                              ; preds = %192, %23
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %5, align 4
  br label %17

197:                                              ; preds = %17
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %198, %199
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, 1
  %203 = icmp sgt i32 %200, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %197
  %205 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %206 = sdiv i32 %205, 2
  store i32 %206, i32* %12, align 4
  br label %207

207:                                              ; preds = %204, %197
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp sgt i32 %208, %209
  br i1 %210, label %211, label %235

211:                                              ; preds = %207
  %212 = load i32, i32* %6, align 4
  %213 = mul nsw i32 %212, 9
  %214 = load i32, i32* %7, align 4
  %215 = mul nsw i32 %214, 10
  %216 = icmp sle i32 %213, %215
  br i1 %216, label %217, label %235

217:                                              ; preds = %211
  %218 = load i32, i32* %10, align 4
  %219 = icmp sgt i32 %218, 12
  br i1 %219, label %226, label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %9, align 4
  %222 = icmp sgt i32 %221, 3
  br i1 %222, label %226, label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %7, align 4
  %225 = icmp sgt i32 %224, 2
  br i1 %225, label %226, label %229

226:                                              ; preds = %223, %220, %217
  %227 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %228 = add nsw i32 %227, 2
  br label %233

229:                                              ; preds = %223
  %230 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %231 = sdiv i32 %230, 2
  %232 = add nsw i32 %231, 1
  br label %233

233:                                              ; preds = %229, %226
  %234 = phi i32 [ %228, %226 ], [ %232, %229 ]
  store i32 %234, i32* %2, align 4
  br label %315

235:                                              ; preds = %211, %207
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* %11, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %260

239:                                              ; preds = %235
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* %9, align 4
  %242 = add nsw i32 %240, %241
  %243 = load i32, i32* %10, align 4
  %244 = add nsw i32 %242, %243
  %245 = mul nsw i32 %244, 10
  %246 = load i32, i32* %7, align 4
  %247 = mul nsw i32 %246, 9
  %248 = icmp sge i32 %245, %247
  br i1 %248, label %249, label %260

249:                                              ; preds = %239
  %250 = load i32, i32* %7, align 4
  %251 = icmp sgt i32 %250, 2
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %254 = add nsw i32 %253, 2
  br label %258

255:                                              ; preds = %249
  %256 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %257 = sdiv i32 %256, 2
  br label %258

258:                                              ; preds = %255, %252
  %259 = phi i32 [ %254, %252 ], [ %257, %255 ]
  store i32 %259, i32* %2, align 4
  br label %315

260:                                              ; preds = %239, %235
  %261 = load i32, i32* %9, align 4
  %262 = icmp ne i32 %261, 0
  %263 = xor i1 %262, true
  %264 = xor i1 %263, true
  %265 = zext i1 %264 to i32
  %266 = load i32, i32* %10, align 4
  %267 = icmp ne i32 %266, 0
  %268 = xor i1 %267, true
  %269 = xor i1 %268, true
  %270 = zext i1 %269 to i32
  %271 = xor i32 %265, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %313

273:                                              ; preds = %260
  %274 = load i32, i32* %10, align 4
  %275 = icmp sgt i32 %274, 4
  br i1 %275, label %279, label %276

276:                                              ; preds = %273
  %277 = load i32, i32* %9, align 4
  %278 = icmp sgt i32 %277, 1
  br i1 %278, label %279, label %313

279:                                              ; preds = %276, %273
  %280 = load i32, i32* %6, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %313, label %282

282:                                              ; preds = %279
  %283 = load i32, i32* %7, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %313, label %285

285:                                              ; preds = %282
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = icmp sgt i32 %288, 2048
  br i1 %289, label %290, label %313

290:                                              ; preds = %285
  %291 = load i32, i32* %9, align 4
  %292 = load i32, i32* %10, align 4
  %293 = add nsw i32 %291, %292
  %294 = load i32, i32* %11, align 4
  %295 = icmp sgt i32 %293, %294
  br i1 %295, label %296, label %313

296:                                              ; preds = %290
  %297 = load i32, i32* %10, align 4
  %298 = icmp sgt i32 %297, 12
  br i1 %298, label %305, label %299

299:                                              ; preds = %296
  %300 = load i32, i32* %9, align 4
  %301 = load i32, i32* %11, align 4
  %302 = mul nsw i32 2, %301
  %303 = add nsw i32 6, %302
  %304 = icmp sgt i32 %300, %303
  br i1 %304, label %305, label %308

305:                                              ; preds = %299, %296
  %306 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %307 = add nsw i32 %306, 2
  br label %311

308:                                              ; preds = %299
  %309 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %310 = sdiv i32 %309, 2
  br label %311

311:                                              ; preds = %308, %305
  %312 = phi i32 [ %307, %305 ], [ %310, %308 ]
  store i32 %312, i32* %2, align 4
  br label %315

313:                                              ; preds = %290, %285, %282, %279, %276, %260
  %314 = load i32, i32* %12, align 4
  store i32 %314, i32* %2, align 4
  br label %315

315:                                              ; preds = %313, %311, %258, %233
  %316 = load i32, i32* %2, align 4
  ret i32 %316
}

declare dso_local i64 @check_pes(i32*, i32*) #1

declare dso_local i32 @check_pack_header(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
