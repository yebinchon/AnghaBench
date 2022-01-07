; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_evrcdec.c_frame_erasure.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_evrcdec.c_frame_erasure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, double*, double*, double, double*, i64, i64, float*, double, double, i32, i64, i64, i32, i64 }

@FILTER_ORDER = common dso_local global i32 0, align 4
@NB_SUBFRAMES = common dso_local global i32 0, align 4
@SUBFRAME_SIZE = common dso_local global i32 0, align 4
@RATE_QUANT = common dso_local global i64 0, align 8
@RATE_FULL = common dso_local global i64 0, align 8
@ACB_SIZE = common dso_local global i32 0, align 4
@RATE_HALF = common dso_local global i64 0, align 8
@MIN_DELAY = common dso_local global float 0.000000e+00, align 4
@evrc_energy_quant = common dso_local global i64** null, align 8
@subframe_sizes = common dso_local global i32* null, align 8
@estimation_delay = common dso_local global float* null, align 8
@postfilter_coeffs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, float*)* @frame_erasure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frame_erasure(%struct.TYPE_5__* %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store float* %1, float** %4, align 8
  %16 = load i32, i32* @FILTER_ORDER, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca float, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load i32, i32* @FILTER_ORDER, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca float, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %23 = load i32, i32* @NB_SUBFRAMES, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca float, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  %26 = load i32, i32* @SUBFRAME_SIZE, align 4
  %27 = add nsw i32 %26, 6
  %28 = zext i32 %27 to i64
  %29 = alloca float, i64 %28, align 16
  store i64 %28, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %76, %2
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @FILTER_ORDER, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %79

34:                                               ; preds = %30
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RATE_QUANT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %34
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load double*, double** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  %47 = load double, double* %46, align 8
  %48 = fmul double %47, 8.750000e-01
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  %51 = sitofp i32 %50 to double
  %52 = fmul double 1.250000e-01, %51
  %53 = fmul double %52, 4.800000e-02
  %54 = fadd double %48, %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load double*, double** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  store double %54, double* %60, align 8
  br label %75

61:                                               ; preds = %34
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load double*, double** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %64, i64 %66
  %68 = load double, double* %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load double*, double** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %71, i64 %73
  store double %68, double* %74, align 8
  br label %75

75:                                               ; preds = %61, %40
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %30

79:                                               ; preds = %30
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 14
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  %87 = load double, double* %86, align 8
  %88 = fmul double %87, 7.500000e-01
  store double %88, double* %86, align 8
  br label %89

89:                                               ; preds = %84, %79
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @RATE_FULL, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 13
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  %101 = load double*, double** %100, align 8
  %102 = load i32, i32* @ACB_SIZE, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = call i32 @memcpy(i32 %98, double* %101, i32 %105)
  br label %107

107:                                              ; preds = %95, %89
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @RATE_QUANT, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load i64, i64* @RATE_QUANT, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  br label %121

117:                                              ; preds = %107
  %118 = load i64, i64* @RATE_FULL, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %117, %113
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @RATE_FULL, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @RATE_HALF, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %127, %121
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 11
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 12
  store i64 %136, i64* %138, align 8
  br label %188

139:                                              ; preds = %127
  store float 0.000000e+00, float* %13, align 4
  %140 = load float, float* @MIN_DELAY, align 4
  %141 = getelementptr inbounds float, float* %25, i64 2
  store float %140, float* %141, align 8
  %142 = getelementptr inbounds float, float* %25, i64 1
  store float %140, float* %142, align 4
  %143 = getelementptr inbounds float, float* %25, i64 0
  store float %140, float* %143, align 16
  store i32 0, i32* %11, align 4
  br label %144

144:                                              ; preds = %162, %139
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @NB_SUBFRAMES, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %165

148:                                              ; preds = %144
  %149 = load i64**, i64*** @evrc_energy_quant, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds i64*, i64** %149, i64 %152
  %154 = load i64*, i64** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = sitofp i64 %158 to float
  %160 = load float, float* %13, align 4
  %161 = fadd float %160, %159
  store float %161, float* %13, align 4
  br label %162

162:                                              ; preds = %148
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %144

165:                                              ; preds = %144
  %166 = load i32, i32* @NB_SUBFRAMES, align 4
  %167 = sitofp i32 %166 to float
  %168 = load float, float* %13, align 4
  %169 = fdiv float %168, %167
  store float %169, float* %13, align 4
  %170 = load float, float* %13, align 4
  %171 = call float @pow(i32 10, float %170)
  store float %171, float* %13, align 4
  store i32 0, i32* %11, align 4
  br label %172

172:                                              ; preds = %184, %165
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* @NB_SUBFRAMES, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %187

176:                                              ; preds = %172
  %177 = load float, float* %13, align 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 7
  %180 = load float*, float** %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %180, i64 %182
  store float %177, float* %183, align 4
  br label %184

184:                                              ; preds = %176
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %11, align 4
  br label %172

187:                                              ; preds = %172
  br label %188

188:                                              ; preds = %187, %133
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 12
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 11
  %194 = load i64, i64* %193, align 8
  %195 = sub nsw i64 %191, %194
  %196 = call i32 @fabs(i64 %195)
  %197 = icmp sgt i32 %196, 15
  br i1 %197, label %198, label %204

198:                                              ; preds = %188
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 12
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 11
  store i64 %201, i64* %203, align 8
  br label %204

204:                                              ; preds = %198, %188
  store i32 0, i32* %11, align 4
  br label %205

205:                                              ; preds = %462, %204
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* @NB_SUBFRAMES, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %465

209:                                              ; preds = %205
  %210 = load i32*, i32** @subframe_sizes, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %14, align 4
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  %217 = load double*, double** %216, align 8
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 2
  %220 = load double*, double** %219, align 8
  %221 = load i32, i32* %11, align 4
  %222 = call i32 @interpolate_lsp(float* %19, double* %217, double* %220, i32 %221)
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @RATE_QUANT, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %264

228:                                              ; preds = %209
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 3
  %231 = load double, double* %230, align 8
  %232 = fcmp olt double %231, 3.000000e-01
  br i1 %232, label %233, label %254

233:                                              ; preds = %228
  %234 = load float*, float** @estimation_delay, align 8
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %234, i64 %236
  %238 = load float, float* %237, align 4
  %239 = getelementptr inbounds float, float* %25, i64 0
  store float %238, float* %239, align 16
  %240 = load float*, float** @estimation_delay, align 8
  %241 = load i32, i32* %11, align 4
  %242 = add nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %240, i64 %243
  %245 = load float, float* %244, align 4
  %246 = getelementptr inbounds float, float* %25, i64 1
  store float %245, float* %246, align 4
  %247 = load float*, float** @estimation_delay, align 8
  %248 = load i32, i32* %11, align 4
  %249 = add nsw i32 %248, 2
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %247, i64 %250
  %252 = load float, float* %251, align 4
  %253 = getelementptr inbounds float, float* %25, i64 2
  store float %252, float* %253, align 8
  br label %263

254:                                              ; preds = %228
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 12
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 11
  %260 = load i64, i64* %259, align 8
  %261 = load i32, i32* %11, align 4
  %262 = call i32 @interpolate_delay(float* %25, i64 %257, i64 %260, i32 %261)
  br label %263

263:                                              ; preds = %254, %233
  br label %264

264:                                              ; preds = %263, %209
  %265 = getelementptr inbounds float, float* %25, i64 1
  %266 = load float, float* %265, align 4
  %267 = getelementptr inbounds float, float* %25, i64 0
  %268 = load float, float* %267, align 16
  %269 = fadd float %266, %268
  %270 = fpext float %269 to double
  %271 = fdiv double %270, 2.000000e+00
  %272 = fptrunc double %271 to float
  %273 = call i32 @lrintf(float %272)
  store i32 %273, i32* %15, align 4
  %274 = call i32 @decode_predictor_coeffs(float* %19, float* %22)
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @RATE_QUANT, align 8
  %279 = icmp ne i64 %277, %278
  br i1 %279, label %280, label %322

280:                                              ; preds = %264
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 4
  %284 = load double*, double** %283, align 8
  %285 = load i32, i32* @ACB_SIZE, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds double, double* %284, i64 %286
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 3
  %290 = load double, double* %289, align 8
  %291 = load i32, i32* %14, align 4
  %292 = call i32 @acb_excitation(%struct.TYPE_5__* %281, double* %287, double %290, float* %25, i32 %291)
  store i32 0, i32* %12, align 4
  br label %293

293:                                              ; preds = %311, %280
  %294 = load i32, i32* %12, align 4
  %295 = load i32, i32* %14, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %314

297:                                              ; preds = %293
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 8
  %300 = load double, double* %299, align 8
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 4
  %303 = load double*, double** %302, align 8
  %304 = load i32, i32* @ACB_SIZE, align 4
  %305 = load i32, i32* %12, align 4
  %306 = add nsw i32 %304, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds double, double* %303, i64 %307
  %309 = load double, double* %308, align 8
  %310 = fmul double %309, %300
  store double %310, double* %308, align 8
  br label %311

311:                                              ; preds = %297
  %312 = load i32, i32* %12, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %12, align 4
  br label %293

314:                                              ; preds = %293
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 8
  %317 = load double, double* %316, align 8
  %318 = fsub double %317, 5.000000e-02
  %319 = call double @FFMAX(double %318, double 0.000000e+00)
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 8
  store double %319, double* %321, align 8
  br label %348

322:                                              ; preds = %264
  store i32 0, i32* %12, align 4
  br label %323

323:                                              ; preds = %344, %322
  %324 = load i32, i32* %12, align 4
  %325 = load i32, i32* %14, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %347

327:                                              ; preds = %323
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 7
  %330 = load float*, float** %329, align 8
  %331 = load i32, i32* %11, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds float, float* %330, i64 %332
  %334 = load float, float* %333, align 4
  %335 = fpext float %334 to double
  %336 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 4
  %338 = load double*, double** %337, align 8
  %339 = load i32, i32* @ACB_SIZE, align 4
  %340 = load i32, i32* %12, align 4
  %341 = add nsw i32 %339, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds double, double* %338, i64 %342
  store double %335, double* %343, align 8
  br label %344

344:                                              ; preds = %327
  %345 = load i32, i32* %12, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %12, align 4
  br label %323

347:                                              ; preds = %323
  br label %348

348:                                              ; preds = %347, %314
  %349 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 4
  %351 = load double*, double** %350, align 8
  %352 = bitcast double* %351 to float*
  %353 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 4
  %355 = load double*, double** %354, align 8
  %356 = load i32, i32* %14, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds double, double* %355, i64 %357
  %359 = bitcast double* %358 to float*
  %360 = load i32, i32* @ACB_SIZE, align 4
  %361 = sext i32 %360 to i64
  %362 = mul i64 %361, 4
  %363 = trunc i64 %362 to i32
  %364 = call i32 @memmove(float* %352, float* %359, i32 %363)
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @RATE_QUANT, align 8
  %369 = icmp ne i64 %367, %368
  br i1 %369, label %370, label %402

370:                                              ; preds = %348
  %371 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 3
  %373 = load double, double* %372, align 8
  %374 = fcmp olt double %373, 4.000000e-01
  br i1 %374, label %375, label %402

375:                                              ; preds = %370
  %376 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %376, i32 0, i32 9
  %378 = load double, double* %377, align 8
  %379 = fmul double 1.000000e-01, %378
  %380 = fptrunc double %379 to float
  store float %380, float* %10, align 4
  store i32 0, i32* %12, align 4
  br label %381

381:                                              ; preds = %398, %375
  %382 = load i32, i32* %12, align 4
  %383 = load i32, i32* %14, align 4
  %384 = icmp slt i32 %382, %383
  br i1 %384, label %385, label %401

385:                                              ; preds = %381
  %386 = load float, float* %10, align 4
  %387 = fpext float %386 to double
  %388 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %388, i32 0, i32 4
  %390 = load double*, double** %389, align 8
  %391 = load i32, i32* @ACB_SIZE, align 4
  %392 = load i32, i32* %12, align 4
  %393 = add nsw i32 %391, %392
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds double, double* %390, i64 %394
  %396 = load double, double* %395, align 8
  %397 = fadd double %396, %387
  store double %397, double* %395, align 8
  br label %398

398:                                              ; preds = %385
  %399 = load i32, i32* %12, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %12, align 4
  br label %381

401:                                              ; preds = %381
  br label %435

402:                                              ; preds = %370, %348
  %403 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* @RATE_QUANT, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %408, label %434

408:                                              ; preds = %402
  store i32 0, i32* %12, align 4
  br label %409

409:                                              ; preds = %430, %408
  %410 = load i32, i32* %12, align 4
  %411 = load i32, i32* %14, align 4
  %412 = icmp slt i32 %410, %411
  br i1 %412, label %413, label %433

413:                                              ; preds = %409
  %414 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %414, i32 0, i32 7
  %416 = load float*, float** %415, align 8
  %417 = load i32, i32* %11, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds float, float* %416, i64 %418
  %420 = load float, float* %419, align 4
  %421 = fpext float %420 to double
  %422 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %422, i32 0, i32 4
  %424 = load double*, double** %423, align 8
  %425 = load i32, i32* @ACB_SIZE, align 4
  %426 = load i32, i32* %12, align 4
  %427 = add nsw i32 %425, %426
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds double, double* %424, i64 %428
  store double %421, double* %429, align 8
  br label %430

430:                                              ; preds = %413
  %431 = load i32, i32* %12, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %12, align 4
  br label %409

433:                                              ; preds = %409
  br label %434

434:                                              ; preds = %433, %402
  br label %435

435:                                              ; preds = %434, %401
  %436 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %437 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %436, i32 0, i32 4
  %438 = load double*, double** %437, align 8
  %439 = load i32, i32* @ACB_SIZE, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds double, double* %438, i64 %440
  %442 = bitcast double* %441 to float*
  %443 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %444 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %443, i32 0, i32 10
  %445 = load i32, i32* %444, align 8
  %446 = load i32, i32* %14, align 4
  %447 = call i32 @synthesis_filter(float* %442, float* %22, i32 %445, i32 %446, float* %29)
  %448 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %449 = load float*, float** %4, align 8
  %450 = load i32, i32* %15, align 4
  %451 = load i32*, i32** @postfilter_coeffs, align 8
  %452 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %452, i32 0, i32 0
  %454 = load i64, i64* %453, align 8
  %455 = getelementptr inbounds i32, i32* %451, i64 %454
  %456 = load i32, i32* %14, align 4
  %457 = call i32 @postfilter(%struct.TYPE_5__* %448, float* %29, float* %22, float* %449, i32 %450, i32* %455, i32 %456)
  %458 = load i32, i32* %14, align 4
  %459 = load float*, float** %4, align 8
  %460 = sext i32 %458 to i64
  %461 = getelementptr inbounds float, float* %459, i64 %460
  store float* %461, float** %4, align 8
  br label %462

462:                                              ; preds = %435
  %463 = load i32, i32* %11, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %11, align 4
  br label %205

465:                                              ; preds = %205
  %466 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %466)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32, double*, i32) #2

declare dso_local float @pow(i32, float) #2

declare dso_local i32 @fabs(i64) #2

declare dso_local i32 @interpolate_lsp(float*, double*, double*, i32) #2

declare dso_local i32 @interpolate_delay(float*, i64, i64, i32) #2

declare dso_local i32 @lrintf(float) #2

declare dso_local i32 @decode_predictor_coeffs(float*, float*) #2

declare dso_local i32 @acb_excitation(%struct.TYPE_5__*, double*, double, float*, i32) #2

declare dso_local double @FFMAX(double, double) #2

declare dso_local i32 @memmove(float*, float*, i32) #2

declare dso_local i32 @synthesis_filter(float*, float*, i32, i32, float*) #2

declare dso_local i32 @postfilter(%struct.TYPE_5__*, float*, float*, float*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
