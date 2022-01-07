; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_mathlib.c_VectorNormalize.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_mathlib.c_VectorNormalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @VectorNormalize(double* %0, double* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  %8 = load double*, double** %4, align 8
  %9 = getelementptr inbounds double, double* %8, i64 0
  %10 = load double, double* %9, align 8
  %11 = load double*, double** %4, align 8
  %12 = getelementptr inbounds double, double* %11, i64 0
  %13 = load double, double* %12, align 8
  %14 = fmul double %10, %13
  %15 = load double*, double** %4, align 8
  %16 = getelementptr inbounds double, double* %15, i64 1
  %17 = load double, double* %16, align 8
  %18 = load double*, double** %4, align 8
  %19 = getelementptr inbounds double, double* %18, i64 1
  %20 = load double, double* %19, align 8
  %21 = fmul double %17, %20
  %22 = fadd double %14, %21
  %23 = load double*, double** %4, align 8
  %24 = getelementptr inbounds double, double* %23, i64 2
  %25 = load double, double* %24, align 8
  %26 = load double*, double** %4, align 8
  %27 = getelementptr inbounds double, double* %26, i64 2
  %28 = load double, double* %27, align 8
  %29 = fmul double %25, %28
  %30 = fadd double %22, %29
  %31 = call double @sqrt(double %30) #3
  store double %31, double* %6, align 8
  %32 = load double, double* %6, align 8
  %33 = fcmp oeq double %32, 0.000000e+00
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load double*, double** %5, align 8
  %36 = call i32 @VectorClear(double* %35)
  store double 0.000000e+00, double* %3, align 8
  br label %62

37:                                               ; preds = %2
  %38 = load double, double* %6, align 8
  %39 = fdiv double 1.000000e+00, %38
  store double %39, double* %7, align 8
  %40 = load double*, double** %4, align 8
  %41 = getelementptr inbounds double, double* %40, i64 0
  %42 = load double, double* %41, align 8
  %43 = load double, double* %7, align 8
  %44 = fmul double %42, %43
  %45 = load double*, double** %5, align 8
  %46 = getelementptr inbounds double, double* %45, i64 0
  store double %44, double* %46, align 8
  %47 = load double*, double** %4, align 8
  %48 = getelementptr inbounds double, double* %47, i64 1
  %49 = load double, double* %48, align 8
  %50 = load double, double* %7, align 8
  %51 = fmul double %49, %50
  %52 = load double*, double** %5, align 8
  %53 = getelementptr inbounds double, double* %52, i64 1
  store double %51, double* %53, align 8
  %54 = load double*, double** %4, align 8
  %55 = getelementptr inbounds double, double* %54, i64 2
  %56 = load double, double* %55, align 8
  %57 = load double, double* %7, align 8
  %58 = fmul double %56, %57
  %59 = load double*, double** %5, align 8
  %60 = getelementptr inbounds double, double* %59, i64 2
  store double %58, double* %60, align 8
  %61 = load double, double* %6, align 8
  store double %61, double* %3, align 8
  br label %62

62:                                               ; preds = %37, %34
  %63 = load double, double* %3, align 8
  ret double %63
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

declare dso_local i32 @VectorClear(double*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
