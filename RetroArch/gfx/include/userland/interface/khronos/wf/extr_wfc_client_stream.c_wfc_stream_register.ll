; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_register.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@VCOS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"%s: get stream info failed: %u\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wfc_stream_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %2, align 4
  %9 = call i32 (...) @vcos_process_id_current()
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = ashr i32 %12, 32
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  %15 = call i64 (...) @wfc_server_connect()
  %16 = load i64, i64* @VCOS_SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 4, i32* %19, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @wfc_server_stream_get_info(i32 %20, %struct.TYPE_8__* %6)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @VCOS_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %18
  %26 = load i32, i32* %2, align 4
  %27 = call %struct.TYPE_7__* @wfc_stream_create_stream_ptr(i32 %26, i32 1)
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %8, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i32* %36, %struct.TYPE_8__* %6, i32 %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = call i32 @STREAM_UNLOCK(%struct.TYPE_7__* %40)
  br label %42

42:                                               ; preds = %30, %25
  %43 = load i32, i32* %2, align 4
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @wfc_server_stream_register(i32 %43, i64 %44, i64 %45)
  br label %51

47:                                               ; preds = %18
  %48 = load i32, i32* @VCOS_FUNCTION, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @vcos_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %49)
  br label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51, %1
  ret void
}

declare dso_local i32 @vcos_process_id_current(...) #1

declare dso_local i64 @wfc_server_connect(...) #1

declare dso_local i64 @wfc_server_stream_get_info(i32, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_7__* @wfc_stream_create_stream_ptr(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @STREAM_UNLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @wfc_server_stream_register(i32, i64, i64) #1

declare dso_local i32 @vcos_log_error(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
