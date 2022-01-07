; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showvolume.c_calc_max_draw.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showvolume.c_calc_max_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, float, i64 }
%struct.TYPE_6__ = type { float }

@LINEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*, float)* @calc_max_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_max_draw(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store float %2, float* %7, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LINEAR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load float, float* %7, align 4
  store float %15, float* %8, align 4
  br label %22

16:                                               ; preds = %3
  %17 = load float, float* %7, align 4
  %18 = call double @log10(float %17)
  %19 = fmul double 2.100000e-01, %18
  %20 = fadd double %19, 1.000000e+00
  %21 = call float @av_clipf(double %20, i32 0, i32 1)
  store float %21, float* %8, align 4
  br label %22

22:                                               ; preds = %16, %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load float, float* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load float, float* %32, align 4
  %34 = load float, float* %8, align 4
  %35 = fmul float %33, %34
  %36 = fsub float %30, %35
  %37 = fptosi float %36 to i32
  store i32 %37, i32* %4, align 4
  br label %45

38:                                               ; preds = %22
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load float, float* %40, align 8
  %42 = load float, float* %8, align 4
  %43 = fmul float %41, %42
  %44 = fptosi float %43 to i32
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %38, %27
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local float @av_clipf(double, i32, i32) #1

declare dso_local double @log10(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
