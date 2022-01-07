; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_server_api.c_wfc_server_stream_signal_raw_pixels.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_server_api.c_wfc_server_stream_signal_raw_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [77 x i8] c"%s: stream 0x%x image 0x%x format 0x%x width %u height %u pitch %u vpitch %u\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@WFC_IPC_MSG_SS_SIGNAL_RAW_PIXELS = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wfc_server_stream_signal_raw_pixels(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_3__, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load i32, i32* @VCOS_FUNCTION, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i8* %19, i8* %20, i8* %21, i8* %22, i8* %23, i8* %24)
  %26 = load i32, i32* @WFC_IPC_MSG_SS_SIGNAL_RAW_PIXELS, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 7
  store i32 %29, i32* %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 6
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 5
  store i8* %33, i8** %34, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  store i8* %35, i8** %36, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %44 = call i64 @wfc_client_ipc_send(%struct.TYPE_4__* %43, i32 64)
  store i64 %44, i64* %16, align 8
  %45 = load i64, i64* %16, align 8
  %46 = load i64, i64* @VCOS_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @vcos_assert(i32 %48)
  ret void
}

declare dso_local i32 @vcos_log_trace(i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @wfc_client_ipc_send(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @vcos_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
