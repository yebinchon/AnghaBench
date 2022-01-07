; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_mp4toannexb_bsf.c_hevc_extradata_to_annexb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_mp4toannexb_bsf.c_hevc_extradata_to_annexb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32, i32 }

@HEVC_NAL_VPS = common dso_local global i32 0, align 4
@HEVC_NAL_SPS = common dso_local global i32 0, align 4
@HEVC_NAL_PPS = common dso_local global i32 0, align 4
@HEVC_NAL_SEI_PREFIX = common dso_local global i32 0, align 4
@HEVC_NAL_SEI_SUFFIX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Invalid NAL unit type in extradata: %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"No parameter sets in the extradata\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @hevc_extradata_to_annexb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hevc_extradata_to_annexb(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bytestream2_init(i32* %4, i32 %19, i32 %24)
  %26 = call i32 @bytestream2_skip(i32* %4, i32 21)
  %27 = call i32 @bytestream2_get_byte(i32* %4)
  %28 = and i32 %27, 3
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = call i32 @bytestream2_get_byte(i32* %4)
  store i32 %30, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %119, %1
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %122

35:                                               ; preds = %31
  %36 = call i32 @bytestream2_get_byte(i32* %4)
  %37 = and i32 %36, 63
  store i32 %37, i32* %12, align 4
  %38 = call i32 @bytestream2_get_be16(i32* %4)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @HEVC_NAL_VPS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %64, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @HEVC_NAL_SPS, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %64, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @HEVC_NAL_PPS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @HEVC_NAL_SEI_PREFIX, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %64, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @HEVC_NAL_SEI_SUFFIX, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = load i32, i32* @AV_LOG_ERROR, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %59, i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %63, i32* %9, align 4
  br label %146

64:                                               ; preds = %54, %50, %46, %42, %35
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %115, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %118

69:                                               ; preds = %65
  %70 = call i32 @bytestream2_get_be16(i32* %4)
  store i32 %70, i32* %14, align 4
  %71 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %72 = add i64 4, %71
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %72, %74
  %76 = load i64, i64* @SIZE_MAX, align 8
  %77 = load i64, i64* %11, align 8
  %78 = sub i64 %76, %77
  %79 = icmp ugt i64 %75, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %81, i32* %9, align 4
  br label %146

82:                                               ; preds = %69
  %83 = load i64, i64* %11, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %83, %85
  %87 = add i64 %86, 4
  %88 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %89 = add i64 %87, %88
  %90 = call i32 @av_reallocp(i32** %10, i64 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %146

94:                                               ; preds = %82
  %95 = load i32*, i32** %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = call i32 @AV_WB32(i32* %97, i32 1)
  %99 = load i32*, i32** %10, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @bytestream2_get_buffer(i32* %4, i32* %102, i32 %103)
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 4, %105
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %11, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %11, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %114 = call i32 @memset(i32* %112, i32 0, i64 %113)
  br label %115

115:                                              ; preds = %94
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %65

118:                                              ; preds = %65
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %31

122:                                              ; preds = %31
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = call i32 @av_freep(i32** %126)
  %128 = load i32*, i32** %10, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  store i32* %128, i32** %132, align 8
  %133 = load i64, i64* %11, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i64 %133, i64* %137, align 8
  %138 = load i64, i64* %11, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %122
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = load i32, i32* @AV_LOG_WARNING, align 4
  %143 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %141, i32 %142, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %144

144:                                              ; preds = %140, %122
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %2, align 4
  br label %149

146:                                              ; preds = %93, %80, %58
  %147 = call i32 @av_freep(i32** %10)
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %146, %144
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_be16(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, ...) #1

declare dso_local i32 @av_reallocp(i32**, i64) #1

declare dso_local i32 @AV_WB32(i32*, i32) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
