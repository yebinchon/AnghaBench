; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_decode.c_ff_vaapi_decode_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_decode.c_ff_vaapi_decode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i64, i8*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i32, i8*, %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_19__*, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_21__* }
%struct.TYPE_24__ = type { %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i64 }

@VA_INVALID_ID = common dso_local global i8* null, align 8
@AV_HWDEVICE_TYPE_VAAPI = common dso_local global i32 0, align 4
@VA_PROGRESSIVE = common dso_local global i32 0, align 4
@VA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to create decode context: %d (%s).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Decode context initialised: %#x/%#x.\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@AV_VAAPI_DRIVER_QUIRK_RENDER_PARAM_BUFFERS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_vaapi_decode_init(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %7 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %11, %struct.TYPE_22__** %4, align 8
  %12 = load i8*, i8** @VA_INVALID_ID, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load i8*, i8** @VA_INVALID_ID, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %20 = load i32, i32* @AV_HWDEVICE_TYPE_VAAPI, align 4
  %21 = call i32 @ff_decode_get_hw_frames_ctx(%struct.TYPE_25__* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %121

25:                                               ; preds = %1
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_23__*
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 5
  store %struct.TYPE_23__* %31, %struct.TYPE_23__** %33, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 3
  store %struct.TYPE_21__* %38, %struct.TYPE_21__** %40, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %44, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 6
  store %struct.TYPE_24__* %45, %struct.TYPE_24__** %47, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 6
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %51, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 4
  store %struct.TYPE_20__* %52, %struct.TYPE_20__** %54, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = call i32 @vaapi_decode_make_config(%struct.TYPE_25__* %55, i32 %60, i64* %62, %struct.TYPE_16__* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %25
  br label %121

70:                                               ; preds = %25
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @VA_PROGRESSIVE, align 4
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 2
  %98 = call i64 @vaCreateContext(i32 %75, i64 %78, i32 %81, i32 %84, i32 %85, i32 %90, i32 %95, i8** %97)
  store i64 %98, i64* %5, align 8
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %70
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %104 = load i32, i32* @AV_LOG_ERROR, align 4
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* %5, align 8
  %107 = call i8* @vaErrorStr(i64 %106)
  %108 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %103, i32 %104, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %105, i8* %107)
  %109 = load i32, i32* @EIO, align 4
  %110 = call i32 @AVERROR(i32 %109)
  store i32 %110, i32* %6, align 4
  br label %121

111:                                              ; preds = %70
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %113 = load i32, i32* @AV_LOG_DEBUG, align 4
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %112, i32 %113, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %116, i8* %119)
  store i32 0, i32* %2, align 4
  br label %125

121:                                              ; preds = %102, %69, %24
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %123 = call i32 @ff_vaapi_decode_uninit(%struct.TYPE_25__* %122)
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %121, %111
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @ff_decode_get_hw_frames_ctx(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @vaapi_decode_make_config(%struct.TYPE_25__*, i32, i64*, %struct.TYPE_16__*) #1

declare dso_local i64 @vaCreateContext(i32, i64, i32, i32, i32, i32, i32, i8**) #1

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*, ...) #1

declare dso_local i8* @vaErrorStr(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_vaapi_decode_uninit(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
