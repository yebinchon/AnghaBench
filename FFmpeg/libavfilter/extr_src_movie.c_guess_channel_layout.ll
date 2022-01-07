; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_src_movie.c_guess_channel_layout.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_src_movie.c_guess_channel_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"Channel layout is not set in stream %d, and could not be guessed from the number of channels (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"Channel layout is not set in output stream %d, guessed channel layout is '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i8*)* @guess_channel_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guess_channel_layout(%struct.TYPE_6__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %8, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @av_get_default_channel_layout(i8* %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @AV_LOG_ERROR, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @av_log(i8* %23, i32 %24, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = call i32 @AVERROR(i32 %30)
  store i32 %31, i32* %4, align 4
  br label %47

32:                                               ; preds = %3
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @av_get_channel_layout_string(i8* %33, i32 256, i8* %36, i64 %37)
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* @AV_LOG_WARNING, align 4
  %41 = load i32, i32* %6, align 4
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %43 = call i32 @av_log(i8* %39, i32 %40, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %41, i8* %42)
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %32, %22
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @av_get_default_channel_layout(i8*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_get_channel_layout_string(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
