; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nellymoserenc.c_encode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nellymoserenc.c_encode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@NELLY_FILL_LEN = common dso_local global i32 0, align 4
@NELLY_BUF_LEN = common dso_local global i32 0, align 4
@NELLY_BANDS = common dso_local global i32 0, align 4
@ff_nelly_band_sizes_table = common dso_local global i32* null, align 8
@ff_nelly_delta_table = common dso_local global i64* null, align 8
@ff_nelly_init_table = common dso_local global i32* null, align 8
@pow_table = common dso_local global i32* null, align 8
@POW_TABLE_OFFSET = common dso_local global i32 0, align 4
@ff_nelly_dequantization_table = common dso_local global float* null, align 8
@quant_lut = common dso_local global i32* null, align 8
@quant_lut_mul = common dso_local global float* null, align 8
@quant_lut_add = common dso_local global i64* null, align 8
@quant_lut_offset = common dso_local global i64* null, align 8
@NELLY_HEADER_BITS = common dso_local global i32 0, align 4
@NELLY_DETAIL_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*, i32)* @encode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_block(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca float*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %13, align 4
  %23 = load i32, i32* @NELLY_FILL_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca float, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %27 = load i32, i32* @NELLY_BUF_LEN, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %19, align 8
  %30 = load i32, i32* @NELLY_BANDS, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %20, align 8
  %33 = load i32, i32* @NELLY_BANDS, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca float, i64 %34, align 16
  store i64 %34, i64* %21, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = call i32 @apply_mdct(%struct.TYPE_8__* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @init_put_bits(i32* %7, i8* %38, i32 %39)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %114, %3
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @NELLY_BANDS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %117

45:                                               ; preds = %41
  store float 0.000000e+00, float* %16, align 4
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %92, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** @ff_nelly_band_sizes_table, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %97

54:                                               ; preds = %46
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load float*, float** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %57, i64 %59
  %61 = load float, float* %60, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load float*, float** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  %68 = load float, float* %67, align 4
  %69 = fmul float %61, %68
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load float*, float** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @NELLY_BUF_LEN, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %72, i64 %76
  %78 = load float, float* %77, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load float*, float** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @NELLY_BUF_LEN, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %81, i64 %85
  %87 = load float, float* %86, align 4
  %88 = fmul float %78, %87
  %89 = fadd float %69, %88
  %90 = load float, float* %16, align 4
  %91 = fadd float %90, %89
  store float %91, float* %16, align 4
  br label %92

92:                                               ; preds = %54
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %46

97:                                               ; preds = %46
  %98 = load float, float* %16, align 4
  %99 = load i32*, i32** @ff_nelly_band_sizes_table, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 7
  %105 = sitofp i32 %104 to float
  %106 = fdiv float %98, %105
  %107 = call i32 @FFMAX(double 1.000000e+00, float %106)
  %108 = call double @log2(i32 %107)
  %109 = fmul double %108, 1.024000e+03
  %110 = fptrunc double %109 to float
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %35, i64 %112
  store float %110, float* %113, align 4
  br label %114

114:                                              ; preds = %97
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %41

117:                                              ; preds = %41
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %126 = call i32 @get_exponent_dynamic(%struct.TYPE_8__* %125, float* %35, i32* %32)
  br label %130

127:                                              ; preds = %117
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = call i32 @get_exponent_greedy(%struct.TYPE_8__* %128, float* %35, i32* %32)
  br label %130

130:                                              ; preds = %127, %124
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %131

131:                                              ; preds = %220, %130
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @NELLY_BANDS, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %223

135:                                              ; preds = %131
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %135
  %139 = load i64*, i64** @ff_nelly_delta_table, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %32, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %139, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %32, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @put_bits(i32* %7, i32 5, i32 %154)
  br label %166

156:                                              ; preds = %135
  %157 = load i32*, i32** @ff_nelly_init_table, align 8
  %158 = getelementptr inbounds i32, i32* %32, i64 0
  %159 = load i32, i32* %158, align 16
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %13, align 4
  %163 = getelementptr inbounds i32, i32* %32, i64 0
  %164 = load i32, i32* %163, align 16
  %165 = call i32 @put_bits(i32* %7, i32 6, i32 %164)
  br label %166

166:                                              ; preds = %156, %138
  %167 = load i32*, i32** @pow_table, align 8
  %168 = load i32, i32* %13, align 4
  %169 = and i32 %168, 2047
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %13, align 4
  %174 = ashr i32 %173, 11
  %175 = load i32, i32* @POW_TABLE_OFFSET, align 4
  %176 = add nsw i32 %174, %175
  %177 = shl i32 1, %176
  %178 = sdiv i32 %172, %177
  %179 = sitofp i32 %178 to float
  store float %179, float* %14, align 4
  store i32 0, i32* %9, align 4
  br label %180

180:                                              ; preds = %214, %166
  %181 = load i32, i32* %9, align 4
  %182 = load i32*, i32** @ff_nelly_band_sizes_table, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %181, %186
  br i1 %187, label %188, label %219

188:                                              ; preds = %180
  %189 = load float, float* %14, align 4
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load float*, float** %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %192, i64 %194
  %196 = load float, float* %195, align 4
  %197 = fmul float %196, %189
  store float %197, float* %195, align 4
  %198 = load float, float* %14, align 4
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load float*, float** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* @NELLY_BUF_LEN, align 4
  %204 = add nsw i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float, float* %201, i64 %205
  %207 = load float, float* %206, align 4
  %208 = fmul float %207, %198
  store float %208, float* %206, align 4
  %209 = load i32, i32* %13, align 4
  %210 = sitofp i32 %209 to float
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds float, float* %26, i64 %212
  store float %210, float* %213, align 4
  br label %214

214:                                              ; preds = %188
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %9, align 4
  br label %180

219:                                              ; preds = %180
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %10, align 4
  br label %131

223:                                              ; preds = %131
  %224 = call i32 @ff_nelly_get_sample_bits(float* %26, i32* %29)
  store i32 0, i32* %11, align 4
  br label %225

225:                                              ; preds = %346, %223
  %226 = load i32, i32* %11, align 4
  %227 = icmp slt i32 %226, 2
  br i1 %227, label %228, label %349

228:                                              ; preds = %225
  store i32 0, i32* %8, align 4
  br label %229

229:                                              ; preds = %332, %228
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* @NELLY_FILL_LEN, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %335

233:                                              ; preds = %229
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %29, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = icmp sgt i32 %237, 0
  br i1 %238, label %239, label %331

239:                                              ; preds = %233
  %240 = load float*, float** @ff_nelly_dequantization_table, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %29, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = shl i32 1, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %240, i64 %246
  %248 = getelementptr inbounds float, float* %247, i64 -1
  store float* %248, float** %22, align 8
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = load float*, float** %250, align 8
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* @NELLY_BUF_LEN, align 4
  %254 = mul nsw i32 %252, %253
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %254, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %251, i64 %257
  %259 = load float, float* %258, align 4
  store float %259, float* %15, align 4
  %260 = load i32*, i32** @quant_lut, align 8
  %261 = load float, float* %15, align 4
  %262 = load float*, float** @quant_lut_mul, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %29, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %262, i64 %267
  %269 = load float, float* %268, align 4
  %270 = fmul float %261, %269
  %271 = load i64*, i64** @quant_lut_add, align 8
  %272 = load i32, i32* %8, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %29, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i64, i64* %271, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = sitofp i64 %278 to float
  %280 = fadd float %270, %279
  %281 = fptosi float %280 to i64
  %282 = load i64*, i64** @quant_lut_offset, align 8
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %29, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i64, i64* %282, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = load i64*, i64** @quant_lut_offset, align 8
  %291 = load i32, i32* %8, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %29, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i64, i64* %290, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = sub nsw i64 %298, 1
  %300 = call i64 @av_clip(i64 %281, i64 %289, i64 %299)
  %301 = getelementptr inbounds i32, i32* %260, i64 %300
  %302 = load i32, i32* %301, align 4
  store i32 %302, i32* %12, align 4
  %303 = load float, float* %15, align 4
  %304 = load float*, float** %22, align 8
  %305 = load i32, i32* %12, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %304, i64 %306
  %308 = load float, float* %307, align 4
  %309 = fsub float %303, %308
  %310 = call i64 @fabs(float %309)
  %311 = load float, float* %15, align 4
  %312 = load float*, float** %22, align 8
  %313 = load i32, i32* %12, align 4
  %314 = add nsw i32 %313, 1
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds float, float* %312, i64 %315
  %317 = load float, float* %316, align 4
  %318 = fsub float %311, %317
  %319 = call i64 @fabs(float %318)
  %320 = icmp sgt i64 %310, %319
  br i1 %320, label %321, label %324

321:                                              ; preds = %239
  %322 = load i32, i32* %12, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %12, align 4
  br label %324

324:                                              ; preds = %321, %239
  %325 = load i32, i32* %8, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %29, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %12, align 4
  %330 = call i32 @put_bits(i32* %7, i32 %328, i32 %329)
  br label %331

331:                                              ; preds = %324, %233
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %8, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %8, align 4
  br label %229

335:                                              ; preds = %229
  %336 = load i32, i32* %11, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %345, label %338

338:                                              ; preds = %335
  %339 = load i32, i32* @NELLY_HEADER_BITS, align 4
  %340 = load i32, i32* @NELLY_DETAIL_BITS, align 4
  %341 = add nsw i32 %339, %340
  %342 = call i32 @put_bits_count(i32* %7)
  %343 = sub nsw i32 %341, %342
  %344 = call i32 @put_bits(i32* %7, i32 %343, i32 0)
  br label %345

345:                                              ; preds = %338, %335
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %11, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %11, align 4
  br label %225

349:                                              ; preds = %225
  %350 = call i32 @flush_put_bits(i32* %7)
  %351 = call i32 @put_bits_ptr(i32* %7)
  %352 = load i8*, i8** %5, align 8
  %353 = load i32, i32* %6, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8, i8* %352, i64 %354
  %356 = call i32 @put_bits_ptr(i32* %7)
  %357 = sext i32 %356 to i64
  %358 = sub i64 0, %357
  %359 = getelementptr inbounds i8, i8* %355, i64 %358
  %360 = call i32 @memset(i32 %351, i32 0, i8* %359)
  %361 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %361)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @apply_mdct(%struct.TYPE_8__*) #2

declare dso_local i32 @init_put_bits(i32*, i8*, i32) #2

declare dso_local double @log2(i32) #2

declare dso_local i32 @FFMAX(double, float) #2

declare dso_local i32 @get_exponent_dynamic(%struct.TYPE_8__*, float*, i32*) #2

declare dso_local i32 @get_exponent_greedy(%struct.TYPE_8__*, float*, i32*) #2

declare dso_local i32 @put_bits(i32*, i32, i32) #2

declare dso_local i32 @ff_nelly_get_sample_bits(float*, i32*) #2

declare dso_local i64 @av_clip(i64, i64, i64) #2

declare dso_local i64 @fabs(float) #2

declare dso_local i32 @put_bits_count(i32*) #2

declare dso_local i32 @flush_put_bits(i32*) #2

declare dso_local i32 @memset(i32, i32, i8*) #2

declare dso_local i32 @put_bits_ptr(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
