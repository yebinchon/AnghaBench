; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vaguedenoiser.c_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vaguedenoiser.c_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32*, float*, i32, i32, i32, i32, i32, i32**, i32**, i32**, i32**, i32, i32, i32, i32, i32, i32 (float*, i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_9__ = type { float**, i32* }

@NPAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_9__*)* @filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float*, align 8
  %24 = alloca i32, align 4
  %25 = alloca float*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca float*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %600, %3
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %603

35:                                               ; preds = %29
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load float**, float*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float*, float** %52, i64 %54
  %56 = load float*, float** %55, align 8
  store float* %56, float** %14, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load float**, float*** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float*, float** %59, i64 %61
  %63 = load float*, float** %62, align 8
  store float* %63, float** %15, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load float**, float*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float*, float** %66, i64 %68
  %70 = load float*, float** %69, align 8
  store float* %70, float** %16, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load float**, float*** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float*, float** %73, i64 %75
  %77 = load float*, float** %76, align 8
  store float* %77, float** %17, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load float*, float** %79, align 8
  store float* %80, float** %18, align 8
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %20, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %21, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %22, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  %91 = load float*, float** %90, align 8
  store float* %91, float** %23, align 8
  %92 = load i32, i32* %7, align 4
  %93 = shl i32 1, %92
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %147, label %99

99:                                               ; preds = %35
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load float**, float*** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float*, float** %102, i64 %104
  %106 = load float*, float** %105, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load float**, float*** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float*, float** %116, i64 %118
  %120 = load float*, float** %119, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %134, %137
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @av_image_copy_plane(float* %106, i32 %113, float* %120, i32 %127, i32 %138, i32 %145)
  br label %600

147:                                              ; preds = %35
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = icmp sle i32 %150, 8
  br i1 %151, label %152, label %194

152:                                              ; preds = %147
  store i32 0, i32* %8, align 4
  br label %153

153:                                              ; preds = %190, %152
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %12, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %193

157:                                              ; preds = %153
  store i32 0, i32* %9, align 4
  br label %158

158:                                              ; preds = %172, %157
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %158
  %163 = load float*, float** %14, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %163, i64 %165
  %167 = load float, float* %166, align 4
  %168 = load float*, float** %18, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %168, i64 %170
  store float %167, float* %171, align 4
  br label %172

172:                                              ; preds = %162
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %158

175:                                              ; preds = %158
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load float*, float** %14, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds float, float* %183, i64 %184
  store float* %185, float** %14, align 8
  %186 = load i32, i32* %13, align 4
  %187 = load float*, float** %18, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds float, float* %187, i64 %188
  store float* %189, float** %18, align 8
  br label %190

190:                                              ; preds = %175
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %153

193:                                              ; preds = %153
  br label %237

194:                                              ; preds = %147
  store i32 0, i32* %8, align 4
  br label %195

195:                                              ; preds = %233, %194
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %236

199:                                              ; preds = %195
  store i32 0, i32* %9, align 4
  br label %200

200:                                              ; preds = %214, %199
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %13, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %217

204:                                              ; preds = %200
  %205 = load float*, float** %15, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %205, i64 %207
  %209 = load float, float* %208, align 4
  %210 = load float*, float** %18, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds float, float* %210, i64 %212
  store float %209, float* %213, align 4
  br label %214

214:                                              ; preds = %204
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %9, align 4
  br label %200

217:                                              ; preds = %200
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = sdiv i32 %224, 2
  %226 = load float*, float** %15, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds float, float* %226, i64 %227
  store float* %228, float** %15, align 8
  %229 = load i32, i32* %13, align 4
  %230 = load float*, float** %18, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds float, float* %230, i64 %231
  store float* %232, float** %18, align 8
  br label %233

233:                                              ; preds = %217
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %8, align 4
  br label %195

236:                                              ; preds = %195
  br label %237

237:                                              ; preds = %236, %193
  br label %238

238:                                              ; preds = %334, %237
  %239 = load i32, i32* %21, align 4
  %240 = add nsw i32 %239, -1
  store i32 %240, i32* %21, align 4
  %241 = icmp ne i32 %239, 0
  br i1 %241, label %242, label %341

242:                                              ; preds = %238
  %243 = load i32, i32* %19, align 4
  %244 = add nsw i32 %243, 1
  %245 = ashr i32 %244, 1
  store i32 %245, i32* %24, align 4
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 3
  %248 = load float*, float** %247, align 8
  store float* %248, float** %25, align 8
  store i32 0, i32* %11, align 4
  br label %249

249:                                              ; preds = %286, %242
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* %20, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %289

