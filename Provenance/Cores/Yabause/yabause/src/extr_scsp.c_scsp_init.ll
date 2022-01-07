; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { void (i64)*, void (...)*, i32* }

@scsp_reg = common dso_local global i32* null, align 8
@scsp_isr = common dso_local global i32* null, align 8
@scsp_ccr = common dso_local global i32* null, align 8
@scsp_dcr = common dso_local global i32* null, align 8
@scsp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SCSP_ENV_LEN = common dso_local global i64 0, align 8
@SCSP_ENV_MASK = common dso_local global i64 0, align 8
@scsp_env_table = common dso_local global i64* null, align 8
@SCSP_FREQ = common dso_local global double 0.000000e+00, align 8
@SCSP_LFO_LEN = common dso_local global i64 0, align 8
@SCSP_LFO_LB = common dso_local global i32 0, align 4
@scsp_lfo_step = common dso_local global i8** null, align 8
@SCSP_LFO_MASK = common dso_local global i64 0, align 8
@scsp_lfo_sawt_e = common dso_local global i64* null, align 8
@scsp_lfo_squa_e = common dso_local global i64* null, align 8
@scsp_lfo_tri_e = common dso_local global i64* null, align 8
@scsp_lfo_noi_e = common dso_local global i64* null, align 8
@scsp_lfo_sawt_f = common dso_local global i64* null, align 8
@scsp_lfo_squa_f = common dso_local global i32* null, align 8
@scsp_lfo_tri_f = common dso_local global i64* null, align 8
@scsp_lfo_noi_f = common dso_local global i64* null, align 8
@scsp_attack_rate = common dso_local global i64* null, align 8
@scsp_decay_rate = common dso_local global i64* null, align 8
@SCSP_ENV_LB = common dso_local global i64 0, align 8
@SCSP_ATTACK_R = common dso_local global i64 0, align 8
@SCSP_DECAY_R = common dso_local global i64 0, align 8
@SCSP_ENV_AE = common dso_local global i64 0, align 8
@scsp_null_rate = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"attack rate[%d] = %.8X -> %.8X\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"decay rate[%d] = %.8X -> %.8X\0A\00", align 1
@scsp_tl_table = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsp_init(i32* %0, void (i64)* %1, void ()* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca void (i64)*, align 8
  %6 = alloca void ()*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store void (i64)* %1, void (i64)** %5, align 8
  store void ()* %2, void ()** %6, align 8
  %10 = call i32 (...) @scsp_shutdown()
  %11 = load i32*, i32** @scsp_reg, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32* %12, i32** @scsp_isr, align 8
  %13 = load i32*, i32** @scsp_reg, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1024
  store i32* %14, i32** @scsp_ccr, align 8
  %15 = load i32*, i32** @scsp_reg, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1792
  store i32* %16, i32** @scsp_dcr, align 8
  %17 = load i32*, i32** %4, align 8
  store i32* %17, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 2), align 8
  %18 = load void (i64)*, void (i64)** %5, align 8
  store void (i64)* %18, void (i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 0), align 8
  %19 = load void ()*, void ()** %6, align 8
  %20 = bitcast void ()* %19 to void (...)*
  store void (...)* %20, void (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 1), align 8
  store i64 0, i64* %7, align 8
  br label %21

