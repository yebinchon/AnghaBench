; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_fifo.c_fifo_thread_dispatch_message.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_fifo.c_fifo_thread_dispatch_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)* @fifo_thread_dispatch_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fifo_thread_dispatch_message(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = call i32 @AVERROR(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = call i32 @fifo_thread_write_header(%struct.TYPE_8__* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %43

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %39 [
    i32 129, label %25
    i32 128, label %31
    i32 130, label %36
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @av_assert0(i32 %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %43

31:                                               ; preds = %21
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = call i32 @fifo_thread_write_packet(%struct.TYPE_8__* %32, i32* %34)
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %21
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = call i32 @fifo_thread_flush_output(%struct.TYPE_8__* %37)
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %21
  %40 = call i32 @av_assert0(i32 0)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = call i32 @AVERROR(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %36, %31, %25, %18
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @fifo_thread_write_header(%struct.TYPE_8__*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @fifo_thread_write_packet(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @fifo_thread_flush_output(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
