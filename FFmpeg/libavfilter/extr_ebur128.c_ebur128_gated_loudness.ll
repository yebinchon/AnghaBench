; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_ebur128.c_ebur128_gated_loudness.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_ebur128.c_ebur128_gated_loudness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { double* }

@FF_EBUR128_MODE_I = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HUGE_VAL = common dso_local global double 0.000000e+00, align 8
@histogram_energy_boundaries = common dso_local global double* null, align 8
@histogram_energies = common dso_local global double* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__**, i64, double*)* @ebur128_gated_loudness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebur128_gated_loudness(%struct.TYPE_6__** %0, i64 %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca double*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i64 %1, i64* %6, align 8
  store double* %2, double** %7, align 8
  store double 0.000000e+00, double* %8, align 8
  store i64 0, i64* %11, align 8
  br label %14

14:                                               ; preds = %33, %3
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %20 = load i64, i64* %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %19, i64 %20
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FF_EBUR128_MODE_I, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @FF_EBUR128_MODE_I, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* @EINVAL, align 4
  %31 = call i32 @AVERROR(i32 %30)
  store i32 %31, i32* %4, align 4
  br label %131

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %11, align 8
  br label %14

36:                                               ; preds = %14
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @ebur128_calc_relative_threshold(%struct.TYPE_6__** %37, i64 %38, double* %9)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load double, double* @HUGE_VAL, align 8
  %43 = fneg double %42
  %44 = load double*, double** %7, align 8
  store double %43, double* %44, align 8
  store i32 0, i32* %4, align 4
  br label %131

45:                                               ; preds = %36
  store i64 0, i64* %10, align 8
  %46 = load double, double* %9, align 8
  %47 = load double*, double** @histogram_energy_boundaries, align 8
  %48 = getelementptr inbounds double, double* %47, i64 0
  %49 = load double, double* %48, align 8
  %50 = fcmp olt double %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i64 0, i64* %13, align 8
  br label %65

52:                                               ; preds = %45
  %53 = load double, double* %9, align 8
  %54 = call i64 @find_histogram_index(double %53)
  store i64 %54, i64* %13, align 8
  %55 = load double, double* %9, align 8
  %56 = load double*, double** @histogram_energies, align 8
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr inbounds double, double* %56, i64 %57
  %59 = load double, double* %58, align 8
  %60 = fcmp ogt double %55, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i64, i64* %13, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %13, align 8
  br label %64

64:                                               ; preds = %61, %52
  br label %65

65:                                               ; preds = %64, %51
  store i64 0, i64* %11, align 8
  br label %66

66:                                               ; preds = %113, %65
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %116

70:                                               ; preds = %66
  %71 = load i64, i64* %13, align 8
  store i64 %71, i64* %12, align 8
  br label %72

72:                                               ; preds = %109, %70
  %73 = load i64, i64* %12, align 8
  %74 = icmp ult i64 %73, 1000
  br i1 %74, label %75, label %112

75:                                               ; preds = %72
  %76 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %76, i64 %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load double*, double** %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds double, double* %83, i64 %84
  %86 = load double, double* %85, align 8
  %87 = load double*, double** @histogram_energies, align 8
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds double, double* %87, i64 %88
  %90 = load double, double* %89, align 8
  %91 = fmul double %86, %90
  %92 = load double, double* %8, align 8
  %93 = fadd double %92, %91
  store double %93, double* %8, align 8
  %94 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %94, i64 %95
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load double*, double** %100, align 8
  %102 = load i64, i64* %12, align 8
  %103 = getelementptr inbounds double, double* %101, i64 %102
  %104 = load double, double* %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = uitofp i64 %105 to double
  %107 = fadd double %106, %104
  %108 = fptoui double %107 to i64
  store i64 %108, i64* %10, align 8
  br label %109

109:                                              ; preds = %75
  %110 = load i64, i64* %12, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %12, align 8
  br label %72

112:                                              ; preds = %72
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %11, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %11, align 8
  br label %66

116:                                              ; preds = %66
  %117 = load i64, i64* %10, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = load double, double* @HUGE_VAL, align 8
  %121 = fneg double %120
  %122 = load double*, double** %7, align 8
  store double %121, double* %122, align 8
  store i32 0, i32* %4, align 4
  br label %131

123:                                              ; preds = %116
  %124 = load i64, i64* %10, align 8
  %125 = uitofp i64 %124 to double
  %126 = load double, double* %8, align 8
  %127 = fdiv double %126, %125
  store double %127, double* %8, align 8
  %128 = load double, double* %8, align 8
  %129 = call double @ebur128_energy_to_loudness(double %128)
  %130 = load double*, double** %7, align 8
  store double %129, double* %130, align 8
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %123, %119, %41, %29
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ebur128_calc_relative_threshold(%struct.TYPE_6__**, i64, double*) #1

declare dso_local i64 @find_histogram_index(double) #1

declare dso_local double @ebur128_energy_to_loudness(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
