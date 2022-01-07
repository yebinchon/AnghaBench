; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_server_api.c_wfc_server_stream_on_image_available.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_server_api.c_wfc_server_stream_on_image_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 (i8*)* }

@.str = private unnamed_addr constant [30 x i8] c"%s: stream 0x%x cb %p data %p\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@WFC_IPC_MSG_SS_ON_IMAGE_AVAILABLE = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wfc_server_stream_on_image_available(i32 %0, i32 (i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 (i8*)* %1, i32 (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @VCOS_FUNCTION, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10, i32 (i8*)* %11, i8* %12)
  %14 = load i32, i32* @WFC_IPC_MSG_SS_ON_IMAGE_AVAILABLE, align 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 (i8*)* %19, i32 (i8*)** %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %26 = call i64 @wfc_client_ipc_send(%struct.TYPE_8__* %25, i32 32)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @VCOS_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @vcos_verify(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %3
  %34 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 %34(i8* %35)
  br label %37

37:                                               ; preds = %33, %3
  ret void
}

declare dso_local i32 @vcos_log_trace(i8*, i32, i32, i32 (i8*)*, i8*) #1

declare dso_local i64 @wfc_client_ipc_send(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @vcos_verify(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
