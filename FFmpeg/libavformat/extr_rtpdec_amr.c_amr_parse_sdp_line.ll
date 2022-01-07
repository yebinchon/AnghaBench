; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_amr.c_amr_parse_sdp_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_amr.c_amr_parse_sdp_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"fmtp:\00", align 1
@amr_parse_fmtp = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unsupported RTP/AMR configuration!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, %struct.TYPE_8__*, i8*)* @amr_parse_sdp_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_parse_sdp_line(%struct.TYPE_9__* %0, i32 %1, %struct.TYPE_8__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

15:                                               ; preds = %4
  %16 = load i8*, i8** %9, align 8
  %17 = call i64 @av_strstart(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %10)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %15
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* @amr_parse_fmtp, align 4
  %31 = call i32 @ff_parse_fmtp(%struct.TYPE_9__* %20, i32 %27, %struct.TYPE_8__* %28, i8* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %19
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %46, %41, %36, %19
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = call i32 @av_log(%struct.TYPE_9__* %52, i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %55, %51, %14
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @av_strstart(i8*, i8*, i8**) #1

declare dso_local i32 @ff_parse_fmtp(%struct.TYPE_9__*, i32, %struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
