; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvdec.c_ff_nvdec_start_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvdec.c_ff_nvdec_start_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i64, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32 (%struct.TYPE_17__*)*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"No decoder surfaces left\0A\00", align 1
@nvdec_retrieve_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_nvdec_start_frame(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %6, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %8, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %28 = icmp ne %struct.TYPE_17__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %90

30:                                               ; preds = %2
  %31 = call %struct.TYPE_17__* @av_mallocz(i32 24)
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %8, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = icmp ne %struct.TYPE_17__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %90

37:                                               ; preds = %30
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @av_buffer_ref(i32 %40)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %9, align 4
  br label %86

51:                                               ; preds = %37
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.TYPE_14__* @av_buffer_pool_get(i32 %54)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %57, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = icmp ne %struct.TYPE_14__* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %51
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %64 = load i32, i32* @AV_LOG_ERROR, align 4
  %65 = call i32 @av_log(%struct.TYPE_21__* %63, i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = call i32 @AVERROR(i32 %66)
  store i32 %67, i32* %9, align 4
  br label %86

68:                                               ; preds = %51
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 2
  store %struct.TYPE_17__* %78, %struct.TYPE_17__** %80, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  store i32 (%struct.TYPE_17__*)* @nvdec_fdd_priv_free, i32 (%struct.TYPE_17__*)** %82, align 8
  %83 = load i32, i32* @nvdec_retrieve_data, align 4
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  store i32 0, i32* %3, align 4
  br label %90

86:                                               ; preds = %62, %48
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %88 = call i32 @nvdec_fdd_priv_free(%struct.TYPE_17__* %87)
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %68, %34, %29
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_17__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_buffer_ref(i32) #1

declare dso_local %struct.TYPE_14__* @av_buffer_pool_get(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @nvdec_fdd_priv_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
