; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msvideo1.c_msvideo1_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msvideo1.c_msvideo1_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_16__*, i64, i32, i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Packet is too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PKT_DATA_PALETTE = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Palette size %d is wrong\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_14__*)* @msvideo1_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msvideo1_decode_frame(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %12, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 4
  store i32* %25, i32** %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 4
  %40 = mul nsw i32 %35, %39
  %41 = sdiv i32 %40, 512
  %42 = icmp slt i32 %31, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = load i32, i32* @AV_LOG_ERROR, align 4
  %46 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %44, i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %47, i32* %5, align 4
  br label %116

48:                                               ; preds = %4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = call i32 @ff_reget_buffer(%struct.TYPE_15__* %49, %struct.TYPE_16__* %52, i32 0)
  store i32 %53, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %5, align 4
  br label %116

57:                                               ; preds = %48
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %57
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %64 = load i32, i32* @AV_PKT_DATA_PALETTE, align 4
  %65 = call i32* @av_packet_get_side_data(%struct.TYPE_14__* %63, i32 %64, i32* %14)
  store i32* %65, i32** %15, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @AVPALETTE_SIZE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = load i32, i32* @AVPALETTE_SIZE, align 4
  %78 = call i32 @memcpy(i32 %75, i32* %76, i32 %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  br label %92

83:                                               ; preds = %68, %62
  %84 = load i32*, i32** %15, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %88 = load i32, i32* @AV_LOG_ERROR, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %87, i32 %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %86, %83
  br label %92

92:                                               ; preds = %91, %72
  br label %93

93:                                               ; preds = %92, %57
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %100 = call i32 @msvideo1_decode_8bit(%struct.TYPE_13__* %99)
  br label %104

101:                                              ; preds = %93
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %103 = call i32 @msvideo1_decode_16bit(%struct.TYPE_13__* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i8*, i8** %7, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = call i32 @av_frame_ref(i8* %105, %struct.TYPE_16__* %108)
  store i32 %109, i32* %13, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %5, align 4
  br label %116

113:                                              ; preds = %104
  %114 = load i32*, i32** %8, align 8
  store i32 1, i32* %114, align 4
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %113, %111, %55, %43
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32* @av_packet_get_side_data(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @msvideo1_decode_8bit(%struct.TYPE_13__*) #1

declare dso_local i32 @msvideo1_decode_16bit(%struct.TYPE_13__*) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
