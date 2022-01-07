; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hq_hqa.c_hq_hqa_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hq_hqa.c_hq_hqa_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Frame is too small (%d).\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid INFO size (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Not a HQ/HQA frame.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Error decoding frame.\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i8*, i32*, %struct.TYPE_20__*)* @hq_hqa_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hq_hqa_decode_frame(%struct.TYPE_22__* %0, i8* %1, i32* %2, %struct.TYPE_20__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %9, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %11, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bytestream2_init(%struct.TYPE_18__* %23, i32 %26, i32 %29)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_18__* %32)
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %36, i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %42, i32* %5, align 4
  br label %143

43:                                               ; preds = %4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = call i32 @bytestream2_peek_le32(%struct.TYPE_18__* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @MKTAG(i8 signext 73, i8 signext 78, i8 signext 70, i8 signext 79)
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %43
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = call i32 @bytestream2_skip(%struct.TYPE_18__* %52, i32 4)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = call i8* @bytestream2_get_le32(%struct.TYPE_18__* %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %16, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_18__* %59)
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %50
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %64, i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %68, i32* %5, align 4
  br label %143

69:                                               ; preds = %50
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @ff_canopus_parse_info_tag(%struct.TYPE_22__* %70, i32 %74, i32 %75)
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @bytestream2_skip(%struct.TYPE_18__* %78, i32 %79)
  br label %81

81:                                               ; preds = %69, %43
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_18__* %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ult i32 %85, 4
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %89 = load i32, i32* @AV_LOG_ERROR, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %88, i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %92, i32* %5, align 4
  br label %143

93:                                               ; preds = %81
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = call i8* @bytestream2_get_le32(%struct.TYPE_18__* %95)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = and i32 %98, 16777215
  %100 = call i32 @MKTAG(i8 signext 85, i8 signext 86, i8 signext 67, i8 signext 32)
  %101 = and i32 %100, 16777215
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %93
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %106 = load i32, i32* %15, align 4
  %107 = lshr i32 %106, 24
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @hq_decode_frame(%struct.TYPE_19__* %104, %struct.TYPE_21__* %105, i32 %107, i32 %108)
  store i32 %109, i32* %14, align 4
  br label %125

110:                                              ; preds = %93
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @MKTAG(i8 signext 72, i8 signext 81, i8 signext 65, i8 signext 49)
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @hqa_decode_frame(%struct.TYPE_19__* %115, %struct.TYPE_21__* %116, i32 %117)
  store i32 %118, i32* %14, align 4
  br label %124

119:                                              ; preds = %110
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %121 = load i32, i32* @AV_LOG_ERROR, align 4
  %122 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %120, i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %123, i32* %5, align 4
  br label %143

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124, %103
  %126 = load i32, i32* %14, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %130 = load i32, i32* @AV_LOG_ERROR, align 4
  %131 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %129, i32 %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %132 = load i32, i32* %14, align 4
  store i32 %132, i32* %5, align 4
  br label %143

133:                                              ; preds = %125
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 4
  %136 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load i32*, i32** %8, align 8
  store i32 1, i32* %139, align 4
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %133, %128, %119, %87, %63, %35
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @bytestream2_init(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(%struct.TYPE_18__*) #1

declare dso_local i32 @av_log(%struct.TYPE_22__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_peek_le32(%struct.TYPE_18__*) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @bytestream2_skip(%struct.TYPE_18__*, i32) #1

declare dso_local i8* @bytestream2_get_le32(%struct.TYPE_18__*) #1

declare dso_local i32 @ff_canopus_parse_info_tag(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @hq_decode_frame(%struct.TYPE_19__*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @hqa_decode_frame(%struct.TYPE_19__*, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
