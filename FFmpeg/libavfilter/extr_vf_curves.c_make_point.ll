; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_curves.c_make_point.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_curves.c_make_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keypoint = type { double, double, %struct.keypoint* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.keypoint* (double, double, %struct.keypoint*)* @make_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.keypoint* @make_point(double %0, double %1, %struct.keypoint* %2) #0 {
  %4 = alloca %struct.keypoint*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.keypoint*, align 8
  %8 = alloca %struct.keypoint*, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store %struct.keypoint* %2, %struct.keypoint** %7, align 8
  %9 = call %struct.keypoint* @av_mallocz(i32 24)
  store %struct.keypoint* %9, %struct.keypoint** %8, align 8
  %10 = load %struct.keypoint*, %struct.keypoint** %8, align 8
  %11 = icmp ne %struct.keypoint* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store %struct.keypoint* null, %struct.keypoint** %4, align 8
  br label %24

13:                                               ; preds = %3
  %14 = load double, double* %5, align 8
  %15 = load %struct.keypoint*, %struct.keypoint** %8, align 8
  %16 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %15, i32 0, i32 0
  store double %14, double* %16, align 8
  %17 = load double, double* %6, align 8
  %18 = load %struct.keypoint*, %struct.keypoint** %8, align 8
  %19 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %18, i32 0, i32 1
  store double %17, double* %19, align 8
  %20 = load %struct.keypoint*, %struct.keypoint** %7, align 8
  %21 = load %struct.keypoint*, %struct.keypoint** %8, align 8
  %22 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %21, i32 0, i32 2
  store %struct.keypoint* %20, %struct.keypoint** %22, align 8
  %23 = load %struct.keypoint*, %struct.keypoint** %8, align 8
  store %struct.keypoint* %23, %struct.keypoint** %4, align 8
  br label %24

24:                                               ; preds = %13, %12
  %25 = load %struct.keypoint*, %struct.keypoint** %4, align 8
  ret %struct.keypoint* %25
}

declare dso_local %struct.keypoint* @av_mallocz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
