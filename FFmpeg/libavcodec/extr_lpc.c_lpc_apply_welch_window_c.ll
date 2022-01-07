; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lpc.c_lpc_apply_welch_window_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lpc.c_lpc_apply_welch_window_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, i32, double*)* @lpc_apply_welch_window_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc_apply_welch_window_c(double* %0, i32 %1, double* %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double* %0, double** %4, align 8
  store i32 %1, i32* %5, align 4
  store double* %2, double** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = ashr i32 %11, 1
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sitofp i32 %13 to double
  %15 = fsub double %14, 1.000000e+00
  %16 = fdiv double 2.000000e+00, %15
  store double %16, double* %10, align 8
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %63, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %66

25:                                               ; preds = %21
  %26 = load double, double* %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sitofp i32 %27 to double
  %29 = fsub double %26, %28
  %30 = fsub double %29, 1.000000e+00
  store double %30, double* %9, align 8
  %31 = load double, double* %9, align 8
  %32 = load double, double* %9, align 8
  %33 = fmul double %31, %32
  %34 = fsub double 1.000000e+00, %33
  store double %34, double* %9, align 8
  %35 = load double*, double** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %35, i64 %37
  %39 = load double, double* %38, align 8
  %40 = load double, double* %9, align 8
  %41 = fmul double %39, %40
  %42 = load double*, double** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %42, i64 %44
  store double %41, double* %45, align 8
  %46 = load double*, double** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %46, i64 %51
  %53 = load double, double* %52, align 8
  %54 = load double, double* %9, align 8
  %55 = fmul double %53, %54
  %56 = load double*, double** %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %56, i64 %61
  store double %55, double* %62, align 8
  br label %63

63:                                               ; preds = %25
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %21

66:                                               ; preds = %21
  br label %121

67:                                               ; preds = %3
  %68 = load i32, i32* %8, align 4
  %69 = load double*, double** %6, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds double, double* %69, i64 %70
  store double* %71, double** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load double*, double** %4, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds double, double* %73, i64 %74
  store double* %75, double** %4, align 8
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %118, %67
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %121

80:                                               ; preds = %76
  %81 = load double, double* %10, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sitofp i32 %82 to double
  %84 = fsub double %81, %83
  %85 = load i32, i32* %7, align 4
  %86 = sitofp i32 %85 to double
  %87 = fadd double %84, %86
  store double %87, double* %9, align 8
  %88 = load double, double* %9, align 8
  %89 = load double, double* %9, align 8
  %90 = fmul double %88, %89
  %91 = fsub double 1.000000e+00, %90
  store double %91, double* %9, align 8
  %92 = load double*, double** %4, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 0, %93
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %92, i64 %96
  %98 = load double, double* %97, align 8
  %99 = load double, double* %9, align 8
  %100 = fmul double %98, %99
  %101 = load double*, double** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 0, %102
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, double* %101, i64 %105
  store double %100, double* %106, align 8
  %107 = load double*, double** %4, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, double* %107, i64 %109
  %111 = load double, double* %110, align 8
  %112 = load double, double* %9, align 8
  %113 = fmul double %111, %112
  %114 = load double*, double** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %114, i64 %116
  store double %113, double* %117, align 8
  br label %118

118:                                              ; preds = %80
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %76

121:                                              ; preds = %66, %76
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
