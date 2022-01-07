; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_overlay_qsv.c_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_overlay_qsv.c_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_14__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__**, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.TYPE_12__ = type { i64 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Output is of %s.\0A\00", align 1
@AV_PIX_FMT_QSV = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Mixing hardware and software pixel formats is not supported.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"Inputs with different underlying QSV devices are forbidden.\0A\00", align 1
@VAR_MW = common dso_local global i64 0, align 8
@VAR_MH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @config_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_output(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %4, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %5, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %19, i64 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %6, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %24, i64 1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %7, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = load i32, i32* @AV_LOG_DEBUG, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @av_get_pix_fmt_name(i64 %31)
  %33 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %27, i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AV_PIX_FMT_QSV, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %1
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AV_PIX_FMT_QSV, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %39, %1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AV_PIX_FMT_QSV, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AV_PIX_FMT_QSV, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51, %39
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %58, i32 %59, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = call i32 @AVERROR(i32 %61)
  store i32 %62, i32* %2, align 4
  br label %138

63:                                               ; preds = %51, %45
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AV_PIX_FMT_QSV, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %63
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %9, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 5
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %10, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %69
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = load i32, i32* @AV_LOG_ERROR, align 4
  %92 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %90, i32 %91, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = call i32 @AVERROR(i32 %93)
  store i32 %94, i32* %2, align 4
  br label %138

95:                                               ; preds = %69
  br label %96

96:                                               ; preds = %95, %63
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @VAR_MW, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @VAR_MH, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @av_inv_q(i32 %121)
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %126 = call i32 @init_framesync(%struct.TYPE_14__* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %97
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %2, align 4
  br label %138

131:                                              ; preds = %97
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = call i32 @ff_qsvvpp_create(%struct.TYPE_14__* %132, i32* %134, i32* %136)
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %131, %129, %89, %57
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i32 @av_get_pix_fmt_name(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_inv_q(i32) #1

declare dso_local i32 @init_framesync(%struct.TYPE_14__*) #1

declare dso_local i32 @ff_qsvvpp_create(%struct.TYPE_14__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
