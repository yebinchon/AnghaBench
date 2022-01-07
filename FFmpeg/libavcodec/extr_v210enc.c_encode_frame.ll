; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v210enc.c_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v210enc.c_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error getting output packet.\0A\00", align 1
@AV_PIX_FMT_YUV422P10 = common dso_local global i64 0, align 8
@AV_PIX_FMT_YUV422P = common dso_local global i64 0, align 8
@AV_FRAME_DATA_A53_CC = common dso_local global i32 0, align 4
@AV_PKT_DATA_A53_CC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_FRAME_DATA_AFD = common dso_local global i32 0, align 4
@AV_PKT_DATA_AFD = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_18__*, %struct.TYPE_20__*, i32*)* @encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_frame(%struct.TYPE_21__* %0, %struct.TYPE_18__* %1, %struct.TYPE_20__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 47
  %21 = sdiv i32 %20, 48
  %22 = mul nsw i32 %21, 48
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = mul nsw i32 %23, 8
  %25 = sdiv i32 %24, 3
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = mul nsw i32 %35, %36
  %38 = call i32 @ff_alloc_packet2(%struct.TYPE_21__* %26, %struct.TYPE_18__* %27, i32 %32, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %4
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = call i32 @av_log(%struct.TYPE_21__* %42, i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %5, align 4
  br label %143

46:                                               ; preds = %4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %14, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AV_PIX_FMT_YUV422P10, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %59 = call i32 @v210_enc_10(%struct.TYPE_21__* %56, i32* %57, %struct.TYPE_20__* %58)
  br label %72

60:                                               ; preds = %46
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AV_PIX_FMT_YUV422P, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %70 = call i32 @v210_enc_8(%struct.TYPE_21__* %67, i32* %68, %struct.TYPE_20__* %69)
  br label %71

71:                                               ; preds = %66, %60
  br label %72

72:                                               ; preds = %71, %55
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %74 = load i32, i32* @AV_FRAME_DATA_A53_CC, align 4
  %75 = call %struct.TYPE_19__* @av_frame_get_side_data(%struct.TYPE_20__* %73, i32 %74)
  store %struct.TYPE_19__* %75, %struct.TYPE_19__** %12, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %77 = icmp ne %struct.TYPE_19__* %76, null
  br i1 %77, label %78, label %104

78:                                               ; preds = %72
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %78
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %85 = load i32, i32* @AV_PKT_DATA_A53_CC, align 4
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32* @av_packet_new_side_data(%struct.TYPE_18__* %84, i32 %85, i64 %88)
  store i32* %89, i32** %15, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %83
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = call i32 @AVERROR(i32 %93)
  store i32 %94, i32* %5, align 4
  br label %143

95:                                               ; preds = %83
  %96 = load i32*, i32** %15, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @memcpy(i32* %96, i32 %99, i64 %102)
  br label %104

104:                                              ; preds = %95, %78, %72
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %106 = load i32, i32* @AV_FRAME_DATA_AFD, align 4
  %107 = call %struct.TYPE_19__* @av_frame_get_side_data(%struct.TYPE_20__* %105, i32 %106)
  store %struct.TYPE_19__* %107, %struct.TYPE_19__** %12, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %109 = icmp ne %struct.TYPE_19__* %108, null
  br i1 %109, label %110, label %136

110:                                              ; preds = %104
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %110
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %117 = load i32, i32* @AV_PKT_DATA_AFD, align 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32* @av_packet_new_side_data(%struct.TYPE_18__* %116, i32 %117, i64 %120)
  store i32* %121, i32** %16, align 8
  %122 = load i32*, i32** %16, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %115
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = call i32 @AVERROR(i32 %125)
  store i32 %126, i32* %5, align 4
  br label %143

127:                                              ; preds = %115
  %128 = load i32*, i32** %16, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @memcpy(i32* %128, i32 %131, i64 %134)
  br label %136

136:                                              ; preds = %127, %110, %104
  %137 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load i32*, i32** %9, align 8
  store i32 1, i32* %142, align 4
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %136, %124, %92, %41
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_21__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @v210_enc_10(%struct.TYPE_21__*, i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @v210_enc_8(%struct.TYPE_21__*, i32*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @av_frame_get_side_data(%struct.TYPE_20__*, i32) #1

declare dso_local i32* @av_packet_new_side_data(%struct.TYPE_18__*, i32, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
