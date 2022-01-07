; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ratecontrol.c_get_qscale.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ratecontrol.c_get_qscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { double, %struct.TYPE_16__*, i32, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { double, i32, double, double, double, double, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, double, i64 }
%struct.TYPE_14__ = type { double*, double*, double*, double, i32, i64* }
%struct.TYPE_13__ = type { i32, double, double, double, double, i64, double, double, double, double, double }

@M_PI = common dso_local global double 0.000000e+00, align 8
@M_E = common dso_local global double 0.000000e+00, align 8
@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_P = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error evaluating rc_eq \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_15__*, %struct.TYPE_13__*, double, i32)* @get_qscale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_qscale(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, double %2, i32 %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca [21 x double], align 16
  %18 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store double %2, double* %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %10, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %11, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  store double %29, double* %13, align 8
  %30 = getelementptr inbounds [21 x double], [21 x double]* %17, i64 0, i64 0
  %31 = load double, double* @M_PI, align 8
  store double %31, double* %30, align 8
  %32 = getelementptr inbounds double, double* %30, i64 1
  %33 = load double, double* @M_E, align 8
  store double %33, double* %32, align 8
  %34 = getelementptr inbounds double, double* %32, i64 1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load double, double* %39, align 8
  %41 = fmul double %37, %40
  store double %41, double* %34, align 8
  %42 = getelementptr inbounds double, double* %34, i64 1
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 3
  %45 = load double, double* %44, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load double, double* %47, align 8
  %49 = fmul double %45, %48
  store double %49, double* %42, align 8
  %50 = getelementptr inbounds double, double* %42, i64 1
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load double, double* %52, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = load double, double* %55, align 8
  %57 = fadd double %53, %56
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load double, double* %59, align 8
  %61 = fmul double %57, %60
  store double %61, double* %50, align 8
  %62 = getelementptr inbounds double, double* %50, i64 1
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 4
  %65 = load double, double* %64, align 8
  %66 = load double, double* %13, align 8
  %67 = fdiv double %65, %66
  store double %67, double* %62, align 8
  %68 = getelementptr inbounds double, double* %62, i64 1
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 6
  %77 = load double, double* %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 7
  %80 = load double, double* %79, align 8
  %81 = fadd double %77, %80
  %82 = fmul double %81, 5.000000e-01
  br label %87

83:                                               ; preds = %4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 6
  %86 = load double, double* %85, align 8
  br label %87

87:                                               ; preds = %83, %74
  %88 = phi double [ %82, %74 ], [ %86, %83 ]
  store double %88, double* %68, align 8
  %89 = getelementptr inbounds double, double* %68, i64 1
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 8
  %92 = load double, double* %91, align 8
  %93 = load double, double* %13, align 8
  %94 = fdiv double %92, %93
  store double %94, double* %89, align 8
  %95 = getelementptr inbounds double, double* %89, i64 1
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 9
  %98 = load double, double* %97, align 8
  %99 = load double, double* %13, align 8
  %100 = fdiv double %98, %99
  store double %100, double* %95, align 8
  %101 = getelementptr inbounds double, double* %95, i64 1
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 10
  %104 = load double, double* %103, align 8
  %105 = load double, double* %13, align 8
  %106 = fdiv double %104, %105
  store double %106, double* %101, align 8
  %107 = getelementptr inbounds double, double* %101, i64 1
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = sitofp i32 %113 to double
  store double %114, double* %107, align 8
  %115 = getelementptr inbounds double, double* %107, i64 1
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = sitofp i32 %121 to double
  store double %122, double* %115, align 8
  %123 = getelementptr inbounds double, double* %115, i64 1
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = sitofp i32 %129 to double
  store double %130, double* %123, align 8
  %131 = getelementptr inbounds double, double* %123, i64 1
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load double*, double** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds double, double* %134, i64 %136
  %138 = load double, double* %137, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 5
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = sitofp i64 %145 to double
  %147 = fdiv double %138, %146
  store double %147, double* %131, align 8
  %148 = getelementptr inbounds double, double* %131, i64 1
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load double, double* %150, align 8
  store double %151, double* %148, align 8
  %152 = getelementptr inbounds double, double* %148, i64 1
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load double*, double** %154, align 8
  %156 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %157 = getelementptr inbounds double, double* %155, i64 %156
  %158 = load double, double* %157, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 5
  %161 = load i64*, i64** %160, align 8
  %162 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = sitofp i64 %164 to double
  %166 = fdiv double %158, %165
  store double %166, double* %152, align 8
  %167 = getelementptr inbounds double, double* %152, i64 1
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  %170 = load double*, double** %169, align 8
  %171 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %172 = getelementptr inbounds double, double* %170, i64 %171
  %173 = load double, double* %172, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 5
  %176 = load i64*, i64** %175, align 8
  %177 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = sitofp i64 %179 to double
  %181 = fdiv double %173, %180
  store double %181, double* %167, align 8
  %182 = getelementptr inbounds double, double* %167, i64 1
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  %185 = load double*, double** %184, align 8
  %186 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %187 = getelementptr inbounds double, double* %185, i64 %186
  %188 = load double, double* %187, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 5
  %191 = load i64*, i64** %190, align 8
  %192 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = sitofp i64 %194 to double
  %196 = fdiv double %188, %195
  store double %196, double* %182, align 8
  %197 = getelementptr inbounds double, double* %182, i64 1
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 2
  %200 = load double*, double** %199, align 8
  %201 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %202 = getelementptr inbounds double, double* %200, i64 %201
  %203 = load double, double* %202, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 5
  %206 = load i64*, i64** %205, align 8
  %207 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %208 = getelementptr inbounds i64, i64* %206, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = sitofp i64 %209 to double
  %211 = fdiv double %203, %210
  store double %211, double* %197, align 8
  %212 = getelementptr inbounds double, double* %197, i64 1
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 1
  %215 = load double*, double** %214, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds double, double* %215, i64 %217
  %219 = load double, double* %218, align 8
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 2
  %222 = load double*, double** %221, align 8
  %223 = load i32, i32* %12, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds double, double* %222, i64 %224
  %226 = load double, double* %225, align 8
  %227 = fadd double %219, %226
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 5
  %230 = load i64*, i64** %229, align 8
  %231 = load i32, i32* %12, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = sitofp i64 %234 to double
  %236 = fdiv double %227, %235
  store double %236, double* %212, align 8
  %237 = getelementptr inbounds double, double* %212, i64 1
  store double 0.000000e+00, double* %237, align 8
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = getelementptr inbounds [21 x double], [21 x double]* %17, i64 0, i64 0
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %243 = call double @av_expr_eval(i32 %240, double* %241, %struct.TYPE_13__* %242)
  store double %243, double* %15, align 8
  %244 = load double, double* %15, align 8
  %245 = call i64 @isnan(double %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %87
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %249, align 8
  %251 = load i32, i32* @AV_LOG_ERROR, align 4
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @av_log(%struct.TYPE_16__* %250, i32 %251, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %254)
  store double -1.000000e+00, double* %5, align 8
  br label %398

256:                                              ; preds = %87
  %257 = load double, double* %15, align 8
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 3
  %260 = load double, double* %259, align 8
  %261 = fadd double %260, %257
  store double %261, double* %259, align 8
  %262 = load double, double* %8, align 8
  %263 = load double, double* %15, align 8
  %264 = fmul double %263, %262
  store double %264, double* %15, align 8
  %265 = load double, double* %15, align 8
  %266 = fcmp olt double %265, 0.000000e+00
  br i1 %266, label %267, label %268

267:                                              ; preds = %256
  store double 0.000000e+00, double* %15, align 8
  br label %268

268:                                              ; preds = %267, %256
  %269 = load double, double* %15, align 8
  %270 = fadd double %269, 1.000000e+00
  store double %270, double* %15, align 8
  store i32 0, i32* %16, align 4
  br label %271

271:                                              ; preds = %331, %268
  %272 = load i32, i32* %16, align 4
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = icmp slt i32 %272, %277
  br i1 %278, label %279, label %334

279:                                              ; preds = %271
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 6
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %283, align 8
  store %struct.TYPE_12__* %284, %struct.TYPE_12__** %18, align 8
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %286 = load i32, i32* %16, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* %9, align 4
  %292 = icmp sgt i32 %290, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %279
  br label %331

294:                                              ; preds = %279
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %296 = load i32, i32* %16, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %9, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %294
  br label %331

304:                                              ; preds = %294
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %306 = load i32, i32* %16, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 3
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %321

312:                                              ; preds = %304
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %315 = load i32, i32* %16, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 3
  %319 = load i64, i64* %318, align 8
  %320 = call double @qp2bits(%struct.TYPE_13__* %313, i64 %319)
  store double %320, double* %15, align 8
  br label %330

321:                                              ; preds = %304
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %323 = load i32, i32* %16, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 2
  %327 = load double, double* %326, align 8
  %328 = load double, double* %15, align 8
  %329 = fmul double %328, %327
  store double %329, double* %15, align 8
  br label %330

330:                                              ; preds = %321, %312
  br label %331

331:                                              ; preds = %330, %303, %293
  %332 = load i32, i32* %16, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %16, align 4
  br label %271

334:                                              ; preds = %271
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %336 = load double, double* %15, align 8
  %337 = call double @bits2qp(%struct.TYPE_13__* %335, double %336)
  store double %337, double* %14, align 8
  %338 = load i32, i32* %12, align 4
  %339 = sext i32 %338 to i64
  %340 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %364

342:                                              ; preds = %334
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 1
  %345 = load %struct.TYPE_16__*, %struct.TYPE_16__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i32 0, i32 2
  %347 = load double, double* %346, align 8
  %348 = fcmp olt double %347, 0.000000e+00
  br i1 %348, label %349, label %364

349:                                              ; preds = %342
  %350 = load double, double* %14, align 8
  %351 = fneg double %350
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 1
  %354 = load %struct.TYPE_16__*, %struct.TYPE_16__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %354, i32 0, i32 2
  %356 = load double, double* %355, align 8
  %357 = fmul double %351, %356
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 1
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 3
  %362 = load double, double* %361, align 8
  %363 = fadd double %357, %362
  store double %363, double* %14, align 8
  br label %392

364:                                              ; preds = %342, %334
  %365 = load i32, i32* %12, align 4
  %366 = sext i32 %365 to i64
  %367 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %368 = icmp eq i64 %366, %367
  br i1 %368, label %369, label %391

369:                                              ; preds = %364
  %370 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i32 0, i32 4
  %374 = load double, double* %373, align 8
  %375 = fcmp olt double %374, 0.000000e+00
  br i1 %375, label %376, label %391

376:                                              ; preds = %369
  %377 = load double, double* %14, align 8
  %378 = fneg double %377
  %379 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %380 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %379, i32 0, i32 1
  %381 = load %struct.TYPE_16__*, %struct.TYPE_16__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %381, i32 0, i32 4
  %383 = load double, double* %382, align 8
  %384 = fmul double %378, %383
  %385 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %385, i32 0, i32 1
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 5
  %389 = load double, double* %388, align 8
  %390 = fadd double %384, %389
  store double %390, double* %14, align 8
  br label %391

391:                                              ; preds = %376, %369, %364
  br label %392

392:                                              ; preds = %391, %349
  %393 = load double, double* %14, align 8
  %394 = fcmp olt double %393, 1.000000e+00
  br i1 %394, label %395, label %396

395:                                              ; preds = %392
  store double 1.000000e+00, double* %14, align 8
  br label %396

396:                                              ; preds = %395, %392
  %397 = load double, double* %14, align 8
  store double %397, double* %5, align 8
  br label %398

398:                                              ; preds = %396, %247
  %399 = load double, double* %5, align 8
  ret double %399
}

declare dso_local double @av_expr_eval(i32, double*, %struct.TYPE_13__*) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, i32) #1

declare dso_local double @qp2bits(%struct.TYPE_13__*, i64) #1

declare dso_local double @bits2qp(%struct.TYPE_13__*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
