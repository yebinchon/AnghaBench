; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_create_for_context_nbufs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_create_for_context_nbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@WFC_INVALID_HANDLE = common dso_local global i64 0, align 8
@WFC_STREAM_FLAGS_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s: stream flags mismatch (expected 0x%x, got 0x%x)\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"%s: failed to allocate %u buffers for stream %X size %ux%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wfc_stream_create_for_context_nbufs(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @WFC_INVALID_HANDLE, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @vcos_verify(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %69

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = call %struct.TYPE_6__* @wfc_stream_find_stream_ptr(i64 %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %10, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = call i32 @STREAM_UNLOCK(%struct.TYPE_6__* %30)
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @WFC_STREAM_FLAGS_NONE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i32, i32* @VCOS_FUNCTION, align 4
  %37 = load i32, i32* @WFC_STREAM_FLAGS_NONE, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @vcos_log_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  store i32 1, i32* %5, align 4
  br label %69

40:                                               ; preds = %25
  br label %48

41:                                               ; preds = %20
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* @WFC_STREAM_FLAGS_NONE, align 4
  %44 = call i64 @wfc_stream_create(i64 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %69

47:                                               ; preds = %41
  store i32 1, i32* %11, align 4
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @wfc_server_stream_allocate_images(i64 %49, i32 %50, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @VCOS_FUNCTION, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @vcos_log_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57, i64 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @wfc_stream_destroy(i64 %65)
  br label %67

67:                                               ; preds = %64, %55
  store i32 1, i32* %5, align 4
  br label %69

68:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %67, %46, %35, %19
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @vcos_verify(i32) #1

declare dso_local %struct.TYPE_6__* @wfc_stream_find_stream_ptr(i64) #1

declare dso_local i32 @STREAM_UNLOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @vcos_log_error(i8*, i32, i32, i32) #1

declare dso_local i64 @wfc_stream_create(i64, i32) #1

declare dso_local i32 @wfc_server_stream_allocate_images(i64, i32, i32, i32) #1

declare dso_local i32 @vcos_log_warn(i8*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @wfc_stream_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
