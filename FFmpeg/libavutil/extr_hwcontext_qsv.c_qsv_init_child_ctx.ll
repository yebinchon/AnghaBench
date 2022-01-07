; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_qsv.c_qsv_init_child_ctx.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_qsv.c_qsv_init_child_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_34__*, i8*, i8*, i32, i32, %struct.TYPE_29__*, %struct.TYPE_27__* }
%struct.TYPE_34__ = type { i32, i64, i64*, i64 }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, i64, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_26__*, %struct.TYPE_31__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32*, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Cannot create a non-opaque internal surface pool without a hardware handle\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Error initializing a child device context\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Error initializing a child frames context\0A\00", align 1
@AV_HWDEVICE_TYPE_DXVA2 = common dso_local global i64 0, align 8
@AV_HWDEVICE_TYPE_VAAPI = common dso_local global i64 0, align 8
@DXVA2_VideoDecoderRenderTarget = common dso_local global i64 0, align 8
@DXVA2_VideoProcessorRenderTarget = common dso_local global i64 0, align 8
@MFX_MEMTYPE_VIDEO_MEMORY_DECODER_TARGET = common dso_local global i8* null, align 8
@MFX_MEMTYPE_VIDEO_MEMORY_PROCESSOR_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*)* @qsv_init_child_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsv_init_child_ctx(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  store %struct.TYPE_34__* %15, %struct.TYPE_34__** %4, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 7
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  store %struct.TYPE_32__* %20, %struct.TYPE_32__** %5, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  store %struct.TYPE_33__* %27, %struct.TYPE_33__** %6, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %8, align 8
  store i32 0, i32* %12, align 4
  %28 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %1
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = call i32 @av_log(%struct.TYPE_24__* %33, i32 %34, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %117

38:                                               ; preds = %1
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_26__* @av_hwdevice_ctx_alloc(i32 %41)
  store %struct.TYPE_26__* %42, %struct.TYPE_26__** %7, align 8
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %44 = icmp ne %struct.TYPE_26__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %117

48:                                               ; preds = %38
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %52, %struct.TYPE_25__** %9, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %54 = call i32 @av_hwdevice_ctx_init(%struct.TYPE_26__* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = call i32 @av_log(%struct.TYPE_24__* %58, i32 %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %113

61:                                               ; preds = %48
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %63 = call %struct.TYPE_26__* @av_hwframe_ctx_alloc(%struct.TYPE_26__* %62)
  store %struct.TYPE_26__* %63, %struct.TYPE_26__** %8, align 8
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %65 = icmp ne %struct.TYPE_26__* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = call i32 @AVERROR(i32 %67)
  store i32 %68, i32* %12, align 4
  br label %113

69:                                               ; preds = %61
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %73, %struct.TYPE_24__** %10, align 8
  %74 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 3
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @FFALIGN(i8* %91, i32 16)
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @FFALIGN(i8* %97, i32 16)
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %102 = call i32 @av_hwframe_ctx_init(%struct.TYPE_26__* %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %69
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %107 = load i32, i32* @AV_LOG_ERROR, align 4
  %108 = call i32 @av_log(%struct.TYPE_24__* %106, i32 %107, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %113

109:                                              ; preds = %69
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %111, i32 0, i32 0
  store %struct.TYPE_26__* %110, %struct.TYPE_26__** %112, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %8, align 8
  br label %113

113:                                              ; preds = %109, %105, %66, %57
  %114 = call i32 @av_buffer_unref(%struct.TYPE_26__** %7)
  %115 = call i32 @av_buffer_unref(%struct.TYPE_26__** %8)
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %113, %45, %32
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @av_log(%struct.TYPE_24__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_26__* @av_hwdevice_ctx_alloc(i32) #1

declare dso_local i32 @av_hwdevice_ctx_init(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @av_hwframe_ctx_alloc(%struct.TYPE_26__*) #1

declare dso_local i8* @FFALIGN(i8*, i32) #1

declare dso_local i32 @av_hwframe_ctx_init(%struct.TYPE_26__*) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_26__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
