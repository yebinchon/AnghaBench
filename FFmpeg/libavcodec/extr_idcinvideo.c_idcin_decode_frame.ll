; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_idcinvideo.c_idcin_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_idcinvideo.c_idcin_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32*, i32* }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32, i32** }

@AV_PKT_DATA_PALETTE = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Palette size %d is wrong\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_14__*)* @idcin_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idcin_decode_frame(%struct.TYPE_16__* %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %12, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %27 = load i32, i32* @AV_PKT_DATA_PALETTE, align 4
  %28 = call i32* @av_packet_get_side_data(%struct.TYPE_14__* %26, i32 %27, i32* %13)
  store i32* %28, i32** %14, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %15, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %39 = call i32 @ff_get_buffer(%struct.TYPE_16__* %37, %struct.TYPE_15__* %38, i32 0)
  store i32 %39, i32* %16, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %5, align 4
  br label %88

43:                                               ; preds = %4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %46 = call i64 @idcin_decode_vlcs(%struct.TYPE_13__* %44, %struct.TYPE_15__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %49, i32* %5, align 4
  br label %88

50:                                               ; preds = %43
  %51 = load i32*, i32** %14, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @AVPALETTE_SIZE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* @AVPALETTE_SIZE, align 4
  %65 = call i32 @memcpy(i32* %62, i32* %63, i32 %64)
  br label %75

66:                                               ; preds = %53, %50
  %67 = load i32*, i32** %14, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @av_log(%struct.TYPE_16__* %70, i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %69, %66
  br label %75

75:                                               ; preds = %74, %57
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @AVPALETTE_SIZE, align 4
  %85 = call i32 @memcpy(i32* %80, i32* %83, i32 %84)
  %86 = load i32*, i32** %8, align 8
  store i32 1, i32* %86, align 4
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %75, %48, %41
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32* @av_packet_get_side_data(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @idcin_decode_vlcs(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
