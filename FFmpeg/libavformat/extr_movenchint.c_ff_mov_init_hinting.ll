; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenchint.c_ff_mov_init_hinting.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenchint.c_ff_mov_init_hinting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32**, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_17__*, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__** }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_DATA = common dso_local global i32 0, align 4
@RTP_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to initialize hinting of stream %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mov_init_hinting(%struct.TYPE_16__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %8, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i64 %20
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %9, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i64 %26
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %10, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %11, align 8
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = call i32 @MKTAG(i8 signext 114, i8 signext 116, i8 signext 112, i8 signext 32)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = call %struct.TYPE_18__* (...) @avcodec_parameters_alloc()
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 3
  store %struct.TYPE_18__* %43, %struct.TYPE_18__** %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = icmp ne %struct.TYPE_18__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %3
  br label %90

51:                                               ; preds = %3
  %52 = load i32, i32* @AVMEDIA_TYPE_DATA, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* @RTP_MAX_PACKET_SIZE, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @ff_rtp_chain_mux_open(%struct.TYPE_17__** %65, %struct.TYPE_16__* %66, i32* %67, i32* null, i32 %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %51
  br label %90

74:                                               ; preds = %51
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %79, i64 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  store i32 0, i32* %4, align 4
  br label %101

90:                                               ; preds = %73, %50
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = load i32, i32* @AV_LOG_WARNING, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @av_log(%struct.TYPE_16__* %91, i32 %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 3
  %97 = call i32 @avcodec_parameters_free(%struct.TYPE_18__** %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  store i32 90000, i32* %99, align 4
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %90, %74
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local %struct.TYPE_18__* @avcodec_parameters_alloc(...) #1

declare dso_local i32 @ff_rtp_chain_mux_open(%struct.TYPE_17__**, %struct.TYPE_16__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, i32) #1

declare dso_local i32 @avcodec_parameters_free(%struct.TYPE_18__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
