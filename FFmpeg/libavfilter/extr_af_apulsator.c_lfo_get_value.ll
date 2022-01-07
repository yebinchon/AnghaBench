; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_apulsator.c_lfo_get_value.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_apulsator.c_lfo_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32, double, i64, i32 }

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_3__*)* @lfo_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @lfo_get_value(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @FFMAX(double 1.000000e-02, i32 %10)
  %12 = call double @FFMIN(i32 1, i64 %11)
  %13 = fdiv double %7, %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = sitofp i64 %16 to double
  %18 = fadd double %13, %17
  %19 = fptosi double %18 to i64
  %20 = call double @FFMIN(i32 100, i64 %19)
  store double %20, double* %3, align 8
  %21 = load double, double* %3, align 8
  %22 = fcmp ogt double %21, 1.000000e+00
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load double, double* %3, align 8
  %25 = call double @fmod(double %24, i32 1)
  store double %25, double* %3, align 8
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %70 [
    i32 130, label %30
    i32 128, label %36
    i32 129, label %56
    i32 131, label %62
    i32 132, label %66
  ]

30:                                               ; preds = %26
  %31 = load double, double* %3, align 8
  %32 = fmul double %31, 2.000000e+00
  %33 = load double, double* @M_PI, align 8
  %34 = fmul double %32, %33
  %35 = call double @sin(double %34) #3
  store double %35, double* %4, align 8
  br label %72

36:                                               ; preds = %26
  %37 = load double, double* %3, align 8
  %38 = fcmp ogt double %37, 7.500000e-01
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load double, double* %3, align 8
  %41 = fsub double %40, 7.500000e-01
  %42 = fmul double %41, 4.000000e+00
  %43 = fsub double %42, 1.000000e+00
  store double %43, double* %4, align 8
  br label %55

44:                                               ; preds = %36
  %45 = load double, double* %3, align 8
  %46 = fcmp ogt double %45, 2.500000e-01
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load double, double* %3, align 8
  %49 = fmul double -4.000000e+00, %48
  %50 = fadd double %49, 2.000000e+00
  store double %50, double* %4, align 8
  br label %54

51:                                               ; preds = %44
  %52 = load double, double* %3, align 8
  %53 = fmul double %52, 4.000000e+00
  store double %53, double* %4, align 8
  br label %54

54:                                               ; preds = %51, %47
  br label %55

55:                                               ; preds = %54, %39
  br label %72

56:                                               ; preds = %26
  %57 = load double, double* %3, align 8
  %58 = fcmp olt double %57, 5.000000e-01
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 -1, i32 1
  %61 = sitofp i32 %60 to double
  store double %61, double* %4, align 8
  br label %72

62:                                               ; preds = %26
  %63 = load double, double* %3, align 8
  %64 = fmul double %63, 2.000000e+00
  %65 = fsub double %64, 1.000000e+00
  store double %65, double* %4, align 8
  br label %72

66:                                               ; preds = %26
  %67 = load double, double* %3, align 8
  %68 = fmul double %67, 2.000000e+00
  %69 = fsub double 1.000000e+00, %68
  store double %69, double* %4, align 8
  br label %72

70:                                               ; preds = %26
  %71 = call i32 @av_assert0(i32 0)
  br label %72

72:                                               ; preds = %70, %66, %62, %56, %55, %30
  %73 = load double, double* %4, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load double, double* %75, align 8
  %77 = fmul double %73, %76
  ret double %77
}

declare dso_local double @FFMIN(i32, i64) #1

declare dso_local i64 @FFMAX(double, i32) #1

declare dso_local double @fmod(double, i32) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
