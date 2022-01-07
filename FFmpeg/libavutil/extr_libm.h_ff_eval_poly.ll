; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_libm.h_ff_eval_poly.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_libm.h_ff_eval_poly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double*, i32, double)* @ff_eval_poly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @ff_eval_poly(double* %0, i32 %1, double %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %9 = load double*, double** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds double, double* %9, i64 %12
  %14 = load double, double* %13, align 8
  store double %14, double* %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 2
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %31, %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load double, double* %6, align 8
  %22 = load double, double* %7, align 8
  %23 = fmul double %22, %21
  store double %23, double* %7, align 8
  %24 = load double*, double** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %24, i64 %26
  %28 = load double, double* %27, align 8
  %29 = load double, double* %7, align 8
  %30 = fadd double %29, %28
  store double %30, double* %7, align 8
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %8, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load double, double* %7, align 8
  ret double %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
