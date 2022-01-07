; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_store.c_AAS_PlaneTypeForNormal.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_store.c_AAS_PlaneTypeForNormal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NORMAL_EPSILON = common dso_local global double 0.000000e+00, align 8
@PLANE_X = common dso_local global i32 0, align 4
@PLANE_Y = common dso_local global i32 0, align 4
@PLANE_Z = common dso_local global i32 0, align 4
@PLANE_ANYX = common dso_local global i32 0, align 4
@PLANE_ANYY = common dso_local global i32 0, align 4
@PLANE_ANYZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_PlaneTypeForNormal(double* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store double* %0, double** %3, align 8
  %7 = load double*, double** %3, align 8
  %8 = getelementptr inbounds double, double* %7, i64 0
  %9 = load double, double* %8, align 8
  %10 = load double, double* @NORMAL_EPSILON, align 8
  %11 = fsub double 1.000000e+00, %10
  %12 = fcmp oge double %9, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load double*, double** %3, align 8
  %15 = getelementptr inbounds double, double* %14, i64 0
  %16 = load double, double* %15, align 8
  %17 = load double, double* @NORMAL_EPSILON, align 8
  %18 = fadd double -1.000000e+00, %17
  %19 = fcmp ole double %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13, %1
  %21 = load i32, i32* @PLANE_X, align 4
  store i32 %21, i32* %2, align 4
  br label %88

22:                                               ; preds = %13
  %23 = load double*, double** %3, align 8
  %24 = getelementptr inbounds double, double* %23, i64 1
  %25 = load double, double* %24, align 8
  %26 = load double, double* @NORMAL_EPSILON, align 8
  %27 = fsub double 1.000000e+00, %26
  %28 = fcmp oge double %25, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load double*, double** %3, align 8
  %31 = getelementptr inbounds double, double* %30, i64 1
  %32 = load double, double* %31, align 8
  %33 = load double, double* @NORMAL_EPSILON, align 8
  %34 = fadd double -1.000000e+00, %33
  %35 = fcmp ole double %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29, %22
  %37 = load i32, i32* @PLANE_Y, align 4
  store i32 %37, i32* %2, align 4
  br label %88

38:                                               ; preds = %29
  %39 = load double*, double** %3, align 8
  %40 = getelementptr inbounds double, double* %39, i64 2
  %41 = load double, double* %40, align 8
  %42 = load double, double* @NORMAL_EPSILON, align 8
  %43 = fsub double 1.000000e+00, %42
  %44 = fcmp oge double %41, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load double*, double** %3, align 8
  %47 = getelementptr inbounds double, double* %46, i64 2
  %48 = load double, double* %47, align 8
  %49 = load double, double* @NORMAL_EPSILON, align 8
  %50 = fadd double -1.000000e+00, %49
  %51 = fcmp ole double %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45, %38
  %53 = load i32, i32* @PLANE_Z, align 4
  store i32 %53, i32* %2, align 4
  br label %88

54:                                               ; preds = %45
  %55 = load double*, double** %3, align 8
  %56 = getelementptr inbounds double, double* %55, i64 0
  %57 = load double, double* %56, align 8
  %58 = call i64 @fabs(double %57)
  store i64 %58, i64* %4, align 8
  %59 = load double*, double** %3, align 8
  %60 = getelementptr inbounds double, double* %59, i64 1
  %61 = load double, double* %60, align 8
  %62 = call i64 @fabs(double %61)
  store i64 %62, i64* %5, align 8
  %63 = load double*, double** %3, align 8
  %64 = getelementptr inbounds double, double* %63, i64 2
  %65 = load double, double* %64, align 8
  %66 = call i64 @fabs(double %65)
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* %5, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %54
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @PLANE_ANYX, align 4
  store i32 %75, i32* %2, align 4
  br label %88

76:                                               ; preds = %70, %54
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %4, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @PLANE_ANYY, align 4
  store i32 %85, i32* %2, align 4
  br label %88

86:                                               ; preds = %80, %76
  %87 = load i32, i32* @PLANE_ANYZ, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %84, %74, %52, %36, %20
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
