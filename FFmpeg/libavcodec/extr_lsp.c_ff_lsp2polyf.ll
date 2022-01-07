; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lsp.c_ff_lsp2polyf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lsp.c_ff_lsp2polyf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_lsp2polyf(double* %0, double* %1, i32 %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load double*, double** %5, align 8
  %11 = getelementptr inbounds double, double* %10, i64 0
  store double 1.000000e+00, double* %11, align 8
  %12 = load double*, double** %4, align 8
  %13 = getelementptr inbounds double, double* %12, i64 0
  %14 = load double, double* %13, align 8
  %15 = fmul double -2.000000e+00, %14
  %16 = load double*, double** %5, align 8
  %17 = getelementptr inbounds double, double* %16, i64 1
  store double %15, double* %17, align 8
  %18 = load double*, double** %4, align 8
  %19 = getelementptr inbounds double, double* %18, i64 -2
  store double* %19, double** %4, align 8
  store i32 2, i32* %7, align 4
  br label %20

20:                                               ; preds = %88, %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %91

24:                                               ; preds = %20
  %25 = load double*, double** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 2, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %25, i64 %28
  %30 = load double, double* %29, align 8
  %31 = fmul double -2.000000e+00, %30
  store double %31, double* %9, align 8
  %32 = load double, double* %9, align 8
  %33 = load double*, double** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %33, i64 %36
  %38 = load double, double* %37, align 8
  %39 = fmul double %32, %38
  %40 = load double*, double** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %40, i64 %43
  %45 = load double, double* %44, align 8
  %46 = fmul double 2.000000e+00, %45
  %47 = fadd double %39, %46
  %48 = load double*, double** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  store double %47, double* %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %79, %24
  %55 = load i32, i32* %8, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %82

57:                                               ; preds = %54
  %58 = load double*, double** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %58, i64 %61
  %63 = load double, double* %62, align 8
  %64 = load double, double* %9, align 8
  %65 = fmul double %63, %64
  %66 = load double*, double** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %66, i64 %69
  %71 = load double, double* %70, align 8
  %72 = fadd double %65, %71
  %73 = load double*, double** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %73, i64 %75
  %77 = load double, double* %76, align 8
  %78 = fadd double %77, %72
  store double %78, double* %76, align 8
  br label %79

79:                                               ; preds = %57
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %8, align 4
  br label %54

82:                                               ; preds = %54
  %83 = load double, double* %9, align 8
  %84 = load double*, double** %5, align 8
  %85 = getelementptr inbounds double, double* %84, i64 1
  %86 = load double, double* %85, align 8
  %87 = fadd double %86, %83
  store double %87, double* %85, align 8
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %20

91:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
