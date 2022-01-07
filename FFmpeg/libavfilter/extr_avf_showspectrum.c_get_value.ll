; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showspectrum.c_get_value.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showspectrum.c_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { float**, float**, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_5__*, i32, i32)* @get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @get_value(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load float**, float*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float*, float** %16, i64 %18
  %20 = load float*, float** %19, align 8
  store float* %20, float** %8, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load float**, float*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float*, float** %23, i64 %25
  %27 = load float*, float** %26, align 8
  store float* %27, float** %9, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %43 [
    i32 134, label %31
    i32 133, label %37
  ]

31:                                               ; preds = %3
  %32 = load float*, float** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %32, i64 %34
  %36 = load float, float* %35, align 4
  store float %36, float* %10, align 4
  br label %45

37:                                               ; preds = %3
  %38 = load float*, float** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  %42 = load float, float* %41, align 4
  store float %42, float* %10, align 4
  br label %45

43:                                               ; preds = %3
  %44 = call i32 @av_assert0(i32 0)
  br label %45

45:                                               ; preds = %43, %37, %31
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %75 [
    i32 130, label %49
    i32 128, label %52
    i32 135, label %56
    i32 131, label %60
    i32 132, label %65
    i32 129, label %69
  ]

49:                                               ; preds = %45
  %50 = load float, float* %10, align 4
  %51 = call float @av_clipf(float %50, i32 0, i32 1)
  store float %51, float* %10, align 4
  br label %77

52:                                               ; preds = %45
  %53 = load float, float* %10, align 4
  %54 = call float @sqrtf(float %53) #4
  %55 = call float @av_clipf(float %54, i32 0, i32 1)
  store float %55, float* %10, align 4
  br label %77

56:                                               ; preds = %45
  %57 = load float, float* %10, align 4
  %58 = call float @cbrtf(float %57) #5
  %59 = call float @av_clipf(float %58, i32 0, i32 1)
  store float %59, float* %10, align 4
  br label %77

60:                                               ; preds = %45
  %61 = load float, float* %10, align 4
  %62 = call float @sqrtf(float %61) #4
  %63 = call float @sqrtf(float %62) #4
  %64 = call float @av_clipf(float %63, i32 0, i32 1)
  store float %64, float* %10, align 4
  br label %77

65:                                               ; preds = %45
  %66 = load float, float* %10, align 4
  %67 = call float @powf(float %66, double 2.000000e-01)
  %68 = call float @av_clipf(float %67, i32 0, i32 1)
  store float %68, float* %10, align 4
  br label %77

69:                                               ; preds = %45
  %70 = load float, float* %10, align 4
  %71 = call float @av_clipf(float %70, i32 0, i32 1)
  %72 = call float @log10f(float %71) #4
  %73 = fdiv float %72, 6.000000e+00
  %74 = fadd float 1.000000e+00, %73
  store float %74, float* %10, align 4
  br label %77

75:                                               ; preds = %45
  %76 = call i32 @av_assert0(i32 0)
  br label %77

77:                                               ; preds = %75, %69, %65, %60, %56, %52, %49
  %78 = load float, float* %10, align 4
  ret float %78
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local float @av_clipf(float, i32, i32) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

; Function Attrs: nounwind readnone
declare dso_local float @cbrtf(float) #3

declare dso_local float @powf(float, double) #1

; Function Attrs: nounwind
declare dso_local float @log10f(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
