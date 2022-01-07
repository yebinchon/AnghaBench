; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vaapi_vpp.c_ff_vaapi_vpp_make_param_buffers.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vaapi_vpp.c_ff_vaapi_vpp_make_param_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@VAProcFilterCount = common dso_local global i64 0, align 8
@VA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Failed to create parameter buffer (type %d): %d (%s).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Param buffer (type %d, %zu bytes, count %d) is %#x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_vaapi_vpp_make_param_buffers(%struct.TYPE_8__* %0, i32 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %14, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = load i64, i64* @VAProcFilterCount, align 8
  %23 = icmp sle i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @av_assert0(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @vaCreateBuffer(i32 %30, i32 %33, i32 %34, i64 %35, i32 %36, i8* %37, i32* %13)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %5
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = load i32, i32* @AV_LOG_ERROR, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @vaErrorStr(i64 %47)
  %49 = call i32 (%struct.TYPE_8__*, i32, i8*, i32, i64, i32, ...) @av_log(%struct.TYPE_8__* %43, i32 %44, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %45, i64 %46, i32 %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %6, align 4
  br label %69

52:                                               ; preds = %5
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 %53, i32* %61, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = load i32, i32* @AV_LOG_DEBUG, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 (%struct.TYPE_8__*, i32, i8*, i32, i64, i32, ...) @av_log(%struct.TYPE_8__* %62, i32 %63, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %64, i64 %65, i32 %66, i32 %67)
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %52, %42
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i64 @vaCreateBuffer(i32, i32, i32, i64, i32, i8*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, i32, i64, i32, ...) #1

declare dso_local i32 @vaErrorStr(i64) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
