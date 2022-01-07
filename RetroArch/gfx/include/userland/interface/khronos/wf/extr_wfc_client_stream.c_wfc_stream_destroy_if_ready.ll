; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_destroy_if_ready.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_destroy_if_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"%s: stream_ptr is NULL\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"%s: stream: %X not ready: reg:%u srcs:%u o/s:%d\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: stream: %X to be destroyed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @wfc_stream_destroy_if_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wfc_stream_destroy_if_ready(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %7 = call i32 (...) @vcos_process_id_current()
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 32
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @VCOS_FUNCTION, align 4
  %15 = call i32 @vcos_log_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %65

16:                                               ; preds = %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %26, %21, %16
  %32 = load i32, i32* @VCOS_FUNCTION, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35, i64 %38, i64 %41, i64 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = call i32 @STREAM_UNLOCK(%struct.TYPE_4__* %46)
  br label %65

48:                                               ; preds = %26
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @VCOS_FUNCTION, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @vcos_log_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 1, i32* %56, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @wfc_server_stream_destroy(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = call i32 @STREAM_UNLOCK(%struct.TYPE_4__* %61)
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @wfc_stream_destroy_stream_ptr(i32 %63)
  br label %65

65:                                               ; preds = %48, %31, %13
  ret void
}

declare dso_local i32 @vcos_process_id_current(...) #1

declare dso_local i32 @vcos_log_error(i8*, i32) #1

declare dso_local i32 @vcos_log_trace(i8*, i32, i32, i64, i64, i64) #1

declare dso_local i32 @STREAM_UNLOCK(%struct.TYPE_4__*) #1

declare dso_local i32 @vcos_log_info(i8*, i32, i32) #1

declare dso_local i32 @wfc_server_stream_destroy(i32, i32, i32) #1

declare dso_local i32 @wfc_stream_destroy_stream_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
