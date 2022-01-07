; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_loudnorm.c_init_gaussian_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_loudnorm.c_init_gaussian_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double* }

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @init_gaussian_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_gaussian_filter(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  store double 3.500000e+00, double* %4, align 8
  store i32 10, i32* %7, align 4
  %11 = load double, double* @M_PI, align 8
  %12 = fmul double 2.000000e+00, %11
  %13 = call double @sqrt(double %12)
  %14 = fmul double 3.500000e+00, %13
  %15 = fdiv double 1.000000e+00, %14
  store double %15, double* %8, align 8
  %16 = call double @pow(i32 3, double 2.000000e+00)
  %17 = fmul double 2.000000e+00, %16
  store double %17, double* %9, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %47, %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 21
  br i1 %20, label %21, label %50

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 10
  store i32 %23, i32* %10, align 4
  %24 = load double, double* %8, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call double @pow(i32 %25, double 2.000000e+00)
  %27 = load double, double* %9, align 8
  %28 = fdiv double %26, %27
  %29 = fneg double %28
  %30 = call double @exp(double %29)
  %31 = fmul double %24, %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load double*, double** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  store double %31, double* %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load double*, double** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %40, i64 %42
  %44 = load double, double* %43, align 8
  %45 = load double, double* %3, align 8
  %46 = fadd double %45, %44
  store double %46, double* %3, align 8
  br label %47

47:                                               ; preds = %21
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %18

50:                                               ; preds = %18
  %51 = load double, double* %3, align 8
  %52 = fdiv double 1.000000e+00, %51
  store double %52, double* %5, align 8
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %66, %50
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 21
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load double, double* %5, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load double*, double** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  %64 = load double, double* %63, align 8
  %65 = fmul double %64, %57
  store double %65, double* %63, align 8
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %53

69:                                               ; preds = %53
  ret void
}

declare dso_local double @sqrt(double) #1

declare dso_local double @pow(i32, double) #1

declare dso_local double @exp(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
