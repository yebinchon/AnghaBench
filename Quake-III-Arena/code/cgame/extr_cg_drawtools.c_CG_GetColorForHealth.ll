; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_drawtools.c_CG_GetColorForHealth.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_drawtools.c_CG_GetColorForHealth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARMOR_PROTECTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_GetColorForHealth(i32 %0, i32 %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store double* %2, double** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load double*, double** %6, align 8
  %13 = call i32 @VectorClear(double* %12)
  %14 = load double*, double** %6, align 8
  %15 = getelementptr inbounds double, double* %14, i64 3
  store double 1.000000e+00, double* %15, align 8
  br label %79

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ARMOR_PROTECTION, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sitofp i32 %20 to double
  %22 = load i32, i32* @ARMOR_PROTECTION, align 4
  %23 = sitofp i32 %22 to double
  %24 = fsub double 1.000000e+00, %23
  %25 = fdiv double %21, %24
  %26 = fptosi double %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %16
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load double*, double** %6, align 8
  %37 = getelementptr inbounds double, double* %36, i64 0
  store double 1.000000e+00, double* %37, align 8
  %38 = load double*, double** %6, align 8
  %39 = getelementptr inbounds double, double* %38, i64 3
  store double 1.000000e+00, double* %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = icmp sge i32 %40, 100
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load double*, double** %6, align 8
  %44 = getelementptr inbounds double, double* %43, i64 2
  store double 1.000000e+00, double* %44, align 8
  br label %59

45:                                               ; preds = %32
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 66
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load double*, double** %6, align 8
  %50 = getelementptr inbounds double, double* %49, i64 2
  store double 0.000000e+00, double* %50, align 8
  br label %58

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, 66
  %54 = sitofp i32 %53 to double
  %55 = fdiv double %54, 3.300000e+01
  %56 = load double*, double** %6, align 8
  %57 = getelementptr inbounds double, double* %56, i64 2
  store double %55, double* %57, align 8
  br label %58

58:                                               ; preds = %51, %48
  br label %59

59:                                               ; preds = %58, %42
  %60 = load i32, i32* %4, align 4
  %61 = icmp sgt i32 %60, 60
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load double*, double** %6, align 8
  %64 = getelementptr inbounds double, double* %63, i64 1
  store double 1.000000e+00, double* %64, align 8
  br label %79

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 30
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load double*, double** %6, align 8
  %70 = getelementptr inbounds double, double* %69, i64 1
  store double 0.000000e+00, double* %70, align 8
  br label %78

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  %73 = sub nsw i32 %72, 30
  %74 = sitofp i32 %73 to double
  %75 = fdiv double %74, 3.000000e+01
  %76 = load double*, double** %6, align 8
  %77 = getelementptr inbounds double, double* %76, i64 1
  store double %75, double* %77, align 8
  br label %78

78:                                               ; preds = %71, %68
  br label %79

79:                                               ; preds = %11, %78, %62
  ret void
}

declare dso_local i32 @VectorClear(double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
