; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_server_api.c_wfc_server_stream_create_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_server_api.c_wfc_server_stream_create_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__, i8*, i8*, %struct.TYPE_10__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i8* }

@WFC_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: NULL info pointer passed\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: invalid info pointer passed (size:%u)\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: stream 0x%x flags 0x%x pid 0x%x%08x\00", align 1
@WFC_IPC_MSG_SS_CREATE_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: status 0x%x, result 0x%x\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wfc_server_stream_create_info(i32 %0, %struct.TYPE_7__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* @WFC_INVALID_HANDLE, align 4
  store i32 %15, i32* %13, align 4
  store i64 4, i64* %14, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @VCOS_FUNCTION, align 4
  %20 = call i32 (i8*, i32, ...) @vcos_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @WFC_INVALID_HANDLE, align 4
  store i32 %21, i32* %5, align 4
  br label %78

22:                                               ; preds = %4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 8
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i32, i32* @VCOS_FUNCTION, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, i32, ...) @vcos_log_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load i32, i32* @WFC_INVALID_HANDLE, align 4
  store i32 %34, i32* %5, align 4
  br label %78

35:                                               ; preds = %22
  %36 = load i32, i32* @VCOS_FUNCTION, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 (i8*, i32, i64, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %36, i64 %38, i32 %41, i8* %42, i8* %43)
  %45 = load i32, i32* @WFC_IPC_MSG_SS_CREATE_INFO, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  store i32 %48, i32* %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @vcos_min(i32 %52, i32 8)
  store i8* %53, i8** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @memcpy(%struct.TYPE_10__* %54, %struct.TYPE_7__* %55, i8* %56)
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i8* %61, i8** %62, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i8* %63, i8** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %66 = call i64 @wfc_client_ipc_sendwait(%struct.TYPE_9__* %65, i32 40, i32* %13, i64* %14)
  store i64 %66, i64* %12, align 8
  %67 = load i32, i32* @VCOS_FUNCTION, align 4
  %68 = load i64, i64* %12, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 (i8*, i32, i64, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %67, i64 %68, i32 %69)
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @VCOS_SUCCESS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %35
  %75 = load i32, i32* @WFC_INVALID_HANDLE, align 4
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %74, %35
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %28, %18
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @vcos_log_error(i8*, i32, ...) #1

declare dso_local i32 @vcos_log_trace(i8*, i32, i64, i32, ...) #1

declare dso_local i8* @vcos_min(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_7__*, i8*) #1

declare dso_local i64 @wfc_client_ipc_sendwait(%struct.TYPE_9__*, i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
