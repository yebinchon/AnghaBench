; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_fifo.c_fifo_consumer_thread.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_fifo.c_fifo_consumer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i64, i64, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_18__* }

@FIFO_WRITE_HEADER = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"FIFO queue flushed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @fifo_consumer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fifo_consumer_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %3, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %4, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* @FIFO_WRITE_HEADER, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = call i32 @memset(%struct.TYPE_15__* %8, i32 0, i32 24)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %25, align 8
  br label %26

26:                                               ; preds = %1, %88
  store i32 0, i32* %9, align 4
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = call i32 @fifo_thread_dispatch_message(%struct.TYPE_15__* %8, %struct.TYPE_16__* %6)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @fifo_thread_recover(%struct.TYPE_15__* %8, %struct.TYPE_16__* %6, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @av_thread_message_queue_set_err_send(i32* %45, i32 %46)
  br label %89

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %35
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = call i32 @pthread_mutex_lock(i32* %51)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %49
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @av_thread_message_flush(i32* %58)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %64, %57
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  store i32 1, i32* %9, align 4
  br label %69

69:                                               ; preds = %66, %49
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = call i32 @pthread_mutex_unlock(i32* %71)
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = load i32, i32* @AV_LOG_INFO, align 4
  %78 = call i32 @av_log(%struct.TYPE_18__* %76, i32 %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %69
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @av_thread_message_queue_recv(i32* %80, %struct.TYPE_16__* %6, i32 0)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @av_thread_message_queue_set_err_send(i32* %85, i32 %86)
  br label %89

88:                                               ; preds = %79
  br label %26

89:                                               ; preds = %84, %44
  %90 = call i32 @fifo_thread_write_trailer(%struct.TYPE_15__* %8)
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  ret i8* null
}

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @fifo_thread_dispatch_message(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @fifo_thread_recover(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @av_thread_message_queue_set_err_send(i32*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @av_thread_message_flush(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @av_thread_message_queue_recv(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @fifo_thread_write_trailer(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
