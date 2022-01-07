; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_biquads.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_biquads.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_22__*, %struct.TYPE_27__**, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_28__*, i32, %struct.TYPE_24__*, i32*, i32)* }
%struct.TYPE_24__ = type { %struct.TYPE_26__*, %struct.TYPE_26__* }
%struct.TYPE_25__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_26__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@filter_channel = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Channel %d clipping %d times. Please reduce gain.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_26__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_24__, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_28__* %14, %struct.TYPE_28__** %6, align 8
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %7, align 8
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %20, i64 0
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  store %struct.TYPE_27__* %22, %struct.TYPE_27__** %8, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %24 = call i64 @av_frame_is_writable(%struct.TYPE_26__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_26__* %27, %struct.TYPE_26__** %9, align 8
  br label %44

28:                                               ; preds = %2
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_26__* @ff_get_audio_buffer(%struct.TYPE_27__* %29, i32 %32)
  store %struct.TYPE_26__* %33, %struct.TYPE_26__** %9, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %35 = icmp ne %struct.TYPE_26__* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = call i32 @av_frame_free(%struct.TYPE_26__** %5)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %113

40:                                               ; preds = %28
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %43 = call i32 @av_frame_copy_props(%struct.TYPE_26__* %41, %struct.TYPE_26__* %42)
  br label %44

44:                                               ; preds = %40, %26
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  store %struct.TYPE_26__* %45, %struct.TYPE_26__** %46, align 8
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  store %struct.TYPE_26__* %47, %struct.TYPE_26__** %48, align 8
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_28__*, i32, %struct.TYPE_24__*, i32*, i32)*, i32 (%struct.TYPE_28__*, i32, %struct.TYPE_24__*, i32*, i32)** %52, align 8
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %55 = load i32, i32* @filter_channel, align 4
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %60 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_28__* %59)
  %61 = call i32 @FFMIN(i32 %58, i32 %60)
  %62 = call i32 %53(%struct.TYPE_28__* %54, i32 %55, %struct.TYPE_24__* %10, i32* null, i32 %61)
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %100, %44
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %103

69:                                               ; preds = %63
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %69
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %81 = load i32, i32* @AV_LOG_WARNING, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @av_log(%struct.TYPE_28__* %80, i32 %81, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %82, i64 %90)
  br label %92

92:                                               ; preds = %79, %69
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %63

103:                                              ; preds = %63
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %106 = icmp ne %struct.TYPE_26__* %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = call i32 @av_frame_free(%struct.TYPE_26__** %5)
  br label %109

109:                                              ; preds = %107, %103
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %112 = call i32 @ff_filter_frame(%struct.TYPE_27__* %110, %struct.TYPE_26__* %111)
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %109, %36
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @ff_get_audio_buffer(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_26__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_28__*) #1

declare dso_local i32 @av_log(%struct.TYPE_28__*, i32, i8*, i32, i64) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
