; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_redundant_pps_bsf.c_h264_redundant_pps_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_redundant_pps_bsf.c_h264_redundant_pps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32 }

@AV_CODEC_ID_H264 = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to read extradata.\0A\00", align 1
@H264_NAL_PPS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to write extradata.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @h264_redundant_pps_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_redundant_pps_init(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 5
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %5, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 4
  %15 = load i32, i32* @AV_CODEC_ID_H264, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = call i32 @ff_cbs_init(i32* %14, i32 %15, %struct.TYPE_16__* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %122

22:                                               ; preds = %1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i32, i32* @AV_CODEC_ID_H264, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = call i32 @ff_cbs_init(i32* %24, i32 %25, %struct.TYPE_16__* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %122

32:                                               ; preds = %22
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  store i32 26, i32* %34, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %114

41:                                               ; preds = %32
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = call i32 @ff_cbs_read_extradata(i32 %44, %struct.TYPE_15__* %45, %struct.TYPE_17__* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = load i32, i32* @AV_LOG_ERROR, align 4
  %55 = call i32 @av_log(%struct.TYPE_16__* %53, i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %115

56:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %90, %56
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %57
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @H264_NAL_PPS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %63
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @h264_redundant_pps_fixup_pps(%struct.TYPE_14__* %75, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  br label %115

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88, %63
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %57

93:                                               ; preds = %57
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %106 = call i32 @ff_cbs_write_extradata(i32 %101, i32 %104, %struct.TYPE_15__* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %93
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %111 = load i32, i32* @AV_LOG_ERROR, align 4
  %112 = call i32 @av_log(%struct.TYPE_16__* %110, i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %115

113:                                              ; preds = %93
  br label %114

114:                                              ; preds = %113, %32
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %114, %109, %87, %52
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %120 = call i32 @ff_cbs_fragment_reset(i32 %118, %struct.TYPE_15__* %119)
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %115, %30, %20
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @ff_cbs_init(i32*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @ff_cbs_read_extradata(i32, %struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @h264_redundant_pps_fixup_pps(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ff_cbs_write_extradata(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ff_cbs_fragment_reset(i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
