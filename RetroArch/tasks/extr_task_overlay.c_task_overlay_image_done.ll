; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_overlay.c_task_overlay_image_done.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_overlay.c_task_overlay_image_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.overlay = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.overlay*)* @task_overlay_image_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_overlay_image_done(%struct.overlay* %0) #0 {
  %2 = alloca %struct.overlay*, align 8
  store %struct.overlay* %0, %struct.overlay** %2, align 8
  %3 = load %struct.overlay*, %struct.overlay** %2, align 8
  %4 = getelementptr inbounds %struct.overlay, %struct.overlay* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load %struct.overlay*, %struct.overlay** %2, align 8
  %6 = getelementptr inbounds %struct.overlay, %struct.overlay* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = sdiv i32 %7, 2
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.overlay*, %struct.overlay** %2, align 8
  %12 = getelementptr inbounds %struct.overlay, %struct.overlay* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %13, 2
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %10
  %17 = phi i32 [ %14, %10 ], [ 8, %15 ]
  %18 = load %struct.overlay*, %struct.overlay** %2, align 8
  %19 = getelementptr inbounds %struct.overlay, %struct.overlay* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
