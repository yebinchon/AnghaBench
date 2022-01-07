; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_ipc.c_wfc_client_ipc_deinit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_ipc.c_wfc_client_ipc_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i32 }

@wfc_client_ipc_once = common dso_local global i32 0, align 4
@init_once = common dso_local global i32 0, align 4
@wfc_client_ipc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [30 x i8] c"%s: starting deinitialisation\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@wfc_client_ipc_vchiq_instance = common dso_local global i32 0, align 4
@VCOS_LOG_CATEGORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wfc_client_ipc_deinit() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @init_once, align 4
  %3 = call i32 @vcos_once(i32* @wfc_client_ipc_once, i32 %2)
  %4 = call i32 @vcos_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wfc_client_ipc, i32 0, i32 1))
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wfc_client_ipc, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %23

8:                                                ; preds = %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wfc_client_ipc, i32 0, i32 0), align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wfc_client_ipc, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %23

13:                                               ; preds = %8
  %14 = load i32, i32* @VCOS_FUNCTION, align 4
  %15 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 @wfc_client_ipc_destroy_waitpool(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wfc_client_ipc, i32 0, i32 3))
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wfc_client_ipc, i32 0, i32 2), align 8
  %18 = call i32 @vchiq_remove_service(i64 %17)
  %19 = load i32, i32* @wfc_client_ipc_vchiq_instance, align 4
  %20 = call i32 @vchiq_shutdown(i32 %19)
  %21 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %22 = call i32 @vcos_log_unregister(i32 %21)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wfc_client_ipc, i32 0, i32 2), align 8
  store i32 1, i32* %1, align 4
  br label %23

23:                                               ; preds = %13, %12, %7
  %24 = call i32 @vcos_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wfc_client_ipc, i32 0, i32 1))
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @vcos_once(i32*, i32) #1

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i32 @vcos_log_trace(i8*, i32) #1

declare dso_local i32 @wfc_client_ipc_destroy_waitpool(i32*) #1

declare dso_local i32 @vchiq_remove_service(i64) #1

declare dso_local i32 @vchiq_shutdown(i32) #1

declare dso_local i32 @vcos_log_unregister(i32) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
