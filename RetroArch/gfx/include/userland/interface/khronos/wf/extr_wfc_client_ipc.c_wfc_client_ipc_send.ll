; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_ipc.c_wfc_client_ipc_send.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_ipc.c_wfc_client_ipc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [20 x i8] c"%s: type %d, len %d\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@wfc_client_ipc = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: client uninitialised\00", align 1
@VCOS_EINVAL = common dso_local global i32 0, align 4
@WFC_IPC_MSG_MAGIC = common dso_local global i32 0, align 4
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"%s: failed to queue, 0x%x\00", align 1
@VCOS_ENXIO = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wfc_client_ipc_send(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [1 x %struct.TYPE_9__], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %7, i64 0, i64 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = ptrtoint %struct.TYPE_8__* %10 to i64
  store i64 %11, i64* %9, align 16
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %12, align 8
  %15 = load i32, i32* @VCOS_FUNCTION, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i64 %19)
  %21 = load i64, i64* %5, align 8
  %22 = icmp uge i64 %21, 16
  %23 = zext i1 %22 to i32
  %24 = call i32 @vcos_assert(i32 %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @wfc_client_ipc, i32 0, i32 1), align 4
  %26 = call i32 @vcos_verify(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @VCOS_FUNCTION, align 4
  %30 = call i32 @VCOS_ALERT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @VCOS_EINVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %54

32:                                               ; preds = %2
  %33 = load i32, i32* @WFC_IPC_MSG_MAGIC, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = call i32 (...) @wfc_client_ipc_use_keep_alive()
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @wfc_client_ipc, i32 0, i32 0), align 4
  %41 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %7, i64 0, i64 0
  %42 = call i64 @vchiq_queue_message(i32 %40, %struct.TYPE_9__* %41, i32 1)
  store i64 %42, i64* %6, align 8
  %43 = call i32 (...) @wfc_client_ipc_release_keep_alive()
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load i32, i32* @VCOS_FUNCTION, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @vcos_log_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %48, i64 %49)
  %51 = load i32, i32* @VCOS_ENXIO, align 4
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %32
  %53 = load i32, i32* @VCOS_SUCCESS, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %47, %28
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @vcos_log_trace(i8*, i32, i32, i64) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @vcos_verify(i32) #1

declare dso_local i32 @VCOS_ALERT(i8*, i32) #1

declare dso_local i32 @wfc_client_ipc_use_keep_alive(...) #1

declare dso_local i64 @vchiq_queue_message(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @wfc_client_ipc_release_keep_alive(...) #1

declare dso_local i32 @vcos_log_error(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