21:                                               ; preds = %66, %3
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @SCSP_ENV_LEN, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %21
  %26 = load i64, i64* @SCSP_ENV_MASK, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub i64 %26, %27
  %29 = uitofp i64 %28 to double
  %30 = load i64, i64* @SCSP_ENV_LEN, align 8
  %31 = uitofp i64 %30 to double
  %32 = fdiv double %29, %31
  %33 = fptosi double %32 to i32
  %34 = call double @pow(i32 %33, double 7.000000e+00)
  store double %34, double* %9, align 8
  %35 = load i64, i64* @SCSP_ENV_LEN, align 8
  %36 = uitofp i64 %35 to double
  %37 = load double, double* %9, align 8
  %38 = fmul double %37, %36
  store double %38, double* %9, align 8
  %39 = load i64, i64* @SCSP_ENV_MASK, align 8
  %40 = load double, double* %9, align 8
  %41 = fptosi double %40 to i64
  %42 = sub nsw i64 %39, %41
  %43 = load i64*, i64** @scsp_env_table, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 %42, i64* %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = uitofp i64 %46 to double
  %48 = load i64, i64* @SCSP_ENV_LEN, align 8
  %49 = uitofp i64 %48 to double
  %50 = fdiv double %47, %49
  %51 = fptosi double %50 to i32
  %52 = call double @pow(i32 %51, double 1.000000e+00)
  store double %52, double* %9, align 8
  %53 = load i64, i64* @SCSP_ENV_LEN, align 8
  %54 = uitofp i64 %53 to double
  %55 = load double, double* %9, align 8
  %56 = fmul double %55, %54
  store double %56, double* %9, align 8
  %57 = load i64, i64* @SCSP_ENV_MASK, align 8
  %58 = load double, double* %9, align 8
  %59 = fptosi double %58 to i64
  %60 = sub nsw i64 %57, %59
  %61 = load i64*, i64** @scsp_env_table, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @SCSP_ENV_LEN, align 8
  %64 = add i64 %62, %63
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  store i64 %60, i64* %65, align 8
  br label %66

66:                                               ; preds = %25
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %21

69:                                               ; preds = %21
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %70

70:                                               ; preds = %101, %69
  %71 = load i64, i64* %7, align 8
  %72 = icmp ult i64 %71, 32
  br i1 %72, label %73, label %104

73:                                               ; preds = %70
  %74 = load i64, i64* %7, align 8
  %75 = lshr i64 %74, 2
  %76 = trunc i64 %75 to i32
  %77 = shl i32 1, %76
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %8, align 8
  %81 = load double, double* @SCSP_FREQ, align 8
  %82 = fdiv double %81, 2.560000e+02
  %83 = load i64, i64* %8, align 8
  %84 = uitofp i64 %83 to double
  %85 = fdiv double %82, %84
  store double %85, double* %9, align 8
  %86 = load double, double* %9, align 8
  %87 = load i64, i64* @SCSP_LFO_LEN, align 8
  %88 = uitofp i64 %87 to double
  %89 = load double, double* @SCSP_FREQ, align 8
  %90 = fdiv double %88, %89
  %91 = fmul double %86, %90
  %92 = load i32, i32* @SCSP_LFO_LB, align 4
  %93 = shl i32 1, %92
  %94 = sitofp i32 %93 to double
  %95 = fmul double %91, %94
  %96 = call i8* @scsp_round(double %95)
  %97 = load i8**, i8*** @scsp_lfo_step, align 8
  %98 = load i64, i64* %7, align 8
  %99 = sub i64 31, %98
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  store i8* %96, i8** %100, align 8
  br label %101

101:                                              ; preds = %73
  %102 = load i64, i64* %7, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %7, align 8
  br label %70

104:                                              ; preds = %70
  store i64 0, i64* %7, align 8
  br label %105

105:                                              ; preds = %237, %104
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* @SCSP_LFO_LEN, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %240

109:                                              ; preds = %105
  %110 = load i64, i64* @SCSP_LFO_MASK, align 8
  %111 = load i64, i64* %7, align 8
  %112 = sub i64 %110, %111
  %113 = load i64*, i64** @scsp_lfo_sawt_e, align 8
  %114 = load i64, i64* %7, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  store i64 %112, i64* %115, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @SCSP_LFO_LEN, align 8
  %118 = udiv i64 %117, 2
  %119 = icmp ult i64 %116, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %109
  %121 = load i64, i64* @SCSP_LFO_MASK, align 8
  %122 = load i64*, i64** @scsp_lfo_squa_e, align 8
  %123 = load i64, i64* %7, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  store i64 %121, i64* %124, align 8
  br label %129

