; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_context.c_ff_v4l2_context_enqueue_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_context.c_ff_v4l2_context_enqueue_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s stop_decode\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_v4l2_context_enqueue_packet(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = call %struct.TYPE_12__* @ctx_to_m2mctx(%struct.TYPE_13__* %9)
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = call i32 @v4l2_stop_decode(%struct.TYPE_13__* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = call i32 @logger(%struct.TYPE_13__* %21)
  %23 = load i32, i32* @AV_LOG_ERROR, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @av_log(i32 %22, i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %20, %15
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %50

31:                                               ; preds = %2
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = call i32* @v4l2_getfree_v4l2buf(%struct.TYPE_13__* %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %50

39:                                               ; preds = %31
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @ff_v4l2_buffer_avpkt_to_buf(%struct.TYPE_14__* %40, i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %50

47:                                               ; preds = %39
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @ff_v4l2_buffer_enqueue(i32* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %45, %36, %28
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_12__* @ctx_to_m2mctx(%struct.TYPE_13__*) #1

declare dso_local i32 @v4l2_stop_decode(%struct.TYPE_13__*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @logger(%struct.TYPE_13__*) #1

declare dso_local i32* @v4l2_getfree_v4l2buf(%struct.TYPE_13__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_v4l2_buffer_avpkt_to_buf(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @ff_v4l2_buffer_enqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
