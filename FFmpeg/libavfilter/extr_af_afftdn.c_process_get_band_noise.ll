; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftdn.c_process_get_band_noise.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftdn.c_process_get_band_noise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double*, double*, double, double*, i32 }
%struct.TYPE_5__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32)* @process_get_band_noise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_get_band_noise(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 15
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  br label %115

25:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %64, %25
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 5
  br i1 %28, label %29, label %67

29:                                               ; preds = %26
  store double 0.000000e+00, double* %9, align 8
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 15
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load double*, double** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds double, double* %36, i64 %39
  %41 = load double, double* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sitofp i32 %48 to double
  %50 = fmul double %41, %49
  %51 = load double, double* %9, align 8
  %52 = fadd double %51, %50
  store double %52, double* %9, align 8
  br label %53

53:                                               ; preds = %33
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %30

56:                                               ; preds = %30
  %57 = load double, double* %9, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load double*, double** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  store double %57, double* %63, align 8
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %26

67:                                               ; preds = %26
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load double*, double** %72, align 8
  %74 = call i32 @solve(i32 %70, double* %73, i32 5)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load double, double* %76, align 8
  %78 = fmul double 5.000000e-01, %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = load double*, double** %80, align 8
  %82 = getelementptr inbounds double, double* %81, i64 14
  %83 = load double, double* %82, align 8
  %84 = fdiv double %78, %83
  store double %84, double* %10, align 8
  %85 = load double, double* %10, align 8
  %86 = fdiv double %85, 1.500000e+00
  %87 = call double @log(double %86) #3
  %88 = call double @log(double 1.500000e+00) #3
  %89 = fdiv double %87, %88
  %90 = fadd double 1.500000e+01, %89
  store double %90, double* %10, align 8
  store double 0.000000e+00, double* %9, align 8
  store double 1.000000e+00, double* %8, align 8
  store i32 0, i32* %14, align 4
  br label %91

91:                                               ; preds = %109, %67
  %92 = load i32, i32* %14, align 4
  %93 = icmp slt i32 %92, 5
  br i1 %93, label %94, label %112

94:                                               ; preds = %91
  %95 = load double, double* %8, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load double*, double** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, double* %98, i64 %100
  %102 = load double, double* %101, align 8
  %103 = fmul double %95, %102
  %104 = load double, double* %9, align 8
  %105 = fadd double %104, %103
  store double %105, double* %9, align 8
  %106 = load double, double* %10, align 8
  %107 = load double, double* %8, align 8
  %108 = fmul double %107, %106
  store double %108, double* %8, align 8
  br label %109

109:                                              ; preds = %94
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  br label %91

112:                                              ; preds = %91
  %113 = load double, double* %9, align 8
  %114 = call i32 @lrint(double %113)
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %112, %17
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @solve(i32, double*, i32) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #2

declare dso_local i32 @lrint(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