125:                                              ; preds = %109
  %126 = load i64*, i64** @scsp_lfo_squa_e, align 8
  %127 = load i64, i64* %7, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %125, %120
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* @SCSP_LFO_LEN, align 8
  %132 = udiv i64 %131, 2
  %133 = icmp ult i64 %130, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load i64, i64* @SCSP_LFO_MASK, align 8
  %136 = load i64, i64* %7, align 8
  %137 = mul i64 %136, 2
  %138 = sub i64 %135, %137
  %139 = load i64*, i64** @scsp_lfo_tri_e, align 8
  %140 = load i64, i64* %7, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  store i64 %138, i64* %141, align 8
  br label %151

142:                                              ; preds = %129
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* @SCSP_LFO_LEN, align 8
  %145 = udiv i64 %144, 2
  %146 = sub i64 %143, %145
  %147 = mul i64 %146, 2
  %148 = load i64*, i64** @scsp_lfo_tri_e, align 8
  %149 = load i64, i64* %7, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  store i64 %147, i64* %150, align 8
  br label %151

151:                                              ; preds = %142, %134
  %152 = call i64 (...) @rand()
  %153 = load i64, i64* @SCSP_LFO_MASK, align 8
  %154 = and i64 %152, %153
  %155 = load i64*, i64** @scsp_lfo_noi_e, align 8
  %156 = load i64, i64* %7, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  store i64 %154, i64* %157, align 8
  %158 = load i64, i64* %7, align 8
  %159 = load i64, i64* @SCSP_LFO_LEN, align 8
  %160 = udiv i64 %159, 2
  %161 = sub i64 %158, %160
  %162 = load i64*, i64** @scsp_lfo_sawt_f, align 8
  %163 = load i64, i64* %7, align 8
  %164 = add i64 %163, 512
  %165 = load i64, i64* @SCSP_LFO_MASK, align 8
  %166 = and i64 %164, %165
  %167 = getelementptr inbounds i64, i64* %162, i64 %166
  store i64 %161, i64* %167, align 8
  %168 = load i64, i64* %7, align 8
  %169 = load i64, i64* @SCSP_LFO_LEN, align 8
  %170 = udiv i64 %169, 2
  %171 = icmp ult i64 %168, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %151
  %173 = load i64, i64* @SCSP_LFO_MASK, align 8
  %174 = load i64, i64* @SCSP_LFO_LEN, align 8
  %175 = udiv i64 %174, 2
  %176 = sub i64 %173, %175
  %177 = sub i64 %176, 128
  %178 = trunc i64 %177 to i32
  %179 = load i32*, i32** @scsp_lfo_squa_f, align 8
  %180 = load i64, i64* %7, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32 %178, i32* %181, align 4
  br label %191

182:                                              ; preds = %151
  %183 = load i64, i64* @SCSP_LFO_LEN, align 8
  %184 = udiv i64 %183, 2
  %185 = sub i64 0, %184
  %186 = add i64 %185, 128
  %187 = trunc i64 %186 to i32
  %188 = load i32*, i32** @scsp_lfo_squa_f, align 8
  %189 = load i64, i64* %7, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  store i32 %187, i32* %190, align 4
  br label %191

191:                                              ; preds = %182, %172
  %192 = load i64, i64* %7, align 8
  %193 = load i64, i64* @SCSP_LFO_LEN, align 8
  %194 = udiv i64 %193, 2
  %195 = icmp ult i64 %192, %194
  br i1 %195, label %196, label %208

196:                                              ; preds = %191
  %197 = load i64, i64* %7, align 8
  %198 = mul i64 %197, 2
  %199 = load i64, i64* @SCSP_LFO_LEN, align 8
  %200 = udiv i64 %199, 2
  %201 = sub i64 %198, %200
  %202 = load i64*, i64** @scsp_lfo_tri_f, align 8
  %203 = load i64, i64* %7, align 8
  %204 = add i64 %203, 768
  %205 = load i64, i64* @SCSP_LFO_MASK, align 8
  %206 = and i64 %204, %205
  %207 = getelementptr inbounds i64, i64* %202, i64 %206
  store i64 %201, i64* %207, align 8
  br label %226

