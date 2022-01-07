; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_acontrast.c_filter_dbl.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_acontrast.c_filter_dbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI_2 = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**, i32, i32, float)* @filter_dbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_dbl(i8** %0, i8** %1, i32 %2, i32 %3, float %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store float %4, float* %10, align 4
  %16 = load i8**, i8*** %7, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to double*
  store double* %19, double** %11, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to double*
  store double* %23, double** %12, align 8
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %67, %5
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %24
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %55, %28
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load double*, double** %11, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = load double, double* @M_PI_2, align 8
  %40 = fmul double %38, %39
  store double %40, double* %15, align 8
  %41 = load double, double* %15, align 8
  %42 = load float, float* %10, align 4
  %43 = load double, double* %15, align 8
  %44 = fmul double %43, 4.000000e+00
  %45 = call float @sin(double %44)
  %46 = fmul float %42, %45
  %47 = fpext float %46 to double
  %48 = fadd double %41, %47
  %49 = call float @sin(double %48)
  %50 = fpext float %49 to double
  %51 = load double*, double** %12, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, double* %51, i64 %53
  store double %50, double* %54, align 8
  br label %55

55:                                               ; preds = %33
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %29

58:                                               ; preds = %29
  %59 = load i32, i32* %14, align 4
  %60 = load double*, double** %12, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds double, double* %60, i64 %61
  store double* %62, double** %12, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load double*, double** %11, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds double, double* %64, i64 %65
  store double* %66, double** %11, align 8
  br label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %24

70:                                               ; preds = %24
  ret void
}

declare dso_local float @sin(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
