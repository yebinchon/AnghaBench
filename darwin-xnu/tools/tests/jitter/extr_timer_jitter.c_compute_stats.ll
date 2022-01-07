; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/jitter/extr_timer_jitter.c_compute_stats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/jitter/extr_timer_jitter.c_compute_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT64_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_stats(double* %0, i64 %1, double* %2, double* %3, double* %4, double* %5) #0 {
  %7 = alloca double*, align 8
  %8 = alloca i64, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i64, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store double* %0, double** %7, align 8
  store i64 %1, i64* %8, align 8
  store double* %2, double** %9, align 8
  store double* %3, double** %10, align 8
  store double* %4, double** %11, align 8
  store double* %5, double** %12, align 8
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  %19 = load i64, i64* @INT64_MAX, align 8
  %20 = sitofp i64 %19 to double
  store double %20, double* %16, align 8
  store double 0.000000e+00, double* %17, align 8
  store double 0.000000e+00, double* %18, align 8
  store i64 0, i64* %13, align 8
  br label %21

21:                                               ; preds = %64, %6
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %67

25:                                               ; preds = %21
  %26 = load double*, double** %7, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds double, double* %26, i64 %27
  %29 = load double, double* %28, align 8
  %30 = call i64 @fabs(double %29)
  %31 = sitofp i64 %30 to double
  %32 = load double, double* %14, align 8
  %33 = fadd double %32, %31
  store double %33, double* %14, align 8
  %34 = load double*, double** %7, align 8
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds double, double* %34, i64 %35
  %37 = load double, double* %36, align 8
  %38 = load double, double* %15, align 8
  %39 = fcmp ogt double %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load double*, double** %7, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds double, double* %41, i64 %42
  %44 = load double, double* %43, align 8
  br label %47

45:                                               ; preds = %25
  %46 = load double, double* %15, align 8
  br label %47

47:                                               ; preds = %45, %40
  %48 = phi double [ %44, %40 ], [ %46, %45 ]
  store double %48, double* %15, align 8
  %49 = load double*, double** %7, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds double, double* %49, i64 %50
  %52 = load double, double* %51, align 8
  %53 = load double, double* %16, align 8
  %54 = fcmp olt double %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load double*, double** %7, align 8
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr inbounds double, double* %56, i64 %57
  %59 = load double, double* %58, align 8
  br label %62

60:                                               ; preds = %47
  %61 = load double, double* %16, align 8
  br label %62

62:                                               ; preds = %60, %55
  %63 = phi double [ %59, %55 ], [ %61, %60 ]
  store double %63, double* %16, align 8
  br label %64

64:                                               ; preds = %62
  %65 = load i64, i64* %13, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %13, align 8
  br label %21

67:                                               ; preds = %21
  %68 = load double, double* %14, align 8
  %69 = load i64, i64* %8, align 8
  %70 = uitofp i64 %69 to double
  %71 = fdiv double %68, %70
  store double %71, double* %17, align 8
  store double 0.000000e+00, double* %18, align 8
  store i64 0, i64* %13, align 8
  br label %72

72:                                               ; preds = %87, %67
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load double*, double** %7, align 8
  %78 = load i64, i64* %13, align 8
  %79 = getelementptr inbounds double, double* %77, i64 %78
  %80 = load double, double* %79, align 8
  %81 = load double, double* %17, align 8
  %82 = fsub double %80, %81
  %83 = call i64 @pow(double %82, i32 2)
  %84 = sitofp i64 %83 to double
  %85 = load double, double* %18, align 8
  %86 = fadd double %85, %84
  store double %86, double* %18, align 8
  br label %87

87:                                               ; preds = %76
  %88 = load i64, i64* %13, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %13, align 8
  br label %72

90:                                               ; preds = %72
  %91 = load i64, i64* %8, align 8
  %92 = uitofp i64 %91 to double
  %93 = load double, double* %18, align 8
  %94 = fdiv double %93, %92
  store double %94, double* %18, align 8
  %95 = load double, double* %18, align 8
  %96 = call double @sqrt(double %95) #3
  store double %96, double* %18, align 8
  %97 = load double, double* %17, align 8
  %98 = load double*, double** %9, align 8
  store double %97, double* %98, align 8
  %99 = load double, double* %15, align 8
  %100 = load double*, double** %10, align 8
  store double %99, double* %100, align 8
  %101 = load double, double* %16, align 8
  %102 = load double*, double** %11, align 8
  store double %101, double* %102, align 8
  %103 = load double, double* %18, align 8
  %104 = load double*, double** %12, align 8
  store double %103, double* %104, align 8
  ret void
}

declare dso_local i64 @fabs(double) #1

declare dso_local i64 @pow(double, i32) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
