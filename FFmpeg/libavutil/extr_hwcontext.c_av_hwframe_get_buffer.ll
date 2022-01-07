; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext.c_av_hwframe_get_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext.c_av_hwframe_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32, %struct.TYPE_20__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)* }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Failed to map frame into derived frame context: %d.\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_hwframe_get_buffer(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %8, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %20 = icmp ne %struct.TYPE_20__* %19, null
  br i1 %20, label %21, label %78

21:                                               ; preds = %3
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %28 = call i8* @av_buffer_ref(%struct.TYPE_20__* %27)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %129

38:                                               ; preds = %21
  %39 = call %struct.TYPE_19__* (...) @av_frame_alloc()
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %10, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %41 = icmp ne %struct.TYPE_19__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %129

45:                                               ; preds = %38
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %52 = call i32 @av_hwframe_get_buffer(%struct.TYPE_20__* %50, %struct.TYPE_19__* %51, i32 0)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = call i32 @av_frame_free(%struct.TYPE_19__** %10)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %129

58:                                               ; preds = %45
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @av_hwframe_map(%struct.TYPE_19__* %59, %struct.TYPE_19__* %60, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %58
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @av_log(%struct.TYPE_18__* %70, i32 %71, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = call i32 @av_frame_free(%struct.TYPE_19__** %10)
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %129

76:                                               ; preds = %58
  %77 = call i32 @av_frame_free(%struct.TYPE_19__** %10)
  store i32 0, i32* %4, align 4
  br label %129

78:                                               ; preds = %3
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)** %84, align 8
  %86 = icmp ne i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* @ENOSYS, align 4
  %89 = call i32 @AVERROR(i32 %88)
  store i32 %89, i32* %4, align 4
  br label %129

90:                                               ; preds = %78
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @EINVAL, align 4
  %97 = call i32 @AVERROR(i32 %96)
  store i32 %97, i32* %4, align 4
  br label %129

98:                                               ; preds = %90
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %100 = call i8* @av_buffer_ref(%struct.TYPE_20__* %99)
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %98
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = call i32 @AVERROR(i32 %108)
  store i32 %109, i32* %4, align 4
  br label %129

110:                                              ; preds = %98
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)** %116, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %120 = call i32 %117(%struct.TYPE_18__* %118, %struct.TYPE_19__* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %110
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = call i32 @av_buffer_unref(i8** %125)
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %4, align 4
  br label %129

128:                                              ; preds = %110
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %123, %107, %95, %87, %76, %69, %55, %42, %35
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i8* @av_buffer_ref(%struct.TYPE_20__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_19__* @av_frame_alloc(...) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_19__**) #1

declare dso_local i32 @av_hwframe_map(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, i32) #1

declare dso_local i32 @av_buffer_unref(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
