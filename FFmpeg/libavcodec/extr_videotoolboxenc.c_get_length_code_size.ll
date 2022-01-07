; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_get_length_code_size.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_get_length_code_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32, i32*, i32*, i32*, i32*)* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error getting buffer format description.\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error getting length code size: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i64*)* @get_length_code_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_length_code_size(%struct.TYPE_6__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @CMSampleBufferGetFormatDescription(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = load i32, i32* @AV_LOG_ERROR, align 4
  %22 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %20, i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %23, i32* %4, align 4
  br label %42

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32 (i32, i32, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32*, i32*, i32*, i32*)** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 %27(i32 %28, i32 0, i32* null, i32* null, i32* null, i32* %10)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %33, i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %37, i32* %4, align 4
  br label %42

38:                                               ; preds = %24
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64*, i64** %7, align 8
  store i64 %40, i64* %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %32, %19
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @CMSampleBufferGetFormatDescription(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
