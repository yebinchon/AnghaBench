; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_siff.c_siff_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_siff.c_siff_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32* }

@TAG_SIFF = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@TAG_VBV1 = common dso_local global i64 0, align 8
@TAG_SOUN = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Not a VBV file\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"'BODY' chunk is missing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @siff_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siff_read_header(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @avio_rl32(i32* %14)
  %16 = load i64, i64* @TAG_SIFF, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %19, i32* %2, align 4
  br label %74

20:                                               ; preds = %1
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @avio_skip(i32* %21, i32 4)
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @avio_rl32(i32* %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @TAG_VBV1, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @TAG_SOUN, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = call i32 @av_log(%struct.TYPE_6__* %33, i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %2, align 4
  br label %74

37:                                               ; preds = %28, %20
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @TAG_VBV1, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @siff_parse_vbv1(%struct.TYPE_6__* %42, i32* %43, i32* %44)
  store i32 %45, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %74

49:                                               ; preds = %41, %37
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @TAG_SOUN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @siff_parse_soun(%struct.TYPE_6__* %54, i32* %55, i32* %56)
  store i32 %57, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %74

61:                                               ; preds = %53, %49
  %62 = load i32*, i32** %4, align 8
  %63 = call i64 @avio_rl32(i32* %62)
  %64 = call i64 @MKTAG(i8 signext 66, i8 signext 79, i8 signext 68, i8 signext 89)
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = load i32, i32* @AV_LOG_ERROR, align 4
  %69 = call i32 @av_log(%struct.TYPE_6__* %67, i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %70, i32* %2, align 4
  br label %74

71:                                               ; preds = %61
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @avio_skip(i32* %72, i32 4)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %71, %66, %59, %47, %32, %18
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @avio_rl32(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @siff_parse_vbv1(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @siff_parse_soun(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