253:                                              ; preds = %249
  %254 = load float*, float** %25, align 8
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 8
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @NPAD, align 4
  %259 = add nsw i32 %257, %258
  %260 = load i32, i32* %19, align 4
  %261 = call i32 (float*, ...) @copy(float* %254, i32 %259, i32 %260)
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 8
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 14
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %19, align 4
  %269 = load i32, i32* %24, align 4
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %271 = call i32 @transform_step(i32 %264, i32 %267, i32 %268, i32 %269, %struct.TYPE_8__* %270)
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 14
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @NPAD, align 4
  %276 = add nsw i32 %274, %275
  %277 = sext i32 %276 to i64
  %278 = inttoptr i64 %277 to float*
  %279 = load float*, float** %25, align 8
  %280 = load i32, i32* %19, align 4
  %281 = call i32 (float*, ...) @copy(float* %278, float* %279, i32 %280)
  %282 = load i32, i32* %13, align 4
  %283 = load float*, float** %25, align 8
  %284 = sext i32 %282 to i64
  %285 = getelementptr inbounds float, float* %283, i64 %284
  store float* %285, float** %25, align 8
  br label %286

286:                                              ; preds = %253
  %287 = load i32, i32* %11, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %11, align 4
  br label %249

289:                                              ; preds = %249
  %290 = load i32, i32* %20, align 4
  %291 = add nsw i32 %290, 1
  %292 = ashr i32 %291, 1
  store i32 %292, i32* %24, align 4
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 3
  %295 = load float*, float** %294, align 8
  store float* %295, float** %25, align 8
  store i32 0, i32* %11, align 4
  br label %296

296:                                              ; preds = %331, %289
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* %19, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %334

300:                                              ; preds = %296
  %301 = load float*, float** %25, align 8
  %302 = load i32, i32* %13, align 4
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 8
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @NPAD, align 4
  %307 = add nsw i32 %305, %306
  %308 = load i32, i32* %20, align 4
  %309 = call i32 @copyv(float* %301, i32 %302, i32 %307, i32 %308)
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 8
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 14
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* %20, align 4
  %317 = load i32, i32* %24, align 4
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %319 = call i32 @transform_step(i32 %312, i32 %315, i32 %316, i32 %317, %struct.TYPE_8__* %318)
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 14
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @NPAD, align 4
  %324 = add nsw i32 %322, %323
  %325 = load float*, float** %25, align 8
  %326 = load i32, i32* %13, align 4
  %327 = load i32, i32* %20, align 4
  %328 = call i32 @copyh(i32 %324, float* %325, i32 %326, i32 %327)
  %329 = load float*, float** %25, align 8
  %330 = getelementptr inbounds float, float* %329, i32 1
  store float* %330, float** %25, align 8
  br label %331

331:                                              ; preds = %300
  %332 = load i32, i32* %11, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %11, align 4
  br label %296

334:                                              ; preds = %296
  %335 = load i32, i32* %19, align 4
  %336 = add nsw i32 %335, 1
  %337 = ashr i32 %336, 1
  store i32 %337, i32* %19, align 4
  %338 = load i32, i32* %20, align 4
  %339 = add nsw i32 %338, 1
  %340 = ashr i32 %339, 1
  store i32 %340, i32* %20, align 4
  br label %238

341:                                              ; preds = %238
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 18
  %344 = load i32 (float*, i32, i32, i32, i32, i32, i32)*, i32 (float*, i32, i32, i32, i32, i32, i32)** %343, align 8
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 3
  %347 = load float*, float** %346, align 8
  %348 = load i32, i32* %13, align 4
  %349 = load i32, i32* %12, align 4
  %350 = load i32, i32* %13, align 4
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 17
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 16
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 8
  %360 = call i32 %344(float* %347, i32 %348, i32 %349, i32 %350, i32 %353, i32 %356, i32 %359)
  br label %361

361:                                              ; preds = %501, %341
  %362 = load i32, i32* %22, align 4
  %363 = add nsw i32 %362, -1
  store i32 %363, i32* %22, align 4
  %364 = icmp ne i32 %362, 0
  br i1 %364, label %365, label %502

365:                                              ; preds = %361
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 9
  %368 = load i32**, i32*** %367, align 8
  %369 = load i32, i32* %7, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32*, i32** %368, i64 %370
  %372 = load i32*, i32** %371, align 8
  %373 = load i32, i32* %22, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 10
  %379 = load i32**, i32*** %378, align 8
  %380 = load i32, i32* %7, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32*, i32** %379, i64 %381
  %383 = load i32*, i32** %382, align 8
  %384 = load i32, i32* %22, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %383, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = add nsw i32 %376, %387
  store i32 %388, i32* %26, align 4
  %389 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 11
  %391 = load i32**, i32*** %390, align 8
  %392 = load i32, i32* %7, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32*, i32** %391, i64 %393
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %22, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %400, i32 0, i32 12
  %402 = load i32**, i32*** %401, align 8
  %403 = load i32, i32* %7, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32*, i32** %402, i64 %404
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* %22, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = add nsw i32 %399, %410
  store i32 %411, i32* %27, align 4
  %412 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 3
  %414 = load float*, float** %413, align 8
  store float* %414, float** %28, align 8
  store i32 0, i32* %10, align 4
  br label %415

