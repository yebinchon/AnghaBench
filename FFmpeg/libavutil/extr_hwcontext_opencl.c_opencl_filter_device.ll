; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_opencl.c_opencl_filter_device.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_opencl.c_opencl_filter_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32 }
%struct.TYPE_6__ = type { i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@opencl_device_types = common dso_local global %struct.TYPE_7__* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown device type %s.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CL_DEVICE_TYPE = common dso_local global i32 0, align 4
@CL_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to query device type of device \22%s\22.\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"device_type does not match.\0A\00", align 1
@opencl_device_params = common dso_local global %struct.TYPE_7__* null, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to query %s of device \22%s\22.\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s does not match (\22%s\22).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i8*)* @opencl_filter_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opencl_filter_device(i32* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %10, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = call %struct.TYPE_6__* @av_dict_get(i32* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %11, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %88

24:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @opencl_device_types, align 8
  %28 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_7__* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %25
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @opencl_device_types, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strcmp(i8* %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %30
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @opencl_device_types, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %15, align 4
  br label %53

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %25

53:                                               ; preds = %42, %25
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %57, i32 %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = call i32 @AVERROR(i32 %63)
  store i32 %64, i32* %5, align 4
  br label %152

65:                                               ; preds = %53
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @CL_DEVICE_TYPE, align 4
  %68 = call i64 @clGetDeviceInfo(i32 %66, i32 %67, i32 4, i32* %16, i32* null)
  store i64 %68, i64* %17, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* @CL_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* @AV_LOG_ERROR, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %73, i32 %74, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %77, i32* %5, align 4
  br label %152

78:                                               ; preds = %65
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %15, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* @AV_LOG_DEBUG, align 4
  %86 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %84, i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %152

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %4
  store i32 0, i32* %13, align 4
  br label %89

89:                                               ; preds = %147, %88
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** @opencl_device_params, align 8
  %92 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_7__* %91)
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %150

94:                                               ; preds = %89
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** @opencl_device_params, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call %struct.TYPE_6__* @av_dict_get(i32* %95, i8* %101, i32* null, i32 0)
  store %struct.TYPE_6__* %102, %struct.TYPE_6__** %11, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %104 = icmp ne %struct.TYPE_6__* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %94
  br label %147

106:                                              ; preds = %94
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** @opencl_device_params, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @opencl_get_device_string(i32 %107, i32 %113)
  store i8* %114, i8** %12, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %129, label %117

117:                                              ; preds = %106
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* @AV_LOG_ERROR, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** @opencl_device_params, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %118, i32 %119, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %125, i8* %126)
  %128 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %128, i32* %5, align 4
  br label %152

129:                                              ; preds = %106
  %130 = load i8*, i8** %12, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @av_stristr(i8* %130, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %129
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* @AV_LOG_DEBUG, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %137, i32 %138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %141, i8* %142)
  store i32 1, i32* %14, align 4
  br label %144

144:                                              ; preds = %136, %129
  %145 = load i8*, i8** %12, align 8
  %146 = call i32 @av_free(i8* %145)
  br label %147

147:                                              ; preds = %144, %105
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %89

150:                                              ; preds = %89
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %150, %117, %83, %72, %56
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local %struct.TYPE_6__* @av_dict_get(i32*, i8*, i32*, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_7__*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @clGetDeviceInfo(i32, i32, i32, i32*, i32*) #1

declare dso_local i8* @opencl_get_device_string(i32, i32) #1

declare dso_local i32 @av_stristr(i8*, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
