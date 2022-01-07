; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_init_cpu_capabilities.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_init_cpu_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@kHasAVX1_0 = common dso_local global i32 0, align 4
@kHasSSE4_2 = common dso_local global i32 0, align 4
@kHasSSE4_1 = common dso_local global i32 0, align 4
@kHasSupplementalSSE3 = common dso_local global i32 0, align 4
@kHasSSE3 = common dso_local global i32 0, align 4
@kHasSSE2 = common dso_local global i32 0, align 4
@kHasSSE = common dso_local global i32 0, align 4
@kHasMMX = common dso_local global i32 0, align 4
@kCache128 = common dso_local global i32 0, align 4
@kCache64 = common dso_local global i32 0, align 4
@kCache32 = common dso_local global i32 0, align 4
@kNumCPUsShift = common dso_local global i32 0, align 4
@kFastThreadLocalStorage = common dso_local global i32 0, align 4
@kUP = common dso_local global i32 0, align 4
@k64Bit = common dso_local global i32 0, align 4
@tscFreq = common dso_local global i64 0, align 8
@SLOW_TSC_THRESHOLD = common dso_local global i64 0, align 8
@kSlow = common dso_local global i32 0, align 4
@CPUID_FEATURE_AES = common dso_local global i32 0, align 4
@kHasAES = common dso_local global i32 0, align 4
@CPUID_FEATURE_F16C = common dso_local global i32 0, align 4
@kHasF16C = common dso_local global i32 0, align 4
@CPUID_FEATURE_RDRAND = common dso_local global i32 0, align 4
@kHasRDRAND = common dso_local global i32 0, align 4
@CPUID_FEATURE_FMA = common dso_local global i32 0, align 4
@kHasFMA = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_BMI1 = common dso_local global i32 0, align 4
@kHasBMI1 = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_BMI2 = common dso_local global i32 0, align 4
@kHasBMI2 = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_RTM = common dso_local global i32 0, align 4
@kHasRTM = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_HLE = common dso_local global i32 0, align 4
@kHasHLE = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_AVX2 = common dso_local global i32 0, align 4
@kHasAVX2_0 = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_RDSEED = common dso_local global i32 0, align 4
@kHasRDSEED = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_ADX = common dso_local global i32 0, align 4
@kHasADX = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_AVX512F = common dso_local global i32 0, align 4
@kHasAVX512F = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_AVX512CD = common dso_local global i32 0, align 4
@kHasAVX512CD = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_AVX512DQ = common dso_local global i32 0, align 4
@kHasAVX512DQ = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_AVX512BW = common dso_local global i32 0, align 4
@kHasAVX512BW = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_AVX512VL = common dso_local global i32 0, align 4
@kHasAVX512VL = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_AVX512IFMA = common dso_local global i32 0, align 4
@kHasAVX512IFMA = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_AVX512VBMI = common dso_local global i32 0, align 4
@kHasAVX512VBMI = common dso_local global i32 0, align 4
@MSR_IA32_MISC_ENABLE = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_ERMS = common dso_local global i32 0, align 4
@kHasENFSTRG = common dso_local global i32 0, align 4
@_cpu_capabilities = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_MPX = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_SGX = common dso_local global i32 0, align 4
@kHasMPX = common dso_local global i32 0, align 4
@kHasSGX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @commpage_init_cpu_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commpage_init_cpu_capabilities() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 @ml_cpu_get_info(%struct.TYPE_3__* %3)
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %40 [
    i32 9, label %8
    i32 8, label %12
    i32 7, label %16
    i32 6, label %20
    i32 5, label %24
    i32 4, label %28
    i32 3, label %32
    i32 2, label %36
  ]

8:                                                ; preds = %0
  %9 = load i32, i32* @kHasAVX1_0, align 4
  %10 = load i32, i32* %1, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %0, %8
  %13 = load i32, i32* @kHasSSE4_2, align 4
  %14 = load i32, i32* %1, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %0, %12
  %17 = load i32, i32* @kHasSSE4_1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %0, %16
  %21 = load i32, i32* @kHasSupplementalSSE3, align 4
  %22 = load i32, i32* %1, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %0, %20
  %25 = load i32, i32* @kHasSSE3, align 4
  %26 = load i32, i32* %1, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %0, %24
  %29 = load i32, i32* @kHasSSE2, align 4
  %30 = load i32, i32* %1, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %0, %28
  %33 = load i32, i32* @kHasSSE, align 4
  %34 = load i32, i32* %1, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %0, %32
  %37 = load i32, i32* @kHasMMX, align 4
  %38 = load i32, i32* %1, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %1, align 4
  br label %40

