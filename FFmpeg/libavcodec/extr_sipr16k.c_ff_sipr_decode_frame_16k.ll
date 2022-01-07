; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr16k.c_ff_sipr_decode_frame_16k.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr16k.c_ff_sipr_decode_frame_16k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { float*, float*, float*, float*, double*, float*, i32, i32, i8*, i32 }
%struct.TYPE_8__ = type { i64*, i64*, i32*, i32*, i32, i32 }
%struct.TYPE_10__ = type { i8*, i32 }

@SUBFRAME_COUNT_16k = common dso_local global i32 0, align 4
@L_SUBFR_16k = common dso_local global i32 0, align 4
@LP_FILTER_ORDER_16k = common dso_local global i32 0, align 4
@LSFQ_DIFF_MIN = common dso_local global i32 0, align 4
@PITCH_MIN = common dso_local global i32 0, align 4
@PITCH_MAX = common dso_local global i32 0, align 4
@gain_pitch_cb_16k = common dso_local global float* null, align 8
@sinc_win = common dso_local global i32 0, align 4
@LP_FILTER_ORDER = common dso_local global i32 0, align 4
@ff_fc_4pulses_8bits_tracks_13 = common dso_local global i32 0, align 4
@gain_cb_16k = common dso_local global float* null, align 8
@M_LN10 = common dso_local global double 0.000000e+00, align 8
@M_LN2 = common dso_local global double 0.000000e+00, align 8
@pred_16k = common dso_local global i32 0, align 4
@L_INTERPOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_sipr_decode_frame_16k(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_10__, align 8
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store float* %2, float** %6, align 8
  %24 = load i32, i32* @SUBFRAME_COUNT_16k, align 4
  %25 = load i32, i32* @L_SUBFR_16k, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load float*, float** %28, align 8
  %30 = load i32, i32* @LP_FILTER_ORDER_16k, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %29, i64 %31
  store float* %32, float** %8, align 8
  %33 = load i32, i32* @LP_FILTER_ORDER_16k, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %9, align 8
  %36 = alloca float, i64 %34, align 16
  store i64 %34, i64* %10, align 8
  %37 = load i32, i32* @LP_FILTER_ORDER_16k, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca double, i64 %38, align 16
  store i64 %38, i64* %11, align 8
  %40 = load i32, i32* @LP_FILTER_ORDER_16k, align 4
  %41 = zext i32 %40 to i64
  %42 = mul nuw i64 2, %41
  %43 = alloca float, i64 %42, align 16
  store i64 %41, i64* %12, align 8
  %44 = load i32, i32* @L_SUBFR_16k, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca float, i64 %45, align 16
  store i64 %45, i64* %13, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load float*, float** %48, align 8
  %50 = getelementptr inbounds float, float* %49, i64 292
  store float* %50, float** %18, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @lsf_decode_fp_16k(i32 %53, float* %36, i32 %56, i32 %59)
  %61 = load i32, i32* @LSFQ_DIFF_MIN, align 4
  %62 = sdiv i32 %61, 2
  %63 = load i32, i32* @LP_FILTER_ORDER_16k, align 4
  %64 = call i32 @ff_set_min_dist_lsf(float* %36, i32 %62, i32 %63)
  %65 = call i32 @lsf2lsp(float* %36, double* %39)
  %66 = mul nsw i64 0, %41
  %67 = getelementptr inbounds float, float* %43, i64 %66
  %68 = mul nsw i64 1, %41
  %69 = getelementptr inbounds float, float* %43, i64 %68
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load float*, float** %71, align 8
  %73 = call i32 @acelp_lp_decodef(float* %67, float* %69, double* %39, float* %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load float*, float** %75, align 8
  %77 = load i32, i32* @LP_FILTER_ORDER_16k, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 8
  %80 = call i32 (float*, ...) @memcpy(float* %76, double* %39, i64 %79)
  %81 = load float*, float** %8, align 8
  %82 = load i32, i32* @LP_FILTER_ORDER_16k, align 4
  %83 = sext i32 %82 to i64
  %84 = sub i64 0, %83
  %85 = getelementptr inbounds float, float* %81, i64 %84
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  %88 = load float*, float** %87, align 8
  %89 = load i32, i32* @LP_FILTER_ORDER_16k, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = call i32 (float*, ...) @memcpy(float* %85, float* %88, i64 %91)
  store i32 0, i32* %16, align 4
  br label %93

93:                                               ; preds = %259, %3
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* @SUBFRAME_COUNT_16k, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %262

97:                                               ; preds = %93
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* @L_SUBFR_16k, align 4
  %100 = mul nsw i32 %98, %99
  store i32 %100, i32* %19, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %97
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dec_delay3_1st(i32 %110)
  store i32 %111, i32* %17, align 4
  br label %126

112:                                              ; preds = %97
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @PITCH_MIN, align 4
  %121 = load i32, i32* @PITCH_MAX, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 8
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @dec_delay3_2nd(i32 %119, i32 %120, i32 %121, i8* %124)
  store i32 %125, i32* %17, align 4
  br label %126

126:                                              ; preds = %112, %103
  %127 = load float*, float** @gain_pitch_cb_16k, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds float, float* %127, i64 %134
  %136 = load float, float* %135, align 4
  store float %136, float* %14, align 4
  %137 = load float, float* %14, align 4
  %138 = call i32 @FFMIN(float %137, double 1.000000e+00)
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  store i32 %138, i32* %139, align 8
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %140, 1
  %142 = call i8* @DIVIDE_BY_3(i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i8* %142, i8** %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 8
  store i8* %145, i8** %147, align 8
  %148 = load i32, i32* %17, align 4
  %149 = add nsw i32 %148, 2
  %150 = call i8* @DIVIDE_BY_3(i32 %149)
  %151 = ptrtoint i8* %150 to i32
  store i32 %151, i32* %22, align 4
  %152 = load i32, i32* %17, align 4
  %153 = add nsw i32 %152, 2
  %154 = load i32, i32* %22, align 4
  %155 = mul nsw i32 3, %154
  %156 = sub nsw i32 %153, %155
  store i32 %156, i32* %23, align 4
  %157 = load float*, float** %18, align 8
  %158 = load i32, i32* %19, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %157, i64 %159
  %161 = load float*, float** %18, align 8
  %162 = load i32, i32* %19, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %161, i64 %163
  %165 = load i32, i32* %22, align 4
  %166 = sext i32 %165 to i64
  %167 = sub i64 0, %166
  %168 = getelementptr inbounds float, float* %164, i64 %167
  %169 = getelementptr inbounds float, float* %168, i64 1
  %170 = load i32, i32* @sinc_win, align 4
  %171 = load i32, i32* %23, align 4
  %172 = add nsw i32 %171, 1
  %173 = load i32, i32* @LP_FILTER_ORDER, align 4
  %174 = load i32, i32* @L_SUBFR_16k, align 4
  %175 = call i32 @ff_acelp_interpolatef(float* %160, float* %169, i32 %170, i32 3, i32 %172, i32 %173, i32 %174)
  %176 = mul nuw i64 4, %45
  %177 = trunc i64 %176 to i32
  %178 = call i32 @memset(float* %46, i32 0, i32 %177)
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %16, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @ff_fc_4pulses_8bits_tracks_13, align 4
  %187 = call i32 @ff_decode_10_pulses_35bits(i32 %185, %struct.TYPE_10__* %20, i32 %186, i32 5, i32 4)
  %188 = load i32, i32* @L_SUBFR_16k, align 4
  %189 = call i32 @ff_set_fixed_vector(float* %46, %struct.TYPE_10__* %20, double 1.000000e+00, i32 %188)
  %190 = load float*, float** @gain_cb_16k, align 8
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = load i64*, i64** %192, align 8
  %194 = load i32, i32* %16, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %193, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds float, float* %190, i64 %197
  %199 = load float, float* %198, align 4
  store float %199, float* %21, align 4
  %200 = load float, float* %21, align 4
  %201 = load i32, i32* @L_SUBFR_16k, align 4
  %202 = call i32 @sqrt(i32 %201)
  %203 = load double, double* @M_LN10, align 8
  %204 = fmul double 5.000000e-02, %203
  %205 = load double, double* @M_LN2, align 8
  %206 = fdiv double %204, %205
  %207 = fdiv double 1.500000e+01, %206
  %208 = fsub double 1.900000e+01, %207
  %209 = load i32, i32* @pred_16k, align 4
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 4
  %212 = load double*, double** %211, align 8
  %213 = load i32, i32* @L_SUBFR_16k, align 4
  %214 = call float @acelp_decode_gain_codef(i32 %202, float* %46, double %208, i32 %209, double* %212, i32 %213, i32 2)
  %215 = fmul float %200, %214
  store float %215, float* %15, align 4
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 4
  %218 = load double*, double** %217, align 8
  %219 = getelementptr inbounds double, double* %218, i64 0
  %220 = load double, double* %219, align 8
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 4
  %223 = load double*, double** %222, align 8
  %224 = getelementptr inbounds double, double* %223, i64 1
  store double %220, double* %224, align 8
  %225 = load float, float* %21, align 4
  %226 = call double @log10f(float %225)
  %227 = fmul double 2.000000e+01, %226
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 4
  %230 = load double*, double** %229, align 8
  %231 = getelementptr inbounds double, double* %230, i64 0
  store double %227, double* %231, align 8
  %232 = load float*, float** %18, align 8
  %233 = load i32, i32* %19, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %232, i64 %234
  %236 = load float*, float** %18, align 8
  %237 = load i32, i32* %19, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %236, i64 %238
  %240 = load float, float* %14, align 4
  %241 = load float, float* %15, align 4
  %242 = load i32, i32* @L_SUBFR_16k, align 4
  %243 = call i32 @ff_weighted_vector_sumf(float* %235, float* %239, float* %46, float %240, float %241, i32 %242)
  %244 = load float*, float** %8, align 8
  %245 = load i32, i32* %19, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %244, i64 %246
  %248 = load i32, i32* %16, align 4
  %249 = sext i32 %248 to i64
  %250 = mul nsw i64 %249, %41
  %251 = getelementptr inbounds float, float* %43, i64 %250
  %252 = load float*, float** %18, align 8
  %253 = load i32, i32* %19, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float, float* %252, i64 %254
  %256 = load i32, i32* @L_SUBFR_16k, align 4
  %257 = load i32, i32* @LP_FILTER_ORDER_16k, align 4
  %258 = call i32 @ff_celp_lp_synthesis_filterf(float* %247, float* %251, float* %255, i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %126
  %260 = load i32, i32* %16, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %16, align 4
  br label %93

262:                                              ; preds = %93
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 3
  %265 = load float*, float** %264, align 8
  %266 = load float*, float** %8, align 8
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds float, float* %266, i64 %268
  %270 = load i32, i32* @LP_FILTER_ORDER_16k, align 4
  %271 = sext i32 %270 to i64
  %272 = sub i64 0, %271
  %273 = getelementptr inbounds float, float* %269, i64 %272
  %274 = load i32, i32* @LP_FILTER_ORDER_16k, align 4
  %275 = sext i32 %274 to i64
  %276 = mul i64 %275, 4
  %277 = call i32 (float*, ...) @memcpy(float* %265, float* %273, i64 %276)
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 1
  %280 = load float*, float** %279, align 8
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 1
  %283 = load float*, float** %282, align 8
  %284 = load i32, i32* @L_SUBFR_16k, align 4
  %285 = mul nsw i32 2, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds float, float* %283, i64 %286
  %288 = load i32, i32* @L_INTERPOL, align 4
  %289 = load i32, i32* @PITCH_MAX, align 4
  %290 = add nsw i32 %288, %289
  %291 = sext i32 %290 to i64
  %292 = mul i64 %291, 4
  %293 = trunc i64 %292 to i32
  %294 = call i32 @memmove(float* %280, float* %287, i32 %293)
  %295 = load float*, float** %6, align 8
  %296 = load float*, float** %8, align 8
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 5
  %299 = load float*, float** %298, align 8
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 6
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @postfilter(float* %295, float* %296, float* %299, i32 %302, i32 %305)
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 5
  %309 = load float*, float** %308, align 8
  %310 = mul nsw i64 1, %41
  %311 = getelementptr inbounds float, float* %43, i64 %310
  %312 = load i32, i32* @LP_FILTER_ORDER_16k, align 4
  %313 = sext i32 %312 to i64
  %314 = mul i64 %313, 4
  %315 = call i32 (float*, ...) @memcpy(float* %309, float* %311, i64 %314)
  %316 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %316)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lsf_decode_fp_16k(i32, float*, i32, i32) #2

declare dso_local i32 @ff_set_min_dist_lsf(float*, i32, i32) #2

declare dso_local i32 @lsf2lsp(float*, double*) #2

declare dso_local i32 @acelp_lp_decodef(float*, float*, double*, float*) #2

declare dso_local i32 @memcpy(float*, ...) #2

declare dso_local i32 @dec_delay3_1st(i32) #2

declare dso_local i32 @dec_delay3_2nd(i32, i32, i32, i8*) #2

declare dso_local i32 @FFMIN(float, double) #2

declare dso_local i8* @DIVIDE_BY_3(i32) #2

declare dso_local i32 @ff_acelp_interpolatef(float*, float*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @memset(float*, i32, i32) #2

declare dso_local i32 @ff_decode_10_pulses_35bits(i32, %struct.TYPE_10__*, i32, i32, i32) #2

declare dso_local i32 @ff_set_fixed_vector(float*, %struct.TYPE_10__*, double, i32) #2

declare dso_local float @acelp_decode_gain_codef(i32, float*, double, i32, double*, i32, i32) #2

declare dso_local i32 @sqrt(i32) #2

declare dso_local double @log10f(float) #2

declare dso_local i32 @ff_weighted_vector_sumf(float*, float*, float*, float, float, i32) #2

declare dso_local i32 @ff_celp_lp_synthesis_filterf(float*, float*, float*, i32, i32) #2

declare dso_local i32 @memmove(float*, float*, i32) #2

declare dso_local i32 @postfilter(float*, float*, float*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
