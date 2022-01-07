; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_eacdata.c_cdata_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_eacdata.c_cdata_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i32 }

@AV_CH_LAYOUT_QUAD = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_5POINT1_BACK = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unknown header 0x%04x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_EA_XAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @cdata_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdata_read_header(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %4, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @avio_rb16(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %33 [
    i32 1024, label %19
    i32 1028, label %22
    i32 1036, label %25
    i32 1044, label %29
  ]

19:                                               ; preds = %1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %38

22:                                               ; preds = %1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i32 2, i32* %24, align 8
  br label %38

25:                                               ; preds = %1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 4, i32* %27, align 8
  %28 = load i32, i32* @AV_CH_LAYOUT_QUAD, align 4
  store i32 %28, i32* %9, align 4
  br label %38

29:                                               ; preds = %1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store i32 6, i32* %31, align 8
  %32 = load i32, i32* @AV_CH_LAYOUT_5POINT1_BACK, align 4
  store i32 %32, i32* %9, align 4
  br label %38

33:                                               ; preds = %1
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = load i32, i32* @AV_LOG_INFO, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @av_log(%struct.TYPE_13__* %34, i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 -1, i32* %2, align 4
  br label %93

38:                                               ; preds = %29, %25, %22, %19
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @avio_rb16(i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @avio_r8(i32* %42)
  %44 = and i32 %43, 32
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 15, i32 11
  %48 = call i32 @avio_skip(i32* %41, i32 %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = call %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__* %49, i32* null)
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %8, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %52 = icmp ne %struct.TYPE_12__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %2, align 4
  br label %93

56:                                               ; preds = %38
  %57 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 5
  store i32 %57, i32* %61, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @AV_CODEC_ID_ADPCM_EA_XAS, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  store i32 %66, i32* %70, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  store i32 %78, i32* %82, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %88, i32 64, i32 1, i32 %89)
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %56, %53, %33
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_12__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