40:                                               ; preds = %0, %36
  br label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %56 [
    i32 128, label %44
    i32 64, label %48
    i32 32, label %52
  ]

44:                                               ; preds = %41
  %45 = load i32, i32* @kCache128, align 4
  %46 = load i32, i32* %1, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %1, align 4
  br label %57

48:                                               ; preds = %41
  %49 = load i32, i32* @kCache64, align 4
  %50 = load i32, i32* %1, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %1, align 4
  br label %57

52:                                               ; preds = %41
  %53 = load i32, i32* @kCache32, align 4
  %54 = load i32, i32* %1, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %1, align 4
  br label %57

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %52, %48, %44
  %58 = call i32 (...) @commpage_cpus()
  store i32 %58, i32* %2, align 4
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @kNumCPUsShift, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %1, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* @kFastThreadLocalStorage, align 4
  %65 = load i32, i32* %1, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* %2, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load i32, i32* @kUP, align 4
  %71 = load i32, i32* %1, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %1, align 4
  br label %73

73:                                               ; preds = %69, %57
  %74 = call i32 (...) @cpu_mode_is64bit()
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @k64Bit, align 4
  %78 = load i32, i32* %1, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %1, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i64, i64* @tscFreq, align 8
  %82 = load i64, i64* @SLOW_TSC_THRESHOLD, align 8
  %83 = icmp sle i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* @kSlow, align 4
  %86 = load i32, i32* %1, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %1, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = call i32 (...) @cpuid_features()
  %90 = load i32, i32* @CPUID_FEATURE_AES, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @kHasAES, align 4
  %95 = load i32, i32* %1, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %1, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = call i32 (...) @cpuid_features()
  %99 = load i32, i32* @CPUID_FEATURE_F16C, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* @kHasF16C, align 4
  %104 = load i32, i32* %1, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %1, align 4
  br label %106

106:                                              ; preds = %102, %97
  %107 = call i32 (...) @cpuid_features()
  %108 = load i32, i32* @CPUID_FEATURE_RDRAND, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @kHasRDRAND, align 4
  %113 = load i32, i32* %1, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %1, align 4
  br label %115

115:                                              ; preds = %111, %106
  %116 = call i32 (...) @cpuid_features()
  %117 = load i32, i32* @CPUID_FEATURE_FMA, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @kHasFMA, align 4
  %122 = load i32, i32* %1, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %1, align 4
  br label %124

124:                                              ; preds = %120, %115
  %125 = call i32 (...) @cpuid_leaf7_features()
  %126 = load i32, i32* @CPUID_LEAF7_FEATURE_BMI1, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* @kHasBMI1, align 4
  %131 = load i32, i32* %1, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %1, align 4
  br label %133

133:                                              ; preds = %129, %124
  %134 = call i32 (...) @cpuid_leaf7_features()
  %135 = load i32, i32* @CPUID_LEAF7_FEATURE_BMI2, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i32, i32* @kHasBMI2, align 4
  %140 = load i32, i32* %1, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %1, align 4
  br label %142

142:                                              ; preds = %138, %133
  %143 = call i32 (...) @cpuid_leaf7_features()
  %144 = load i32, i32* @CPUID_LEAF7_FEATURE_RTM, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i32, i32* @kHasRTM, align 4
  %149 = load i32, i32* %1, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %1, align 4
  br label %151

151:                                              ; preds = %147, %142
  %152 = call i32 (...) @cpuid_leaf7_features()
  %153 = load i32, i32* @CPUID_LEAF7_FEATURE_HLE, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load i32, i32* @kHasHLE, align 4
  %158 = load i32, i32* %1, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %1, align 4
  br label %160

160:                                              ; preds = %156, %151
  %161 = call i32 (...) @cpuid_leaf7_features()
  %162 = load i32, i32* @CPUID_LEAF7_FEATURE_AVX2, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load i32, i32* @kHasAVX2_0, align 4
  %167 = load i32, i32* %1, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %1, align 4
  br label %169

