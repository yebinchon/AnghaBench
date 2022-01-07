; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_fifo.c_fifo_thread_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_fifo.c_fifo_thread_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_13__**, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, i32 }

@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Keyframe received, recovering...\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Dropping non-keyframe packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_16__*)* @fifo_thread_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fifo_thread_write_packet(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %6, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %7, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %8, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %2
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %37 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %38 = call i32 @av_log(%struct.TYPE_17__* %36, i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %45

39:                                               ; preds = %26
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %42 = call i32 @av_log(%struct.TYPE_17__* %40, i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %44 = call i32 @av_packet_unref(%struct.TYPE_16__* %43)
  store i32 0, i32* %3, align 4
  br label %82

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %52, i64 %54
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %61, i64 %63
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %10, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @av_packet_rescale_ts(%struct.TYPE_16__* %68, i32 %69, i32 %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = call i32 @av_write_frame(%struct.TYPE_17__* %72, %struct.TYPE_16__* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %46
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = call i32 @av_packet_unref(%struct.TYPE_16__* %78)
  br label %80

80:                                               ; preds = %77, %46
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %39
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_16__*) #1

declare dso_local i32 @av_packet_rescale_ts(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @av_write_frame(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
