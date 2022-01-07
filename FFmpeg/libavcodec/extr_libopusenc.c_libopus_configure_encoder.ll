; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopusenc.c_libopus_configure_encoder.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopusenc.c_libopus_configure_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Quality-based encoding not supported, please specify a bitrate and VBR setting.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OPUS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to set bitrate: %s\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to set complexity: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Unable to set VBR: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Unable to set constrained VBR: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Unable to set expected packet loss percentage: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Unable to set maximum bandwidth: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, %struct.TYPE_6__*)* @libopus_configure_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libopus_configure_encoder(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = load i32, i32* @AV_LOG_ERROR, align 4
  %16 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %14, i32 %15, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = call i32 @AVERROR(i32 %17)
  store i32 %18, i32* %4, align 4
  br label %130

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @OPUS_SET_BITRATE(i32 %23)
  %25 = call i32 @opus_multistream_encoder_ctl(i32* %20, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @OPUS_OK, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @opus_strerror(i32 %32)
  %34 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %30, i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %130

36:                                               ; preds = %19
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @OPUS_SET_COMPLEXITY(i32 %40)
  %42 = call i32 @opus_multistream_encoder_ctl(i32* %37, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @OPUS_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = load i32, i32* @AV_LOG_WARNING, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @opus_strerror(i32 %49)
  %51 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %47, i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %36
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @OPUS_SET_VBR(i32 %60)
  %62 = call i32 @opus_multistream_encoder_ctl(i32* %53, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @OPUS_OK, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %52
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = load i32, i32* @AV_LOG_WARNING, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @opus_strerror(i32 %69)
  %71 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %67, i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %66, %52
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 2
  %78 = zext i1 %77 to i32
  %79 = call i32 @OPUS_SET_VBR_CONSTRAINT(i32 %78)
  %80 = call i32 @opus_multistream_encoder_ctl(i32* %73, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @OPUS_OK, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %72
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = load i32, i32* @AV_LOG_WARNING, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @opus_strerror(i32 %87)
  %89 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %85, i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %84, %72
  %91 = load i32*, i32** %6, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @OPUS_SET_PACKET_LOSS_PERC(i32 %94)
  %96 = call i32 @opus_multistream_encoder_ctl(i32* %91, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @OPUS_OK, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %90
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = load i32, i32* @AV_LOG_WARNING, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @opus_strerror(i32 %103)
  %105 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %101, i32 %102, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %100, %90
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load i32*, i32** %6, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @OPUS_SET_MAX_BANDWIDTH(i32 %115)
  %117 = call i32 @opus_multistream_encoder_ctl(i32* %112, i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @OPUS_OK, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %111
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %123 = load i32, i32* @AV_LOG_WARNING, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @opus_strerror(i32 %124)
  %126 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %122, i32 %123, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %121, %111
  br label %128

128:                                              ; preds = %127, %106
  %129 = load i32, i32* @OPUS_OK, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %29, %13
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @opus_multistream_encoder_ctl(i32*, i32) #1

declare dso_local i32 @OPUS_SET_BITRATE(i32) #1

declare dso_local i32 @opus_strerror(i32) #1

declare dso_local i32 @OPUS_SET_COMPLEXITY(i32) #1

declare dso_local i32 @OPUS_SET_VBR(i32) #1

declare dso_local i32 @OPUS_SET_VBR_CONSTRAINT(i32) #1

declare dso_local i32 @OPUS_SET_PACKET_LOSS_PERC(i32) #1

declare dso_local i32 @OPUS_SET_MAX_BANDWIDTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
