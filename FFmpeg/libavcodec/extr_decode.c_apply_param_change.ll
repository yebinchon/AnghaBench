; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_decode.c_apply_param_change.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_decode.c_apply_param_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, i64, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@AV_PKT_DATA_PARAM_CHANGE = common dso_local global i32 0, align 4
@AV_CODEC_CAP_PARAM_CHANGE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"This decoder does not support parameter changes, but PARAM_CHANGE side data was sent to it.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid channel count\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT = common dso_local global i32 0, align 4
@AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid sample rate\00", align 1
@AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"PARAM_CHANGE side data too small.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Error applying parameter changes.\0A\00", align 1
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @apply_param_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_param_change(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @AV_PKT_DATA_PARAM_CHANGE, align 4
  %13 = call i32* @av_packet_get_side_data(i32* %11, i32 %12, i32* %6)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %164

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AV_CODEC_CAP_PARAM_CHANGE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = load i32, i32* @AV_LOG_ERROR, align 4
  %29 = call i32 @av_log(%struct.TYPE_7__* %27, i32 %28, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = call i32 @AVERROR(i32 %30)
  store i32 %31, i32* %7, align 4
  br label %147

32:                                               ; preds = %17
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %142

36:                                               ; preds = %32
  %37 = call i64 @bytestream_get_le32(i32** %8)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 4
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %142

49:                                               ; preds = %45
  %50 = call i64 @bytestream_get_le32(i32** %8)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @INT_MAX, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53, %49
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = call i32 @av_log(%struct.TYPE_7__* %58, i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %61, i32* %7, align 4
  br label %147

62:                                               ; preds = %53
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 5
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %62, %36
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 8
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %142

77:                                               ; preds = %73
  %78 = call i32 @bytestream_get_le64(i32** %8)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sub nsw i32 %81, 8
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %77, %68
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %111

88:                                               ; preds = %83
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %142

92:                                               ; preds = %88
  %93 = call i64 @bytestream_get_le32(i32** %8)
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %10, align 8
  %95 = icmp sle i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @INT_MAX, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96, %92
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = load i32, i32* @AV_LOG_ERROR, align 4
  %103 = call i32 @av_log(%struct.TYPE_7__* %101, i32 %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %104, i32* %7, align 4
  br label %147

105:                                              ; preds = %96
  %106 = load i64, i64* %10, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sub nsw i32 %109, 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %105, %83
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %141

116:                                              ; preds = %111
  %117 = load i32, i32* %6, align 4
  %118 = icmp slt i32 %117, 8
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %142

120:                                              ; preds = %116
  %121 = call i64 @bytestream_get_le32(i32** %8)
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  %124 = call i64 @bytestream_get_le32(i32** %8)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sub nsw i32 %127, 8
  store i32 %128, i32* %6, align 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @ff_set_dimensions(%struct.TYPE_7__* %129, i64 %132, i64 %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %120
  br label %147

140:                                              ; preds = %120
  br label %141

141:                                              ; preds = %140, %111
  store i32 0, i32* %3, align 4
  br label %164

142:                                              ; preds = %119, %91, %76, %48, %35
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = load i32, i32* @AV_LOG_ERROR, align 4
  %145 = call i32 @av_log(%struct.TYPE_7__* %143, i32 %144, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %142, %139, %100, %57, %26
  %148 = load i32, i32* %7, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %152 = load i32, i32* @AV_LOG_ERROR, align 4
  %153 = call i32 @av_log(%struct.TYPE_7__* %151, i32 %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @AV_EF_EXPLODE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %150
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %3, align 4
  br label %164

162:                                              ; preds = %150
  br label %163

163:                                              ; preds = %162, %147
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %160, %141, %16
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32* @av_packet_get_side_data(i32*, i32, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @bytestream_get_le32(i32**) #1

declare dso_local i32 @bytestream_get_le64(i32**) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_7__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
