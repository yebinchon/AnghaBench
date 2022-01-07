; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_server_api.c_wfc_server_connect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_server_api.c_wfc_server_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VCOS_LOG_CATEGORY = common dso_local global i32 0, align 4
@WFC_CLIENT_SERVER_API_LOGLEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"wfccsapi\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s: result %d\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wfc_server_connect() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %3 = load i32, i32* @WFC_CLIENT_SERVER_API_LOGLEVEL, align 4
  %4 = call i32 @vcos_log_set_level(i32 %2, i32 %3)
  %5 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %6 = call i32 @vcos_log_register(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i64 (...) @wfc_client_ipc_init()
  store i64 %7, i64* %1, align 8
  %8 = load i32, i32* @VCOS_FUNCTION, align 4
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %8, i64 %9)
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @VCOS_SUCCESS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %16 = call i32 @vcos_log_unregister(i32 %15)
  br label %17

17:                                               ; preds = %14, %0
  %18 = load i64, i64* %1, align 8
  ret i64 %18
}

declare dso_local i32 @vcos_log_set_level(i32, i32) #1

declare dso_local i32 @vcos_log_register(i8*, i32) #1

declare dso_local i64 @wfc_client_ipc_init(...) #1

declare dso_local i32 @vcos_log_trace(i8*, i32, i64) #1

declare dso_local i32 @vcos_log_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
