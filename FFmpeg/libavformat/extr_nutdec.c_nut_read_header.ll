; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutdec.c_nut_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutdec.c_nut_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_20__* }

@MAIN_STARTCODE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"No main startcode found.\0A\00", align 1
@STREAM_STARTCODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Not all stream headers found.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"EOF before video frames\0A\00", align 1
@SYNCPOINT_STARTCODE = common dso_local global i64 0, align 8
@INFO_STARTCODE = common dso_local global i64 0, align 8
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@ff_nut_metadata_conv = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @nut_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nut_read_header(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %4, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %5, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %18, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %32, %1
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %21 = load i32, i32* @MAIN_STARTCODE, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @find_startcode(%struct.TYPE_19__* %20, i32 %21, i32 %22)
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = call i32 @av_log(%struct.TYPE_20__* %28, i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %127

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = call i64 @decode_main_header(%struct.TYPE_18__* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %19, label %36

36:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %62, %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = load i32, i32* @STREAM_STARTCODE, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @find_startcode(%struct.TYPE_19__* %44, i32 %45, i32 %46)
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = call i32 @av_log(%struct.TYPE_20__* %52, i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %127

55:                                               ; preds = %43
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %57 = call i64 @decode_stream_header(%struct.TYPE_18__* %56)
  %58 = icmp sge i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %55
  br label %37

63:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %91, %88, %63
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @find_any_startcode(%struct.TYPE_19__* %65, i32 %66)
  store i64 %67, i64* %8, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %69 = call i32 @avio_tell(%struct.TYPE_19__* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i64, i64* %8, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %74 = load i32, i32* @AV_LOG_ERROR, align 4
  %75 = call i32 @av_log(%struct.TYPE_20__* %73, i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %127

76:                                               ; preds = %64
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @SYNCPOINT_STARTCODE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %94

84:                                               ; preds = %76
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @INFO_STARTCODE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %64

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %93 = call i32 @decode_info_header(%struct.TYPE_18__* %92)
  br label %64

94:                                               ; preds = %80
  %95 = load i32, i32* %6, align 4
  %96 = sub nsw i32 %95, 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 4
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %94
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %109 = call i32 @avio_tell(%struct.TYPE_19__* %108)
  store i32 %109, i32* %9, align 4
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %111 = call i32 @find_and_decode_index(%struct.TYPE_18__* %110)
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @SEEK_SET, align 4
  %115 = call i32 @avio_seek(%struct.TYPE_19__* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %107, %94
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @SYNCPOINT_STARTCODE, align 8
  %121 = icmp eq i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @av_assert0(i32 %122)
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %125 = load i32, i32* @ff_nut_metadata_conv, align 4
  %126 = call i32 @ff_metadata_conv_ctx(%struct.TYPE_20__* %124, i32* null, i32 %125)
  store i32 0, i32* %2, align 4
  br label %131

127:                                              ; preds = %72, %51, %27
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %129 = call i32 @nut_read_close(%struct.TYPE_20__* %128)
  %130 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %127, %116
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @find_startcode(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i64 @decode_main_header(%struct.TYPE_18__*) #1

declare dso_local i64 @decode_stream_header(%struct.TYPE_18__*) #1

declare dso_local i64 @find_any_startcode(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @avio_tell(%struct.TYPE_19__*) #1

declare dso_local i32 @decode_info_header(%struct.TYPE_18__*) #1

declare dso_local i32 @find_and_decode_index(%struct.TYPE_18__*) #1

declare dso_local i32 @avio_seek(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @ff_metadata_conv_ctx(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @nut_read_close(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
