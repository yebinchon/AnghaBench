; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_rtmp_parse_result.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_rtmp_parse_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"received bytes read report\0A\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unknown packet type received 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_9__*)* @rtmp_parse_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtmp_parse_result(i32* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %57 [
    i32 136, label %12
    i32 135, label %16
    i32 130, label %24
    i32 131, label %32
    i32 128, label %40
    i32 134, label %48
    i32 129, label %56
    i32 137, label %56
    i32 133, label %56
    i32 132, label %56
  ]

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @AV_LOG_TRACE, align 4
  %15 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %13, i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %64

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = call i32 @handle_chunk_size(i32* %17, %struct.TYPE_9__* %18)
  store i32 %19, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %65

23:                                               ; preds = %16
  br label %64

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = call i32 @handle_user_control(i32* %25, %struct.TYPE_9__* %26)
  store i32 %27, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %65

31:                                               ; preds = %24
  br label %64

32:                                               ; preds = %3
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = call i32 @handle_set_peer_bw(i32* %33, %struct.TYPE_9__* %34)
  store i32 %35, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %65

39:                                               ; preds = %32
  br label %64

40:                                               ; preds = %3
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = call i32 @handle_window_ack_size(i32* %41, %struct.TYPE_9__* %42)
  store i32 %43, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %65

47:                                               ; preds = %40
  br label %64

48:                                               ; preds = %3
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = call i32 @handle_invoke(i32* %49, %struct.TYPE_9__* %50)
  store i32 %51, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %65

55:                                               ; preds = %48
  br label %64

56:                                               ; preds = %3, %3, %3, %3
  br label %64

57:                                               ; preds = %3
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %58, i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %57, %56, %55, %47, %39, %31, %23, %12
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %53, %45, %37, %29, %21
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @handle_chunk_size(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @handle_user_control(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @handle_set_peer_bw(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @handle_window_ack_size(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @handle_invoke(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
