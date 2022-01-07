; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_spdifenc.c_spdif_header_mpeg.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_spdifenc.c_spdif_header_mpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Wrong MPEG file format\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"version: %i layer: %i extension: %i\0A\00", align 1
@IEC61937_MPEG2_EXT = common dso_local global i32 0, align 4
@mpeg_data_type = common dso_local global i32** null, align 8
@spdif_mpeg_pkt_offset = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @spdif_header_mpeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_header_mpeg(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 3
  %19 = and i32 %18, 3
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 1
  %26 = and i32 %25, 3
  %27 = sub nsw i32 3, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %36, %2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = load i32, i32* @AV_LOG_ERROR, align 4
  %42 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %40, i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %3, align 4
  br label %88

44:                                               ; preds = %36
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = load i32, i32* @AV_LOG_DEBUG, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %45, i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* @IEC61937_MPEG2_EXT, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 4608, i32* %61, align 4
  br label %87

62:                                               ; preds = %53, %44
  %63 = load i32**, i32*** @mpeg_data_type, align 8
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %63, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32**, i32*** @spdif_mpeg_pkt_offset, align 8
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %75, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %62, %56
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %39
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
