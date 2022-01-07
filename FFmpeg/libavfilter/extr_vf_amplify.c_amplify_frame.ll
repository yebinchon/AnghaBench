; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_amplify.c_amplify_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_amplify.c_amplify_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, float, float, float, i32, i32, i32, i32, i32*, i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i32)* @amplify_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amplify_frame(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_8__**, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %9, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = bitcast i8* %44 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %10, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %47, align 8
  store %struct.TYPE_8__** %48, %struct.TYPE_8__*** %11, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %12, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %13, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load float, float* %59, align 8
  store float %60, float* %15, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load float, float* %62, align 4
  store float %63, float* %16, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 4
  %66 = load float, float* %65, align 8
  store float %66, float* %17, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %18, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %19, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %20, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = icmp sle i32 %78, 8
  br i1 %79, label %80, label %354

80:                                               ; preds = %4
  store i32 0, i32* %22, align 4
  br label %81

81:                                               ; preds = %350, %80
  %82 = load i32, i32* %22, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %353

87:                                               ; preds = %81
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 9
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %22, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %7, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %8, align 4
  %98 = sdiv i32 %96, %97
  store i32 %98, i32* %25, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 9
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %22, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  %108 = mul nsw i32 %105, %107
  %109 = load i32, i32* %8, align 4
  %110 = sdiv i32 %108, %109
  store i32 %110, i32* %26, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %22, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %25, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %22, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %118, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %117, i64 %127
  store i32* %128, i32** %27, align 8
  %129 = load i32, i32* %22, align 4
  %130 = shl i32 1, %129
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 10
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %130, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %193, label %136

136:                                              ; preds = %87
  %137 = load i32*, i32** %27, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %22, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %145, i64 %147
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32**, i32*** %150, align 8
  %152 = load i32, i32* %22, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %25, align 4
  %157 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %157, i64 %159
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %22, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %156, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %155, i64 %169
  %171 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %171, i64 %173
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %22, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 11
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %22, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %26, align 4
  %190 = load i32, i32* %25, align 4
  %191 = sub nsw i32 %189, %190
  %192 = call i32 @av_image_copy_plane(i32* %137, i32 %144, i32* %170, i32 %181, i32 %188, i32 %191)
  br label %350

193:                                              ; preds = %87
  %194 = load i32, i32* %25, align 4
  store i32 %194, i32* %24, align 4
  br label %195

195:                                              ; preds = %346, %193
  %196 = load i32, i32* %24, align 4
  %197 = load i32, i32* %26, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %349

199:                                              ; preds = %195
  store i32 0, i32* %23, align 4
  br label %200

200:                                              ; preds = %332, %199
  %201 = load i32, i32* %23, align 4
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 11
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %22, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = icmp slt i32 %201, %208
  br i1 %209, label %210, label %335

210:                                              ; preds = %200
  %211 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %211, i64 %213
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32**, i32*** %216, align 8
  %218 = load i32, i32* %22, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32*, i32** %217, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %24, align 4
  %223 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %223, i64 %225
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %22, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %222, %233
  %235 = load i32, i32* %23, align 4
  %236 = add nsw i32 %234, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %221, i64 %237
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %28, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %21, align 4
  br label %240

240:                                              ; preds = %276, %210
  %241 = load i32, i32* %21, align 4
  %242 = load i32, i32* %14, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %279

244:                                              ; preds = %240
  %245 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %246 = load i32, i32* %21, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %245, i64 %247
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = load i32**, i32*** %250, align 8
  %252 = load i32, i32* %22, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32*, i32** %251, i64 %253
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %24, align 4
  %257 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %258 = load i32, i32* %21, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %257, i64 %259
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %22, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = mul nsw i32 %256, %267
  %269 = load i32, i32* %23, align 4
  %270 = add nsw i32 %268, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %255, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %31, align 4
  %275 = add nsw i32 %274, %273
  store i32 %275, i32* %31, align 4
  br label %276

276:                                              ; preds = %244
  %277 = load i32, i32* %21, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %21, align 4
  br label %240

279:                                              ; preds = %240
  %280 = load i32, i32* %31, align 4
  %281 = sitofp i32 %280 to float
  %282 = load i32, i32* %14, align 4
  %283 = sitofp i32 %282 to float
  %284 = fdiv float %281, %283
  store float %284, float* %30, align 4
  %285 = load i32, i32* %28, align 4
  %286 = sitofp i32 %285 to float
  %287 = load float, float* %30, align 4
  %288 = fsub float %286, %287
  store float %288, float* %29, align 4
  %289 = load float, float* %29, align 4
  %290 = call float @fabsf(float %289)
  %291 = load float, float* %15, align 4
  %292 = fcmp olt float %290, %291
  br i1 %292, label %293, label %325

293:                                              ; preds = %279
  %294 = load float, float* %29, align 4
  %295 = call float @fabsf(float %294)
  %296 = load float, float* %16, align 4
  %297 = fcmp ogt float %295, %296
  br i1 %297, label %298, label %325

298:                                              ; preds = %293
  %299 = load float, float* %29, align 4
  %300 = fcmp olt float %299, 0.000000e+00
  br i1 %300, label %301, label %309

301:                                              ; preds = %298
  %302 = load float, float* %29, align 4
  %303 = load float, float* %17, align 4
  %304 = fmul float %302, %303
  %305 = call i32 @FFABS(float %304)
  %306 = load i32, i32* %18, align 4
  %307 = call i32 @FFMIN(i32 %305, i32 %306)
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %32, align 4
  br label %316

309:                                              ; preds = %298
  %310 = load float, float* %29, align 4
  %311 = load float, float* %17, align 4
  %312 = fmul float %310, %311
  %313 = call i32 @FFABS(float %312)
  %314 = load i32, i32* %19, align 4
  %315 = call i32 @FFMIN(i32 %313, i32 %314)
  store i32 %315, i32* %32, align 4
  br label %316

316:                                              ; preds = %309, %301
  %317 = load i32, i32* %28, align 4
  %318 = load i32, i32* %32, align 4
  %319 = add nsw i32 %317, %318
  %320 = call i32 @av_clip_uint8(i32 %319)
  %321 = load i32*, i32** %27, align 8
  %322 = load i32, i32* %23, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  store i32 %320, i32* %324, align 4
  br label %331

325:                                              ; preds = %293, %279
  %326 = load i32, i32* %28, align 4
  %327 = load i32*, i32** %27, align 8
  %328 = load i32, i32* %23, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  store i32 %326, i32* %330, align 4
  br label %331

331:                                              ; preds = %325, %316
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %23, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %23, align 4
  br label %200

335:                                              ; preds = %200
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = load i32, i32* %22, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load i32*, i32** %27, align 8
  %344 = sext i32 %342 to i64
  %345 = getelementptr inbounds i32, i32* %343, i64 %344
  store i32* %345, i32** %27, align 8
  br label %346

346:                                              ; preds = %335
  %347 = load i32, i32* %24, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %24, align 4
  br label %195

349:                                              ; preds = %195
  br label %350

350:                                              ; preds = %349, %136
  %351 = load i32, i32* %22, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %22, align 4
  br label %81

353:                                              ; preds = %81
  br label %635

354:                                              ; preds = %4
  store i32 0, i32* %22, align 4
  br label %355

355:                                              ; preds = %631, %354
  %356 = load i32, i32* %22, align 4
  %357 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 8
  %359 = load i32, i32* %358, align 8
  %360 = icmp slt i32 %356, %359
  br i1 %360, label %361, label %634

361:                                              ; preds = %355
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 9
  %364 = load i32*, i32** %363, align 8
  %365 = load i32, i32* %22, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %7, align 4
  %370 = mul nsw i32 %368, %369
  %371 = load i32, i32* %8, align 4
  %372 = sdiv i32 %370, %371
  store i32 %372, i32* %33, align 4
  %373 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %374 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %373, i32 0, i32 9
  %375 = load i32*, i32** %374, align 8
  %376 = load i32, i32* %22, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* %7, align 4
  %381 = add nsw i32 %380, 1
  %382 = mul nsw i32 %379, %381
  %383 = load i32, i32* %8, align 4
  %384 = sdiv i32 %382, %383
  store i32 %384, i32* %34, align 4
  %385 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 0
  %387 = load i32**, i32*** %386, align 8
  %388 = load i32, i32* %22, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32*, i32** %387, i64 %389
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %33, align 4
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 1
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %22, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = mul nsw i32 %392, %399
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %391, i64 %401
  store i32* %402, i32** %35, align 8
  %403 = load i32, i32* %22, align 4
  %404 = shl i32 1, %403
  %405 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i32 0, i32 10
  %407 = load i32, i32* %406, align 8
  %408 = and i32 %404, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %467, label %410

410:                                              ; preds = %361
  %411 = load i32*, i32** %35, align 8
  %412 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 1
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %22, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %420 = load i32, i32* %13, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %419, i64 %421
  %423 = load %struct.TYPE_8__*, %struct.TYPE_8__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 0
  %425 = load i32**, i32*** %424, align 8
  %426 = load i32, i32* %22, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32*, i32** %425, i64 %427
  %429 = load i32*, i32** %428, align 8
  %430 = load i32, i32* %33, align 4
  %431 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %432 = load i32, i32* %13, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %431, i64 %433
  %435 = load %struct.TYPE_8__*, %struct.TYPE_8__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %435, i32 0, i32 1
  %437 = load i32*, i32** %436, align 8
  %438 = load i32, i32* %22, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %437, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = mul nsw i32 %430, %441
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %429, i64 %443
  %445 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %446 = load i32, i32* %13, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %445, i64 %447
  %449 = load %struct.TYPE_8__*, %struct.TYPE_8__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %449, i32 0, i32 1
  %451 = load i32*, i32** %450, align 8
  %452 = load i32, i32* %22, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %451, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %457 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %456, i32 0, i32 11
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %22, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = load i32, i32* %34, align 4
  %464 = load i32, i32* %33, align 4
  %465 = sub nsw i32 %463, %464
  %466 = call i32 @av_image_copy_plane(i32* %411, i32 %418, i32* %444, i32 %455, i32 %462, i32 %465)
  br label %631

467:                                              ; preds = %361
  %468 = load i32, i32* %33, align 4
  store i32 %468, i32* %24, align 4
  br label %469

469:                                              ; preds = %627, %467
  %470 = load i32, i32* %24, align 4
  %471 = load i32, i32* %34, align 4
  %472 = icmp slt i32 %470, %471
  br i1 %472, label %473, label %630

473:                                              ; preds = %469
  store i32 0, i32* %23, align 4
  br label %474

474:                                              ; preds = %612, %473
  %475 = load i32, i32* %23, align 4
  %476 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %477 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %476, i32 0, i32 11
  %478 = load i32*, i32** %477, align 8
  %479 = load i32, i32* %22, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %478, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = sdiv i32 %482, 2
  %484 = icmp slt i32 %475, %483
  br i1 %484, label %485, label %615

485:                                              ; preds = %474
  %486 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %487 = load i32, i32* %13, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %486, i64 %488
  %490 = load %struct.TYPE_8__*, %struct.TYPE_8__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %490, i32 0, i32 0
  %492 = load i32**, i32*** %491, align 8
  %493 = load i32, i32* %22, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32*, i32** %492, i64 %494
  %496 = load i32*, i32** %495, align 8
  %497 = load i32, i32* %24, align 4
  %498 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %499 = load i32, i32* %13, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %498, i64 %500
  %502 = load %struct.TYPE_8__*, %struct.TYPE_8__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i32 0, i32 1
  %504 = load i32*, i32** %503, align 8
  %505 = load i32, i32* %22, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %504, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = mul nsw i32 %497, %508
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, i32* %496, i64 %510
  %512 = load i32, i32* %23, align 4
  %513 = mul nsw i32 %512, 2
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %511, i64 %514
  %516 = call i32 @AV_RN16(i32* %515)
  store i32 %516, i32* %36, align 4
  store i32 0, i32* %39, align 4
  store i32 0, i32* %21, align 4
  br label %517

517:                                              ; preds = %555, %485
  %518 = load i32, i32* %21, align 4
  %519 = load i32, i32* %14, align 4
  %520 = icmp slt i32 %518, %519
  br i1 %520, label %521, label %558

521:                                              ; preds = %517
  %522 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %523 = load i32, i32* %21, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %522, i64 %524
  %526 = load %struct.TYPE_8__*, %struct.TYPE_8__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %526, i32 0, i32 0
  %528 = load i32**, i32*** %527, align 8
  %529 = load i32, i32* %22, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i32*, i32** %528, i64 %530
  %532 = load i32*, i32** %531, align 8
  %533 = load i32, i32* %24, align 4
  %534 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %535 = load i32, i32* %21, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %534, i64 %536
  %538 = load %struct.TYPE_8__*, %struct.TYPE_8__** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %538, i32 0, i32 1
  %540 = load i32*, i32** %539, align 8
  %541 = load i32, i32* %22, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %540, i64 %542
  %544 = load i32, i32* %543, align 4
  %545 = mul nsw i32 %533, %544
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32, i32* %532, i64 %546
  %548 = load i32, i32* %23, align 4
  %549 = mul nsw i32 %548, 2
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %547, i64 %550
  %552 = call i32 @AV_RN16(i32* %551)
  %553 = load i32, i32* %39, align 4
  %554 = add nsw i32 %553, %552
  store i32 %554, i32* %39, align 4
  br label %555

555:                                              ; preds = %521
  %556 = load i32, i32* %21, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %21, align 4
  br label %517

558:                                              ; preds = %517
  %559 = load i32, i32* %39, align 4
  %560 = sitofp i32 %559 to float
  %561 = load i32, i32* %14, align 4
  %562 = sitofp i32 %561 to float
  %563 = fdiv float %560, %562
  store float %563, float* %38, align 4
  %564 = load i32, i32* %36, align 4
  %565 = sitofp i32 %564 to float
  %566 = load float, float* %38, align 4
  %567 = fsub float %565, %566
  store float %567, float* %37, align 4
  %568 = load float, float* %37, align 4
  %569 = call float @fabsf(float %568)
  %570 = load float, float* %15, align 4
  %571 = fcmp olt float %569, %570
  br i1 %571, label %572, label %605

572:                                              ; preds = %558
  %573 = load float, float* %37, align 4
  %574 = call float @fabsf(float %573)
  %575 = load float, float* %16, align 4
  %576 = fcmp ogt float %574, %575
  br i1 %576, label %577, label %605

577:                                              ; preds = %572
  %578 = load float, float* %37, align 4
  %579 = fcmp olt float %578, 0.000000e+00
  br i1 %579, label %580, label %588

580:                                              ; preds = %577
  %581 = load float, float* %37, align 4
  %582 = load float, float* %17, align 4
  %583 = fmul float %581, %582
  %584 = call i32 @FFABS(float %583)
  %585 = load i32, i32* %18, align 4
  %586 = call i32 @FFMIN(i32 %584, i32 %585)
  %587 = sub nsw i32 0, %586
  store i32 %587, i32* %40, align 4
  br label %595

588:                                              ; preds = %577
  %589 = load float, float* %37, align 4
  %590 = load float, float* %17, align 4
  %591 = fmul float %589, %590
  %592 = call i32 @FFABS(float %591)
  %593 = load i32, i32* %19, align 4
  %594 = call i32 @FFMIN(i32 %592, i32 %593)
  store i32 %594, i32* %40, align 4
  br label %595

595:                                              ; preds = %588, %580
  %596 = load i32, i32* %36, align 4
  %597 = load i32, i32* %40, align 4
  %598 = add nsw i32 %596, %597
  %599 = load i32, i32* %20, align 4
  %600 = call i32 @av_clip_uintp2_c(i32 %598, i32 %599)
  %601 = load i32*, i32** %35, align 8
  %602 = load i32, i32* %23, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i32, i32* %601, i64 %603
  store i32 %600, i32* %604, align 4
  br label %611

605:                                              ; preds = %572, %558
  %606 = load i32, i32* %36, align 4
  %607 = load i32*, i32** %35, align 8
  %608 = load i32, i32* %23, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i32, i32* %607, i64 %609
  store i32 %606, i32* %610, align 4
  br label %611

611:                                              ; preds = %605, %595
  br label %612

612:                                              ; preds = %611
  %613 = load i32, i32* %23, align 4
  %614 = add nsw i32 %613, 1
  store i32 %614, i32* %23, align 4
  br label %474

615:                                              ; preds = %474
  %616 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %617 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %616, i32 0, i32 1
  %618 = load i32*, i32** %617, align 8
  %619 = load i32, i32* %22, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i32, i32* %618, i64 %620
  %622 = load i32, i32* %621, align 4
  %623 = sdiv i32 %622, 2
  %624 = load i32*, i32** %35, align 8
  %625 = sext i32 %623 to i64
  %626 = getelementptr inbounds i32, i32* %624, i64 %625
  store i32* %626, i32** %35, align 8
  br label %627

627:                                              ; preds = %615
  %628 = load i32, i32* %24, align 4
  %629 = add nsw i32 %628, 1
  store i32 %629, i32* %24, align 4
  br label %469

630:                                              ; preds = %469
  br label %631

631:                                              ; preds = %630, %410
  %632 = load i32, i32* %22, align 4
  %633 = add nsw i32 %632, 1
  store i32 %633, i32* %22, align 4
  br label %355

634:                                              ; preds = %355
  br label %635

635:                                              ; preds = %634, %353
  ret i32 0
}

declare dso_local i32 @av_image_copy_plane(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local float @fabsf(float) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFABS(float) #1

declare dso_local i32 @av_clip_uint8(i32) #1

declare dso_local i32 @AV_RN16(i32*) #1

declare dso_local i32 @av_clip_uintp2_c(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
