; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec.c_set_downmix_coeffs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec.c_set_downmix_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i64, i64, i8*** }

@gain_levels = common dso_local global float* null, align 8
@AC3_MAX_CHANNELS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ac3_default_coeffs = common dso_local global i64*** null, align 8
@AC3_CHMODE_2F1R = common dso_local global i32 0, align 4
@AC3_CHMODE_3F1R = common dso_local global i32 0, align 4
@LEVEL_MINUS_3DB = common dso_local global float 0.000000e+00, align 4
@AC3_CHMODE_2F2R = common dso_local global i32 0, align 4
@AC3_CHMODE_3F2R = common dso_local global i32 0, align 4
@AC3_CHMODE_MONO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @set_downmix_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_downmix_coeffs(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %14 = load float*, float** @gain_levels, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds float, float* %14, i64 %17
  %19 = load float, float* %18, align 4
  store float %19, float* %5, align 4
  %20 = load float*, float** @gain_levels, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds float, float* %20, i64 %23
  %25 = load float, float* %24, align 4
  store float %25, float* %6, align 4
  %26 = load i32, i32* @AC3_MAX_CHANNELS, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %9, align 8
  %29 = mul nuw i64 2, %27
  %30 = alloca float, i64 %29, align 16
  store i64 %27, i64* %10, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 5
  %33 = load i8***, i8**** %32, align 8
  %34 = getelementptr inbounds i8**, i8*** %33, i64 0
  %35 = load i8**, i8*** %34, align 8
  %36 = icmp ne i8** %35, null
  br i1 %36, label %67, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* @AC3_MAX_CHANNELS, align 4
  %39 = mul nsw i32 2, %38
  %40 = call i8** @av_malloc_array(i32 %39, i32 8)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 5
  %43 = load i8***, i8**** %42, align 8
  %44 = getelementptr inbounds i8**, i8*** %43, i64 0
  store i8** %40, i8*** %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 5
  %47 = load i8***, i8**** %46, align 8
  %48 = getelementptr inbounds i8**, i8*** %47, i64 0
  %49 = load i8**, i8*** %48, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %37
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = call i32 @AVERROR(i32 %52)
  store i32 %53, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %340

54:                                               ; preds = %37
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 5
  %57 = load i8***, i8**** %56, align 8
  %58 = getelementptr inbounds i8**, i8*** %57, i64 0
  %59 = load i8**, i8*** %58, align 8
  %60 = load i32, i32* @AC3_MAX_CHANNELS, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  %65 = load i8***, i8**** %64, align 8
  %66 = getelementptr inbounds i8**, i8*** %65, i64 1
  store i8** %62, i8*** %66, align 8
  br label %67

67:                                               ; preds = %54, %1
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %115, %67
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %118

74:                                               ; preds = %68
  %75 = load float*, float** @gain_levels, align 8
  %76 = load i64***, i64**** @ac3_default_coeffs, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i64**, i64*** %76, i64 %79
  %81 = load i64**, i64*** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64*, i64** %81, i64 %83
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds float, float* %75, i64 %87
  %89 = load float, float* %88, align 4
  %90 = mul nsw i64 0, %27
  %91 = getelementptr inbounds float, float* %30, i64 %90
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  store float %89, float* %94, align 4
  %95 = load float*, float** @gain_levels, align 8
  %96 = load i64***, i64**** @ac3_default_coeffs, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i64**, i64*** %96, i64 %99
  %101 = load i64**, i64*** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64*, i64** %101, i64 %103
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds float, float* %95, i64 %107
  %109 = load float, float* %108, align 4
  %110 = mul nsw i64 1, %27
  %111 = getelementptr inbounds float, float* %30, i64 %110
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %111, i64 %113
  store float %109, float* %114, align 4
  br label %115

115:                                              ; preds = %74
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %68

118:                                              ; preds = %68
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ugt i64 %121, 1
  br i1 %122, label %123, label %137

123:                                              ; preds = %118
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = and i64 %126, 1
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %123
  %130 = load float, float* %5, align 4
  %131 = mul nsw i64 1, %27
  %132 = getelementptr inbounds float, float* %30, i64 %131
  %133 = getelementptr inbounds float, float* %132, i64 1
  store float %130, float* %133, align 4
  %134 = mul nsw i64 0, %27
  %135 = getelementptr inbounds float, float* %30, i64 %134
  %136 = getelementptr inbounds float, float* %135, i64 1
  store float %130, float* %136, align 4
  br label %137

137:                                              ; preds = %129, %123, %118
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* @AC3_CHMODE_2F1R, align 4
  %142 = sext i32 %141 to i64
  %143 = icmp eq i64 %140, %142
  br i1 %143, label %151, label %144

144:                                              ; preds = %137
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* @AC3_CHMODE_3F1R, align 4
  %149 = sext i32 %148 to i64
  %150 = icmp eq i64 %147, %149
  br i1 %150, label %151, label %170

151:                                              ; preds = %144, %137
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = sub i64 %154, 2
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %12, align 4
  %157 = load float, float* %6, align 4
  %158 = load float, float* @LEVEL_MINUS_3DB, align 4
  %159 = fmul float %157, %158
  %160 = mul nsw i64 1, %27
  %161 = getelementptr inbounds float, float* %30, i64 %160
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %161, i64 %163
  store float %159, float* %164, align 4
  %165 = mul nsw i64 0, %27
  %166 = getelementptr inbounds float, float* %30, i64 %165
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %166, i64 %168
  store float %159, float* %169, align 4
  br label %170

170:                                              ; preds = %151, %144
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* @AC3_CHMODE_2F2R, align 4
  %175 = sext i32 %174 to i64
  %176 = icmp eq i64 %173, %175
  br i1 %176, label %184, label %177

177:                                              ; preds = %170
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* @AC3_CHMODE_3F2R, align 4
  %182 = sext i32 %181 to i64
  %183 = icmp eq i64 %180, %182
  br i1 %183, label %184, label %202

184:                                              ; preds = %177, %170
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = sub i64 %187, 4
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %13, align 4
  %190 = load float, float* %6, align 4
  %191 = mul nsw i64 1, %27
  %192 = getelementptr inbounds float, float* %30, i64 %191
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %192, i64 %195
  store float %190, float* %196, align 4
  %197 = mul nsw i64 0, %27
  %198 = getelementptr inbounds float, float* %30, i64 %197
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %198, i64 %200
  store float %190, float* %201, align 4
  br label %202

202:                                              ; preds = %184, %177
  store float 0.000000e+00, float* %8, align 4
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %4, align 4
  br label %203

203:                                              ; preds = %226, %202
  %204 = load i32, i32* %4, align 4
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = icmp slt i32 %204, %207
  br i1 %208, label %209, label %229

209:                                              ; preds = %203
  %210 = mul nsw i64 0, %27
  %211 = getelementptr inbounds float, float* %30, i64 %210
  %212 = load i32, i32* %4, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %211, i64 %213
  %215 = load float, float* %214, align 4
  %216 = load float, float* %7, align 4
  %217 = fadd float %216, %215
  store float %217, float* %7, align 4
  %218 = mul nsw i64 1, %27
  %219 = getelementptr inbounds float, float* %30, i64 %218
  %220 = load i32, i32* %4, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, float* %219, i64 %221
  %223 = load float, float* %222, align 4
  %224 = load float, float* %8, align 4
  %225 = fadd float %224, %223
  store float %225, float* %8, align 4
  br label %226

226:                                              ; preds = %209
  %227 = load i32, i32* %4, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %4, align 4
  br label %203

229:                                              ; preds = %203
  %230 = load float, float* %7, align 4
  %231 = fdiv float 1.000000e+00, %230
  store float %231, float* %7, align 4
  %232 = load float, float* %8, align 4
  %233 = fdiv float 1.000000e+00, %232
  store float %233, float* %8, align 4
  store i32 0, i32* %4, align 4
  br label %234

234:                                              ; preds = %257, %229
  %235 = load i32, i32* %4, align 4
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %260

240:                                              ; preds = %234
  %241 = load float, float* %7, align 4
  %242 = mul nsw i64 0, %27
  %243 = getelementptr inbounds float, float* %30, i64 %242
  %244 = load i32, i32* %4, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %243, i64 %245
  %247 = load float, float* %246, align 4
  %248 = fmul float %247, %241
  store float %248, float* %246, align 4
  %249 = load float, float* %8, align 4
  %250 = mul nsw i64 1, %27
  %251 = getelementptr inbounds float, float* %30, i64 %250
  %252 = load i32, i32* %4, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float, float* %251, i64 %253
  %255 = load float, float* %254, align 4
  %256 = fmul float %255, %249
  store float %256, float* %254, align 4
  br label %257

257:                                              ; preds = %240
  %258 = load i32, i32* %4, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %4, align 4
  br label %234

260:                                              ; preds = %234
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 4
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @AC3_CHMODE_MONO, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %298

266:                                              ; preds = %260
  store i32 0, i32* %4, align 4
  br label %267

267:                                              ; preds = %294, %266
  %268 = load i32, i32* %4, align 4
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %297

273:                                              ; preds = %267
  %274 = mul nsw i64 0, %27
  %275 = getelementptr inbounds float, float* %30, i64 %274
  %276 = load i32, i32* %4, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds float, float* %275, i64 %277
  %279 = load float, float* %278, align 4
  %280 = mul nsw i64 1, %27
  %281 = getelementptr inbounds float, float* %30, i64 %280
  %282 = load i32, i32* %4, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds float, float* %281, i64 %283
  %285 = load float, float* %284, align 4
  %286 = fadd float %279, %285
  %287 = load float, float* @LEVEL_MINUS_3DB, align 4
  %288 = fmul float %286, %287
  %289 = mul nsw i64 0, %27
  %290 = getelementptr inbounds float, float* %30, i64 %289
  %291 = load i32, i32* %4, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds float, float* %290, i64 %292
  store float %288, float* %293, align 4
  br label %294

294:                                              ; preds = %273
  %295 = load i32, i32* %4, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %4, align 4
  br label %267

297:                                              ; preds = %267
  br label %298

298:                                              ; preds = %297, %260
  store i32 0, i32* %4, align 4
  br label %299

299:                                              ; preds = %336, %298
  %300 = load i32, i32* %4, align 4
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = icmp slt i32 %300, %303
  br i1 %304, label %305, label %339

305:                                              ; preds = %299
  %306 = mul nsw i64 0, %27
  %307 = getelementptr inbounds float, float* %30, i64 %306
  %308 = load i32, i32* %4, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %307, i64 %309
  %311 = load float, float* %310, align 4
  %312 = call i8* @FIXR12(float %311)
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 5
  %315 = load i8***, i8**** %314, align 8
  %316 = getelementptr inbounds i8**, i8*** %315, i64 0
  %317 = load i8**, i8*** %316, align 8
  %318 = load i32, i32* %4, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8*, i8** %317, i64 %319
  store i8* %312, i8** %320, align 8
  %321 = mul nsw i64 1, %27
  %322 = getelementptr inbounds float, float* %30, i64 %321
  %323 = load i32, i32* %4, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds float, float* %322, i64 %324
  %326 = load float, float* %325, align 4
  %327 = call i8* @FIXR12(float %326)
  %328 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 5
  %330 = load i8***, i8**** %329, align 8
  %331 = getelementptr inbounds i8**, i8*** %330, i64 1
  %332 = load i8**, i8*** %331, align 8
  %333 = load i32, i32* %4, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8*, i8** %332, i64 %334
  store i8* %327, i8** %335, align 8
  br label %336

336:                                              ; preds = %305
  %337 = load i32, i32* %4, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %4, align 4
  br label %299

339:                                              ; preds = %299
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %340

340:                                              ; preds = %339, %51
  %341 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %341)
  %342 = load i32, i32* %2, align 4
  ret i32 %342
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8** @av_malloc_array(i32, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i8* @FIXR12(float) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
