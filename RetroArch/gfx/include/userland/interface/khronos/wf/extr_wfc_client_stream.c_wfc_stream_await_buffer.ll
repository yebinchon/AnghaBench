; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_await_buffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_await_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s: stream 0x%x\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@WFC_STREAM_FLAGS_BUF_AVAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"WFC image available\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@wfc_client_stream_post_sem = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: pre async sem wait: stream: %X\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%s: post async sem wait: stream: %X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wfc_stream_await_buffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @VCOS_FUNCTION, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.TYPE_6__* @wfc_stream_find_stream_ptr(i32 %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @WFC_STREAM_FLAGS_BUF_AVAIL, align 4
  %20 = and i32 %18, %19
  %21 = call i64 @vcos_verify(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %14
  %24 = call i32 (...) @wfc_server_use_keep_alive()
  %25 = call i64 @vcos_semaphore_create(i32* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @VCOS_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @vcos_assert(i32 %29)
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @vcos_unused(i64 %31)
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @wfc_client_stream_post_sem, align 4
  %35 = call i32 @wfc_server_stream_on_image_available(i32 %33, i32 %34, i32* %4)
  %36 = load i32, i32* @VCOS_FUNCTION, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %37)
  %39 = call i32 @vcos_semaphore_wait(i32* %4)
  %40 = load i32, i32* @VCOS_FUNCTION, align 4
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 %41)
  %43 = call i32 @vcos_semaphore_delete(i32* %4)
  %44 = call i32 (...) @wfc_server_release_keep_alive()
  br label %45

45:                                               ; preds = %23, %14
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = call i32 @STREAM_UNLOCK(%struct.TYPE_6__* %46)
  br label %48

48:                                               ; preds = %45, %13
  ret void
}

declare dso_local i32 @vcos_log_trace(i8*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @wfc_stream_find_stream_ptr(i32) #1

declare dso_local i64 @vcos_verify(i32) #1

declare dso_local i32 @wfc_server_use_keep_alive(...) #1

declare dso_local i64 @vcos_semaphore_create(i32*, i8*, i32) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @vcos_unused(i64) #1

declare dso_local i32 @wfc_server_stream_on_image_available(i32, i32, i32*) #1

declare dso_local i32 @vcos_semaphore_wait(i32*) #1

declare dso_local i32 @vcos_semaphore_delete(i32*) #1

declare dso_local i32 @wfc_server_release_keep_alive(...) #1

declare dso_local i32 @STREAM_UNLOCK(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
