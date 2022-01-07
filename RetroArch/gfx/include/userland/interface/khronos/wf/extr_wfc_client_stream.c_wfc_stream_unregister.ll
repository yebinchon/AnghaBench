; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_unregister.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"%s: stream %X\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: stream %X already fully unregistered\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wfc_stream_unregister(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i32 (...) @vcos_process_id_current()
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = ashr i32 %9, 32
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.TYPE_4__* @wfc_stream_find_stream_ptr(i32 %11)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @vcos_verify(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %1
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @wfc_server_stream_unregister(i32 %19, i32 %20, i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %29, align 8
  %32 = load i32, i32* @VCOS_FUNCTION, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  br label %39

35:                                               ; preds = %18
  %36 = load i32, i32* @VCOS_FUNCTION, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @vcos_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %27
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = call i32 @wfc_stream_destroy_if_ready(%struct.TYPE_4__* %40)
  br label %42

42:                                               ; preds = %39, %1
  %43 = call i32 (...) @wfc_server_disconnect()
  ret void
}

declare dso_local i32 @vcos_process_id_current(...) #1

declare dso_local %struct.TYPE_4__* @wfc_stream_find_stream_ptr(i32) #1

declare dso_local i64 @vcos_verify(i32) #1

declare dso_local i32 @wfc_server_stream_unregister(i32, i32, i32) #1

declare dso_local i32 @vcos_log_trace(i8*, i32, i32) #1

declare dso_local i32 @vcos_log_error(i8*, i32, i32) #1

declare dso_local i32 @wfc_stream_destroy_if_ready(%struct.TYPE_4__*) #1

declare dso_local i32 @wfc_server_disconnect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
