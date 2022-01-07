; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_create_freq_table.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_create_freq_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double* (double, double, i32)* @create_freq_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double* @create_freq_table(double %0, double %1, i32 %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sitofp i32 %14 to double
  %16 = fdiv double 1.000000e+00, %15
  store double %16, double* %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call double* @av_malloc_array(i32 %17, i32 8)
  store double* %18, double** %11, align 8
  %19 = load double*, double** %11, align 8
  %20 = icmp ne double* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store double* null, double** %4, align 8
  br label %54

22:                                               ; preds = %3
  %23 = load double, double* %5, align 8
  %24 = call double @log(double %23) #3
  store double %24, double* %8, align 8
  %25 = load double, double* %6, align 8
  %26 = call double @log(double %25) #3
  store double %26, double* %9, align 8
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %49, %22
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load double, double* %8, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sitofp i32 %33 to double
  %35 = fadd double %34, 5.000000e-01
  %36 = load double, double* %9, align 8
  %37 = load double, double* %8, align 8
  %38 = fsub double %36, %37
  %39 = fmul double %35, %38
  %40 = load double, double* %10, align 8
  %41 = fmul double %39, %40
  %42 = fadd double %32, %41
  store double %42, double* %13, align 8
  %43 = load double, double* %13, align 8
  %44 = call double @exp(double %43) #3
  %45 = load double*, double** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  store double %44, double* %48, align 8
  br label %49

49:                                               ; preds = %31
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %27

52:                                               ; preds = %27
  %53 = load double*, double** %11, align 8
  store double* %53, double** %4, align 8
  br label %54

54:                                               ; preds = %52, %21
  %55 = load double*, double** %4, align 8
  ret double* %55
}

declare dso_local double* @av_malloc_array(i32, i32) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #2

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
