; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_vaapi.c_vaapi_device_connect.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_vaapi.c_vaapi_device_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@VA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to initialise VAAPI connection: %d (%s).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Initialised VAAPI connection: version %d.%d\0A\00", align 1
@vaapi_device_log_error = common dso_local global i32 0, align 4
@vaapi_device_log_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @vaapi_device_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vaapi_device_connect(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @vaInitialize(i32 %16, i32* %7, i32* %8)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = load i32, i32* @AV_LOG_ERROR, align 4
  %24 = load i64, i64* %9, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @vaErrorStr(i64 %26)
  %28 = call i32 @av_log(%struct.TYPE_8__* %22, i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @av_log(%struct.TYPE_8__* %32, i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %21
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @vaInitialize(i32, i32*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, i32, i32) #1

declare dso_local i32 @vaErrorStr(i64) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
