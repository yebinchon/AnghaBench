; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vc1test.c_vc1t_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vc1test.c_vc1t_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_WMV3 = common dso_local global i32 0, align 4
@VC1_EXTRADATA_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Zero FPS specified, defaulting to 1 FPS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @vc1t_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc1t_read_header(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @avio_rl24(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @avio_r8(i32* %14)
  %16 = icmp ne i32 %15, 197
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @avio_rl32(i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %1
  %22 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %22, i32* %2, align 4
  br label %100

23:                                               ; preds = %17
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = call %struct.TYPE_10__* @avformat_new_stream(%struct.TYPE_11__* %24, i32* null)
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %5, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %100

31:                                               ; preds = %23
  %32 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @AV_CODEC_ID_WMV3, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @VC1_EXTRADATA_SIZE, align 4
  %48 = call i64 @ff_get_extradata(%struct.TYPE_11__* %42, %struct.TYPE_12__* %45, i32* %46, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %31
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %100

53:                                               ; preds = %31
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, 4
  %57 = call i32 @avio_skip(i32* %54, i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @avio_rl32(i32* %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @avio_rl32(i32* %64)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  store i32 %65, i32* %69, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @avio_rl32(i32* %70)
  %72 = icmp ne i32 %71, 12
  br i1 %72, label %73, label %75

73:                                               ; preds = %53
  %74 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %74, i32* %2, align 4
  br label %100

75:                                               ; preds = %53
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @avio_skip(i32* %76, i32 8)
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @avio_rl32(i32* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = call i32 @avpriv_set_pts_info(%struct.TYPE_10__* %83, i32 32, i32 1, i32 1000)
  br label %99

85:                                               ; preds = %75
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %90 = load i32, i32* @AV_LOG_ERROR, align 4
  %91 = call i32 @av_log(%struct.TYPE_11__* %89, i32 %90, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %92

92:                                               ; preds = %88, %85
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @avpriv_set_pts_info(%struct.TYPE_10__* %93, i32 24, i32 1, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %92, %82
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %73, %50, %28, %21
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @avio_rl24(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local %struct.TYPE_10__* @avformat_new_stream(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @ff_get_extradata(%struct.TYPE_11__*, %struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
