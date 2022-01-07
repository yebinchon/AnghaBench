; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_binkaudio.c_binkaudio_receive_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_binkaudio.c_binkaudio_receive_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Packet is too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_CODEC_ID_BINKAUDIO_DCT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Incomplete packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @binkaudio_receive_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binkaudio_receive_frame(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %6, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  store i32* %13, i32** %7, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %61, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = call i32 @ff_decode_get_packet(%struct.TYPE_17__* %21, %struct.TYPE_18__* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %123

30:                                               ; preds = %20
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = load i32, i32* @AV_LOG_ERROR, align 4
  %40 = call i32 @av_log(%struct.TYPE_17__* %38, i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %41, i32* %8, align 4
  br label %117

42:                                               ; preds = %30
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @init_get_bits8(i32* %43, i32 %48, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  br label %117

58:                                               ; preds = %42
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @skip_bits_long(i32* %59, i32 32)
  br label %61

61:                                               ; preds = %58, %2
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = call i32 @ff_get_buffer(%struct.TYPE_17__* %67, %struct.TYPE_16__* %68, i32 0)
  store i32 %69, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %123

73:                                               ; preds = %61
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to float**
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @AV_CODEC_ID_BINKAUDIO_DCT, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i64 @decode_block(%struct.TYPE_15__* %74, float** %78, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %73
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = load i32, i32* @AV_LOG_ERROR, align 4
  %92 = call i32 @av_log(%struct.TYPE_17__* %90, i32 %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %93, i32* %3, align 4
  br label %123

94:                                               ; preds = %73
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @get_bits_align32(i32* %95)
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @get_bits_left(i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %94
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @memset(i32* %101, i32 0, i32 4)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = call i32 @av_packet_unref(%struct.TYPE_18__* %105)
  br label %107

107:                                              ; preds = %100, %94
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sdiv i32 %110, %113
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  store i32 0, i32* %3, align 4
  br label %123

117:                                              ; preds = %57, %37
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %119, align 8
  %121 = call i32 @av_packet_unref(%struct.TYPE_18__* %120)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %117, %107, %89, %71, %28
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @ff_decode_get_packet(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @init_get_bits8(i32*, i32, i32) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @decode_block(%struct.TYPE_15__*, float**, i32) #1

declare dso_local i32 @get_bits_align32(i32*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
