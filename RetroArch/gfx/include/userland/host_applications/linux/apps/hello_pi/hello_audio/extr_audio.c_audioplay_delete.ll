; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_audio/extr_audio.c_audioplay_delete.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_audio/extr_audio.c_audioplay_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@OMX_StateIdle = common dso_local global i32 0, align 4
@OMX_CommandStateSet = common dso_local global i32 0, align 4
@OMX_StateLoaded = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audioplay_delete(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @OMX_StateIdle, align 4
  %8 = call i32 @ilclient_change_component_state(i32 %6, i32 %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ILC_GET_HANDLE(i32 %11)
  %13 = load i32, i32* @OMX_CommandStateSet, align 4
  %14 = load i32, i32* @OMX_StateLoaded, align 4
  %15 = call i64 @OMX_SendCommand(i32 %12, i32 %13, i32 %14, i32* null)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @OMX_ErrorNone, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ilclient_disable_port_buffers(i32 %23, i32 100, i32 %26, i32* null, i32* null)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @OMX_StateLoaded, align 4
  %32 = call i32 @ilclient_change_component_state(i32 %30, i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ilclient_cleanup_components(i32 %35)
  %37 = call i64 (...) @OMX_Deinit()
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @OMX_ErrorNone, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ilclient_destroy(i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @sem_destroy(i32* %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %51 = call i32 @free(%struct.TYPE_4__* %50)
  ret i32 0
}

declare dso_local i32 @ilclient_change_component_state(i32, i32) #1

declare dso_local i64 @OMX_SendCommand(i32, i32, i32, i32*) #1

declare dso_local i32 @ILC_GET_HANDLE(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ilclient_disable_port_buffers(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ilclient_cleanup_components(i32) #1

declare dso_local i64 @OMX_Deinit(...) #1

declare dso_local i32 @ilclient_destroy(i32) #1

declare dso_local i32 @sem_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
