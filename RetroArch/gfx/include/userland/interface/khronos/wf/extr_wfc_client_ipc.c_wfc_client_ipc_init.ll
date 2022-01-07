; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_ipc.c_wfc_client_ipc_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_ipc.c_wfc_client_ipc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__*, i32, i32 }

@VCOS_ENXIO = common dso_local global i64 0, align 8
@wfc_client_ipc_once = common dso_local global i32 0, align 4
@init_once = common dso_local global i32 0, align 4
@wfc_client_ipc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@VCOS_LOG_CATEGORY = common dso_local global i32 0, align 4
@WFC_CLIENT_IPC_LOGLEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"wfcipc\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: starting initialisation\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@wfc_client_ipc_vchiq_instance = common dso_local global i32 0, align 4
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: failed to initialise vchiq: %d\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: failed to connect to vchiq: %d\00", align 1
@wfc_client_ipc_vchiq_callback = common dso_local global i32 0, align 4
@WFC_IPC_VER_CURRENT = common dso_local global i32 0, align 4
@WFC_IPC_VER_MINIMUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"%s: could not open vchiq service: %d\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"%s: could not create wait pool: %d\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"%s: could not send client pid: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wfc_client_ipc_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i64, i64* @VCOS_ENXIO, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i32, i32* @init_once, align 4
  %10 = call i32 @vcos_once(i32* @wfc_client_ipc_once, i32 %9)
  %11 = call i32 @vcos_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wfc_client_ipc, i32 0, i32 0))
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wfc_client_ipc, i32 0, i32 1), align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wfc_client_ipc, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = call i32 @vcos_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wfc_client_ipc, i32 0, i32 0))
  %17 = load i64, i64* @VCOS_SUCCESS, align 8
  store i64 %17, i64* %1, align 8
  br label %112

18:                                               ; preds = %0
  %19 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %20 = load i32, i32* @WFC_CLIENT_IPC_LOGLEVEL, align 4
  %21 = call i32 @vcos_log_set_level(i32 %19, i32 %20)
  %22 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %23 = call i32 @vcos_log_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @VCOS_FUNCTION, align 4
  %25 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = call i64 @vchiq_initialise(i32* @wfc_client_ipc_vchiq_instance)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load i32, i32* @VCOS_FUNCTION, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @vcos_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %31, i64 %32)
  br label %88

34:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  %35 = load i32, i32* @wfc_client_ipc_vchiq_instance, align 4
  %36 = call i64 @vchiq_connect(i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @VCOS_FUNCTION, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @vcos_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %41, i64 %42)
  br label %88

44:                                               ; preds = %34
  %45 = call i32 @memset(%struct.TYPE_5__* %2, i32 0, i32 24)
  %46 = call i32 (...) @WFC_IPC_CONTROL_FOURCC()
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @wfc_client_ipc_vchiq_callback, align 4
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  store %struct.TYPE_6__* @wfc_client_ipc, %struct.TYPE_6__** %50, align 8
  %51 = load i32, i32* @WFC_IPC_VER_CURRENT, align 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @WFC_IPC_VER_MINIMUM, align 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* @wfc_client_ipc_vchiq_instance, align 4
  %56 = call i64 @vchiq_open_service(i32 %55, %struct.TYPE_5__* %2, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wfc_client_ipc, i32 0, i32 2))
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %44
  %61 = load i32, i32* @VCOS_FUNCTION, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @vcos_log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %61, i64 %62)
  br label %88

64:                                               ; preds = %44
  store i32 1, i32* %5, align 4
  %65 = call i64 @wfc_client_ipc_create_waitpool(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wfc_client_ipc, i32 0, i32 3))
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @VCOS_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @VCOS_FUNCTION, align 4
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @vcos_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %70, i64 %71)
  br label %88

73:                                               ; preds = %64
  store i32 1, i32* %4, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wfc_client_ipc, i32 0, i32 2), align 4
  %75 = call i32 @vchiq_release_service(i32 %74)
  %76 = call i32 @vcos_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wfc_client_ipc, i32 0, i32 0))
  %77 = call i64 (...) @wfc_client_ipc_send_client_pid()
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @VCOS_SUCCESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load i32, i32* @VCOS_FUNCTION, align 4
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @vcos_log_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %82, i64 %83)
  %85 = call i32 @vcos_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wfc_client_ipc, i32 0, i32 0))
  br label %88

86:                                               ; preds = %73
  %87 = load i64, i64* @VCOS_SUCCESS, align 8
  store i64 %87, i64* %1, align 8
  br label %112

88:                                               ; preds = %81, %69, %60, %40, %30
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 @wfc_client_ipc_destroy_waitpool(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wfc_client_ipc, i32 0, i32 3))
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wfc_client_ipc, i32 0, i32 2), align 4
  %98 = call i32 @vchiq_remove_service(i32 %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32, i32* %3, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* @wfc_client_ipc_vchiq_instance, align 4
  %104 = call i32 @vchiq_shutdown(i32 %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %107 = call i32 @vcos_log_unregister(i32 %106)
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wfc_client_ipc, i32 0, i32 1), align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wfc_client_ipc, i32 0, i32 1), align 4
  %110 = call i32 @vcos_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wfc_client_ipc, i32 0, i32 0))
  %111 = load i64, i64* %6, align 8
  store i64 %111, i64* %1, align 8
  br label %112

112:                                              ; preds = %105, %86, %15
  %113 = load i64, i64* %1, align 8
  ret i64 %113
}

declare dso_local i32 @vcos_once(i32*, i32) #1

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

declare dso_local i32 @vcos_log_set_level(i32, i32) #1

declare dso_local i32 @vcos_log_register(i8*, i32) #1

declare dso_local i32 @vcos_log_trace(i8*, i32) #1

declare dso_local i64 @vchiq_initialise(i32*) #1

declare dso_local i32 @vcos_log_error(i8*, i32, i64) #1

declare dso_local i64 @vchiq_connect(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @WFC_IPC_CONTROL_FOURCC(...) #1

declare dso_local i64 @vchiq_open_service(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i64 @wfc_client_ipc_create_waitpool(i32*) #1

declare dso_local i32 @vchiq_release_service(i32) #1

declare dso_local i64 @wfc_client_ipc_send_client_pid(...) #1

declare dso_local i32 @wfc_client_ipc_destroy_waitpool(i32*) #1

declare dso_local i32 @vchiq_remove_service(i32) #1

declare dso_local i32 @vchiq_shutdown(i32) #1

declare dso_local i32 @vcos_log_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
