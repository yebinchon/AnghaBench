; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_api.c_mmal_vc_do_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_api.c_mmal_vc_do_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32* }

@MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED = common dso_local global i32 0, align 4
@MMAL_EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*)* @mmal_vc_do_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmal_vc_do_callback(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %6 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_24__* %10, %struct.TYPE_24__** %3, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_25__* @mmal_queue_get(i32 %13)
  store %struct.TYPE_25__* %14, %struct.TYPE_25__** %4, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %16 = icmp ne %struct.TYPE_25__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %70

18:                                               ; preds = %1
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %5, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %18
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MMAL_EIO, align 4
  %36 = call i32 @mmal_event_error_send(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %18
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %39 = call %struct.TYPE_17__* @mmal_buffer_header_driver_data(%struct.TYPE_25__* %38)
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = icmp eq i32* %41, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %52 = call i32 @mmal_port_event_send(%struct.TYPE_22__* %50, %struct.TYPE_25__* %51)
  br label %70

53:                                               ; preds = %37
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mmal_vc_shm_lock(i32 %56, i32 %63)
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %69 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_22__* %67, %struct.TYPE_25__* %68)
  br label %70

70:                                               ; preds = %53, %49, %17
  ret void
}

declare dso_local %struct.TYPE_25__* @mmal_queue_get(i32) #1

declare dso_local i32 @mmal_event_error_send(i32, i32) #1

declare dso_local %struct.TYPE_17__* @mmal_buffer_header_driver_data(%struct.TYPE_25__*) #1

declare dso_local i32 @mmal_port_event_send(%struct.TYPE_22__*, %struct.TYPE_25__*) #1

declare dso_local i32 @mmal_vc_shm_lock(i32, i32) #1

declare dso_local i32 @mmal_port_buffer_header_callback(%struct.TYPE_22__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
