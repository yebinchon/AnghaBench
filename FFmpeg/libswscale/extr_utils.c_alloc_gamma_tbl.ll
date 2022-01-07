; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_utils.c_alloc_gamma_tbl.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_utils.c_alloc_gamma_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double* (double)* @alloc_gamma_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double* @alloc_gamma_tbl(double %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  store double %0, double* %3, align 8
  store i32 0, i32* %4, align 4
  %6 = call i64 @av_malloc(i32 524288)
  %7 = inttoptr i64 %6 to double*
  store double* %7, double** %5, align 8
  %8 = load double*, double** %5, align 8
  %9 = icmp ne double* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store double* null, double** %2, align 8
  br label %32

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %27, %11
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 65536
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %17, 6.553500e+04
  %19 = fptosi double %18 to i32
  %20 = load double, double* %3, align 8
  %21 = call double @pow(i32 %19, double %20)
  %22 = fmul double %21, 6.553500e+04
  %23 = load double*, double** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %23, i64 %25
  store double %22, double* %26, align 8
  br label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load double*, double** %5, align 8
  store double* %31, double** %2, align 8
  br label %32

32:                                               ; preds = %30, %10
  %33 = load double*, double** %2, align 8
  ret double* %33
}

declare dso_local i64 @av_malloc(i32) #1

declare dso_local double @pow(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
