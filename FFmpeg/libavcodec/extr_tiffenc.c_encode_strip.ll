; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiffenc.c_encode_strip.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiffenc.c_encode_strip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64*, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unsupported compression method: %d\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*, i32, i32)* @encode_strip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_strip(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %51 [
    i32 128, label %13
    i32 129, label %27
    i32 130, label %44
  ]

13:                                               ; preds = %5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @check_size(%struct.TYPE_4__* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32 @AVERROR(i32 %19)
  store i32 %20, i32* %6, align 4
  br label %60

21:                                               ; preds = %13
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @memcpy(i32* %22, i32* %23, i32 %24)
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %6, align 4
  br label %60

27:                                               ; preds = %5
  %28 = load i32*, i32** %9, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  %40 = sub i64 %31, %39
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @ff_rle_encode(i32* %28, i64 %40, i32* %41, i32 1, i32 %42, i32 2, i32 255, i32 -1, i32 0)
  store i32 %43, i32* %6, align 4
  br label %60

44:                                               ; preds = %5
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @ff_lzw_encode(i32 %47, i32* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  br label %60

51:                                               ; preds = %5
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 (i32, i32, i8*, ...) @av_log(i32 %54, i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = call i32 @AVERROR(i32 %58)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %51, %44, %27, %21, %18
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @check_size(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ff_rle_encode(i32*, i64, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_lzw_encode(i32, i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
