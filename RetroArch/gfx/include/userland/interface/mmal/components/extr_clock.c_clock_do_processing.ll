; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_clock.c_clock_do_processing.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_clock.c_clock_do_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_FALSE = common dso_local global i32 0, align 4
@MMAL_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @clock_do_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clock_do_processing(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @clock_event_dequeue(i32* %5, %struct.TYPE_7__* %4)
  %7 = load i64, i64* @MMAL_SUCCESS, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @MMAL_FALSE, align 4
  store i32 %10, i32* %2, align 4
  br label %57

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %54 [
    i32 129, label %15
    i32 128, label %22
    i32 133, label %28
    i32 130, label %34
    i32 131, label %40
    i32 132, label %46
  ]

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clock_process_scale_event(i32* %16, i32 %20)
  br label %55

22:                                               ; preds = %11
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  %27 = call i32 @clock_process_update_threshold_event(i32* %23, i32* %26)
  br label %55

28:                                               ; preds = %11
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = call i32 @clock_process_discont_threshold_event(i32* %29, i32* %32)
  br label %55

34:                                               ; preds = %11
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = call i32 @clock_process_request_threshold_event(i32* %35, i32* %38)
  br label %55

40:                                               ; preds = %11
  %41 = load i32*, i32** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = call i32 @clock_process_latency_event(i32* %41, i32* %44)
  br label %55

46:                                               ; preds = %11
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @clock_process_input_buffer_info_event(i32* %47, i32 %49, i32* %52)
  br label %55

54:                                               ; preds = %11
  br label %55

55:                                               ; preds = %54, %46, %40, %34, %28, %22, %15
  %56 = load i32, i32* @MMAL_TRUE, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %9
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @clock_event_dequeue(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @clock_process_scale_event(i32*, i32) #1

declare dso_local i32 @clock_process_update_threshold_event(i32*, i32*) #1

declare dso_local i32 @clock_process_discont_threshold_event(i32*, i32*) #1

declare dso_local i32 @clock_process_request_threshold_event(i32*, i32*) #1

declare dso_local i32 @clock_process_latency_event(i32*, i32*) #1

declare dso_local i32 @clock_process_input_buffer_info_event(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
