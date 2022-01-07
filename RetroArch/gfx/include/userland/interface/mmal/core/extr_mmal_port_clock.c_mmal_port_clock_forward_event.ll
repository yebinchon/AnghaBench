; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port_clock.c_mmal_port_clock_forward_event.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port_clock.c_mmal_port_clock_forward_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"%s: no free event buffers available for event %4.4s\00", align 1
@MMAL_ENOSPC = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to lock buffer %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)* @mmal_port_clock_forward_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmal_port_clock_forward_event(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_19__* @mmal_queue_get(i32 %14)
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %7, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %17 = icmp ne %struct.TYPE_19__* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to i8*
  %25 = call i32 @LOG_INFO(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %24)
  %26 = load i64, i64* @MMAL_ENOSPC, align 8
  store i64 %26, i64* %3, align 8
  br label %64

27:                                               ; preds = %2
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %29 = call i64 @mmal_buffer_header_mem_lock(%struct.TYPE_19__* %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @MMAL_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @mmal_status_to_string(i64 %34)
  %36 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %45 = call i32 @mmal_queue_put_back(i32 %43, %struct.TYPE_19__* %44)
  br label %62

46:                                               ; preds = %27
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  store i32 4, i32* %48, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memcpy(i32 %51, %struct.TYPE_18__* %52, i32 %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %58 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_19__* %57)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %61 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_17__* %59, %struct.TYPE_19__* %60)
  br label %62

62:                                               ; preds = %46, %33
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %62, %18
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local %struct.TYPE_19__* @mmal_queue_get(i32) #1

declare dso_local i32 @LOG_INFO(i8*, i32, i8*) #1

declare dso_local i64 @mmal_buffer_header_mem_lock(%struct.TYPE_19__*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32) #1

declare dso_local i32 @mmal_status_to_string(i64) #1

declare dso_local i32 @mmal_queue_put_back(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_19__*) #1

declare dso_local i32 @mmal_port_buffer_header_callback(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
