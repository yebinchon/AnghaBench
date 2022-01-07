; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_silk.c_silk_decode_lpc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_silk.c_silk_decode_lpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32*, float*, i64 }

@ff_silk_model_lsf_s1 = common dso_local global i32** null, align 8
@ff_silk_lsf_s2_model_sel_wb = common dso_local global i32** null, align 8
@ff_silk_lsf_s2_model_sel_nbmb = common dso_local global i32** null, align 8
@ff_silk_model_lsf_s2 = common dso_local global i32* null, align 8
@ff_silk_model_lsf_s2_ext = common dso_local global i32 0, align 4
@ff_silk_lsf_pred_weights_wb = common dso_local global i32** null, align 8
@ff_silk_lsf_weight_sel_wb = common dso_local global i64** null, align 8
@ff_silk_lsf_pred_weights_nbmb = common dso_local global i32** null, align 8
@ff_silk_lsf_weight_sel_nbmb = common dso_local global i64** null, align 8
@ff_silk_lsf_codebook_wb = common dso_local global i32** null, align 8
@ff_silk_lsf_codebook_nbmb = common dso_local global i32** null, align 8
@ff_silk_lsf_min_spacing_wb = common dso_local global i32 0, align 4
@ff_silk_lsf_min_spacing_nbmb = common dso_local global i32 0, align 4
@ff_silk_model_lsf_interpolation_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*, i32*, float*, float*, i32*, i32*, i32)* @silk_decode_lpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @silk_decode_lpc(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2, float* %3, float* %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca [16 x i64], align 16
  %21 = alloca [16 x i32], align 16
  %22 = alloca [16 x i32], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca [16 x i32], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %10, align 8
  store i32* %2, i32** %11, align 8
  store float* %3, float** %12, align 8
  store float* %4, float** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 16, i32 10
  store i32 %43, i32* %18, align 4
  %44 = load i32*, i32** %14, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = load i32**, i32*** @ff_silk_model_lsf_s1, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32*, i32** %46, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @ff_opus_rc_dec_cdf(i32* %45, i32 %55)
  store i64 %56, i64* %19, align 8
  store i32 0, i32* %17, align 4
  br label %57

57:                                               ; preds = %128, %8
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %131

61:                                               ; preds = %57
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i32**, i32*** @ff_silk_lsf_s2_model_sel_wb, align 8
  %68 = load i64, i64* %19, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  br label %84

75:                                               ; preds = %61
  %76 = load i32**, i32*** @ff_silk_lsf_s2_model_sel_nbmb, align 8
  %77 = load i64, i64* %19, align 8
  %78 = getelementptr inbounds i32*, i32** %76, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  br label %84

84:                                               ; preds = %75, %66
  %85 = phi i32 [ %74, %66 ], [ %83, %75 ]
  store i32 %85, i32* %23, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = load i32*, i32** @ff_silk_model_lsf_s2, align 8
  %88 = load i32, i32* %23, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @ff_opus_rc_dec_cdf(i32* %86, i32 %91)
  %93 = sub i64 %92, 4
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [16 x i64], [16 x i64]* %20, i64 0, i64 %95
  store i64 %93, i64* %96, align 8
  %97 = load i32, i32* %17, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [16 x i64], [16 x i64]* %20, i64 0, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, -4
  br i1 %101, label %102, label %111

102:                                              ; preds = %84
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* @ff_silk_model_lsf_s2_ext, align 4
  %105 = call i64 @ff_opus_rc_dec_cdf(i32* %103, i32 %104)
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [16 x i64], [16 x i64]* %20, i64 0, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = sub i64 %109, %105
  store i64 %110, i64* %108, align 8
  br label %127

111:                                              ; preds = %84
  %112 = load i32, i32* %17, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [16 x i64], [16 x i64]* %20, i64 0, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 4
  br i1 %116, label %117, label %126

117:                                              ; preds = %111
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* @ff_silk_model_lsf_s2_ext, align 4
  %120 = call i64 @ff_opus_rc_dec_cdf(i32* %118, i32 %119)
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [16 x i64], [16 x i64]* %20, i64 0, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, %120
  store i64 %125, i64* %123, align 8
  br label %126

126:                                              ; preds = %117, %111
  br label %127

127:                                              ; preds = %126, %102
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %17, align 4
  br label %57

131:                                              ; preds = %57
  %132 = load i32, i32* %18, align 4
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %17, align 4
  br label %134

134:                                              ; preds = %245, %131
  %135 = load i32, i32* %17, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %248

137:                                              ; preds = %134
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 9830, i32 11796
  store i32 %143, i32* %24, align 4
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [16 x i64], [16 x i64]* %20, i64 0, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = mul i64 %147, 1024
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %151
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [16 x i64], [16 x i64]* %20, i64 0, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = icmp ult i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %137
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 102
  store i32 %163, i32* %161, align 4
  br label %177

164:                                              ; preds = %137
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [16 x i64], [16 x i64]* %20, i64 0, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = icmp ugt i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %174, 102
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %170, %164
  br label %177

177:                                              ; preds = %176, %158
  %178 = load i32, i32* %17, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %24, align 4
  %183 = mul nsw i32 %181, %182
  %184 = ashr i32 %183, 16
  %185 = load i32, i32* %17, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %186
  store i32 %184, i32* %187, align 4
  %188 = load i32, i32* %17, align 4
  %189 = add nsw i32 %188, 1
  %190 = load i32, i32* %18, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %244

192:                                              ; preds = %177
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %213

197:                                              ; preds = %192
  %198 = load i32**, i32*** @ff_silk_lsf_pred_weights_wb, align 8
  %199 = load i64**, i64*** @ff_silk_lsf_weight_sel_wb, align 8
  %200 = load i64, i64* %19, align 8
  %201 = getelementptr inbounds i64*, i64** %199, i64 %200
  %202 = load i64*, i64** %201, align 8
  %203 = load i32, i32* %17, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds i32*, i32** %198, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %17, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  br label %229

213:                                              ; preds = %192
  %214 = load i32**, i32*** @ff_silk_lsf_pred_weights_nbmb, align 8
  %215 = load i64**, i64*** @ff_silk_lsf_weight_sel_nbmb, align 8
  %216 = load i64, i64* %19, align 8
  %217 = getelementptr inbounds i64*, i64** %215, i64 %216
  %218 = load i64*, i64** %217, align 8
  %219 = load i32, i32* %17, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds i32*, i32** %214, i64 %222
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %17, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  br label %229

229:                                              ; preds = %213, %197
  %230 = phi i32 [ %212, %197 ], [ %228, %213 ]
  store i32 %230, i32* %25, align 4
  %231 = load i32, i32* %17, align 4
  %232 = add nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %25, align 4
  %237 = mul nsw i32 %235, %236
  %238 = ashr i32 %237, 8
  %239 = load i32, i32* %17, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, %238
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %229, %177
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %17, align 4
  %247 = add nsw i32 %246, -1
  store i32 %247, i32* %17, align 4
  br label %134

248:                                              ; preds = %134
  store i32 0, i32* %17, align 4
  br label %249

249:                                              ; preds = %349, %248
  %250 = load i32, i32* %17, align 4
  %251 = load i32, i32* %18, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %352

253:                                              ; preds = %249
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %253
  %259 = load i32**, i32*** @ff_silk_lsf_codebook_wb, align 8
  %260 = load i64, i64* %19, align 8
  %261 = getelementptr inbounds i32*, i32** %259, i64 %260
  %262 = load i32*, i32** %261, align 8
  br label %268

263:                                              ; preds = %253
  %264 = load i32**, i32*** @ff_silk_lsf_codebook_nbmb, align 8
  %265 = load i64, i64* %19, align 8
  %266 = getelementptr inbounds i32*, i32** %264, i64 %265
  %267 = load i32*, i32** %266, align 8
  br label %268

268:                                              ; preds = %263, %258
  %269 = phi i32* [ %262, %258 ], [ %267, %263 ]
  store i32* %269, i32** %26, align 8
  %270 = load i32*, i32** %26, align 8
  %271 = load i32, i32* %17, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  store i32 %274, i32* %27, align 4
  %275 = load i32, i32* %17, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %268
  %278 = load i32*, i32** %26, align 8
  %279 = load i32, i32* %17, align 4
  %280 = sub nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %278, i64 %281
  %283 = load i32, i32* %282, align 4
  br label %285

284:                                              ; preds = %268
  br label %285

285:                                              ; preds = %284, %277
  %286 = phi i32 [ %283, %277 ], [ 0, %284 ]
  store i32 %286, i32* %28, align 4
  %287 = load i32, i32* %17, align 4
  %288 = add nsw i32 %287, 1
  %289 = load i32, i32* %18, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %298

291:                                              ; preds = %285
  %292 = load i32*, i32** %26, align 8
  %293 = load i32, i32* %17, align 4
  %294 = add nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %292, i64 %295
  %297 = load i32, i32* %296, align 4
  br label %299

298:                                              ; preds = %285
  br label %299

299:                                              ; preds = %298, %291
  %300 = phi i32 [ %297, %291 ], [ 256, %298 ]
  store i32 %300, i32* %29, align 4
  %301 = load i32, i32* %27, align 4
  %302 = load i32, i32* %28, align 4
  %303 = sub nsw i32 %301, %302
  %304 = sdiv i32 1024, %303
  %305 = load i32, i32* %29, align 4
  %306 = load i32, i32* %27, align 4
  %307 = sub nsw i32 %305, %306
  %308 = sdiv i32 1024, %307
  %309 = add nsw i32 %304, %308
  %310 = shl i32 %309, 16
  store i32 %310, i32* %30, align 4
  %311 = load i32, i32* %30, align 4
  %312 = call i32 @opus_ilog(i32 %311)
  store i32 %312, i32* %32, align 4
  %313 = load i32, i32* %30, align 4
  %314 = load i32, i32* %32, align 4
  %315 = sub nsw i32 %314, 8
  %316 = ashr i32 %313, %315
  %317 = and i32 %316, 127
  store i32 %317, i32* %33, align 4
  %318 = load i32, i32* %32, align 4
  %319 = and i32 %318, 1
  %320 = icmp ne i32 %319, 0
  %321 = zext i1 %320 to i64
  %322 = select i1 %320, i32 32768, i32 46214
  %323 = load i32, i32* %32, align 4
  %324 = sub nsw i32 32, %323
  %325 = ashr i32 %324, 1
  %326 = ashr i32 %322, %325
  store i32 %326, i32* %34, align 4
  %327 = load i32, i32* %34, align 4
  %328 = load i32, i32* %33, align 4
  %329 = mul nsw i32 213, %328
  %330 = load i32, i32* %34, align 4
  %331 = mul nsw i32 %329, %330
  %332 = ashr i32 %331, 16
  %333 = add nsw i32 %327, %332
  store i32 %333, i32* %31, align 4
  %334 = load i32, i32* %27, align 4
  %335 = mul nsw i32 %334, 128
  %336 = load i32, i32* %17, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = mul nsw i32 %339, 16384
  %341 = load i32, i32* %31, align 4
  %342 = sdiv i32 %340, %341
  %343 = add nsw i32 %335, %342
  store i32 %343, i32* %35, align 4
  %344 = load i32, i32* %35, align 4
  %345 = call i32 @av_clip_uintp2(i32 %344, i32 15)
  %346 = load i32, i32* %17, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 %347
  store i32 %345, i32* %348, align 4
  br label %349

349:                                              ; preds = %299
  %350 = load i32, i32* %17, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %17, align 4
  br label %249

352:                                              ; preds = %249
  %353 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %354 = load i32, i32* %18, align 4
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %352
  %360 = load i32, i32* @ff_silk_lsf_min_spacing_wb, align 4
  br label %363

361:                                              ; preds = %352
  %362 = load i32, i32* @ff_silk_lsf_min_spacing_nbmb, align 4
  br label %363

363:                                              ; preds = %361, %359
  %364 = phi i32 [ %360, %359 ], [ %362, %361 ]
  %365 = call i32 @silk_stabilize_lsf(i32* %353, i32 %354, i32 %364)
  %366 = load i32*, i32** %15, align 8
  store i32 0, i32* %366, align 4
  %367 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = icmp eq i32 %369, 4
  br i1 %370, label %371, label %443

371:                                              ; preds = %363
  %372 = load i32*, i32** %11, align 8
  %373 = load i32, i32* @ff_silk_model_lsf_interpolation_offset, align 4
  %374 = call i64 @ff_opus_rc_dec_cdf(i32* %372, i32 %373)
  %375 = trunc i64 %374 to i32
  store i32 %375, i32* %36, align 4
  %376 = load i32, i32* %36, align 4
  %377 = icmp ne i32 %376, 4
  br i1 %377, label %378, label %434

378:                                              ; preds = %371
  %379 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %380 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i32 0, i32 2
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %434

383:                                              ; preds = %378
  %384 = load i32*, i32** %15, align 8
  store i32 1, i32* %384, align 4
  %385 = load i32, i32* %36, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %427

387:                                              ; preds = %383
  store i32 0, i32* %17, align 4
  br label %388

388:                                              ; preds = %419, %387
  %389 = load i32, i32* %17, align 4
  %390 = load i32, i32* %18, align 4
  %391 = icmp slt i32 %389, %390
  br i1 %391, label %392, label %422

392:                                              ; preds = %388
  %393 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i32 0, i32 0
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %17, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* %17, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %405 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %404, i32 0, i32 0
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* %17, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = sub nsw i32 %403, %410
  %412 = load i32, i32* %36, align 4
  %413 = mul nsw i32 %411, %412
  %414 = ashr i32 %413, 2
  %415 = add nsw i32 %399, %414
  %416 = load i32, i32* %17, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds [16 x i32], [16 x i32]* %37, i64 0, i64 %417
  store i32 %415, i32* %418, align 4
  br label %419

419:                                              ; preds = %392
  %420 = load i32, i32* %17, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %17, align 4
  br label %388

422:                                              ; preds = %388
  %423 = getelementptr inbounds [16 x i32], [16 x i32]* %37, i64 0, i64 0
  %424 = load float*, float** %12, align 8
  %425 = load i32, i32* %18, align 4
  %426 = call i32 @silk_lsf2lpc(i32* %423, float* %424, i32 %425)
  br label %433

427:                                              ; preds = %383
  %428 = load float*, float** %12, align 8
  %429 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %430 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %429, i32 0, i32 1
  %431 = load float*, float** %430, align 8
  %432 = call i32 (float*, ...) @memcpy(float* %428, float* %431, i64 64)
  br label %433

433:                                              ; preds = %427, %422
  br label %435

434:                                              ; preds = %378, %371
  store i32 4, i32* %36, align 4
  br label %435

435:                                              ; preds = %434, %433
  %436 = load i32, i32* %36, align 4
  %437 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %438 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %437, i32 0, i32 2
  store i32 %436, i32* %438, align 4
  %439 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %440 = load float*, float** %13, align 8
  %441 = load i32, i32* %18, align 4
  %442 = call i32 @silk_lsf2lpc(i32* %439, float* %440, i32 %441)
  br label %450

443:                                              ; preds = %363
  %444 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %445 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %444, i32 0, i32 2
  store i32 4, i32* %445, align 4
  %446 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %447 = load float*, float** %13, align 8
  %448 = load i32, i32* %18, align 4
  %449 = call i32 @silk_lsf2lpc(i32* %446, float* %447, i32 %448)
  br label %450

450:                                              ; preds = %443, %435
  %451 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %452 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %451, i32 0, i32 0
  %453 = load i32*, i32** %452, align 8
  %454 = bitcast i32* %453 to float*
  %455 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %456 = load i32, i32* %18, align 4
  %457 = sext i32 %456 to i64
  %458 = mul i64 %457, 4
  %459 = call i32 (float*, ...) @memcpy(float* %454, i32* %455, i64 %458)
  %460 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %461 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %460, i32 0, i32 1
  %462 = load float*, float** %461, align 8
  %463 = load float*, float** %13, align 8
  %464 = load i32, i32* %18, align 4
  %465 = sext i32 %464 to i64
  %466 = mul i64 %465, 4
  %467 = call i32 (float*, ...) @memcpy(float* %462, float* %463, i64 %466)
  ret void
}

declare dso_local i64 @ff_opus_rc_dec_cdf(i32*, i32) #1

declare dso_local i32 @opus_ilog(i32) #1

declare dso_local i32 @av_clip_uintp2(i32, i32) #1

declare dso_local i32 @silk_stabilize_lsf(i32*, i32, i32) #1

declare dso_local i32 @silk_lsf2lpc(i32*, float*, i32) #1

declare dso_local i32 @memcpy(float*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
