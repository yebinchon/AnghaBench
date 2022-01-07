; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_cdg.c_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_cdg.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_CDGRAPHICS = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Cannot calculate duration as file size cannot be determined\0A\00", align 1
@CDG_PACKET_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %7 = call %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__* %6, i32* null)
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = icmp ne %struct.TYPE_12__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = call i32 @AVERROR(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* @AV_CODEC_ID_CDGRAPHICS, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %24, i32 32, i32 1, i32 300)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @avio_size(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %13
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = load i32, i32* @AV_LOG_WARNING, align 4
  %35 = call i32 @av_log(%struct.TYPE_13__* %33, i32 %34, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %48

36:                                               ; preds = %13
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %37, %41
  %43 = load i32, i32* @CDG_PACKET_SIZE, align 4
  %44 = mul nsw i32 %43, 300
  %45 = sdiv i32 %42, %44
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %36, %32
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @avio_size(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
