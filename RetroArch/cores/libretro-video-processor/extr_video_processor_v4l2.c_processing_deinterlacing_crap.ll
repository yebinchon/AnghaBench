; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-video-processor/extr_video_processor_v4l2.c_processing_deinterlacing_crap.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-video-processor/extr_video_processor_v4l2.c_processing_deinterlacing_crap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@frame_prev1 = common dso_local global i32* null, align 8
@frame_prev2 = common dso_local global i32* null, align 8
@frame_prev3 = common dso_local global i32* null, align 8
@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@V4L2_FIELD_BOTTOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @processing_deinterlacing_crap(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load i32*, i32** @frame_prev1, align 8
  store i32* %19, i32** %16, align 8
  %20 = load i32*, i32** @frame_prev2, align 8
  store i32* %20, i32** %17, align 8
  %21 = load i32*, i32** @frame_prev3, align 8
  store i32* %21, i32** %18, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @V4L2_FIELD_TOP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %14, align 4
  br label %30

27:                                               ; preds = %6
  %28 = load i32, i32* %9, align 4
  %29 = mul nsw i32 %28, -1
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @V4L2_FIELD_BOTTOM, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32*, i32** %16, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %16, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** %17, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %17, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32*, i32** %18, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %18, align 8
  br label %58

58:                                               ; preds = %41, %34
  br label %59

59:                                               ; preds = %58, %30
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %334, %59
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = mul nsw i32 %62, %63
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %347

66:                                               ; preds = %60
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 16777215
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, -16777216
  %73 = or i32 %69, %72
  %74 = load i32*, i32** %8, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %302

78:                                               ; preds = %66
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %82, %83
  %85 = icmp sle i32 %79, %84
  br i1 %85, label %86, label %302

86:                                               ; preds = %78
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 0
  %90 = and i32 %89, 255
  %91 = load i32, i32* %15, align 4
  %92 = ashr i32 %91, 0
  %93 = and i32 %92, 255
  %94 = add nsw i32 %90, %93
  %95 = ashr i32 %94, 1
  %96 = shl i32 %95, 0
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 8
  %100 = and i32 %99, 255
  %101 = load i32, i32* %15, align 4
  %102 = ashr i32 %101, 8
  %103 = and i32 %102, 255
  %104 = add nsw i32 %100, %103
  %105 = ashr i32 %104, 1
  %106 = shl i32 %105, 8
  %107 = or i32 %96, %106
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 16
  %111 = and i32 %110, 255
  %112 = load i32, i32* %15, align 4
  %113 = ashr i32 %112, 16
  %114 = and i32 %113, 255
  %115 = add nsw i32 %111, %114
  %116 = ashr i32 %115, 1
  %117 = shl i32 %116, 16
  %118 = or i32 %107, %117
  %119 = and i32 %118, 16777215
  %120 = or i32 %119, -33554432
  store i32 %120, i32* %15, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, -16777216
  %124 = icmp eq i32 %123, -33554432
  br i1 %124, label %133, label %125

125:                                              ; preds = %86
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, -16777216
  %132 = icmp eq i32 %131, -33554432
  br i1 %132, label %133, label %143

133:                                              ; preds = %125, %86
  %134 = load i32, i32* %15, align 4
  %135 = or i32 %134, -16777216
  %136 = load i32*, i32** %8, align 8
  store i32 %135, i32* %136, align 4
  %137 = load i32, i32* %15, align 4
  %138 = or i32 %137, -16777216
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %138, i32* %142, align 4
  br label %301

143:                                              ; preds = %125
  %144 = load i32*, i32** %7, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = ashr i32 %146, 0
  %148 = and i32 %147, 255
  %149 = load i32*, i32** %17, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = ashr i32 %151, 0
  %153 = and i32 %152, 255
  %154 = sub nsw i32 %153, 9
  %155 = icmp sge i32 %148, %154
  br i1 %155, label %156, label %221

156:                                              ; preds = %143
  %157 = load i32*, i32** %7, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %159, 8
  %161 = and i32 %160, 255
  %162 = load i32*, i32** %17, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 8
  %166 = and i32 %165, 255
  %167 = sub nsw i32 %166, 9
  %168 = icmp sge i32 %161, %167
  br i1 %168, label %169, label %221

169:                                              ; preds = %156
  %170 = load i32*, i32** %7, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 16
  %174 = and i32 %173, 255
  %175 = load i32*, i32** %17, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = ashr i32 %177, 16
  %179 = and i32 %178, 255
  %180 = sub nsw i32 %179, 9
  %181 = icmp sge i32 %174, %180
  br i1 %181, label %182, label %221

182:                                              ; preds = %169
  %183 = load i32*, i32** %7, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = ashr i32 %185, 0
  %187 = and i32 %186, 255
  %188 = load i32*, i32** %17, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = ashr i32 %190, 0
  %192 = and i32 %191, 255
  %193 = add nsw i32 %192, 9
  %194 = icmp sle i32 %187, %193
  br i1 %194, label %195, label %221

195:                                              ; preds = %182
  %196 = load i32*, i32** %7, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = ashr i32 %198, 8
  %200 = and i32 %199, 255
  %201 = load i32*, i32** %17, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = ashr i32 %203, 8
  %205 = and i32 %204, 255
  %206 = add nsw i32 %205, 9
  %207 = icmp sle i32 %200, %206
  br i1 %207, label %208, label %221

208:                                              ; preds = %195
  %209 = load i32*, i32** %7, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = ashr i32 %211, 16
  %213 = and i32 %212, 255
  %214 = load i32*, i32** %17, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = ashr i32 %216, 16
  %218 = and i32 %217, 255
  %219 = add nsw i32 %218, 9
  %220 = icmp sle i32 %213, %219
  br i1 %220, label %227, label %221

221:                                              ; preds = %208, %195, %182, %169, %156, %143
  %222 = load i32, i32* %15, align 4
  %223 = load i32*, i32** %8, align 8
  %224 = load i32, i32* %14, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32 %222, i32* %226, align 4
  br label %300

227:                                              ; preds = %208
  %228 = load i32*, i32** %18, align 8
  %229 = load i32, i32* %228, align 4
  %230 = ashr i32 %229, 0
  %231 = and i32 %230, 255
  %232 = load i32*, i32** %16, align 8
  %233 = load i32, i32* %232, align 4
  %234 = ashr i32 %233, 0
  %235 = and i32 %234, 255
  %236 = sub nsw i32 %235, 9
  %237 = icmp sge i32 %231, %236
  br i1 %237, label %238, label %293

238:                                              ; preds = %227
  %239 = load i32*, i32** %18, align 8
  %240 = load i32, i32* %239, align 4
  %241 = ashr i32 %240, 8
  %242 = and i32 %241, 255
  %243 = load i32*, i32** %16, align 8
  %244 = load i32, i32* %243, align 4
  %245 = ashr i32 %244, 8
  %246 = and i32 %245, 255
  %247 = sub nsw i32 %246, 9
  %248 = icmp sge i32 %242, %247
  br i1 %248, label %249, label %293

249:                                              ; preds = %238
  %250 = load i32*, i32** %18, align 8
  %251 = load i32, i32* %250, align 4
  %252 = ashr i32 %251, 16
  %253 = and i32 %252, 255
  %254 = load i32*, i32** %16, align 8
  %255 = load i32, i32* %254, align 4
  %256 = ashr i32 %255, 16
  %257 = and i32 %256, 255
  %258 = sub nsw i32 %257, 9
  %259 = icmp sge i32 %253, %258
  br i1 %259, label %260, label %293

260:                                              ; preds = %249
  %261 = load i32*, i32** %18, align 8
  %262 = load i32, i32* %261, align 4
  %263 = ashr i32 %262, 0
  %264 = and i32 %263, 255
  %265 = load i32*, i32** %16, align 8
  %266 = load i32, i32* %265, align 4
  %267 = ashr i32 %266, 0
  %268 = and i32 %267, 255
  %269 = add nsw i32 %268, 9
  %270 = icmp sle i32 %264, %269
  br i1 %270, label %271, label %293

271:                                              ; preds = %260
  %272 = load i32*, i32** %18, align 8
  %273 = load i32, i32* %272, align 4
  %274 = ashr i32 %273, 8
  %275 = and i32 %274, 255
  %276 = load i32*, i32** %16, align 8
  %277 = load i32, i32* %276, align 4
  %278 = ashr i32 %277, 8
  %279 = and i32 %278, 255
  %280 = add nsw i32 %279, 9
  %281 = icmp sle i32 %275, %280
  br i1 %281, label %282, label %293

282:                                              ; preds = %271
  %283 = load i32*, i32** %18, align 8
  %284 = load i32, i32* %283, align 4
  %285 = ashr i32 %284, 16
  %286 = and i32 %285, 255
  %287 = load i32*, i32** %16, align 8
  %288 = load i32, i32* %287, align 4
  %289 = ashr i32 %288, 16
  %290 = and i32 %289, 255
  %291 = add nsw i32 %290, 9
  %292 = icmp sle i32 %286, %291
  br i1 %292, label %299, label %293

293:                                              ; preds = %282, %271, %260, %249, %238, %227
  %294 = load i32, i32* %15, align 4
  %295 = load i32*, i32** %8, align 8
  %296 = load i32, i32* %14, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  store i32 %294, i32* %298, align 4
  br label %299

299:                                              ; preds = %293, %282
  br label %300

300:                                              ; preds = %299, %221
  br label %301

301:                                              ; preds = %300, %133
  br label %302

302:                                              ; preds = %301, %78, %66
  %303 = load i32, i32* %13, align 4
  %304 = add nsw i32 %303, 1
  %305 = load i32, i32* %9, align 4
  %306 = srem i32 %304, %305
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %333

308:                                              ; preds = %302
  %309 = load i32, i32* %9, align 4
  %310 = load i32*, i32** %8, align 8
  %311 = sext i32 %309 to i64
  %312 = getelementptr inbounds i32, i32* %310, i64 %311
  store i32* %312, i32** %8, align 8
  %313 = load i32, i32* %12, align 4
  %314 = icmp eq i32 %313, 1
  br i1 %314, label %315, label %332

315:                                              ; preds = %308
  %316 = load i32, i32* %9, align 4
  %317 = load i32*, i32** %7, align 8
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i32, i32* %317, i64 %318
  store i32* %319, i32** %7, align 8
  %320 = load i32, i32* %9, align 4
  %321 = load i32*, i32** %16, align 8
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds i32, i32* %321, i64 %322
  store i32* %323, i32** %16, align 8
  %324 = load i32, i32* %9, align 4
  %325 = load i32*, i32** %17, align 8
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds i32, i32* %325, i64 %326
  store i32* %327, i32** %17, align 8
  %328 = load i32, i32* %9, align 4
  %329 = load i32*, i32** %18, align 8
  %330 = sext i32 %328 to i64
  %331 = getelementptr inbounds i32, i32* %329, i64 %330
  store i32* %331, i32** %18, align 8
  br label %332

332:                                              ; preds = %315, %308
  br label %333

333:                                              ; preds = %332, %302
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %13, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %13, align 4
  %337 = load i32*, i32** %7, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 1
  store i32* %338, i32** %7, align 8
  %339 = load i32*, i32** %8, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 1
  store i32* %340, i32** %8, align 8
  %341 = load i32*, i32** %16, align 8
  %342 = getelementptr inbounds i32, i32* %341, i32 1
  store i32* %342, i32** %16, align 8
  %343 = load i32*, i32** %17, align 8
  %344 = getelementptr inbounds i32, i32* %343, i32 1
  store i32* %344, i32** %17, align 8
  %345 = load i32*, i32** %18, align 8
  %346 = getelementptr inbounds i32, i32* %345, i32 1
  store i32* %346, i32** %18, align 8
  br label %60

347:                                              ; preds = %60
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
