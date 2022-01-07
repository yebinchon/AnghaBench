; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_ipc.c_wfc_client_ipc_sendwait.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_ipc.c_wfc_client_ipc_sendwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i8* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }

@VCOS_SUCCESS = common dso_local global i32 0, align 4
@wfc_client_ipc = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: client uninitialised\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@VCOS_EINVAL = common dso_local global i32 0, align 4
@WFC_IPC_MSG_MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: wait %p, reply to %p\00", align 1
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"%s: failed to queue, 0x%x\00", align 1
@VCOS_ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: got reply (len %i/%i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wfc_client_ipc_sendwait(%struct.TYPE_14__* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [1 x %struct.TYPE_15__], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i32, i32* @VCOS_SUCCESS, align 4
  store i32 %14, i32* %10, align 4
  %15 = getelementptr inbounds [1 x %struct.TYPE_15__], [1 x %struct.TYPE_15__]* %13, i64 0, i64 0
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = ptrtoint %struct.TYPE_14__* %17 to i64
  store i64 %18, i64* %16, align 16
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %20 = load i64, i64* %7, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %19, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp uge i64 %22, 16
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @vcos_assert(i8* %26)
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @vcos_assert(i8* %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @wfc_client_ipc, i32 0, i32 1), align 4
  %31 = call i32 @vcos_verify(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* @VCOS_FUNCTION, align 4
  %35 = call i32 @VCOS_ALERT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @VCOS_EINVAL, align 4
  store i32 %36, i32* %5, align 4
  br label %91

37:                                               ; preds = %4
  %38 = load i32, i32* @WFC_IPC_MSG_MAGIC, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = call %struct.TYPE_13__* @wfc_client_ipc_get_waiter(%struct.TYPE_16__* @wfc_client_ipc)
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %11, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %52, align 8
  %53 = call i32 (...) @wfc_client_ipc_use_keep_alive()
  %54 = load i32, i32* @VCOS_FUNCTION, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 (i8*, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %54, %struct.TYPE_13__* %55, i8* %56)
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @wfc_client_ipc, i32 0, i32 0), align 4
  %59 = getelementptr inbounds [1 x %struct.TYPE_15__], [1 x %struct.TYPE_15__]* %13, i64 0, i64 0
  %60 = call i64 @vchiq_queue_message(i32 %58, %struct.TYPE_15__* %59, i32 1)
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %37
  %65 = load i32, i32* @VCOS_FUNCTION, align 4
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @vcos_log_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %65, i64 %66)
  %68 = load i32, i32* @VCOS_ENXIO, align 4
  store i32 %68, i32* %10, align 4
  br label %86

69:                                               ; preds = %37
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = call i32 @vcos_semaphore_wait(i32* %71)
  %73 = load i32, i32* @VCOS_FUNCTION, align 4
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 (i8*, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %73, i32 %76, i32 %80)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %9, align 8
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %69, %64
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %88 = call i32 @wfc_client_ipc_release_waiter(%struct.TYPE_16__* @wfc_client_ipc, %struct.TYPE_13__* %87)
  %89 = call i32 (...) @wfc_client_ipc_release_keep_alive()
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %86, %33
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @vcos_assert(i8*) #1

declare dso_local i32 @vcos_verify(i32) #1

declare dso_local i32 @VCOS_ALERT(i8*, i32) #1

declare dso_local %struct.TYPE_13__* @wfc_client_ipc_get_waiter(%struct.TYPE_16__*) #1

declare dso_local i32 @wfc_client_ipc_use_keep_alive(...) #1

declare dso_local i32 @vcos_log_trace(i8*, i32, ...) #1

declare dso_local i64 @vchiq_queue_message(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @vcos_log_error(i8*, i32, i64) #1

declare dso_local i32 @vcos_semaphore_wait(i32*) #1

declare dso_local i32 @wfc_client_ipc_release_waiter(%struct.TYPE_16__*, %struct.TYPE_13__*) #1

declare dso_local i32 @wfc_client_ipc_release_keep_alive(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
