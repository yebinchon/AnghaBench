; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_curves.c_get_nb_points.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_curves.c_get_nb_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keypoint = type { %struct.keypoint* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.keypoint*)* @get_nb_points to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nb_points(%struct.keypoint* %0) #0 {
  %2 = alloca %struct.keypoint*, align 8
  %3 = alloca i32, align 4
  store %struct.keypoint* %0, %struct.keypoint** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.keypoint*, %struct.keypoint** %2, align 8
  %6 = icmp ne %struct.keypoint* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load %struct.keypoint*, %struct.keypoint** %2, align 8
  %11 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %10, i32 0, i32 0
  %12 = load %struct.keypoint*, %struct.keypoint** %11, align 8
  store %struct.keypoint* %12, %struct.keypoint** %2, align 8
  br label %4

13:                                               ; preds = %4
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