169:                                              ; preds = %165, %160
  %170 = call i32 (...) @cpuid_leaf7_features()
  %171 = load i32, i32* @CPUID_LEAF7_FEATURE_RDSEED, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i32, i32* @kHasRDSEED, align 4
  %176 = load i32, i32* %1, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %1, align 4
  br label %178

178:                                              ; preds = %174, %169
  %179 = call i32 (...) @cpuid_leaf7_features()
  %180 = load i32, i32* @CPUID_LEAF7_FEATURE_ADX, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load i32, i32* @kHasADX, align 4
  %185 = load i32, i32* %1, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %1, align 4
  br label %187

187:                                              ; preds = %183, %178
  %188 = call i64 (...) @ml_fpu_avx512_enabled()
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %254

190:                                              ; preds = %187
  %191 = call i32 (...) @cpuid_leaf7_features()
  %192 = load i32, i32* @CPUID_LEAF7_FEATURE_AVX512F, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = load i32, i32* @kHasAVX512F, align 4
  %197 = load i32, i32* %1, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %1, align 4
  br label %199

199:                                              ; preds = %195, %190
  %200 = call i32 (...) @cpuid_leaf7_features()
  %201 = load i32, i32* @CPUID_LEAF7_FEATURE_AVX512CD, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = load i32, i32* @kHasAVX512CD, align 4
  %206 = load i32, i32* %1, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %1, align 4
  br label %208

208:                                              ; preds = %204, %199
  %209 = call i32 (...) @cpuid_leaf7_features()
  %210 = load i32, i32* @CPUID_LEAF7_FEATURE_AVX512DQ, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = load i32, i32* @kHasAVX512DQ, align 4
  %215 = load i32, i32* %1, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %1, align 4
  br label %217

217:                                              ; preds = %213, %208
  %218 = call i32 (...) @cpuid_leaf7_features()
  %219 = load i32, i32* @CPUID_LEAF7_FEATURE_AVX512BW, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %217
  %223 = load i32, i32* @kHasAVX512BW, align 4
  %224 = load i32, i32* %1, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %1, align 4
  br label %226

226:                                              ; preds = %222, %217
  %227 = call i32 (...) @cpuid_leaf7_features()
  %228 = load i32, i32* @CPUID_LEAF7_FEATURE_AVX512VL, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = load i32, i32* @kHasAVX512VL, align 4
  %233 = load i32, i32* %1, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %1, align 4
  br label %235

235:                                              ; preds = %231, %226
  %236 = call i32 (...) @cpuid_leaf7_features()
  %237 = load i32, i32* @CPUID_LEAF7_FEATURE_AVX512IFMA, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %235
  %241 = load i32, i32* @kHasAVX512IFMA, align 4
  %242 = load i32, i32* %1, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %1, align 4
  br label %244

244:                                              ; preds = %240, %235
  %245 = call i32 (...) @cpuid_leaf7_features()
  %246 = load i32, i32* @CPUID_LEAF7_FEATURE_AVX512VBMI, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = load i32, i32* @kHasAVX512VBMI, align 4
  %251 = load i32, i32* %1, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %1, align 4
  br label %253

253:                                              ; preds = %249, %244
  br label %254

254:                                              ; preds = %253, %187
  %255 = load i32, i32* @MSR_IA32_MISC_ENABLE, align 4
  %256 = call i32 @rdmsr64(i32 %255)
  store i32 %256, i32* %4, align 4
  %257 = load i32, i32* %4, align 4
  %258 = sext i32 %257 to i64
  %259 = and i64 %258, 1
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %254
  %262 = call i32 (...) @cpuid_leaf7_features()
  %263 = load i32, i32* @CPUID_LEAF7_FEATURE_ERMS, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %261
  %267 = load i32, i32* @kHasENFSTRG, align 4
  %268 = load i32, i32* %1, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %1, align 4
  br label %270

270:                                              ; preds = %266, %261, %254
  %271 = load i32, i32* %1, align 4
  store i32 %271, i32* @_cpu_capabilities, align 4
  ret void
}

declare dso_local i32 @ml_cpu_get_info(%struct.TYPE_3__*) #1

declare dso_local i32 @commpage_cpus(...) #1

declare dso_local i32 @cpu_mode_is64bit(...) #1

declare dso_local i32 @cpuid_features(...) #1

declare dso_local i32 @cpuid_leaf7_features(...) #1

declare dso_local i64 @ml_fpu_avx512_enabled(...) #1

declare dso_local i32 @rdmsr64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
