; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_utils.c_handle_buffered_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_utils.c_handle_buffered_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }

@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"[FIFO] add %s to out_fifo\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"[FIFO] read from out_fifo to output\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"[end conversion]\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"[copy] %s to output\0A\00", align 1
@REMAP_OUT_COPY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*)* @handle_buffered_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_buffered_output(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %10 = icmp ne %struct.TYPE_11__* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @av_audio_fifo_size(i32 %14)
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br i1 %19, label %20, label %75

20:                                               ; preds = %17
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %20, %11, %3
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = load i32, i32* @AV_LOG_TRACE, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %32, i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ff_audio_data_add_to_fifo(i32 %40, %struct.TYPE_11__* %41, i32 0, i64 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %118

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = icmp ne %struct.TYPE_11__* %52, null
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = load i32, i32* @AV_LOG_TRACE, align 4
  %62 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %60, i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = load i32, i32* @AV_LOG_TRACE, align 4
  %65 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %63, i32 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ff_audio_data_read_from_fifo(i32 %68, %struct.TYPE_11__* %69, i64 %72)
  store i32 %73, i32* %4, align 4
  br label %118

74:                                               ; preds = %54, %51
  br label %114

75:                                               ; preds = %20, %17
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %77 = icmp ne %struct.TYPE_11__* %76, null
  br i1 %77, label %78, label %113

78:                                               ; preds = %75
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = load i32, i32* @AV_LOG_TRACE, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %79, i32 %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @REMAP_OUT_COPY, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %78
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  br label %98

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %97, %94
  %99 = phi i32* [ %96, %94 ], [ null, %97 ]
  %100 = call i32 @ff_audio_data_copy(%struct.TYPE_11__* %87, %struct.TYPE_11__* %88, i32* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %4, align 4
  br label %118

105:                                              ; preds = %98
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %107 = load i32, i32* @AV_LOG_TRACE, align 4
  %108 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %106, i32 %107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %4, align 4
  br label %118

113:                                              ; preds = %75
  br label %114

114:                                              ; preds = %113, %74
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = load i32, i32* @AV_LOG_TRACE, align 4
  %117 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %115, i32 %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %114, %105, %103, %59, %48
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @av_audio_fifo_size(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32 @ff_audio_data_add_to_fifo(i32, %struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @ff_audio_data_read_from_fifo(i32, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @ff_audio_data_copy(%struct.TYPE_11__*, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
