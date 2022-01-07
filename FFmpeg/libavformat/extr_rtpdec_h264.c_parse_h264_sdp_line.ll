; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_h264.c_parse_h264_sdp_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_h264.c_parse_h264_sdp_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"framesize:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fmtp:\00", align 1
@sdp_parse_fmtp_config_h264 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"cliprect:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32*, i8*)* @parse_h264_sdp_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_h264_sdp_line(%struct.TYPE_7__* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  store i8* %12, i8** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %52

16:                                               ; preds = %4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %19, i64 %21
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %10, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = call i64 @av_strstart(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %11)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %16
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @ff_h264_parse_framesize(i32 %30, i8* %31)
  br label %51

33:                                               ; preds = %16
  %34 = load i8*, i8** %11, align 8
  %35 = call i64 @av_strstart(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %11)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* @sdp_parse_fmtp_config_h264, align 4
  %43 = call i32 @ff_parse_fmtp(%struct.TYPE_7__* %38, %struct.TYPE_6__* %39, i32* %40, i8* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %52

44:                                               ; preds = %33
  %45 = load i8*, i8** %11, align 8
  %46 = call i64 @av_strstart(i8* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %11)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %44
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50, %27
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %37, %15
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @av_strstart(i8*, i8*, i8**) #1

declare dso_local i32 @ff_h264_parse_framesize(i32, i8*) #1

declare dso_local i32 @ff_parse_fmtp(%struct.TYPE_7__*, %struct.TYPE_6__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
