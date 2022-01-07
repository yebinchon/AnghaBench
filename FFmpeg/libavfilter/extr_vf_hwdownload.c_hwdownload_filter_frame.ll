; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hwdownload.c_hwdownload_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hwdownload.c_hwdownload_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__**, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Input frames must have hardware context.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Input frame is not the in the configured hwframe context.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to download frame: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_22__*)* @hwdownload_filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwdownload_filter_frame(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_24__* %13, %struct.TYPE_24__** %6, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %16, i64 0
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %7, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %9, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = icmp ne %struct.TYPE_19__* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %26, %2
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %32, i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %10, align 4
  br label %109

37:                                               ; preds = %26
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = bitcast %struct.TYPE_20__* %40 to i8*
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %41, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %49, i32 %50, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = call i32 @AVERROR(i32 %52)
  store i32 %53, i32* %10, align 4
  br label %109

54:                                               ; preds = %37
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_22__* @ff_get_video_buffer(%struct.TYPE_23__* %55, i32 %60, i32 %65)
  store %struct.TYPE_22__* %66, %struct.TYPE_22__** %9, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %68 = icmp ne %struct.TYPE_22__* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %54
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = call i32 @AVERROR(i32 %70)
  store i32 %71, i32* %10, align 4
  br label %109

72:                                               ; preds = %54
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %75 = call i32 @av_hwframe_transfer_data(%struct.TYPE_22__* %73, %struct.TYPE_22__* %74, i32 0)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %79, i32 %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %109

83:                                               ; preds = %72
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %96 = call i32 @av_frame_copy_props(%struct.TYPE_22__* %94, %struct.TYPE_22__* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %83
  br label %109

100:                                              ; preds = %83
  %101 = call i32 @av_frame_free(%struct.TYPE_22__** %5)
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %104, i64 0
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %105, align 8
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %108 = call i32 @ff_filter_frame(%struct.TYPE_23__* %106, %struct.TYPE_22__* %107)
  store i32 %108, i32* %3, align 4
  br label %113

109:                                              ; preds = %99, %78, %69, %48, %31
  %110 = call i32 @av_frame_free(%struct.TYPE_22__** %5)
  %111 = call i32 @av_frame_free(%struct.TYPE_22__** %9)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %109, %100
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_22__* @ff_get_video_buffer(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @av_hwframe_transfer_data(%struct.TYPE_22__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_22__**) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
