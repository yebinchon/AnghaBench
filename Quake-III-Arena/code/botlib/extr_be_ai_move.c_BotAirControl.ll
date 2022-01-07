; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotAirControl.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotAirControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double }

@sv_gravity = common dso_local global %struct.TYPE_2__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotAirControl(double* %0, double* %1, double* %2, double* %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca float*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  store double* %0, double** %7, align 8
  store double* %1, double** %8, align 8
  store double* %2, double** %9, align 8
  store double* %3, double** %10, align 8
  store float* %4, float** %11, align 8
  %16 = load double*, double** %7, align 8
  %17 = load double*, double** %12, align 8
  %18 = call i32 @VectorCopy(double* %16, double* %17)
  %19 = load double*, double** %8, align 8
  %20 = load double*, double** %13, align 8
  %21 = call i32 @VectorScale(double* %19, double 1.000000e-01, double* %20)
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %91, %5
  %23 = load i32, i32* %15, align 4
  %24 = icmp slt i32 %23, 50
  br i1 %24, label %25, label %94

25:                                               ; preds = %22
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sv_gravity, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = fmul double %28, 1.000000e-02
  %30 = load double*, double** %13, align 8
  %31 = getelementptr inbounds double, double* %30, i64 2
  %32 = load double, double* %31, align 8
  %33 = fsub double %32, %29
  store double %33, double* %31, align 8
  %34 = load double*, double** %13, align 8
  %35 = getelementptr inbounds double, double* %34, i64 2
  %36 = load double, double* %35, align 8
  %37 = fcmp olt double %36, 0.000000e+00
  br i1 %37, label %38, label %85

38:                                               ; preds = %25
  %39 = load double*, double** %12, align 8
  %40 = getelementptr inbounds double, double* %39, i64 2
  %41 = load double, double* %40, align 8
  %42 = load double*, double** %13, align 8
  %43 = getelementptr inbounds double, double* %42, i64 2
  %44 = load double, double* %43, align 8
  %45 = fadd double %41, %44
  %46 = load double*, double** %9, align 8
  %47 = getelementptr inbounds double, double* %46, i64 2
  %48 = load double, double* %47, align 8
  %49 = fcmp olt double %45, %48
  br i1 %49, label %50, label %85

50:                                               ; preds = %38
  %51 = load double*, double** %13, align 8
  %52 = load double*, double** %9, align 8
  %53 = getelementptr inbounds double, double* %52, i64 2
  %54 = load double, double* %53, align 8
  %55 = load double*, double** %12, align 8
  %56 = getelementptr inbounds double, double* %55, i64 2
  %57 = load double, double* %56, align 8
  %58 = fsub double %54, %57
  %59 = load double*, double** %13, align 8
  %60 = getelementptr inbounds double, double* %59, i64 2
  %61 = load double, double* %60, align 8
  %62 = fdiv double %58, %61
  %63 = load double*, double** %13, align 8
  %64 = call i32 @VectorScale(double* %51, double %62, double* %63)
  %65 = load double*, double** %12, align 8
  %66 = load double*, double** %13, align 8
  %67 = load double*, double** %12, align 8
  %68 = call i32 @VectorAdd(double* %65, double* %66, double* %67)
  %69 = load double*, double** %9, align 8
  %70 = load double*, double** %12, align 8
  %71 = load double*, double** %10, align 8
  %72 = call i32 @VectorSubtract(double* %69, double* %70, double* %71)
  %73 = load double*, double** %10, align 8
  %74 = call float @VectorNormalize(double* %73)
  store float %74, float* %14, align 4
  %75 = load float, float* %14, align 4
  %76 = fcmp ogt float %75, 3.200000e+01
  br i1 %76, label %77, label %78

77:                                               ; preds = %50
  store float 3.200000e+01, float* %14, align 4
  br label %78

78:                                               ; preds = %77, %50
  %79 = load float, float* %14, align 4
  %80 = fmul float 1.300000e+01, %79
  %81 = fsub float 4.000000e+02, %80
  %82 = fsub float 4.000000e+02, %81
  %83 = load float*, float** %11, align 8
  store float %82, float* %83, align 4
  %84 = load i32, i32* @qtrue, align 4
  store i32 %84, i32* %6, align 4
  br label %99

85:                                               ; preds = %38, %25
  %86 = load double*, double** %12, align 8
  %87 = load double*, double** %13, align 8
  %88 = load double*, double** %12, align 8
  %89 = call i32 @VectorAdd(double* %86, double* %87, double* %88)
  br label %90

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %22

94:                                               ; preds = %22
  %95 = load double*, double** %10, align 8
  %96 = call i32 @VectorSet(double* %95, i32 0, i32 0, i32 0)
  %97 = load float*, float** %11, align 8
  store float 4.000000e+02, float* %97, align 4
  %98 = load i32, i32* @qfalse, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %94, %78
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @VectorCopy(double*, double*) #1

declare dso_local i32 @VectorScale(double*, double, double*) #1

declare dso_local i32 @VectorAdd(double*, double*, double*) #1

declare dso_local i32 @VectorSubtract(double*, double*, double*) #1

declare dso_local float @VectorNormalize(double*) #1

declare dso_local i32 @VectorSet(double*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
