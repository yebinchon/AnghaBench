; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_qsv.c_qsv_device_create.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_qsv.c_qsv_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@qsv_device_free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"child_device\00", align 1
@CONFIG_VAAPI = common dso_local global i64 0, align 8
@AV_HWDEVICE_TYPE_VAAPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"kernel_driver\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"i915\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"iHD\00", align 1
@CONFIG_DXVA2 = common dso_local global i64 0, align 8
@AV_HWDEVICE_TYPE_DXVA2 = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"No supported child device type is enabled\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32*, i32)* @qsv_device_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsv_device_create(%struct.TYPE_12__* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = call %struct.TYPE_11__* @av_mallocz(i32 8)
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %10, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %5, align 4
  br label %83

23:                                               ; preds = %4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %26, align 8
  %27 = load i32, i32* @qsv_device_free, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call %struct.TYPE_13__* @av_dict_get(i32* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %14, align 8
  store i32* null, i32** %13, align 8
  %32 = load i64, i64* @CONFIG_VAAPI, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load i32, i32* @AV_HWDEVICE_TYPE_VAAPI, align 4
  store i32 %35, i32* %11, align 4
  %36 = call i32 @av_dict_set(i32** %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %37 = call i32 @av_dict_set(i32** %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %50

38:                                               ; preds = %23
  %39 = load i64, i64* @CONFIG_DXVA2, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @AV_HWDEVICE_TYPE_DXVA2, align 4
  store i32 %42, i32* %11, align 4
  br label %49

43:                                               ; preds = %38
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = load i32, i32* @AV_LOG_ERROR, align 4
  %46 = call i32 @av_log(%struct.TYPE_12__* %44, i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %47 = load i32, i32* @ENOSYS, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %5, align 4
  br label %83

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %34
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %55 = icmp ne %struct.TYPE_13__* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  br label %61

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i32* [ %59, %56 ], [ null, %60 ]
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @av_hwdevice_ctx_create(%struct.TYPE_14__** %52, i32 %53, i32* %62, i32* %63, i32 0)
  store i32 %64, i32* %16, align 4
  %65 = call i32 @av_dict_free(i32** %13)
  %66 = load i32, i32* %16, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %5, align 4
  br label %83

70:                                               ; preds = %61
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %12, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @choose_implementation(i8* %77)
  store i32 %78, i32* %15, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %82 = call i32 @qsv_device_derive_from_child(%struct.TYPE_12__* %79, i32 %80, %struct.TYPE_12__* %81, i32 0)
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %70, %68, %43, %20
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_11__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_13__* @av_dict_get(i32*, i8*, i32*, i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @av_hwdevice_ctx_create(%struct.TYPE_14__**, i32, i32*, i32*, i32) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @choose_implementation(i8*) #1

declare dso_local i32 @qsv_device_derive_from_child(%struct.TYPE_12__*, i32, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
