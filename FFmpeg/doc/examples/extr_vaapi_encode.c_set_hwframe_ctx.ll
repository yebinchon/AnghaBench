; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_vaapi_encode.c_set_hwframe_ctx.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_vaapi_encode.c_set_hwframe_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to create VAAPI frame context.\0A\00", align 1
@AV_PIX_FMT_VAAPI = common dso_local global i32 0, align 4
@AV_PIX_FMT_NV12 = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Failed to initialize VAAPI frame context.Error code: %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)* @set_hwframe_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_hwframe_ctx(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %10 = call %struct.TYPE_13__* @av_hwframe_ctx_alloc(%struct.TYPE_13__* %9)
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %6, align 8
  %11 = icmp ne %struct.TYPE_13__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %7, align 8
  %20 = load i32, i32* @AV_PIX_FMT_VAAPI, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @AV_PIX_FMT_NV12, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @width, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @height, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 20, i32* %33, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = call i32 @av_hwframe_ctx_init(%struct.TYPE_13__* %34)
  store i32 %35, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %15
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i8* @av_err2str(i32 %39)
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = call i32 @av_buffer_unref(%struct.TYPE_13__** %6)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %59

44:                                               ; preds = %15
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = call i32 @av_buffer_ref(%struct.TYPE_13__* %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %44
  %57 = call i32 @av_buffer_unref(%struct.TYPE_13__** %6)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %37, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_13__* @av_hwframe_ctx_alloc(%struct.TYPE_13__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @av_hwframe_ctx_init(%struct.TYPE_13__*) #1

declare dso_local i8* @av_err2str(i32) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_13__**) #1

declare dso_local i32 @av_buffer_ref(%struct.TYPE_13__*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