208:                                              ; preds = %191
  %209 = load i64, i64* @SCSP_LFO_MASK, align 8
  %210 = load i64, i64* %7, align 8
  %211 = load i64, i64* @SCSP_LFO_LEN, align 8
  %212 = udiv i64 %211, 2
  %213 = sub i64 %210, %212
  %214 = mul i64 %213, 2
  %215 = sub i64 %209, %214
  %216 = load i64, i64* @SCSP_LFO_LEN, align 8
  %217 = udiv i64 %216, 2
  %218 = sub i64 %215, %217
  %219 = add i64 %218, 1
  %220 = load i64*, i64** @scsp_lfo_tri_f, align 8
  %221 = load i64, i64* %7, align 8
  %222 = add i64 %221, 768
  %223 = load i64, i64* @SCSP_LFO_MASK, align 8
  %224 = and i64 %222, %223
  %225 = getelementptr inbounds i64, i64* %220, i64 %224
  store i64 %219, i64* %225, align 8
  br label %226

226:                                              ; preds = %208, %196
  %227 = load i64*, i64** @scsp_lfo_noi_e, align 8
  %228 = load i64, i64* %7, align 8
  %229 = getelementptr inbounds i64, i64* %227, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @SCSP_LFO_LEN, align 8
  %232 = udiv i64 %231, 2
  %233 = sub i64 %230, %232
  %234 = load i64*, i64** @scsp_lfo_noi_f, align 8
  %235 = load i64, i64* %7, align 8
  %236 = getelementptr inbounds i64, i64* %234, i64 %235
  store i64 %233, i64* %236, align 8
  br label %237

237:                                              ; preds = %226
  %238 = load i64, i64* %7, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %7, align 8
  br label %105

240:                                              ; preds = %105
  store i64 0, i64* %7, align 8
  br label %241

241:                                              ; preds = %251, %240
  %242 = load i64, i64* %7, align 8
  %243 = icmp ult i64 %242, 4
  br i1 %243, label %244, label %254

244:                                              ; preds = %241
  %245 = load i64*, i64** @scsp_attack_rate, align 8
  %246 = load i64, i64* %7, align 8
  %247 = getelementptr inbounds i64, i64* %245, i64 %246
  store i64 0, i64* %247, align 8
  %248 = load i64*, i64** @scsp_decay_rate, align 8
  %249 = load i64, i64* %7, align 8
  %250 = getelementptr inbounds i64, i64* %248, i64 %249
  store i64 0, i64* %250, align 8
  br label %251

251:                                              ; preds = %244
  %252 = load i64, i64* %7, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %7, align 8
  br label %241

254:                                              ; preds = %241
  store i64 0, i64* %7, align 8
  br label %255

255:                                              ; preds = %321, %254
  %256 = load i64, i64* %7, align 8
  %257 = icmp ult i64 %256, 60
  br i1 %257, label %258, label %324

258:                                              ; preds = %255
  %259 = load i64, i64* %7, align 8
  %260 = and i64 %259, 3
  %261 = uitofp i64 %260 to double
  %262 = fmul double %261, 2.500000e-01
  %263 = fadd double 1.000000e+00, %262
  store double %263, double* %9, align 8
  %264 = load i64, i64* %7, align 8
  %265 = lshr i64 %264, 2
  %266 = trunc i64 %265 to i32
  %267 = shl i32 1, %266
  %268 = sitofp i32 %267 to double
  %269 = load double, double* %9, align 8
  %270 = fmul double %269, %268
  store double %270, double* %9, align 8
  %271 = load i64, i64* @SCSP_ENV_LEN, align 8
  %272 = load i64, i64* @SCSP_ENV_LB, align 8
  %273 = shl i64 %271, %272
  %274 = uitofp i64 %273 to double
  %275 = load double, double* %9, align 8
  %276 = fmul double %275, %274
  store double %276, double* %9, align 8
  %277 = load double, double* %9, align 8
  %278 = load i64, i64* @SCSP_ATTACK_R, align 8
  %279 = sitofp i64 %278 to double
  %280 = fdiv double %277, %279
  %281 = call i8* @scsp_round(double %280)
  %282 = ptrtoint i8* %281 to i64
  %283 = load i64*, i64** @scsp_attack_rate, align 8
  %284 = load i64, i64* %7, align 8
  %285 = add i64 %284, 4
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  store i64 %282, i64* %286, align 8
  %287 = load double, double* %9, align 8
  %288 = load i64, i64* @SCSP_DECAY_R, align 8
  %289 = sitofp i64 %288 to double
  %290 = fdiv double %287, %289
  %291 = call i8* @scsp_round(double %290)
  %292 = ptrtoint i8* %291 to i64
  %293 = load i64*, i64** @scsp_decay_rate, align 8
  %294 = load i64, i64* %7, align 8
  %295 = add i64 %294, 4
  %296 = getelementptr inbounds i64, i64* %293, i64 %295
  store i64 %292, i64* %296, align 8
  %297 = load i64*, i64** @scsp_attack_rate, align 8
  %298 = load i64, i64* %7, align 8
  %299 = add i64 %298, 4
  %300 = getelementptr inbounds i64, i64* %297, i64 %299
  %301 = load i64, i64* %300, align 8
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %258
  %304 = load i64*, i64** @scsp_attack_rate, align 8
  %305 = load i64, i64* %7, align 8
  %306 = add i64 %305, 4
  %307 = getelementptr inbounds i64, i64* %304, i64 %306
  store i64 1, i64* %307, align 8
  br label %308

