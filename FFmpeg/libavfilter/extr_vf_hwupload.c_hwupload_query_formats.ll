; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hwupload.c_hwupload_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hwupload.c_hwupload_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__**, %struct.TYPE_14__**, i32, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__*, i32* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32*, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"A hardware device reference is required to upload frames to.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @hwupload_query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwupload_query_formats(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  store i32* null, i32** %8, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = load i32, i32* @AV_LOG_ERROR, align 4
  %21 = call i32 @av_log(%struct.TYPE_16__* %19, i32 %20, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %127

24:                                               ; preds = %1
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_13__* @av_buffer_ref(i32 %27)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %30, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = icmp ne %struct.TYPE_13__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %127

38:                                               ; preds = %24
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = call %struct.TYPE_17__* @av_hwdevice_get_hwframe_constraints(%struct.TYPE_13__* %49, i32* null)
  store %struct.TYPE_17__* %50, %struct.TYPE_17__** %5, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = icmp ne %struct.TYPE_17__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* @EINVAL, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %9, align 4
  br label %121

56:                                               ; preds = %38
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %6, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %7, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32* @ff_make_format_list(i32* %63)
  store i32* %64, i32** %8, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = call i32 @AVERROR(i32 %68)
  store i32 %69, i32* %9, align 4
  br label %121

70:                                               ; preds = %56
  %71 = load i32*, i32** %6, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %97

73:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %93, %73
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %74
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ff_add_format(i32** %8, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %121

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %74

96:                                               ; preds = %74
  br label %97

97:                                               ; preds = %96, %70
  %98 = load i32*, i32** %8, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %101, i64 0
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = call i32 @ff_formats_ref(i32* %98, i32* %104)
  store i32 %105, i32* %9, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %97
  %108 = load i32*, i32** %7, align 8
  %109 = call i32* @ff_make_format_list(i32* %108)
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %112, i64 0
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = call i32 @ff_formats_ref(i32* %109, i32* %115)
  store i32 %116, i32* %9, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %107, %97
  br label %121

119:                                              ; preds = %107
  %120 = call i32 @av_hwframe_constraints_free(%struct.TYPE_17__** %5)
  store i32 0, i32* %2, align 4
  br label %127

121:                                              ; preds = %118, %91, %67, %53
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = call i32 @av_buffer_unref(%struct.TYPE_13__** %123)
  %125 = call i32 @av_hwframe_constraints_free(%struct.TYPE_17__** %5)
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %121, %119, %35, %18
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_13__* @av_buffer_ref(i32) #1

declare dso_local %struct.TYPE_17__* @av_hwdevice_get_hwframe_constraints(%struct.TYPE_13__*, i32*) #1

declare dso_local i32* @ff_make_format_list(i32*) #1

declare dso_local i32 @ff_add_format(i32**, i32) #1

declare dso_local i32 @ff_formats_ref(i32*, i32*) #1

declare dso_local i32 @av_hwframe_constraints_free(%struct.TYPE_17__**) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_13__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
