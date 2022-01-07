; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showspectrum.c_color_range.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showspectrum.c_color_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, float, i32, float, float }

@M_PI = common dso_local global float 0.000000e+00, align 4
@M_PI_2 = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, float*, float*, float*)* @color_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_range(%struct.TYPE_3__* %0, i32 %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %48 [
    i32 142, label %14
    i32 130, label %44
  ]

14:                                               ; preds = %5
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load float, float* %16, align 4
  %18 = fdiv float 2.560000e+02, %17
  %19 = load float*, float** %8, align 8
  store float %18, float* %19, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %41 [
    i32 131, label %23
    i32 134, label %23
    i32 133, label %23
    i32 139, label %23
    i32 140, label %23
    i32 138, label %23
    i32 141, label %23
    i32 137, label %23
    i32 128, label %23
    i32 132, label %23
    i32 143, label %23
    i32 129, label %23
    i32 135, label %23
    i32 136, label %23
    i32 144, label %30
  ]

23:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %24 = load float*, float** %8, align 8
  %25 = load float, float* %24, align 4
  %26 = load float*, float** %9, align 8
  store float %25, float* %26, align 4
  %27 = load float*, float** %8, align 8
  %28 = load float, float* %27, align 4
  %29 = load float*, float** %10, align 8
  store float %28, float* %29, align 4
  br label %43

30:                                               ; preds = %14
  %31 = load float*, float** %8, align 8
  %32 = load float, float* %31, align 4
  %33 = load float, float* @M_PI, align 4
  %34 = fmul float %32, %33
  %35 = load float*, float** %9, align 8
  store float %34, float* %35, align 4
  %36 = load float*, float** %8, align 8
  %37 = load float, float* %36, align 4
  %38 = load float, float* @M_PI, align 4
  %39 = fmul float %37, %38
  %40 = load float*, float** %10, align 8
  store float %39, float* %40, align 4
  br label %43

41:                                               ; preds = %14
  %42 = call i32 @av_assert0(i32 0)
  br label %43

43:                                               ; preds = %41, %30, %23
  br label %50

44:                                               ; preds = %5
  %45 = load float*, float** %8, align 8
  store float 2.560000e+02, float* %45, align 4
  %46 = load float*, float** %9, align 8
  store float 2.560000e+02, float* %46, align 4
  %47 = load float*, float** %10, align 8
  store float 2.560000e+02, float* %47, align 4
  br label %50

48:                                               ; preds = %5
  %49 = call i32 @av_assert0(i32 0)
  br label %50

50:                                               ; preds = %48, %44, %43
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 144
  br i1 %54, label %55, label %125

55:                                               ; preds = %50
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load float, float* %57, align 4
  %59 = fcmp ogt float %58, 1.000000e+00
  br i1 %59, label %60, label %101

60:                                               ; preds = %55
  %61 = load float, float* @M_PI, align 4
  %62 = fmul float 2.000000e+00, %61
  %63 = load i32, i32* %7, align 4
  %64 = sitofp i32 %63 to float
  %65 = fmul float %62, %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load float, float* %67, align 4
  %69 = fdiv float %65, %68
  %70 = load float, float* @M_PI, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load float, float* %72, align 4
  %74 = fmul float %70, %73
  %75 = fadd float %69, %74
  %76 = call float @sinf(float %75) #3
  %77 = fmul float 5.000000e-01, %76
  %78 = load float*, float** %9, align 8
  %79 = load float, float* %78, align 4
  %80 = fmul float %79, %77
  store float %80, float* %78, align 4
  %81 = load float, float* @M_PI, align 4
  %82 = fmul float 2.000000e+00, %81
  %83 = load i32, i32* %7, align 4
  %84 = sitofp i32 %83 to float
  %85 = fmul float %82, %84
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load float, float* %87, align 4
  %89 = fdiv float %85, %88
  %90 = load float, float* @M_PI, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load float, float* %92, align 4
  %94 = fmul float %90, %93
  %95 = fadd float %89, %94
  %96 = call float @cosf(float %95) #3
  %97 = fmul float 5.000000e-01, %96
  %98 = load float*, float** %10, align 8
  %99 = load float, float* %98, align 4
  %100 = fmul float %99, %97
  store float %100, float* %98, align 4
  br label %124

101:                                              ; preds = %55
  %102 = load float, float* @M_PI, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  %105 = load float, float* %104, align 4
  %106 = fmul float %102, %105
  %107 = call float @sinf(float %106) #3
  %108 = fmul float 5.000000e-01, %107
  %109 = load float*, float** %9, align 8
  %110 = load float, float* %109, align 4
  %111 = fmul float %110, %108
  store float %111, float* %109, align 4
  %112 = load float, float* @M_PI, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load float, float* %114, align 4
  %116 = fmul float %112, %115
  %117 = load float, float* @M_PI_2, align 4
  %118 = fadd float %116, %117
  %119 = call float @cosf(float %118) #3
  %120 = fmul float 5.000000e-01, %119
  %121 = load float*, float** %10, align 8
  %122 = load float, float* %121, align 4
  %123 = fmul float %122, %120
  store float %123, float* %121, align 4
  br label %124

124:                                              ; preds = %101, %60
  br label %152

125:                                              ; preds = %50
  %126 = load float*, float** %9, align 8
  %127 = load float, float* %126, align 4
  %128 = load float, float* @M_PI, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  %131 = load float, float* %130, align 4
  %132 = fmul float %128, %131
  %133 = call float @sinf(float %132) #3
  %134 = fmul float %127, %133
  %135 = load float*, float** %9, align 8
  %136 = load float, float* %135, align 4
  %137 = fadd float %136, %134
  store float %137, float* %135, align 4
  %138 = load float*, float** %10, align 8
  %139 = load float, float* %138, align 4
  %140 = load float, float* @M_PI, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 3
  %143 = load float, float* %142, align 4
  %144 = fmul float %140, %143
  %145 = load float, float* @M_PI_2, align 4
  %146 = fadd float %144, %145
  %147 = call float @cosf(float %146) #3
  %148 = fmul float %139, %147
  %149 = load float*, float** %10, align 8
  %150 = load float, float* %149, align 4
  %151 = fadd float %150, %148
  store float %151, float* %149, align 4
  br label %152

152:                                              ; preds = %125, %124
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 4
  %155 = load float, float* %154, align 4
  %156 = load float*, float** %9, align 8
  %157 = load float, float* %156, align 4
  %158 = fmul float %157, %155
  store float %158, float* %156, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 4
  %161 = load float, float* %160, align 4
  %162 = load float*, float** %10, align 8
  %163 = load float, float* %162, align 4
  %164 = fmul float %163, %161
  store float %164, float* %162, align 4
  ret void
}

declare dso_local i32 @av_assert0(i32) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