415:                                              ; preds = %452, %365
  %416 = load i32, i32* %10, align 4
  %417 = load i32, i32* %27, align 4
  %418 = icmp slt i32 %416, %417
  br i1 %418, label %419, label %455

419:                                              ; preds = %415
  %420 = load float*, float** %28, align 8
  %421 = load i32, i32* %13, align 4
  %422 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %422, i32 0, i32 8
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @NPAD, align 4
  %426 = add nsw i32 %424, %425
  %427 = load i32, i32* %26, align 4
  %428 = call i32 @copyv(float* %420, i32 %421, i32 %426, i32 %427)
  %429 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %429, i32 0, i32 8
  %431 = load i32, i32* %430, align 8
  %432 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i32 0, i32 14
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %435, i32 0, i32 15
  %437 = load i32, i32* %436, align 8
  %438 = load i32, i32* %26, align 4
  %439 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %440 = call i32 @invert_step(i32 %431, i32 %434, i32 %437, i32 %438, %struct.TYPE_8__* %439)
  %441 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 14
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* @NPAD, align 4
  %445 = add nsw i32 %443, %444
  %446 = load float*, float** %28, align 8
  %447 = load i32, i32* %13, align 4
  %448 = load i32, i32* %26, align 4
  %449 = call i32 @copyh(i32 %445, float* %446, i32 %447, i32 %448)
  %450 = load float*, float** %28, align 8
  %451 = getelementptr inbounds float, float* %450, i32 1
  store float* %451, float** %28, align 8
  br label %452

452:                                              ; preds = %419
  %453 = load i32, i32* %10, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %10, align 4
  br label %415

455:                                              ; preds = %415
  %456 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 3
  %458 = load float*, float** %457, align 8
  store float* %458, float** %28, align 8
  store i32 0, i32* %10, align 4
  br label %459

459:                                              ; preds = %498, %455
  %460 = load i32, i32* %10, align 4
  %461 = load i32, i32* %26, align 4
  %462 = icmp slt i32 %460, %461
  br i1 %462, label %463, label %501

463:                                              ; preds = %459
  %464 = load float*, float** %28, align 8
  %465 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %466 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %465, i32 0, i32 8
  %467 = load i32, i32* %466, align 8
  %468 = load i32, i32* @NPAD, align 4
  %469 = add nsw i32 %467, %468
  %470 = load i32, i32* %27, align 4
  %471 = call i32 (float*, ...) @copy(float* %464, i32 %469, i32 %470)
  %472 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %473 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %472, i32 0, i32 8
  %474 = load i32, i32* %473, align 8
  %475 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %476 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %475, i32 0, i32 14
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %479 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %478, i32 0, i32 15
  %480 = load i32, i32* %479, align 8
  %481 = load i32, i32* %27, align 4
  %482 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %483 = call i32 @invert_step(i32 %474, i32 %477, i32 %480, i32 %481, %struct.TYPE_8__* %482)
  %484 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %485 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %484, i32 0, i32 14
  %486 = load i32, i32* %485, align 4
  %487 = load i32, i32* @NPAD, align 4
  %488 = add nsw i32 %486, %487
  %489 = sext i32 %488 to i64
  %490 = inttoptr i64 %489 to float*
  %491 = load float*, float** %28, align 8
  %492 = load i32, i32* %27, align 4
  %493 = call i32 (float*, ...) @copy(float* %490, float* %491, i32 %492)
  %494 = load i32, i32* %13, align 4
  %495 = load float*, float** %28, align 8
  %496 = sext i32 %494 to i64
  %497 = getelementptr inbounds float, float* %495, i64 %496
  store float* %497, float** %28, align 8
  br label %498

498:                                              ; preds = %463
  %499 = load i32, i32* %10, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %10, align 4
  br label %459

501:                                              ; preds = %459
  br label %361

502:                                              ; preds = %361
  %503 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %503, i32 0, i32 7
  %505 = load i32, i32* %504, align 4
  %506 = icmp sle i32 %505, 8
  br i1 %506, label %507, label %551

507:                                              ; preds = %502
  store i32 0, i32* %8, align 4
  br label %508

508:                                              ; preds = %547, %507
  %509 = load i32, i32* %8, align 4
  %510 = load i32, i32* %12, align 4
  %511 = icmp slt i32 %509, %510
  br i1 %511, label %512, label %550

512:                                              ; preds = %508
  store i32 0, i32* %9, align 4
  br label %513

