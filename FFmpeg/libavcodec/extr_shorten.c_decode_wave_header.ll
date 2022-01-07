; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_shorten.c_decode_wave_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_shorten.c_decode_wave_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"missing RIFF tag\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"missing WAVE tag\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"no fmt chunk found\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"fmt chunk was too short\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unsupported wave format\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"unsupported number of bits per sample: %d\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"%d header bytes unparsed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @decode_wave_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_wave_header(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @bytestream2_init(i32* %11, i32* %12, i32 %13)
  %15 = call i8* @bytestream2_get_le32(i32* %11)
  %16 = call i8* @MKTAG(float 8.200000e+01, i8 signext 73, i8 signext 70, i8 signext 70)
  %17 = icmp ne i8* %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = load i32, i32* @AV_LOG_ERROR, align 4
  %21 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %19, i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %22, i32* %4, align 4
  br label %111

23:                                               ; preds = %3
  %24 = call i32 @bytestream2_skip(i32* %11, i32 4)
  %25 = call i8* @bytestream2_get_le32(i32* %11)
  %26 = call i8* @MKTAG(float 8.700000e+01, i8 signext 65, i8 signext 86, i8 signext 69)
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = load i32, i32* @AV_LOG_ERROR, align 4
  %31 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %29, i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %32, i32* %4, align 4
  br label %111

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %53, %33
  %35 = call i8* @bytestream2_get_le32(i32* %11)
  %36 = call i8* @MKTAG(float 1.020000e+02, i8 signext 109, i8 signext 116, i8 signext 32)
  %37 = icmp ne i8* %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = call i8* @bytestream2_get_le32(i32* %11)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @bytestream2_skip(i32* %11, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = call i32 @bytestream2_get_bytes_left(i32* %11)
  %47 = icmp slt i32 %46, 16
  br i1 %47, label %48, label %53

48:                                               ; preds = %45, %38
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %49, i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %4, align 4
  br label %111

53:                                               ; preds = %45
  br label %34

54:                                               ; preds = %34
  %55 = call i8* @bytestream2_get_le32(i32* %11)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 16
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = load i32, i32* @AV_LOG_ERROR, align 4
  %62 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %60, i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %63, i32* %4, align 4
  br label %111

64:                                               ; preds = %54
  %65 = call i8* @bytestream2_get_le16(i32* %11)
  %66 = ptrtoint i8* %65 to i16
  store i16 %66, i16* %10, align 2
  %67 = load i16, i16* %10, align 2
  %68 = sext i16 %67 to i32
  switch i32 %68, label %70 [
    i32 128, label %69
  ]

69:                                               ; preds = %64
  br label %76

70:                                               ; preds = %64
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %71, i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* @ENOSYS, align 4
  %75 = call i32 @AVERROR(i32 %74)
  store i32 %75, i32* %4, align 4
  br label %111

76:                                               ; preds = %69
  %77 = call i32 @bytestream2_skip(i32* %11, i32 2)
  %78 = call i8* @bytestream2_get_le32(i32* %11)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = call i32 @bytestream2_skip(i32* %11, i32 4)
  %82 = call i32 @bytestream2_skip(i32* %11, i32 2)
  %83 = call i8* @bytestream2_get_le16(i32* %11)
  %84 = ptrtoint i8* %83 to i32
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 16
  br i1 %89, label %90, label %100

90:                                               ; preds = %76
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 8
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = load i32, i32* @AV_LOG_ERROR, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %94, i32 %95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @ENOSYS, align 4
  %99 = call i32 @AVERROR(i32 %98)
  store i32 %99, i32* %4, align 4
  br label %111

100:                                              ; preds = %90, %76
  %101 = load i32, i32* %8, align 4
  %102 = sub nsw i32 %101, 16
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %107 = load i32, i32* @AV_LOG_INFO, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %106, i32 %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %105, %100
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %93, %70, %59, %48, %28, %18
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i8* @bytestream2_get_le32(i32*) #1

declare dso_local i8* @MKTAG(float, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @av_log(%struct.TYPE_4__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i8* @bytestream2_get_le16(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
