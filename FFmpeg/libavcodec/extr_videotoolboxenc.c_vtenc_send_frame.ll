; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_vtenc_send_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_vtenc_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32 }

@AV_FRAME_DATA_A53_CC = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Not enough memory for closed captions, skipping\0A\00", align 1
@kCMTimeInvalid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Error: cannot encode frame: %d\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_21__*, %struct.TYPE_24__*)* @vtenc_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtenc_send_frame(%struct.TYPE_25__* %0, %struct.TYPE_21__* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  store i32* null, i32** %10, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %11, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %12, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %17 = call i32 @create_cv_pixel_buffer(%struct.TYPE_25__* %15, %struct.TYPE_24__* %16, i32** %10)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %4, align 4
  br label %112

22:                                               ; preds = %3
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %24 = call i32 @create_encoder_dict_h264(%struct.TYPE_24__* %23, i32** %9)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @CFRelease(i32* %28)
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %4, align 4
  br label %112

31:                                               ; preds = %22
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %33 = load i32, i32* @AV_FRAME_DATA_A53_CC, align 4
  %34 = call %struct.TYPE_23__* @av_frame_get_side_data(%struct.TYPE_24__* %32, i32 %33)
  store %struct.TYPE_23__* %34, %struct.TYPE_23__** %11, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %31
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %41 = icmp ne %struct.TYPE_23__* %40, null
  br i1 %41, label %42, label %72

42:                                               ; preds = %39
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %42
  %48 = call %struct.TYPE_22__* @av_mallocz(i32 8)
  store %struct.TYPE_22__* %48, %struct.TYPE_22__** %12, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %50 = icmp ne %struct.TYPE_22__* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %52, i32 %53, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %71

55:                                               ; preds = %47
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = call i32 @ff_alloc_a53_sei(%struct.TYPE_24__* %56, i32 0, i32* %58, i32* %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %66 = load i32, i32* @AV_LOG_ERROR, align 4
  %67 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %65, i32 %66, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %69 = call i32 @av_free(%struct.TYPE_22__* %68)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %12, align 8
  br label %70

70:                                               ; preds = %64, %55
  br label %71

71:                                               ; preds = %70, %51
  br label %72

72:                                               ; preds = %71, %42, %39, %31
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %75, %79
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @CMTimeMake(i32 %80, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @kCMTimeInvalid, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %94 = call i32 @VTCompressionSessionEncodeFrame(i32 %88, i32* %89, i32 %90, i32 %91, i32* %92, %struct.TYPE_22__* %93, i32* null)
  store i32 %94, i32* %13, align 4
  %95 = load i32*, i32** %9, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %72
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @CFRelease(i32* %98)
  br label %100

100:                                              ; preds = %97, %72
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @CFRelease(i32* %101)
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %107 = load i32, i32* @AV_LOG_ERROR, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %106, i32 %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %110, i32* %4, align 4
  br label %112

111:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %105, %27, %20
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @create_cv_pixel_buffer(%struct.TYPE_25__*, %struct.TYPE_24__*, i32**) #1

declare dso_local i32 @create_encoder_dict_h264(%struct.TYPE_24__*, i32**) #1

declare dso_local i32 @CFRelease(i32*) #1

declare dso_local %struct.TYPE_23__* @av_frame_get_side_data(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_22__* @av_mallocz(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*, ...) #1

declare dso_local i32 @ff_alloc_a53_sei(%struct.TYPE_24__*, i32, i32*, i32*) #1

declare dso_local i32 @av_free(%struct.TYPE_22__*) #1

declare dso_local i32 @CMTimeMake(i32, i32) #1

declare dso_local i32 @VTCompressionSessionEncodeFrame(i32, i32*, i32, i32, i32*, %struct.TYPE_22__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
