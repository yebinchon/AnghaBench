; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_Tracer.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_Tracer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { float }
%struct.TYPE_15__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { double** }
%struct.TYPE_13__ = type { double }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { double*, i32*, i32* }

@cg_tracerLength = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@cg = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@cg_tracerWidth = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@cgs = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ENTITYNUM_WORLD = common dso_local global i32 0, align 4
@CHAN_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_Tracer(double* %0, double* %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca [4 x %struct.TYPE_11__], align 16
  %8 = alloca double*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  %15 = load double*, double** %4, align 8
  %16 = load double*, double** %3, align 8
  %17 = load double*, double** %5, align 8
  %18 = call i32 @VectorSubtract(double* %15, double* %16, double* %17)
  %19 = load double*, double** %5, align 8
  %20 = call float @VectorNormalize(double* %19)
  store float %20, float* %9, align 4
  %21 = load float, float* %9, align 4
  %22 = fcmp olt float %21, 1.000000e+02
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %249

24:                                               ; preds = %2
  %25 = call float (...) @random()
  %26 = load float, float* %9, align 4
  %27 = fsub float %26, 6.000000e+01
  %28 = fmul float %25, %27
  %29 = fadd float 5.000000e+01, %28
  store float %29, float* %10, align 4
  %30 = load float, float* %10, align 4
  %31 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg_tracerLength, i32 0, i32 0), align 4
  %32 = fadd float %30, %31
  store float %32, float* %11, align 4
  %33 = load float, float* %11, align 4
  %34 = load float, float* %9, align 4
  %35 = fcmp ogt float %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load float, float* %9, align 4
  store float %37, float* %11, align 4
  br label %38

