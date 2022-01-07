; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_commands.c_mmalomx_command_port_disable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_commands.c_mmalomx_command_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@MMAL_FALSE = common dso_local global i32 0, align 4
@OMX_StateLoaded = common dso_local global i64 0, align 8
@OMX_StateWaitForResources = common dso_local global i64 0, align 8
@OMX_EventCmdComplete = common dso_local global i32 0, align 4
@OMX_CommandPortDisable = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i32 0, align 4
@MMALOMX_ACTION_DISABLE = common dso_local global i32 0, align 4
@MMALOMX_ACTION_CHECK_DEALLOCATED = common dso_local global i32 0, align 4
@MMALOMX_ACTION_NOTIFY_DISABLE = common dso_local global i32 0, align 4
@MMALOMX_ACTION_FLUSH = common dso_local global i32 0, align 4
@MMALOMX_ACTION_CHECK_FLUSHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmalomx_command_port_disable(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %6, align 8
  %9 = load i32, i32* @MMAL_FALSE, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  store i32 %9, i32* %15, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OMX_StateLoaded, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OMX_StateWaitForResources, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21, %2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = load i32, i32* @OMX_EventCmdComplete, align 4
  %30 = load i32, i32* @OMX_CommandPortDisable, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @mmalomx_callback_event_handler(%struct.TYPE_8__* %28, i32 %29, i32 %30, i64 %31, i32* null)
  %33 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %33, i32* %3, align 4
  br label %80

34:                                               ; preds = %21
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %39
  %41 = call i32 @MMALOMX_LOCK_PORT(%struct.TYPE_8__* %35, %struct.TYPE_9__* %40)
  %42 = load i32, i32* @MMALOMX_ACTION_DISABLE, align 4
  %43 = load i32, i32* @MMALOMX_ACTION_CHECK_DEALLOCATED, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MMALOMX_ACTION_NOTIFY_DISABLE, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i32 %46, i32* %52, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %34
  %58 = load i32, i32* @MMALOMX_ACTION_FLUSH, align 4
  %59 = load i32, i32* @MMALOMX_ACTION_CHECK_FLUSHED, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %60
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %57, %34
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %74
  %76 = call i32 @MMALOMX_UNLOCK_PORT(%struct.TYPE_8__* %70, %struct.TYPE_9__* %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %78 = call i32 @mmalomx_commands_actions_check(%struct.TYPE_8__* %77)
  %79 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %69, %27
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @mmalomx_callback_event_handler(%struct.TYPE_8__*, i32, i32, i64, i32*) #1

declare dso_local i32 @MMALOMX_LOCK_PORT(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @MMALOMX_UNLOCK_PORT(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @mmalomx_commands_actions_check(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
