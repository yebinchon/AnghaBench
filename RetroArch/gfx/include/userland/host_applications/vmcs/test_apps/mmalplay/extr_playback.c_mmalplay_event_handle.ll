; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_playback.c_mmalplay_event_handle.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_playback.c_mmalplay_event_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }

@MMAL_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s(%p) received event %4.4s (%i bytes)\00", align 1
@MMAL_EVENT_FORMAT_CHANGED = common dso_local global i64 0, align 8
@MMAL_PORT_TYPE_OUTPUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"----------Port format changed----------\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"-----------------to---------------------\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c" buffers num (opt %i, min %i), size (opt %i, min: %i)\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"----------------------------------------\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, %struct.TYPE_13__*)* @mmalplay_event_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmalplay_event_handle(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %9 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = bitcast i64* %15 to i8*
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 (i8*, ...) @LOG_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %12, %struct.TYPE_11__* %13, i8* %16, i32 %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MMAL_EVENT_FORMAT_CHANGED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MMAL_PORT_TYPE_OUTPUT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %27
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = call %struct.TYPE_12__* @mmal_event_format_changed_get(%struct.TYPE_13__* %34)
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %8, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %64

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @LOG_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = call i32 @log_format(i32 %42, %struct.TYPE_11__* %43)
  %45 = call i32 (i8*, ...) @LOG_INFO(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @log_format(i32 %48, %struct.TYPE_11__* null)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @LOG_INFO(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %55, i32 %58, i32 %61)
  %63 = call i32 (i8*, ...) @LOG_INFO(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %38, %33
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = call i32 @mmal_connection_event_format_changed(i32* %65, %struct.TYPE_13__* %66)
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %64, %27, %3
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = call i32 @mmal_buffer_header_release(%struct.TYPE_13__* %69)
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @LOG_INFO(i8*, ...) #1

declare dso_local %struct.TYPE_12__* @mmal_event_format_changed_get(%struct.TYPE_13__*) #1

declare dso_local i32 @log_format(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @mmal_connection_event_format_changed(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
