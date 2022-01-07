; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_synth_block_fcb_acb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_synth_block_fcb_acb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { float, float*, i32, i32, i32 }
%struct.frame_type_desc = type { i64, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, double, i32, i64, i32*, float* }

@synth_block_fcb_acb.gain_coeff = internal constant [6 x float] [float 0x3FEA240B80000000, float 0xBFB0C154C0000000, float 0x3FC617C1C0000000, float 0x3F92F1AA00000000, float 0xBFA2617C20000000, float 0x3FA7731900000000], align 16
@MAX_FRAMESIZE = common dso_local global i32 0, align 4
@FCB_TYPE_AW_PULSES = common dso_local global i64 0, align 8
@wmavoice_std_codebook = common dso_local global float* null, align 8
@wmavoice_gain_codebook_fcb = common dso_local global double* null, align 8
@wmavoice_gain_codebook_acb = common dso_local global float* null, align 8
@ACB_TYPE_ASYMMETRIC = common dso_local global i64 0, align 8
@wmavoice_ipol1_coeffs = common dso_local global i32 0, align 4
@wmavoice_ipol2_coeffs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32, i32, i32, %struct.frame_type_desc*, float*)* @synth_block_fcb_acb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synth_block_fcb_acb(%struct.TYPE_9__* %0, i32* %1, i32 %2, i32 %3, i32 %4, %struct.frame_type_desc* %5, float* %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.frame_type_desc*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_10__, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca float, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.frame_type_desc* %5, %struct.frame_type_desc** %13, align 8
  store float* %6, float** %14, align 8
  %37 = load i32, i32* @MAX_FRAMESIZE, align 4
  %38 = sdiv i32 %37, 2
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %15, align 8
  %41 = alloca float, i64 %39, align 16
  store i64 %39, i64* %16, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @MAX_FRAMESIZE, align 4
  %44 = sdiv i32 %43, 2
  %45 = icmp sle i32 %42, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @av_assert0(i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memset(float* %41, i32 0, i32 %51)
  %53 = load i32, i32* %12, align 4
  %54 = ashr i32 %53, 2
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  store double 1.000000e+00, double* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  store i32 0, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.frame_type_desc*, %struct.frame_type_desc** %13, align 8
  %60 = getelementptr inbounds %struct.frame_type_desc, %struct.frame_type_desc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FCB_TYPE_AW_PULSES, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %108

64:                                               ; preds = %7
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @aw_pulse_set1(%struct.TYPE_9__* %65, i32* %66, i32 %67, %struct.TYPE_10__* %23)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i64 @aw_pulse_set2(%struct.TYPE_9__* %69, i32* %70, i32 %71, %struct.TYPE_10__* %23)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %107

74:                                               ; preds = %64
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @pRNG(i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %24, align 4
  store i32 0, i32* %20, align 4
  br label %81

81:                                               ; preds = %101, %74
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load float*, float** @wmavoice_std_codebook, align 8
  %87 = load i32, i32* %24, align 4
  %88 = load i32, i32* %20, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %86, i64 %90
  %92 = load float, float* %91, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load float, float* %94, align 8
  %96 = fmul float %92, %95
  %97 = load float*, float** %14, align 8
  %98 = load i32, i32* %20, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  store float %96, float* %100, align 4
  br label %101

101:                                              ; preds = %85
  %102 = load i32, i32* %20, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %20, align 4
  br label %81

104:                                              ; preds = %81
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @skip_bits(i32* %105, i32 8)
  store i32 1, i32* %25, align 4
  br label %371

107:                                              ; preds = %64
  br label %182

108:                                              ; preds = %7
  %109 = load %struct.frame_type_desc*, %struct.frame_type_desc** %13, align 8
  %110 = getelementptr inbounds %struct.frame_type_desc, %struct.frame_type_desc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 5, %111
  store i32 %112, i32* %26, align 4
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  store i32 -1, i32* %113, align 8
  store i32 0, i32* %20, align 4
  br label %114

114:                                              ; preds = %178, %108
  %115 = load i32, i32* %20, align 4
  %116 = icmp slt i32 %115, 5
  br i1 %116, label %117, label %181

117:                                              ; preds = %114
  %118 = load i32*, i32** %9, align 8
  %119 = call i64 @get_bits1(i32* %118)
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, double 1.000000e+00, double -1.000000e+00
  %123 = fptrunc double %122 to float
  store float %123, float* %27, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %26, align 4
  %126 = call i32 @get_bits(i32* %124, i32 %125)
  store i32 %126, i32* %28, align 4
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* %28, align 4
  %129 = mul nsw i32 5, %128
  %130 = add nsw i32 %127, %129
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %130, i32* %135, align 4
  %136 = load float, float* %27, align 4
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 5
  %138 = load float*, float** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %139, align 8
  %142 = getelementptr inbounds float, float* %138, i64 %140
  store float %136, float* %142, align 4
  %143 = load i32, i32* %20, align 4
  %144 = load %struct.frame_type_desc*, %struct.frame_type_desc** %13, align 8
  %145 = getelementptr inbounds %struct.frame_type_desc, %struct.frame_type_desc* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %177

148:                                              ; preds = %117
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* %26, align 4
  %151 = call i32 @get_bits(i32* %149, i32 %150)
  store i32 %151, i32* %29, align 4
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* %29, align 4
  %154 = mul nsw i32 5, %153
  %155 = add nsw i32 %152, %154
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %155, i32* %160, align 4
  %161 = load i32, i32* %28, align 4
  %162 = load i32, i32* %29, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %148
  %165 = load float, float* %27, align 4
  %166 = fneg float %165
  br label %169

167:                                              ; preds = %148
  %168 = load float, float* %27, align 4
  br label %169

169:                                              ; preds = %167, %164
  %170 = phi float [ %166, %164 ], [ %168, %167 ]
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 5
  %172 = load float*, float** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %173, align 8
  %176 = getelementptr inbounds float, float* %172, i64 %174
  store float %170, float* %176, align 4
  br label %177

177:                                              ; preds = %169, %117
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %20, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %20, align 4
  br label %114

181:                                              ; preds = %114
  br label %182

182:                                              ; preds = %181, %107
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @ff_set_fixed_vector(float* %41, %struct.TYPE_10__* %23, double 1.000000e+00, i32 %183)
  %185 = load i32*, i32** %9, align 8
  %186 = call i32 @get_bits(i32* %185, i32 7)
  store i32 %186, i32* %21, align 4
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = load float*, float** %188, align 8
  %190 = call double @avpriv_scalarproduct_float_c(float* %189, float* getelementptr inbounds ([6 x float], [6 x float]* @synth_block_fcb_acb.gain_coeff, i64 0, i64 0), i32 6)
  %191 = fsub double %190, 0x4014F6B2BA15D4C2
  %192 = load double*, double** @wmavoice_gain_codebook_fcb, align 8
  %193 = load i32, i32* %21, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds double, double* %192, i64 %194
  %196 = load double, double* %195, align 8
  %197 = fadd double %191, %196
  %198 = call float @expf(double %197)
  store float %198, float* %19, align 4
  %199 = load float*, float** @wmavoice_gain_codebook_acb, align 8
  %200 = load i32, i32* %21, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %199, i64 %201
  %203 = load float, float* %202, align 4
  store float %203, float* %18, align 4
  %204 = load double*, double** @wmavoice_gain_codebook_fcb, align 8
  %205 = load i32, i32* %21, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds double, double* %204, i64 %206
  %208 = load double, double* %207, align 8
  %209 = call float @av_clipf(double %208, double 0xC007F7427B757844, double 0x3FF9C041F7EB354D)
  store float %209, float* %17, align 4
  %210 = load %struct.frame_type_desc*, %struct.frame_type_desc** %13, align 8
  %211 = getelementptr inbounds %struct.frame_type_desc, %struct.frame_type_desc* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = ashr i32 8, %212
  store i32 %213, i32* %22, align 4
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  %216 = load float*, float** %215, align 8
  %217 = load i32, i32* %22, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %216, i64 %218
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  %222 = load float*, float** %221, align 8
  %223 = load i32, i32* %22, align 4
  %224 = sub nsw i32 6, %223
  %225 = sext i32 %224 to i64
  %226 = mul i64 4, %225
  %227 = trunc i64 %226 to i32
  %228 = call i32 @memmove(float* %219, float* %222, i32 %227)
  store i32 0, i32* %20, align 4
  br label %229

229:                                              ; preds = %241, %182
  %230 = load i32, i32* %20, align 4
  %231 = load i32, i32* %22, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %244

233:                                              ; preds = %229
  %234 = load float, float* %17, align 4
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 1
  %237 = load float*, float** %236, align 8
  %238 = load i32, i32* %20, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %237, i64 %239
  store float %234, float* %240, align 4
  br label %241

241:                                              ; preds = %233
  %242 = load i32, i32* %20, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %20, align 4
  br label %229

244:                                              ; preds = %229
  %245 = load %struct.frame_type_desc*, %struct.frame_type_desc** %13, align 8
  %246 = getelementptr inbounds %struct.frame_type_desc, %struct.frame_type_desc* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @ACB_TYPE_ASYMMETRIC, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %333

250:                                              ; preds = %244
  store i32 0, i32* %20, align 4
  br label %251

251:                                              ; preds = %328, %250
  %252 = load i32, i32* %20, align 4
  %253 = load i32, i32* %11, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %332

255:                                              ; preds = %251
  %256 = load i32, i32* %10, align 4
  %257 = load i32, i32* %11, align 4
  %258 = mul nsw i32 %256, %257
  %259 = load i32, i32* %20, align 4
  %260 = add nsw i32 %258, %259
  store i32 %260, i32* %32, align 4
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = shl i32 %263, 16
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %32, align 4
  %269 = mul nsw i32 %267, %268
  %270 = add nsw i32 %264, %269
  store i32 %270, i32* %33, align 4
  %271 = load i32, i32* %33, align 4
  %272 = add nsw i32 %271, 28671
  %273 = ashr i32 %272, 16
  store i32 %273, i32* %34, align 4
  %274 = load i32, i32* %34, align 4
  %275 = shl i32 %274, 16
  %276 = load i32, i32* %33, align 4
  %277 = sub nsw i32 %275, %276
  %278 = mul nsw i32 %277, 8
  %279 = add nsw i32 %278, 360448
  store i32 %279, i32* %35, align 4
  %280 = load i32, i32* %35, align 4
  %281 = ashr i32 %280, 16
  store i32 %281, i32* %21, align 4
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %311

286:                                              ; preds = %255
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %286
  %292 = load i32, i32* %35, align 4
  %293 = and i32 %292, -65536
  store i32 %293, i32* %31, align 4
  br label %298

294:                                              ; preds = %286
  %295 = load i32, i32* %35, align 4
  %296 = add nsw i32 %295, 65536
  %297 = and i32 %296, -65536
  store i32 %297, i32* %31, align 4
  br label %298

298:                                              ; preds = %294, %291
  %299 = load i32, i32* %35, align 4
  %300 = load i32, i32* %31, align 4
  %301 = sub nsw i32 %299, %300
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = sdiv i32 %301, %304
  %306 = sdiv i32 %305, 8
  %307 = load i32, i32* %11, align 4
  %308 = load i32, i32* %20, align 4
  %309 = sub nsw i32 %307, %308
  %310 = call i32 @av_clip(i32 %306, i32 1, i32 %309)
  store i32 %310, i32* %30, align 4
  br label %313

311:                                              ; preds = %255
  %312 = load i32, i32* %11, align 4
  store i32 %312, i32* %30, align 4
  br label %313

313:                                              ; preds = %311, %298
  %314 = load float*, float** %14, align 8
  %315 = load i32, i32* %20, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds float, float* %314, i64 %316
  %318 = load float*, float** %14, align 8
  %319 = load i32, i32* %20, align 4
  %320 = load i32, i32* %34, align 4
  %321 = sub nsw i32 %319, %320
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds float, float* %318, i64 %322
  %324 = load i32, i32* @wmavoice_ipol1_coeffs, align 4
  %325 = load i32, i32* %21, align 4
  %326 = load i32, i32* %30, align 4
  %327 = call i32 @ff_acelp_interpolatef(float* %317, float* %323, i32 %324, i32 17, i32 %325, i32 9, i32 %326)
  br label %328

328:                                              ; preds = %313
  %329 = load i32, i32* %30, align 4
  %330 = load i32, i32* %20, align 4
  %331 = add nsw i32 %330, %329
  store i32 %331, i32* %20, align 4
  br label %251

332:                                              ; preds = %251
  br label %364

333:                                              ; preds = %244
  %334 = load i32, i32* %12, align 4
  %335 = ashr i32 %334, 2
  store i32 %335, i32* %36, align 4
  %336 = load i32, i32* %12, align 4
  %337 = and i32 %336, 3
  store i32 %337, i32* %21, align 4
  %338 = load i32, i32* %21, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %351

340:                                              ; preds = %333
  %341 = load float*, float** %14, align 8
  %342 = load float*, float** %14, align 8
  %343 = load i32, i32* %36, align 4
  %344 = sub nsw i32 0, %343
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds float, float* %342, i64 %345
  %347 = load i32, i32* @wmavoice_ipol2_coeffs, align 4
  %348 = load i32, i32* %21, align 4
  %349 = load i32, i32* %11, align 4
  %350 = call i32 @ff_acelp_interpolatef(float* %341, float* %346, i32 %347, i32 4, i32 %348, i32 8, i32 %349)
  br label %363

351:                                              ; preds = %333
  %352 = load float*, float** %14, align 8
  %353 = bitcast float* %352 to i32*
  %354 = load i32, i32* %36, align 4
  %355 = sext i32 %354 to i64
  %356 = mul i64 4, %355
  %357 = trunc i64 %356 to i32
  %358 = load i32, i32* %11, align 4
  %359 = sext i32 %358 to i64
  %360 = mul i64 4, %359
  %361 = trunc i64 %360 to i32
  %362 = call i32 @av_memcpy_backptr(i32* %353, i32 %357, i32 %361)
  br label %363

363:                                              ; preds = %351, %340
  br label %364

364:                                              ; preds = %363, %332
  %365 = load float*, float** %14, align 8
  %366 = load float*, float** %14, align 8
  %367 = load float, float* %18, align 4
  %368 = load float, float* %19, align 4
  %369 = load i32, i32* %11, align 4
  %370 = call i32 @ff_weighted_vector_sumf(float* %365, float* %366, float* %41, float %367, float %368, i32 %369)
  store i32 0, i32* %25, align 4
  br label %371

371:                                              ; preds = %364, %104
  %372 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %372)
  %373 = load i32, i32* %25, align 4
  switch i32 %373, label %375 [
    i32 0, label %374
    i32 1, label %374
  ]

374:                                              ; preds = %371, %371
  ret void

375:                                              ; preds = %371
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_assert0(i32) #2

declare dso_local i32 @memset(float*, i32, i32) #2

declare dso_local i32 @aw_pulse_set1(%struct.TYPE_9__*, i32*, i32, %struct.TYPE_10__*) #2

declare dso_local i64 @aw_pulse_set2(%struct.TYPE_9__*, i32*, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @pRNG(i32, i32, i32) #2

declare dso_local i32 @skip_bits(i32*, i32) #2

declare dso_local i64 @get_bits1(i32*) #2

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i32 @ff_set_fixed_vector(float*, %struct.TYPE_10__*, double, i32) #2

declare dso_local float @expf(double) #2

declare dso_local double @avpriv_scalarproduct_float_c(float*, float*, i32) #2

declare dso_local float @av_clipf(double, double, double) #2

declare dso_local i32 @memmove(float*, float*, i32) #2

declare dso_local i32 @av_clip(i32, i32, i32) #2

declare dso_local i32 @ff_acelp_interpolatef(float*, float*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @av_memcpy_backptr(i32*, i32, i32) #2

declare dso_local i32 @ff_weighted_vector_sumf(float*, float*, float*, float, float, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