308:                                              ; preds = %303, %258
  %309 = load i64*, i64** @scsp_decay_rate, align 8
  %310 = load i64, i64* %7, align 8
  %311 = add i64 %310, 4
  %312 = getelementptr inbounds i64, i64* %309, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %308
  %316 = load i64*, i64** @scsp_decay_rate, align 8
  %317 = load i64, i64* %7, align 8
  %318 = add i64 %317, 4
  %319 = getelementptr inbounds i64, i64* %316, i64 %318
  store i64 1, i64* %319, align 8
  br label %320

320:                                              ; preds = %315, %308
  br label %321

321:                                              ; preds = %320
  %322 = load i64, i64* %7, align 8
  %323 = add i64 %322, 1
  store i64 %323, i64* %7, align 8
  br label %255

324:                                              ; preds = %255
  %325 = load i64, i64* @SCSP_ENV_AE, align 8
  %326 = load i64*, i64** @scsp_attack_rate, align 8
  %327 = getelementptr inbounds i64, i64* %326, i64 63
  store i64 %325, i64* %327, align 8
  %328 = load i64*, i64** @scsp_decay_rate, align 8
  %329 = getelementptr inbounds i64, i64* %328, i64 60
  %330 = load i64, i64* %329, align 8
  %331 = load i64*, i64** @scsp_decay_rate, align 8
  %332 = getelementptr inbounds i64, i64* %331, i64 61
  store i64 %330, i64* %332, align 8
  %333 = load i64*, i64** @scsp_decay_rate, align 8
  %334 = getelementptr inbounds i64, i64* %333, i64 60
  %335 = load i64, i64* %334, align 8
  %336 = load i64*, i64** @scsp_decay_rate, align 8
  %337 = getelementptr inbounds i64, i64* %336, i64 62
  store i64 %335, i64* %337, align 8
  %338 = load i64*, i64** @scsp_decay_rate, align 8
  %339 = getelementptr inbounds i64, i64* %338, i64 60
  %340 = load i64, i64* %339, align 8
  %341 = load i64*, i64** @scsp_decay_rate, align 8
  %342 = getelementptr inbounds i64, i64* %341, i64 63
  store i64 %340, i64* %342, align 8
  store i64 64, i64* %7, align 8
  br label %343

343:                                              ; preds = %363, %324
  %344 = load i64, i64* %7, align 8
  %345 = icmp ult i64 %344, 96
  br i1 %345, label %346, label %366

