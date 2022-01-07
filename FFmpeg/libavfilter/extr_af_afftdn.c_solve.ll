; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftdn.c_solve.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftdn.c_solve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double*, i32)* @solve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solve(double* %0, double* %1, i32 %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %52, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %48, %18
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = load double*, double** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %28, %29
  %31 = add nsw i32 %27, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %26, i64 %32
  %34 = load double, double* %33, align 8
  store double %34, double* %9, align 8
  %35 = load double, double* %9, align 8
  %36 = load double*, double** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %36, i64 %38
  %40 = load double, double* %39, align 8
  %41 = fmul double %35, %40
  %42 = load double*, double** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %42, i64 %44
  %46 = load double, double* %45, align 8
  %47 = fsub double %46, %41
  store double %47, double* %45, align 8
  br label %48

48:                                               ; preds = %25
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %21

51:                                               ; preds = %21
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %13

55:                                               ; preds = %13
  %56 = load double*, double** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %56, i64 %61
  %63 = load double, double* %62, align 8
  %64 = load double*, double** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %64, i64 %67
  %69 = load double, double* %68, align 8
  %70 = fdiv double %69, %63
  store double %70, double* %68, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 %71, 2
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %125, %55
  %74 = load i32, i32* %10, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %128

76:                                               ; preds = %73
  %77 = load double*, double** %5, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %77, i64 %79
  %81 = load double, double* %80, align 8
  store double %81, double* %11, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %106, %76
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %84
  %89 = load double*, double** %4, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %6, align 4
  %93 = mul nsw i32 %91, %92
  %94 = add nsw i32 %90, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %89, i64 %95
  %97 = load double, double* %96, align 8
  %98 = load double*, double** %5, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, double* %98, i64 %100
  %102 = load double, double* %101, align 8
  %103 = fmul double %97, %102
  %104 = load double, double* %11, align 8
  %105 = fsub double %104, %103
  store double %105, double* %11, align 8
  br label %106

106:                                              ; preds = %88
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %84

109:                                              ; preds = %84
  %110 = load double, double* %11, align 8
  %111 = load double*, double** %4, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %6, align 4
  %115 = mul nsw i32 %113, %114
  %116 = add nsw i32 %112, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds double, double* %111, i64 %117
  %119 = load double, double* %118, align 8
  %120 = fdiv double %110, %119
  %121 = load double*, double** %5, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, double* %121, i64 %123
  store double %120, double* %124, align 8
  br label %125

125:                                              ; preds = %109
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %10, align 4
  br label %73

128:                                              ; preds = %73
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
