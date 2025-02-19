; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_sub2video_push_ref.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_sub2video_push_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__**, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32* }

@AV_BUFFERSRC_FLAG_KEEP_REF = common dso_local global i32 0, align 4
@AV_BUFFERSRC_FLAG_PUSH = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Error while add the frame to buffer source(%s).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @sub2video_push_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sub2video_push_ref(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @av_assert1(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 %18, i32* %23, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %57, %2
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %24
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %33, i64 %35
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = load i32, i32* @AV_BUFFERSRC_FLAG_KEEP_REF, align 4
  %42 = load i32, i32* @AV_BUFFERSRC_FLAG_PUSH, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @av_buffersrc_add_frame_flags(i32 %39, %struct.TYPE_10__* %40, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @AVERROR_EOF, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %30
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* @AV_LOG_WARNING, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @av_err2str(i32 %53)
  %55 = call i32 @av_log(i32* null, i32 %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %51, %48, %30
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %24

60:                                               ; preds = %24
  ret void
}

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @av_buffersrc_add_frame_flags(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @av_err2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
