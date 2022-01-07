; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_aiffdec.c_aiff_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_aiffdec.c_aiff_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float* }

@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @aiff_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aiff_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load float*, float** %5, align 8
  %7 = getelementptr inbounds float, float* %6, i64 0
  %8 = load float, float* %7, align 4
  %9 = fcmp oeq float %8, 7.000000e+01
  br i1 %9, label %10, label %68

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load float*, float** %12, align 8
  %14 = getelementptr inbounds float, float* %13, i64 1
  %15 = load float, float* %14, align 4
  %16 = fcmp oeq float %15, 7.900000e+01
  br i1 %16, label %17, label %68

17:                                               ; preds = %10
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load float*, float** %19, align 8
  %21 = getelementptr inbounds float, float* %20, i64 2
  %22 = load float, float* %21, align 4
  %23 = fcmp oeq float %22, 8.200000e+01
  br i1 %23, label %24, label %68

24:                                               ; preds = %17
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load float*, float** %26, align 8
  %28 = getelementptr inbounds float, float* %27, i64 3
  %29 = load float, float* %28, align 4
  %30 = fcmp oeq float %29, 7.700000e+01
  br i1 %30, label %31, label %68

31:                                               ; preds = %24
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load float*, float** %33, align 8
  %35 = getelementptr inbounds float, float* %34, i64 8
  %36 = load float, float* %35, align 4
  %37 = fcmp oeq float %36, 6.500000e+01
  br i1 %37, label %38, label %68

38:                                               ; preds = %31
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load float*, float** %40, align 8
  %42 = getelementptr inbounds float, float* %41, i64 9
  %43 = load float, float* %42, align 4
  %44 = fcmp oeq float %43, 7.300000e+01
  br i1 %44, label %45, label %68

45:                                               ; preds = %38
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load float*, float** %47, align 8
  %49 = getelementptr inbounds float, float* %48, i64 10
  %50 = load float, float* %49, align 4
  %51 = fcmp oeq float %50, 7.000000e+01
  br i1 %51, label %52, label %68

52:                                               ; preds = %45
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load float*, float** %54, align 8
  %56 = getelementptr inbounds float, float* %55, i64 11
  %57 = load float, float* %56, align 4
  %58 = fcmp oeq float %57, 7.000000e+01
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load float*, float** %61, align 8
  %63 = getelementptr inbounds float, float* %62, i64 11
  %64 = load float, float* %63, align 4
  %65 = fcmp oeq float %64, 6.700000e+01
  br i1 %65, label %66, label %68

66:                                               ; preds = %59, %52
  %67 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %59, %45, %38, %31, %24, %17, %10, %1
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %66
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
