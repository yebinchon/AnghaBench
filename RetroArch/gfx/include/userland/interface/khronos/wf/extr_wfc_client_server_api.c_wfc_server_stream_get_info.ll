; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_server_api.c_wfc_server_stream_get_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_server_api.c_wfc_server_stream_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s: NULL info pointer passed\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@WFC_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: invalid info pointer passed (size:%u)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s: stream 0x%x\00", align 1
@WFC_IPC_MSG_SS_GET_INFO = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"%s: copied %u bytes\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%s: result %d\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%s: send msg status %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wfc_server_stream_get_info(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i64 4, i64* %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @VCOS_FUNCTION, align 4
  %15 = call i32 (i8*, i32, ...) @vcos_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @WFC_INVALID_HANDLE, align 4
  store i32 %16, i32* %3, align 4
  br label %78

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 4
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i32, i32* @VCOS_FUNCTION, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, i32, ...) @vcos_log_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i32, i32* @WFC_INVALID_HANDLE, align 4
  store i32 %29, i32* %3, align 4
  br label %78

30:                                               ; preds = %17
  %31 = load i32, i32* @VCOS_FUNCTION, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %32)
  %34 = call i32 @memset(%struct.TYPE_8__* %8, i32 0, i32 8)
  %35 = load i32, i32* @WFC_IPC_MSG_SS_GET_INFO, align 4
  %36 = load i32, i32* %4, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %38 = call i32 @wfc_client_server_api_sendwait_stream(i32 %35, i32 %36, i32* %37, i64* %9)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @VCOS_SUCCESS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @VCOS_SUCCESS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @vcos_min(i32 %51, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @memcpy(%struct.TYPE_7__* %56, %struct.TYPE_9__* %57, i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @VCOS_FUNCTION, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %64)
  br label %70

66:                                               ; preds = %42
  %67 = load i32, i32* @VCOS_FUNCTION, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i8*, i32, ...) @vcos_log_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %48
  br label %76

71:                                               ; preds = %30
  %72 = load i32, i32* @VCOS_FUNCTION, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (i8*, i32, ...) @vcos_log_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %71, %70
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %23, %13
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @vcos_log_error(i8*, i32, ...) #1

declare dso_local i32 @vcos_log_trace(i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @wfc_client_server_api_sendwait_stream(i32, i32, i32*, i64*) #1

declare dso_local i32 @vcos_min(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