346:                                              ; preds = %343
  %347 = load i64*, i64** @scsp_attack_rate, align 8
  %348 = getelementptr inbounds i64, i64* %347, i64 63
  %349 = load i64, i64* %348, align 8
  %350 = load i64*, i64** @scsp_attack_rate, align 8
  %351 = load i64, i64* %7, align 8
  %352 = getelementptr inbounds i64, i64* %350, i64 %351
  store i64 %349, i64* %352, align 8
  %353 = load i64*, i64** @scsp_decay_rate, align 8
  %354 = getelementptr inbounds i64, i64* %353, i64 63
  %355 = load i64, i64* %354, align 8
  %356 = load i64*, i64** @scsp_decay_rate, align 8
  %357 = load i64, i64* %7, align 8
  %358 = getelementptr inbounds i64, i64* %356, i64 %357
  store i64 %355, i64* %358, align 8
  %359 = load i64*, i64** @scsp_null_rate, align 8
  %360 = load i64, i64* %7, align 8
  %361 = sub i64 %360, 64
  %362 = getelementptr inbounds i64, i64* %359, i64 %361
  store i64 0, i64* %362, align 8
  br label %363

363:                                              ; preds = %346
  %364 = load i64, i64* %7, align 8
  %365 = add i64 %364, 1
  store i64 %365, i64* %7, align 8
  br label %343

366:                                              ; preds = %343
  store i64 0, i64* %7, align 8
  br label %367

367:                                              ; preds = %395, %366
  %368 = load i64, i64* %7, align 8
  %369 = icmp ult i64 %368, 96
  br i1 %369, label %370, label %398

370:                                              ; preds = %367
  %371 = load i64, i64* %7, align 8
  %372 = load i64*, i64** @scsp_attack_rate, align 8
  %373 = load i64, i64* %7, align 8
  %374 = getelementptr inbounds i64, i64* %372, i64 %373
  %375 = load i64, i64* %374, align 8
  %376 = load i64*, i64** @scsp_attack_rate, align 8
  %377 = load i64, i64* %7, align 8
  %378 = getelementptr inbounds i64, i64* %376, i64 %377
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @SCSP_ENV_LB, align 8
  %381 = lshr i64 %379, %380
  %382 = call i32 @SCSPLOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %371, i64 %375, i64 %381)
  %383 = load i64, i64* %7, align 8
  %384 = load i64*, i64** @scsp_decay_rate, align 8
  %385 = load i64, i64* %7, align 8
  %386 = getelementptr inbounds i64, i64* %384, i64 %385
  %387 = load i64, i64* %386, align 8
  %388 = load i64*, i64** @scsp_decay_rate, align 8
  %389 = load i64, i64* %7, align 8
  %390 = getelementptr inbounds i64, i64* %388, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @SCSP_ENV_LB, align 8
  %393 = lshr i64 %391, %392
  %394 = call i32 @SCSPLOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %383, i64 %387, i64 %393)
  br label %395

395:                                              ; preds = %370
  %396 = load i64, i64* %7, align 8
  %397 = add i64 %396, 1
  store i64 %397, i64* %7, align 8
  br label %367

398:                                              ; preds = %367
  store i64 0, i64* %7, align 8
  br label %399

399:                                              ; preds = %413, %398
  %400 = load i64, i64* %7, align 8
  %401 = icmp ult i64 %400, 256
  br i1 %401, label %402, label %416

402:                                              ; preds = %399
  %403 = load i64, i64* %7, align 8
  %404 = uitofp i64 %403 to double
  %405 = fmul double %404, -3.762000e-01
  %406 = fdiv double %405, 2.000000e+01
  %407 = call double @pow(i32 10, double %406)
  %408 = fmul double %407, 1.024000e+03
  %409 = call i8* @scsp_round(double %408)
  %410 = load i8**, i8*** @scsp_tl_table, align 8
  %411 = load i64, i64* %7, align 8
  %412 = getelementptr inbounds i8*, i8** %410, i64 %411
  store i8* %409, i8** %412, align 8
  br label %413

413:                                              ; preds = %402
  %414 = load i64, i64* %7, align 8
  %415 = add i64 %414, 1
  store i64 %415, i64* %7, align 8
  br label %399

416:                                              ; preds = %399
  %417 = call i32 (...) @scsp_reset()
  ret void
}

declare dso_local i32 @scsp_shutdown(...) #1

declare dso_local double @pow(i32, double) #1

declare dso_local i8* @scsp_round(double) #1

declare dso_local i64 @rand(...) #1

declare dso_local i32 @SCSPLOG(i8*, i64, i64, i64) #1

declare dso_local i32 @scsp_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
