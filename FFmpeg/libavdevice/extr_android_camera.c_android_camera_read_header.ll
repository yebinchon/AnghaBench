; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_android_camera.c_android_camera_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_android_camera.c_android_camera_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to allocate input queue, error: %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to create Android camera manager.\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to open camera.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to open android_camera.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @android_camera_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @android_camera_read_header(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %3, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 4
  %10 = call i32 @atomic_init(i32* %9, i32 0)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 3
  %13 = call i32 @atomic_init(i32* %12, i32 0)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @av_thread_message_queue_alloc(i32* %15, i32 %18, i32 4)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = load i32, i32* @AV_LOG_ERROR, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @av_err2str(i32 %25)
  %27 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %23, i32 %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %71

28:                                               ; preds = %1
  %29 = call i32 (...) @ACameraManager_create()
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %28
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = load i32, i32* @AV_LOG_ERROR, align 4
  %39 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %37, i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %40, i32* %4, align 4
  br label %71

41:                                               ; preds = %28
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %43 = call i32 @open_camera(%struct.TYPE_14__* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %47, i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %71

50:                                               ; preds = %41
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %52 = call i32 @get_sensor_orientation(%struct.TYPE_14__* %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %54 = call i32 @match_video_size(%struct.TYPE_14__* %53)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %56 = call i32 @match_framerate(%struct.TYPE_14__* %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %58 = call i32 @create_image_reader(%struct.TYPE_14__* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %71

62:                                               ; preds = %50
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %64 = call i32 @create_capture_session(%struct.TYPE_14__* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %71

68:                                               ; preds = %62
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %70 = call i32 @add_video_stream(%struct.TYPE_14__* %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %67, %61, %46, %36, %22
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %76 = call i32 @android_camera_read_close(%struct.TYPE_14__* %75)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %78 = load i32, i32* @AV_LOG_ERROR, align 4
  %79 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %77, i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %74, %71
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @atomic_init(i32*, i32) #1

declare dso_local i32 @av_thread_message_queue_alloc(i32*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @ACameraManager_create(...) #1

declare dso_local i32 @open_camera(%struct.TYPE_14__*) #1

declare dso_local i32 @get_sensor_orientation(%struct.TYPE_14__*) #1

declare dso_local i32 @match_video_size(%struct.TYPE_14__*) #1

declare dso_local i32 @match_framerate(%struct.TYPE_14__*) #1

declare dso_local i32 @create_image_reader(%struct.TYPE_14__*) #1

declare dso_local i32 @create_capture_session(%struct.TYPE_14__*) #1

declare dso_local i32 @add_video_stream(%struct.TYPE_14__*) #1

declare dso_local i32 @android_camera_read_close(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
