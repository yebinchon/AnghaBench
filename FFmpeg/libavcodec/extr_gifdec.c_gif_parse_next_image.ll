; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gifdec.c_gif_parse_next_image.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gifdec.c_gif_parse_next_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"code=%02x '%c'\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @gif_parse_next_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gif_parse_next_image(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %8

8:                                                ; preds = %40, %2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = call i64 @bytestream2_get_bytes_left(i32* %10)
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = call i32 @bytestream2_get_byte(i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AV_LOG_DEBUG, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @av_log(i32 %19, i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %38 [
    i32 129, label %25
    i32 130, label %29
    i32 128, label %36
  ]

25:                                               ; preds = %13
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @gif_read_image(%struct.TYPE_5__* %26, i32* %27)
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %13
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = call i32 @gif_read_extension(%struct.TYPE_5__* %30)
  store i32 %31, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %43

35:                                               ; preds = %29
  br label %40

36:                                               ; preds = %13
  %37 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %37, i32* %3, align 4
  br label %43

38:                                               ; preds = %13
  %39 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %39, i32* %3, align 4
  br label %43

40:                                               ; preds = %35
  br label %8

41:                                               ; preds = %8
  %42 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %38, %36, %33, %25
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @gif_read_image(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @gif_read_extension(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