513:                                              ; preds = %529, %512
  %514 = load i32, i32* %9, align 4
  %515 = load i32, i32* %13, align 4
  %516 = icmp slt i32 %514, %515
  br i1 %516, label %517, label %532

517:                                              ; preds = %513
  %518 = load float*, float** %23, align 8
  %519 = load i32, i32* %9, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds float, float* %518, i64 %520
  %522 = load float, float* %521, align 4
  %523 = fadd float %522, 5.000000e-01
  %524 = call float @av_clip_uint8(float %523)
  %525 = load float*, float** %16, align 8
  %526 = load i32, i32* %9, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds float, float* %525, i64 %527
  store float %524, float* %528, align 4
  br label %529

529:                                              ; preds = %517
  %530 = load i32, i32* %9, align 4
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %9, align 4
  br label %513

532:                                              ; preds = %513
  %533 = load i32, i32* %13, align 4
  %534 = load float*, float** %23, align 8
  %535 = sext i32 %533 to i64
  %536 = getelementptr inbounds float, float* %534, i64 %535
  store float* %536, float** %23, align 8
  %537 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %538 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %537, i32 0, i32 1
  %539 = load i32*, i32** %538, align 8
  %540 = load i32, i32* %7, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i32, i32* %539, i64 %541
  %543 = load i32, i32* %542, align 4
  %544 = load float*, float** %16, align 8
  %545 = sext i32 %543 to i64
  %546 = getelementptr inbounds float, float* %544, i64 %545
  store float* %546, float** %16, align 8
  br label %547

547:                                              ; preds = %532
  %548 = load i32, i32* %8, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %8, align 4
  br label %508

550:                                              ; preds = %508
  br label %599

551:                                              ; preds = %502
  store i32 0, i32* %8, align 4
  br label %552

552:                                              ; preds = %595, %551
  %553 = load i32, i32* %8, align 4
  %554 = load i32, i32* %12, align 4
  %555 = icmp slt i32 %553, %554
  br i1 %555, label %556, label %598

556:                                              ; preds = %552
  store i32 0, i32* %9, align 4
  br label %557

557:                                              ; preds = %576, %556
  %558 = load i32, i32* %9, align 4
  %559 = load i32, i32* %13, align 4
  %560 = icmp slt i32 %558, %559
  br i1 %560, label %561, label %579

561:                                              ; preds = %557
  %562 = load float*, float** %23, align 8
  %563 = load i32, i32* %9, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds float, float* %562, i64 %564
  %566 = load float, float* %565, align 4
  %567 = fadd float %566, 5.000000e-01
  %568 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %569 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %568, i32 0, i32 13
  %570 = load i32, i32* %569, align 8
  %571 = call float @av_clip(float %567, i32 0, i32 %570)
  %572 = load float*, float** %17, align 8
  %573 = load i32, i32* %9, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds float, float* %572, i64 %574
  store float %571, float* %575, align 4
  br label %576

576:                                              ; preds = %561
  %577 = load i32, i32* %9, align 4
  %578 = add nsw i32 %577, 1
  store i32 %578, i32* %9, align 4
  br label %557

579:                                              ; preds = %557
  %580 = load i32, i32* %13, align 4
  %581 = load float*, float** %23, align 8
  %582 = sext i32 %580 to i64
  %583 = getelementptr inbounds float, float* %581, i64 %582
  store float* %583, float** %23, align 8
  %584 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %585 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %584, i32 0, i32 1
  %586 = load i32*, i32** %585, align 8
  %587 = load i32, i32* %7, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i32, i32* %586, i64 %588
  %590 = load i32, i32* %589, align 4
  %591 = sdiv i32 %590, 2
  %592 = load float*, float** %17, align 8
  %593 = sext i32 %591 to i64
  %594 = getelementptr inbounds float, float* %592, i64 %593
  store float* %594, float** %17, align 8
  br label %595

595:                                              ; preds = %579
  %596 = load i32, i32* %8, align 4
  %597 = add nsw i32 %596, 1
  store i32 %597, i32* %8, align 4
  br label %552

598:                                              ; preds = %552
  br label %599

599:                                              ; preds = %598, %550
  br label %600

600:                                              ; preds = %599, %99
  %601 = load i32, i32* %7, align 4
  %602 = add nsw i32 %601, 1
  store i32 %602, i32* %7, align 4
  br label %29

603:                                              ; preds = %29
  ret void
}

declare dso_local i32 @av_image_copy_plane(float*, i32, float*, i32, i32, i32) #1

declare dso_local i32 @copy(float*, ...) #1

declare dso_local i32 @transform_step(i32, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @copyv(float*, i32, i32, i32) #1

declare dso_local i32 @copyh(i32, float*, i32, i32) #1

declare dso_local i32 @invert_step(i32, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local float @av_clip_uint8(float) #1

declare dso_local float @av_clip(float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
