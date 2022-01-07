; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aemphasis.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aemphasis.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { double, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { double, double, double, double, double }
%struct.TYPE_11__ = type { double, double, double, double, double }

@ENOMEM = common dso_local global i32 0, align 4
@M_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca %struct.TYPE_14__*, align 8
  %22 = alloca %struct.TYPE_12__*, align 8
  %23 = alloca %struct.TYPE_11__, align 8
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load double, double* %32, align 8
  store double %33, double* %20, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %21, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %22, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.TYPE_16__* @av_calloc(i32 %42, i32 48)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = icmp ne %struct.TYPE_16__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %1
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %519

53:                                               ; preds = %1
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %61 [
    i32 0, label %57
    i32 1, label %58
    i32 2, label %59
    i32 3, label %60
    i32 4, label %80
    i32 5, label %99
    i32 6, label %122
  ]

57:                                               ; preds = %53
  store double 1.000000e+02, double* %4, align 8
  store double 5.000000e+02, double* %5, align 8
  store double 1.590000e+03, double* %6, align 8
  br label %145

58:                                               ; preds = %53
  store double 7.000000e+01, double* %4, align 8
  store double 5.000000e+02, double* %5, align 8
  store double 2.500000e+03, double* %6, align 8
  br label %145

59:                                               ; preds = %53
  store double 5.000000e+01, double* %4, align 8
  store double 3.530000e+02, double* %5, align 8
  store double 3.180000e+03, double* %6, align 8
  br label %145

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %53, %60
  store double 3.180000e-03, double* %14, align 8
  store double 3.180000e-04, double* %15, align 8
  store double 7.500000e-05, double* %16, align 8
  %62 = load i32, i32* @M_PI, align 4
  %63 = sitofp i32 %62 to double
  %64 = fmul double 2.000000e+00, %63
  %65 = load double, double* %14, align 8
  %66 = fmul double %64, %65
  %67 = fdiv double 1.000000e+00, %66
  store double %67, double* %4, align 8
  %68 = load i32, i32* @M_PI, align 4
  %69 = sitofp i32 %68 to double
  %70 = fmul double 2.000000e+00, %69
  %71 = load double, double* %15, align 8
  %72 = fmul double %70, %71
  %73 = fdiv double 1.000000e+00, %72
  store double %73, double* %5, align 8
  %74 = load i32, i32* @M_PI, align 4
  %75 = sitofp i32 %74 to double
  %76 = fmul double 2.000000e+00, %75
  %77 = load double, double* %16, align 8
  %78 = fmul double %76, %77
  %79 = fdiv double 1.000000e+00, %78
  store double %79, double* %6, align 8
  br label %145

80:                                               ; preds = %53
  store double 5.000000e-05, double* %14, align 8
  store double 1.500000e-05, double* %15, align 8
  store double 0x3E7AD7F29ABCAF48, double* %16, align 8
  %81 = load i32, i32* @M_PI, align 4
  %82 = sitofp i32 %81 to double
  %83 = fmul double 2.000000e+00, %82
  %84 = load double, double* %14, align 8
  %85 = fmul double %83, %84
  %86 = fdiv double 1.000000e+00, %85
  store double %86, double* %4, align 8
  %87 = load i32, i32* @M_PI, align 4
  %88 = sitofp i32 %87 to double
  %89 = fmul double 2.000000e+00, %88
  %90 = load double, double* %15, align 8
  %91 = fmul double %89, %90
  %92 = fdiv double 1.000000e+00, %91
  store double %92, double* %5, align 8
  %93 = load i32, i32* @M_PI, align 4
  %94 = sitofp i32 %93 to double
  %95 = fmul double 2.000000e+00, %94
  %96 = load double, double* %16, align 8
  %97 = fmul double %95, %96
  %98 = fdiv double 1.000000e+00, %97
  store double %98, double* %6, align 8
  br label %145

99:                                               ; preds = %53
  store double 5.000000e-05, double* %14, align 8
  %100 = load double, double* %14, align 8
  %101 = fdiv double %100, 2.000000e+01
  store double %101, double* %15, align 8
  %102 = load double, double* %14, align 8
  %103 = fdiv double %102, 5.000000e+01
  store double %103, double* %16, align 8
  %104 = load i32, i32* @M_PI, align 4
  %105 = sitofp i32 %104 to double
  %106 = fmul double 2.000000e+00, %105
  %107 = load double, double* %14, align 8
  %108 = fmul double %106, %107
  %109 = fdiv double 1.000000e+00, %108
  store double %109, double* %4, align 8
  %110 = load i32, i32* @M_PI, align 4
  %111 = sitofp i32 %110 to double
  %112 = fmul double 2.000000e+00, %111
  %113 = load double, double* %15, align 8
  %114 = fmul double %112, %113
  %115 = fdiv double 1.000000e+00, %114
  store double %115, double* %5, align 8
  %116 = load i32, i32* @M_PI, align 4
  %117 = sitofp i32 %116 to double
  %118 = fmul double 2.000000e+00, %117
  %119 = load double, double* %16, align 8
  %120 = fmul double %118, %119
  %121 = fdiv double 1.000000e+00, %120
  store double %121, double* %6, align 8
  br label %145

122:                                              ; preds = %53
  store double 7.500000e-05, double* %14, align 8
  %123 = load double, double* %14, align 8
  %124 = fdiv double %123, 2.000000e+01
  store double %124, double* %15, align 8
  %125 = load double, double* %14, align 8
  %126 = fdiv double %125, 5.000000e+01
  store double %126, double* %16, align 8
  %127 = load i32, i32* @M_PI, align 4
  %128 = sitofp i32 %127 to double
  %129 = fmul double 2.000000e+00, %128
  %130 = load double, double* %14, align 8
  %131 = fmul double %129, %130
  %132 = fdiv double 1.000000e+00, %131
  store double %132, double* %4, align 8
  %133 = load i32, i32* @M_PI, align 4
  %134 = sitofp i32 %133 to double
  %135 = fmul double 2.000000e+00, %134
  %136 = load double, double* %15, align 8
  %137 = fmul double %135, %136
  %138 = fdiv double 1.000000e+00, %137
  store double %138, double* %5, align 8
  %139 = load i32, i32* @M_PI, align 4
  %140 = sitofp i32 %139 to double
  %141 = fmul double 2.000000e+00, %140
  %142 = load double, double* %16, align 8
  %143 = fmul double %141, %142
  %144 = fdiv double 1.000000e+00, %143
  store double %144, double* %6, align 8
  br label %145

145:                                              ; preds = %122, %99, %80, %61, %59, %58, %57
  %146 = load i32, i32* @M_PI, align 4
  %147 = mul nsw i32 2, %146
  %148 = sitofp i32 %147 to double
  %149 = load double, double* %4, align 8
  %150 = fmul double %149, %148
  store double %150, double* %4, align 8
  %151 = load i32, i32* @M_PI, align 4
  %152 = mul nsw i32 2, %151
  %153 = sitofp i32 %152 to double
  %154 = load double, double* %5, align 8
  %155 = fmul double %154, %153
  store double %155, double* %5, align 8
  %156 = load i32, i32* @M_PI, align 4
  %157 = mul nsw i32 2, %156
  %158 = sitofp i32 %157 to double
  %159 = load double, double* %6, align 8
  %160 = fmul double %159, %158
  store double %160, double* %6, align 8
  %161 = load double, double* %20, align 8
  %162 = fdiv double 1.000000e+00, %161
  store double %162, double* %8, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 7
  br i1 %166, label %172, label %167

167:                                              ; preds = %145
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %170, 8
  br i1 %171, label %172, label %256

172:                                              ; preds = %167, %145
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 7
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, double 5.000000e-05, double 7.500000e-05
  store double %178, double* %25, align 8
  %179 = load i32, i32* @M_PI, align 4
  %180 = mul nsw i32 2, %179
  %181 = sitofp i32 %180 to double
  %182 = load double, double* %25, align 8
  %183 = fmul double %181, %182
  %184 = fdiv double 1.000000e+00, %183
  store double %184, double* %26, align 8
  %185 = load double, double* %20, align 8
  %186 = fmul double %185, 5.000000e-01
  store double %186, double* %27, align 8
  %187 = load double, double* %27, align 8
  %188 = load double, double* %27, align 8
  %189 = fmul double %187, %188
  %190 = load double, double* %26, align 8
  %191 = load double, double* %26, align 8
  %192 = fmul double %190, %191
  %193 = fdiv double %189, %192
  %194 = fadd double 1.000000e+00, %193
  %195 = call double @sqrt(double %194) #3
  store double %195, double* %28, align 8
  %196 = load double, double* %28, align 8
  %197 = fsub double %196, 1.000000e+00
  %198 = load double, double* %26, align 8
  %199 = fmul double %197, %198
  %200 = load double, double* %26, align 8
  %201 = fmul double %199, %200
  %202 = call double @sqrt(double %201) #3
  store double %202, double* %29, align 8
  store double 1.000000e+00, double* %30, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp eq i32 %205, 8
  br i1 %206, label %207, label %212

207:                                              ; preds = %172
  %208 = load double, double* %20, align 8
  %209 = fdiv double %208, 3.269000e+03
  %210 = fadd double %209, 1.950000e+01
  %211 = call double @pow(double %210, double -2.500000e-01) #3
  store double %211, double* %30, align 8
  br label %212

212:                                              ; preds = %207, %172
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp eq i32 %215, 7
  br i1 %216, label %217, label %222

217:                                              ; preds = %212
  %218 = load double, double* %20, align 8
  %219 = fdiv double %218, 4.750000e+03
  %220 = fadd double %219, 1.950000e+01
  %221 = call double @pow(double %220, double -2.500000e-01) #3
  store double %221, double* %30, align 8
  br label %222

222:                                              ; preds = %217, %212
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %239

227:                                              ; preds = %222
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 2
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i64 0
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 2
  %233 = load double, double* %29, align 8
  %234 = load double, double* %30, align 8
  %235 = load double, double* %28, align 8
  %236 = fdiv double 1.000000e+00, %235
  %237 = load double, double* %20, align 8
  %238 = call i32 @set_highshelf_rbj(%struct.TYPE_15__* %232, double %233, double %234, double %236, double %237)
  br label %250

239:                                              ; preds = %222
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i64 0
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 2
  %245 = load double, double* %29, align 8
  %246 = load double, double* %30, align 8
  %247 = load double, double* %28, align 8
  %248 = load double, double* %20, align 8
  %249 = call i32 @set_highshelf_rbj(%struct.TYPE_15__* %244, double %245, double %246, double %247, double %248)
  br label %250

250:                                              ; preds = %239, %227
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i64 0
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 0
  store i32 0, i32* %255, align 8
  br label %485

256:                                              ; preds = %167
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i64 0
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 0
  store i32 1, i32* %261, align 8
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %345

266:                                              ; preds = %256
  %267 = load double, double* %4, align 8
  %268 = fmul double 2.000000e+00, %267
  %269 = load double, double* %8, align 8
  %270 = fmul double %268, %269
  %271 = fadd double 4.000000e+00, %270
  %272 = load double, double* %6, align 8
  %273 = fmul double 2.000000e+00, %272
  %274 = load double, double* %8, align 8
  %275 = fmul double %273, %274
  %276 = fadd double %271, %275
  %277 = load double, double* %4, align 8
  %278 = load double, double* %6, align 8
  %279 = fmul double %277, %278
  %280 = load double, double* %8, align 8
  %281 = fmul double %279, %280
  %282 = load double, double* %8, align 8
  %283 = fmul double %281, %282
  %284 = fadd double %276, %283
  %285 = fdiv double 1.000000e+00, %284
  store double %285, double* %7, align 8
  %286 = load double, double* %8, align 8
  %287 = fmul double 2.000000e+00, %286
  %288 = load double, double* %5, align 8
  %289 = load double, double* %8, align 8
  %290 = fmul double %288, %289
  %291 = load double, double* %8, align 8
  %292 = fmul double %290, %291
  %293 = fadd double %287, %292
  %294 = load double, double* %7, align 8
  %295 = fmul double %293, %294
  store double %295, double* %9, align 8
  %296 = load double, double* %5, align 8
  %297 = fmul double 2.000000e+00, %296
  %298 = load double, double* %8, align 8
  %299 = fmul double %297, %298
  %300 = load double, double* %8, align 8
  %301 = fmul double %299, %300
  %302 = load double, double* %7, align 8
  %303 = fmul double %301, %302
  store double %303, double* %10, align 8
  %304 = load double, double* %8, align 8
  %305 = fmul double -2.000000e+00, %304
  %306 = load double, double* %5, align 8
  %307 = load double, double* %8, align 8
  %308 = fmul double %306, %307
  %309 = load double, double* %8, align 8
  %310 = fmul double %308, %309
  %311 = fadd double %305, %310
  %312 = load double, double* %7, align 8
  %313 = fmul double %311, %312
  store double %313, double* %11, align 8
  %314 = load double, double* %4, align 8
  %315 = fmul double 2.000000e+00, %314
  %316 = load double, double* %6, align 8
  %317 = fmul double %315, %316
  %318 = load double, double* %8, align 8
  %319 = fmul double %317, %318
  %320 = load double, double* %8, align 8
  %321 = fmul double %319, %320
  %322 = fadd double -8.000000e+00, %321
  %323 = load double, double* %7, align 8
  %324 = fmul double %322, %323
  store double %324, double* %12, align 8
  %325 = load double, double* %4, align 8
  %326 = fmul double 2.000000e+00, %325
  %327 = load double, double* %8, align 8
  %328 = fmul double %326, %327
  %329 = fsub double 4.000000e+00, %328
  %330 = load double, double* %6, align 8
  %331 = fmul double 2.000000e+00, %330
  %332 = load double, double* %8, align 8
  %333 = fmul double %331, %332
  %334 = fsub double %329, %333
  %335 = load double, double* %4, align 8
  %336 = load double, double* %6, align 8
  %337 = fmul double %335, %336
  %338 = load double, double* %8, align 8
  %339 = fmul double %337, %338
  %340 = load double, double* %8, align 8
  %341 = fmul double %339, %340
  %342 = fadd double %334, %341
  %343 = load double, double* %7, align 8
  %344 = fmul double %342, %343
  store double %344, double* %13, align 8
  br label %424

345:                                              ; preds = %256
  %346 = load double, double* %8, align 8
  %347 = fmul double 2.000000e+00, %346
  %348 = load double, double* %5, align 8
  %349 = load double, double* %8, align 8
  %350 = fmul double %348, %349
  %351 = load double, double* %8, align 8
  %352 = fmul double %350, %351
  %353 = fadd double %347, %352
  %354 = fdiv double 1.000000e+00, %353
  store double %354, double* %7, align 8
  %355 = load double, double* %4, align 8
  %356 = fmul double 2.000000e+00, %355
  %357 = load double, double* %8, align 8
  %358 = fmul double %356, %357
  %359 = fadd double 4.000000e+00, %358
  %360 = load double, double* %6, align 8
  %361 = fmul double 2.000000e+00, %360
  %362 = load double, double* %8, align 8
  %363 = fmul double %361, %362
  %364 = fadd double %359, %363
  %365 = load double, double* %4, align 8
  %366 = load double, double* %6, align 8
  %367 = fmul double %365, %366
  %368 = load double, double* %8, align 8
  %369 = fmul double %367, %368
  %370 = load double, double* %8, align 8
  %371 = fmul double %369, %370
  %372 = fadd double %364, %371
  %373 = load double, double* %7, align 8
  %374 = fmul double %372, %373
  store double %374, double* %9, align 8
  %375 = load double, double* %4, align 8
  %376 = fmul double 2.000000e+00, %375
  %377 = load double, double* %6, align 8
  %378 = fmul double %376, %377
  %379 = load double, double* %8, align 8
  %380 = fmul double %378, %379
  %381 = load double, double* %8, align 8
  %382 = fmul double %380, %381
  %383 = fadd double -8.000000e+00, %382
  %384 = load double, double* %7, align 8
  %385 = fmul double %383, %384
  store double %385, double* %10, align 8
  %386 = load double, double* %4, align 8
  %387 = fmul double 2.000000e+00, %386
  %388 = load double, double* %8, align 8
  %389 = fmul double %387, %388
  %390 = fsub double 4.000000e+00, %389
  %391 = load double, double* %6, align 8
  %392 = fmul double 2.000000e+00, %391
  %393 = load double, double* %8, align 8
  %394 = fmul double %392, %393
  %395 = fsub double %390, %394
  %396 = load double, double* %4, align 8
  %397 = load double, double* %6, align 8
  %398 = fmul double %396, %397
  %399 = load double, double* %8, align 8
  %400 = fmul double %398, %399
  %401 = load double, double* %8, align 8
  %402 = fmul double %400, %401
  %403 = fadd double %395, %402
  %404 = load double, double* %7, align 8
  %405 = fmul double %403, %404
  store double %405, double* %11, align 8
  %406 = load double, double* %5, align 8
  %407 = fmul double 2.000000e+00, %406
  %408 = load double, double* %8, align 8
  %409 = fmul double %407, %408
  %410 = load double, double* %8, align 8
  %411 = fmul double %409, %410
  %412 = load double, double* %7, align 8
  %413 = fmul double %411, %412
  store double %413, double* %12, align 8
  %414 = load double, double* %8, align 8
  %415 = fmul double -2.000000e+00, %414
  %416 = load double, double* %5, align 8
  %417 = load double, double* %8, align 8
  %418 = fmul double %416, %417
  %419 = load double, double* %8, align 8
  %420 = fmul double %418, %419
  %421 = fadd double %415, %420
  %422 = load double, double* %7, align 8
  %423 = fmul double %421, %422
  store double %423, double* %13, align 8
  br label %424

424:                                              ; preds = %345, %266
  %425 = load double, double* %9, align 8
  %426 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store double %425, double* %426, align 8
  %427 = load double, double* %10, align 8
  %428 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  store double %427, double* %428, align 8
  %429 = load double, double* %11, align 8
  %430 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  store double %429, double* %430, align 8
  %431 = load double, double* %12, align 8
  %432 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  store double %431, double* %432, align 8
  %433 = load double, double* %13, align 8
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 4
  store double %433, double* %434, align 8
  %435 = load double, double* %20, align 8
  %436 = call double @freq_gain(%struct.TYPE_11__* %23, double 1.000000e+03, double %435)
  store double %436, double* %18, align 8
  %437 = load double, double* %18, align 8
  %438 = fdiv double 1.000000e+00, %437
  store double %438, double* %19, align 8
  %439 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %440 = load double, double* %439, align 8
  %441 = load double, double* %19, align 8
  %442 = fmul double %440, %441
  %443 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i32 0, i32 2
  %445 = load %struct.TYPE_16__*, %struct.TYPE_16__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %445, i64 0
  %447 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %446, i32 0, i32 2
  %448 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %447, i32 0, i32 0
  store double %442, double* %448, align 8
  %449 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %450 = load double, double* %449, align 8
  %451 = load double, double* %19, align 8
  %452 = fmul double %450, %451
  %453 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %454 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %453, i32 0, i32 2
  %455 = load %struct.TYPE_16__*, %struct.TYPE_16__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %455, i64 0
  %457 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %456, i32 0, i32 2
  %458 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %457, i32 0, i32 1
  store double %452, double* %458, align 8
  %459 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %460 = load double, double* %459, align 8
  %461 = load double, double* %19, align 8
  %462 = fmul double %460, %461
  %463 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %464 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %463, i32 0, i32 2
  %465 = load %struct.TYPE_16__*, %struct.TYPE_16__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %465, i64 0
  %467 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %466, i32 0, i32 2
  %468 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %467, i32 0, i32 2
  store double %462, double* %468, align 8
  %469 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  %470 = load double, double* %469, align 8
  %471 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %472 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %471, i32 0, i32 2
  %473 = load %struct.TYPE_16__*, %struct.TYPE_16__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %473, i64 0
  %475 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %474, i32 0, i32 2
  %476 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %475, i32 0, i32 3
  store double %470, double* %476, align 8
  %477 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 4
  %478 = load double, double* %477, align 8
  %479 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %480 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %479, i32 0, i32 2
  %481 = load %struct.TYPE_16__*, %struct.TYPE_16__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %481, i64 0
  %483 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %482, i32 0, i32 2
  %484 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %483, i32 0, i32 4
  store double %478, double* %484, align 8
  br label %485

485:                                              ; preds = %424, %250
  %486 = load double, double* %20, align 8
  %487 = fmul double 4.500000e-01, %486
  %488 = call double @FFMIN(double %487, i32 21000)
  store double %488, double* %17, align 8
  %489 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %490 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %489, i32 0, i32 2
  %491 = load %struct.TYPE_16__*, %struct.TYPE_16__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %491, i64 0
  %493 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %492, i32 0, i32 1
  %494 = load double, double* %17, align 8
  %495 = load double, double* %20, align 8
  %496 = call i32 @set_lp_rbj(i32* %493, double %494, double 7.070000e-01, double %495, i32 1)
  store i32 1, i32* %24, align 4
  br label %497

497:                                              ; preds = %515, %485
  %498 = load i32, i32* %24, align 4
  %499 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %500 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %499, i32 0, i32 1
  %501 = load i32, i32* %500, align 8
  %502 = icmp slt i32 %498, %501
  br i1 %502, label %503, label %518

503:                                              ; preds = %497
  %504 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %505 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %504, i32 0, i32 2
  %506 = load %struct.TYPE_16__*, %struct.TYPE_16__** %505, align 8
  %507 = load i32, i32* %24, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %506, i64 %508
  %510 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %511 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %510, i32 0, i32 2
  %512 = load %struct.TYPE_16__*, %struct.TYPE_16__** %511, align 8
  %513 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %512, i64 0
  %514 = call i32 @memcpy(%struct.TYPE_16__* %509, %struct.TYPE_16__* %513, i32 4)
  br label %515

515:                                              ; preds = %503
  %516 = load i32, i32* %24, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %24, align 4
  br label %497

518:                                              ; preds = %497
  store i32 0, i32* %2, align 4
  br label %519

519:                                              ; preds = %518, %50
  %520 = load i32, i32* %2, align 4
  ret i32 %520
}

declare dso_local %struct.TYPE_16__* @av_calloc(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

declare dso_local i32 @set_highshelf_rbj(%struct.TYPE_15__*, double, double, double, double) #1

declare dso_local double @freq_gain(%struct.TYPE_11__*, double, double) #1

declare dso_local double @FFMIN(double, i32) #1

declare dso_local i32 @set_lp_rbj(i32*, double, double, double, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
