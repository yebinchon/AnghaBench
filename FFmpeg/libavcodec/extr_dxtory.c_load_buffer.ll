; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxtory.c_load_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxtory.c_load_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no slice data\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%d slices for %dx%d\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32*, i32*, i32*)* @load_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_buffer(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @bytestream2_init(i32* %14, i32* %15, i32 %16)
  %18 = load i32*, i32** %11, align 8
  %19 = call i32 @bytestream2_get_le16(i32* %18)
  %20 = load i32*, i32** %12, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 4
  %24 = add nsw i32 %23, 2
  %25 = call i32 @FFALIGN(i32 %24, i32 16)
  %26 = load i32*, i32** %13, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %6
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = call i32 @av_log(%struct.TYPE_5__* %32, i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %35, i32* %7, align 4
  br label %53

36:                                               ; preds = %6
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @avpriv_request_sample(%struct.TYPE_5__* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46, i32 %49)
  %51 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %51, i32* %7, align 4
  br label %53

52:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %40, %31
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_5__*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
