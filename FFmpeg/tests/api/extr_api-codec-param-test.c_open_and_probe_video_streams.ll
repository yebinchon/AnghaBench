; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-codec-param-test.c_open_and_probe_video_streams.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-codec-param-test.c_open_and_probe_video_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to open input '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i32)* @open_and_probe_video_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_and_probe_video_streams(i32** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32**, i32*** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @avformat_open_input(i32** %8, i8* %9, i32* null, i32* null)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @AV_LOG_ERROR, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @av_log(i32* null, i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %30

17:                                               ; preds = %3
  %18 = load i32**, i32*** %4, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @find_video_stream_info(i32* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %30

25:                                               ; preds = %17
  %26 = load i32**, i32*** %4, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dump_video_streams(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %24, %13
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @avformat_open_input(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*) #1

declare dso_local i32 @find_video_stream_info(i32*, i32) #1

declare dso_local i32 @dump_video_streams(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
