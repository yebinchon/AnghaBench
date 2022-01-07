; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_scale_qsv.c_qsvscale_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_scale_qsv.c_qsvscale_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__**, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__, i64* }
%struct.TYPE_16__ = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@MFX_WRN_DEVICE_BUSY = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Error during scaling\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@MFX_WRN_IN_EXECUTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Error synchronizing the operation: %d\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @qsvscale_filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsvscale_filter_frame(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %6, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %7, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %21, i64 0
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %8, align 8
  store i32* null, i32** %9, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %11, align 8
  store i32 0, i32* %12, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_18__* @ff_get_video_buffer(%struct.TYPE_19__* %24, i32 %27, i32 %30)
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %11, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %33 = icmp ne %struct.TYPE_18__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %12, align 4
  br label %152

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %61, %37
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 3
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 3
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 3
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 3
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = call i64 @MFXVideoVPP_RunFrameVPPAsync(i32 %41, i32* %47, i32* %53, i32* null, i32** %9)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @MFX_WRN_DEVICE_BUSY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %38
  %59 = call i32 @av_usleep(i32 1)
  br label %60

60:                                               ; preds = %58, %38
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @MFX_WRN_DEVICE_BUSY, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %38, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %10, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32*, i32** %9, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %72, i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %75, i32* %12, align 4
  br label %152

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %83, %76
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = call i64 @MFXVideoCORE_SyncOperation(i32 %80, i32* %81, i32 1000)
  store i64 %82, i64* %10, align 8
  br label %83

83:                                               ; preds = %77
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @MFX_WRN_IN_EXECUTION, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %77, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %10, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %92 = load i32, i32* @AV_LOG_ERROR, align 4
  %93 = load i64, i64* %10, align 8
  %94 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %91, i32 %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %93)
  %95 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %95, i32* %12, align 4
  br label %152

96:                                               ; preds = %87
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %99 = call i32 @av_frame_copy_props(%struct.TYPE_18__* %97, %struct.TYPE_18__* %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %152

103:                                              ; preds = %96
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %124, %127
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %128, %131
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %137, %140
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %141, %144
  %146 = load i32, i32* @INT_MAX, align 4
  %147 = call i32 @av_reduce(i64* %116, i64* %119, i32 %132, i32 %145, i32 %146)
  %148 = call i32 @av_frame_free(%struct.TYPE_18__** %5)
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %151 = call i32 @ff_filter_frame(%struct.TYPE_19__* %149, %struct.TYPE_18__* %150)
  store i32 %151, i32* %3, align 4
  br label %156

152:                                              ; preds = %102, %90, %71, %34
  %153 = call i32 @av_frame_free(%struct.TYPE_18__** %5)
  %154 = call i32 @av_frame_free(%struct.TYPE_18__** %11)
  %155 = load i32, i32* %12, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %152, %103
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.TYPE_18__* @ff_get_video_buffer(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @MFXVideoVPP_RunFrameVPPAsync(i32, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @av_usleep(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, ...) #1

declare dso_local i64 @MFXVideoCORE_SyncOperation(i32, i32*, i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @av_reduce(i64*, i64*, i32, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_18__**) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
