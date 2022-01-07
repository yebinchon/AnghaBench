; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_opengl_enc.c_opengl_resize.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_opengl_enc.c_opengl_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@AV_DEV_TO_APP_PREPARE_WINDOW_BUFFER = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Application failed to prepare window buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32)* @opengl_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opengl_resize(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = load i32, i32* @AV_DEV_TO_APP_PREPARE_WINDOW_BUFFER, align 4
  %30 = call i32 @avdevice_dev_to_app_control_message(%struct.TYPE_9__* %28, i32 %29, i32* null, i32 0)
  store i32 %30, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = call i32 @av_log(%struct.TYPE_8__* %33, i32 %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %45

36:                                               ; preds = %27, %22
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = call i32 @opengl_prepare_vertex(%struct.TYPE_9__* %37)
  store i32 %38, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %45

41:                                               ; preds = %36
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = call i32 @opengl_draw(%struct.TYPE_9__* %42, i32* null, i32 1, i32 0)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %3
  br label %45

45:                                               ; preds = %44, %40, %32
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @avdevice_dev_to_app_control_message(%struct.TYPE_9__*, i32, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @opengl_prepare_vertex(%struct.TYPE_9__*) #1

declare dso_local i32 @opengl_draw(%struct.TYPE_9__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
