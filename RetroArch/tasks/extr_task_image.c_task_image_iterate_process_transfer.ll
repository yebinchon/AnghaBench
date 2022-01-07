; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_image.c_task_image_iterate_process_transfer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_image.c_task_image_iterate_process_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbio_image_handle = type { i64, i32 }

@IMAGE_PROCESS_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbio_image_handle*)* @task_image_iterate_process_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_image_iterate_process_transfer(%struct.nbio_image_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nbio_image_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.nbio_image_handle* %0, %struct.nbio_image_handle** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = call i64 (...) @cpu_features_get_time_usec()
  store i64 %8, i64* %7, align 8
  br label %9

9:                                                ; preds = %17, %1
  %10 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %3, align 8
  %11 = call i32 @task_image_process(%struct.nbio_image_handle* %10, i32* %5, i32* %6)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IMAGE_PROCESS_NEXT, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %25

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16
  %18 = call i64 (...) @cpu_features_get_time_usec()
  %19 = load i64, i64* %7, align 8
  %20 = sub nsw i64 %18, %19
  %21 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %3, align 8
  %22 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %9, label %25

25:                                               ; preds = %17, %15
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IMAGE_PROCESS_NEXT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %3, align 8
  %33 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  store i32 -1, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %29
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @cpu_features_get_time_usec(...) #1

declare dso_local i32 @task_image_process(%struct.nbio_image_handle*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
