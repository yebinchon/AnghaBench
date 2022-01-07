; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_viewfinder.c_generic_output_port_cb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_viewfinder.c_generic_output_port_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"%s callback: event %u not supported\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s callback\00", align 1
@events = common dso_local global i32 0, align 4
@MMAL_CAM_BUFFER_READY = common dso_local global i32 0, align 4
@VCOS_OR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*)* @generic_output_port_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generic_output_port_cb(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @LOG_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = call i32 @mmal_buffer_header_release(%struct.TYPE_8__* %18)
  br label %32

20:                                               ; preds = %2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %5, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = call i32 @mmal_queue_put(i32* %29, %struct.TYPE_8__* %30)
  br label %32

32:                                               ; preds = %20, %10
  %33 = load i32, i32* @MMAL_CAM_BUFFER_READY, align 4
  %34 = load i32, i32* @VCOS_OR, align 4
  %35 = call i32 @vcos_event_flags_set(i32* @events, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @LOG_INFO(i8*, i32, i64) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_8__*) #1

declare dso_local i32 @LOG_DEBUG(i8*, i32) #1

declare dso_local i32 @mmal_queue_put(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @vcos_event_flags_set(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
