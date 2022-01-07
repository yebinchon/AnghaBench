; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lpc.c_lpc_compute_autocorr_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lpc.c_lpc_compute_autocorr_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, i32, i32, double*)* @lpc_compute_autocorr_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc_compute_autocorr_c(double* %0, i32 %1, i32 %2, double* %3) #0 {
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double* %0, double** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %71, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %14
  store double 1.000000e+00, double* %11, align 8
  store double 1.000000e+00, double* %12, align 8
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %56, %18
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = load double*, double** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %25, i64 %27
  %29 = load double, double* %28, align 8
  %30 = load double*, double** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %30, i64 %34
  %36 = load double, double* %35, align 8
  %37 = fmul double %29, %36
  %38 = load double, double* %11, align 8
  %39 = fadd double %38, %37
  store double %39, double* %11, align 8
  %40 = load double*, double** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %40, i64 %42
  %44 = load double, double* %43, align 8
  %45 = load double*, double** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %45, i64 %50
  %52 = load double, double* %51, align 8
  %53 = fmul double %44, %52
  %54 = load double, double* %12, align 8
  %55 = fadd double %54, %53
  store double %55, double* %12, align 8
  br label %56

56:                                               ; preds = %24
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %20

59:                                               ; preds = %20
  %60 = load double, double* %11, align 8
  %61 = load double*, double** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %61, i64 %63
  store double %60, double* %64, align 8
  %65 = load double, double* %12, align 8
  %66 = load double*, double** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %66, i64 %69
  store double %65, double* %70, align 8
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %10, align 4
  br label %14

74:                                               ; preds = %14
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %126

78:                                               ; preds = %74
  store double 1.000000e+00, double* %13, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %117, %78
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %120

85:                                               ; preds = %81
  %86 = load double*, double** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %86, i64 %88
  %90 = load double, double* %89, align 8
  %91 = load double*, double** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %91, i64 %95
  %97 = load double, double* %96, align 8
  %98 = fmul double %90, %97
  %99 = load double*, double** %5, align 8
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, double* %99, i64 %102
  %104 = load double, double* %103, align 8
  %105 = load double*, double** %5, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = sub nsw i32 %106, %107
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double, double* %105, i64 %110
  %112 = load double, double* %111, align 8
  %113 = fmul double %104, %112
  %114 = fadd double %98, %113
  %115 = load double, double* %13, align 8
  %116 = fadd double %115, %114
  store double %116, double* %13, align 8
  br label %117

117:                                              ; preds = %85
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 2
  store i32 %119, i32* %9, align 4
  br label %81

120:                                              ; preds = %81
  %121 = load double, double* %13, align 8
  %122 = load double*, double** %8, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds double, double* %122, i64 %124
  store double %121, double* %125, align 8
  br label %126

126:                                              ; preds = %120, %74
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
