; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_qsvvpp.c_ff_qsvvpp_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_qsvvpp.c_ff_qsvvpp_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 (%struct.TYPE_26__*, %struct.TYPE_21__*)*, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__** }
%struct.TYPE_25__ = type { %struct.TYPE_21__*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to submit frame on input[%d]\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to query an output frame.\0A\00", align 1
@MFX_WRN_DEVICE_BUSY = common dso_local global i32 0, align 4
@MFX_ERR_MORE_SURFACE = common dso_local global i32 0, align 4
@MFX_ERR_MORE_DATA = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Sync failed.\0A\00", align 1
@default_tb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_qsvvpp_filter_frame(%struct.TYPE_24__* %0, %struct.TYPE_26__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  store %struct.TYPE_27__* %17, %struct.TYPE_27__** %8, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %20, i64 0
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  store %struct.TYPE_26__* %22, %struct.TYPE_26__** %9, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call %struct.TYPE_25__* @submit_frame(%struct.TYPE_24__* %23, %struct.TYPE_26__* %24, i32* %25)
  store %struct.TYPE_25__* %26, %struct.TYPE_25__** %11, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %28 = icmp ne %struct.TYPE_25__* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %3
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %33 = call i32 @FF_INLINK_IDX(%struct.TYPE_26__* %32)
  %34 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %30, i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %4, align 4
  br label %138

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %132, %37
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %41 = call %struct.TYPE_25__* @query_frame(%struct.TYPE_24__* %39, %struct.TYPE_26__* %40)
  store %struct.TYPE_25__* %41, %struct.TYPE_25__** %12, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %43 = icmp ne %struct.TYPE_25__* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %46 = load i32, i32* @AV_LOG_ERROR, align 4
  %47 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %45, i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = call i32 @AVERROR(i32 %48)
  store i32 %49, i32* %4, align 4
  br label %138

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %68, %50
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %56, align 8
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %59, align 8
  %61 = call i32 @MFXVideoVPP_RunFrameVPPAsync(i32 %54, %struct.TYPE_22__* %57, %struct.TYPE_22__* %60, i32* null, i32* %10)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @MFX_WRN_DEVICE_BUSY, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = call i32 @av_usleep(i32 500)
  br label %67

67:                                               ; preds = %65, %51
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @MFX_WRN_DEVICE_BUSY, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %51, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @MFX_ERR_MORE_SURFACE, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @MFX_ERR_MORE_DATA, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @EAGAIN, align 4
  %85 = call i32 @AVERROR(i32 %84)
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %83, %79
  br label %136

87:                                               ; preds = %75, %72
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i64 @MFXVideoCORE_SyncOperation(i32 %90, i32 %91, i32 1000)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %96 = load i32, i32* @AV_LOG_WARNING, align 4
  %97 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %95, i32 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %87
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @default_tb, align 4
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @av_rescale_q(i32 %104, i32 %105, i32 %108)
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  store i32 %109, i32* %113, align 4
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  %116 = load i32 (%struct.TYPE_26__*, %struct.TYPE_21__*)*, i32 (%struct.TYPE_26__*, %struct.TYPE_21__*)** %115, align 8
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %119, align 8
  %121 = call i32 %116(%struct.TYPE_26__* %117, %struct.TYPE_21__* %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %98
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 0
  %127 = call i32 @av_frame_free(%struct.TYPE_21__** %126)
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %13, align 4
  br label %136

129:                                              ; preds = %98
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 0
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %131, align 8
  br label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @MFX_ERR_MORE_SURFACE, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %38, label %136

136:                                              ; preds = %132, %124, %86
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %136, %44, %29
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.TYPE_25__* @submit_frame(%struct.TYPE_24__*, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_27__*, i32, i8*, ...) #1

declare dso_local i32 @FF_INLINK_IDX(%struct.TYPE_26__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_25__* @query_frame(%struct.TYPE_24__*, %struct.TYPE_26__*) #1

declare dso_local i32 @MFXVideoVPP_RunFrameVPPAsync(i32, %struct.TYPE_22__*, %struct.TYPE_22__*, i32*, i32*) #1

declare dso_local i32 @av_usleep(i32) #1

declare dso_local i64 @MFXVideoCORE_SyncOperation(i32, i32, i32) #1

declare dso_local i32 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_21__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