38:                                               ; preds = %36, %24
  %39 = load double*, double** %3, align 8
  %40 = load float, float* %10, align 4
  %41 = fpext float %40 to double
  %42 = load double*, double** %5, align 8
  %43 = load double*, double** %12, align 8
  %44 = call i32 @VectorMA(double* %39, double %41, double* %42, double* %43)
  %45 = load double*, double** %3, align 8
  %46 = load float, float* %11, align 4
  %47 = fpext float %46 to double
  %48 = load double*, double** %5, align 8
  %49 = load double*, double** %13, align 8
  %50 = call i32 @VectorMA(double* %45, double %47, double* %48, double* %49)
  %51 = load double*, double** %5, align 8
  %52 = load double**, double*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0, i32 0), align 8
  %53 = getelementptr inbounds double*, double** %52, i64 1
  %54 = load double*, double** %53, align 8
  %55 = call double @DotProduct(double* %51, double* %54)
  %56 = load double*, double** %8, align 8
  %57 = getelementptr inbounds double, double* %56, i64 0
  store double %55, double* %57, align 8
  %58 = load double*, double** %5, align 8
  %59 = load double**, double*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0, i32 0), align 8
  %60 = getelementptr inbounds double*, double** %59, i64 2
  %61 = load double*, double** %60, align 8
  %62 = call double @DotProduct(double* %58, double* %61)
  %63 = load double*, double** %8, align 8
  %64 = getelementptr inbounds double, double* %63, i64 1
  store double %62, double* %64, align 8
  %65 = load double**, double*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0, i32 0), align 8
  %66 = getelementptr inbounds double*, double** %65, i64 1
  %67 = load double*, double** %66, align 8
  %68 = load double*, double** %8, align 8
  %69 = getelementptr inbounds double, double* %68, i64 1
  %70 = load double, double* %69, align 8
  %71 = load double*, double** %6, align 8
  %72 = call i32 @VectorScale(double* %67, double %70, double* %71)
  %73 = load double*, double** %6, align 8
  %74 = load double*, double** %8, align 8
  %75 = getelementptr inbounds double, double* %74, i64 0
  %76 = load double, double* %75, align 8
  %77 = fneg double %76
  %78 = load double**, double*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0, i32 0), align 8
  %79 = getelementptr inbounds double*, double** %78, i64 2
  %80 = load double*, double** %79, align 8
  %81 = load double*, double** %6, align 8
  %82 = call i32 @VectorMA(double* %73, double %77, double* %80, double* %81)
  %83 = load double*, double** %6, align 8
  %84 = call float @VectorNormalize(double* %83)
  %85 = load double*, double** %13, align 8
  %86 = load double, double* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_tracerWidth, i32 0, i32 0), align 8
  %87 = load double*, double** %6, align 8
  %88 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load double*, double** %89, align 16
  %91 = call i32 @VectorMA(double* %85, double %86, double* %87, double* %90)
  %92 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 0, i32* %95, align 4
  %96 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 1, i32* %99, align 4
  %100 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 16
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 255, i32* %103, align 4
  %104 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 16
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 255, i32* %107, align 4
  %108 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 16
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  store i32 255, i32* %111, align 4
  %112 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 16
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  store i32 255, i32* %115, align 4
  %116 = load double*, double** %13, align 8
  %117 = load double, double* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_tracerWidth, i32 0, i32 0), align 8
  %118 = fneg double %117
  %119 = load double*, double** %6, align 8
  %120 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 1
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load double*, double** %121, align 8
  %123 = call i32 @VectorMA(double* %116, double %118, double* %119, double* %122)
  %124 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 1, i32* %127, align 4
  %128 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 1
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 0, i32* %131, align 4
  %132 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 1
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 255, i32* %135, align 4
  %136 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 1
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 255, i32* %139, align 4
  %140 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  store i32 255, i32* %143, align 4
  %144 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 1
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 3
  store i32 255, i32* %147, align 4
  %148 = load double*, double** %12, align 8
  %149 = load double, double* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_tracerWidth, i32 0, i32 0), align 8
  %150 = fneg double %149
  %151 = load double*, double** %6, align 8
  %152 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 2
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load double*, double** %153, align 16
  %155 = call i32 @VectorMA(double* %148, double %150, double* %151, double* %154)
  %156 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 2
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  store i32 1, i32* %159, align 4
  %160 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 2
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  store i32 1, i32* %163, align 4
  %164 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 2
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 16
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 255, i32* %167, align 4
  %168 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 2
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 16
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  store i32 255, i32* %171, align 4
  %172 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 2
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 16
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  store i32 255, i32* %175, align 4
  %176 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 2
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 16
  %179 = getelementptr inbounds i32, i32* %178, i64 3
  store i32 255, i32* %179, align 4
  %180 = load double*, double** %12, align 8
  %181 = load double, double* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_tracerWidth, i32 0, i32 0), align 8
  %182 = load double*, double** %6, align 8
  %183 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 3
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load double*, double** %184, align 8
  %186 = call i32 @VectorMA(double* %180, double %181, double* %182, double* %185)
  %187 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 3
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  store i32 0, i32* %190, align 4
  %191 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 3
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  store i32 0, i32* %194, align 4
  %195 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 3
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  store i32 255, i32* %198, align 4
  %199 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 3
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  store i32 255, i32* %202, align 4
  %203 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 3
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  store i32 255, i32* %206, align 4
  %207 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 3
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 3
  store i32 255, i32* %210, align 4
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 0, i32 1), align 4
  %212 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 0
  %213 = call i32 @trap_R_AddPolyToScene(i32 %211, i32 4, %struct.TYPE_11__* %212)
  %214 = load double*, double** %12, align 8
  %215 = getelementptr inbounds double, double* %214, i64 0
  %216 = load double, double* %215, align 8
  %217 = load double*, double** %13, align 8
  %218 = getelementptr inbounds double, double* %217, i64 0
  %219 = load double, double* %218, align 8
  %220 = fadd double %216, %219
  %221 = fmul double %220, 5.000000e-01
  %222 = load double*, double** %14, align 8
  %223 = getelementptr inbounds double, double* %222, i64 0
  store double %221, double* %223, align 8
  %224 = load double*, double** %12, align 8
  %225 = getelementptr inbounds double, double* %224, i64 1
  %226 = load double, double* %225, align 8
  %227 = load double*, double** %13, align 8
  %228 = getelementptr inbounds double, double* %227, i64 1
  %229 = load double, double* %228, align 8
  %230 = fadd double %226, %229
  %231 = fmul double %230, 5.000000e-01
  %232 = load double*, double** %14, align 8
  %233 = getelementptr inbounds double, double* %232, i64 1
  store double %231, double* %233, align 8
  %234 = load double*, double** %12, align 8
  %235 = getelementptr inbounds double, double* %234, i64 2
  %236 = load double, double* %235, align 8
  %237 = load double*, double** %13, align 8
  %238 = getelementptr inbounds double, double* %237, i64 2
  %239 = load double, double* %238, align 8
  %240 = fadd double %236, %239
  %241 = fmul double %240, 5.000000e-01
  %242 = load double*, double** %14, align 8
  %243 = getelementptr inbounds double, double* %242, i64 2
  store double %241, double* %243, align 8
  %244 = load double*, double** %14, align 8
  %245 = load i32, i32* @ENTITYNUM_WORLD, align 4
  %246 = load i32, i32* @CHAN_AUTO, align 4
  %247 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 0, i32 0), align 4
  %248 = call i32 @trap_S_StartSound(double* %244, i32 %245, i32 %246, i32 %247)
  br label %249

249:                                              ; preds = %38, %23
  ret void
}

declare dso_local i32 @VectorSubtract(double*, double*, double*) #1

declare dso_local float @VectorNormalize(double*) #1

declare dso_local float @random(...) #1

declare dso_local i32 @VectorMA(double*, double, double*, double*) #1

declare dso_local double @DotProduct(double*, double*) #1

declare dso_local i32 @VectorScale(double*, double, double*) #1

declare dso_local i32 @trap_R_AddPolyToScene(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @trap_S_StartSound(double*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
