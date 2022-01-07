; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_siff.c_siff_parse_soun.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_siff.c_siff_parse_soun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@TAG_SHDR = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Header chunk is missing\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Header chunk size is incorrect\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32*)* @siff_parse_soun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siff_parse_soun(i32* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = call i64 @avio_rl32(i32* %8)
  %10 = load i64, i64* @TAG_SHDR, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @AV_LOG_ERROR, align 4
  %15 = call i32 @av_log(i32* %13, i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %16, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @avio_rb32(i32* %18)
  %20 = icmp ne i32 %19, 8
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @AV_LOG_ERROR, align 4
  %24 = call i32 @av_log(i32* %22, i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %25, i32* %4, align 4
  br label %52

26:                                               ; preds = %17
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @avio_skip(i32* %27, i32 4)
  %29 = load i32*, i32** %7, align 8
  %30 = call i8* @avio_rl16(i32* %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i8* @avio_rl16(i32* %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 3
  %46 = mul nsw i32 %41, %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = call i32 @create_audio_stream(i32* %49, %struct.TYPE_4__* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %26, %21, %12
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @avio_rl32(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i8* @avio_rl16(i32*) #1

declare dso_local i32 @create_audio_stream(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
