; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_latmenc.c_latm_decode_extradata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_latmenc.c_latm_decode_extradata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@MAX_EXTRADATA_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Extradata is larger than currently supported.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AOT_ALS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"BUG: ALS offset is not byte-aligned\0A\00", align 1
@AOT_SBR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"Muxing MPEG-4 AOT %d in LATM is not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32)* @latm_decode_extradata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latm_decode_extradata(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MAX_EXTRADATA_SIZE, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = load i32, i32* @AV_LOG_ERROR, align 4
  %19 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %17, i32 %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %20, i32* %4, align 4
  br label %79

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = call i32 @avpriv_mpeg4audio_get_config2(%struct.TYPE_8__* %9, i32* %22, i32 %23, i32 1, %struct.TYPE_10__* %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %4, align 4
  br label %79

36:                                               ; preds = %21
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AOT_ALS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, 7
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %49, i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %4, align 4
  br label %79

53:                                               ; preds = %42, %36
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AOT_SBR, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AOT_ALS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %64, i32 %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %69, i32* %4, align 4
  br label %79

70:                                               ; preds = %58, %53
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %70, %63, %48, %32, %16
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @avpriv_mpeg4audio_get_config2(%struct.TYPE_8__*, i32*, i32, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
