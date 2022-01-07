; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hwupload.c_hwupload_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hwupload.c_hwupload_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_15__*, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_13__** }
%struct.TYPE_11__ = type { %struct.TYPE_15__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"No input hwframe context.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Surface format is %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @hwupload_config_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwupload_config_output(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %13, i64 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %5, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %6, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = call i32 @av_buffer_unref(%struct.TYPE_15__** %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = icmp ne %struct.TYPE_15__* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %35, i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %156

40:                                               ; preds = %29
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = call i8* @av_buffer_ref(%struct.TYPE_15__* %43)
  %45 = bitcast i8* %44 to %struct.TYPE_15__*
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = icmp ne %struct.TYPE_15__* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %40
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = call i32 @AVERROR(i32 %53)
  store i32 %54, i32* %2, align 4
  br label %156

55:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %156

56:                                               ; preds = %1
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.TYPE_15__* @av_hwframe_ctx_alloc(i32 %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = icmp ne %struct.TYPE_15__* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = call i32 @AVERROR(i32 %68)
  store i32 %69, i32* %2, align 4
  br label %156

70:                                               ; preds = %56
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.TYPE_12__*
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = load i32, i32* @AV_LOG_DEBUG, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @av_get_pix_fmt_name(i64 %83)
  %85 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %79, i32 %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  store i64 %88, i64* %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  store i64 %95, i64* %99, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 4
  store i32 %102, i32* %106, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  store i32 %109, i32* %113, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sge i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %70
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 2, %121
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 2
  store i64 %122, i64* %126, align 8
  br label %127

127:                                              ; preds = %118, %70
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = call i32 @av_hwframe_ctx_init(%struct.TYPE_15__* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %151

135:                                              ; preds = %127
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = call i8* @av_buffer_ref(%struct.TYPE_15__* %138)
  %140 = bitcast i8* %139 to %struct.TYPE_15__*
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  store %struct.TYPE_15__* %140, %struct.TYPE_15__** %142, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = icmp ne %struct.TYPE_15__* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %135
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = call i32 @AVERROR(i32 %148)
  store i32 %149, i32* %7, align 4
  br label %151

150:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %156

151:                                              ; preds = %147, %134
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = call i32 @av_buffer_unref(%struct.TYPE_15__** %153)
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %151, %150, %67, %55, %52, %34
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @av_buffer_unref(%struct.TYPE_15__**) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_buffer_ref(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @av_hwframe_ctx_alloc(i32) #1

declare dso_local i32 @av_get_pix_fmt_name(i64) #1

declare dso_local i32 @av_hwframe_ctx_init(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
