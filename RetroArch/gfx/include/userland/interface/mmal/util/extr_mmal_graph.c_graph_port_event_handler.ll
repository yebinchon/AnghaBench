; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_event_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"port: %s(%p), buffer: %p, event: %4.4s\00", align 1
@MMAL_EVENT_FORMAT_CHANGED = common dso_local global i64 0, align 8
@MMAL_PORT_TYPE_OUTPUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"----------Port format changed----------\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"-----------------to---------------------\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c" buffers num (opt %i, min %i), size (opt %i, min: %i)\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"----------------------------------------\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, %struct.TYPE_15__*)* @graph_port_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_port_event_handler(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = bitcast i64* %15 to i8*
  %17 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %11, %struct.TYPE_13__* %12, %struct.TYPE_15__* %13, i8* %16)
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MMAL_EVENT_FORMAT_CHANGED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %3
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MMAL_PORT_TYPE_OUTPUT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %23
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = call %struct.TYPE_14__* @mmal_event_format_changed_get(%struct.TYPE_15__* %30)
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %8, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @LOG_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = call i32 @mmal_log_dump_port(%struct.TYPE_13__* %36)
  %38 = call i32 (i8*, ...) @LOG_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mmal_log_dump_format(i32 %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @LOG_DEBUG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %48, i32 %51, i32 %54)
  %56 = call i32 (i8*, ...) @LOG_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %34, %29
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = call i64 @mmal_connection_event_format_changed(i32* %58, %struct.TYPE_15__* %59)
  store i64 %60, i64* %7, align 8
  br label %63

61:                                               ; preds = %23, %3
  %62 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %61, %57
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = call i32 @mmal_buffer_header_release(%struct.TYPE_15__* %64)
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @MMAL_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @mmal_event_error_send(i32 %72, i64 %73)
  br label %75

75:                                               ; preds = %69, %63
  ret void
}

declare dso_local i32 @LOG_TRACE(i8*, i32, %struct.TYPE_13__*, %struct.TYPE_15__*, i8*) #1

declare dso_local %struct.TYPE_14__* @mmal_event_format_changed_get(%struct.TYPE_15__*) #1

declare dso_local i32 @LOG_DEBUG(i8*, ...) #1

declare dso_local i32 @mmal_log_dump_port(%struct.TYPE_13__*) #1

declare dso_local i32 @mmal_log_dump_format(i32) #1

declare dso_local i64 @mmal_connection_event_format_changed(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_15__*) #1

declare dso_local i32 @mmal_event_error_send(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
