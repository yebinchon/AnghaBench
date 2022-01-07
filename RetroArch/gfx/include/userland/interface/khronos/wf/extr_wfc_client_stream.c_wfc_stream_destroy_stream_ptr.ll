; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_destroy_stream_ptr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_destroy_stream_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_12__*, %struct.TYPE_9__*, i64 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"%s: stream handle 0x%x\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: unlinking from list\00", align 1
@wfc_stream_head = common dso_local global %struct.TYPE_12__* null, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: stream 0x%x recycled before destruction\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: stream 0x%x not found\00", align 1
@WFC_STREAM_FLAGS_REQ_RECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @wfc_stream_destroy_stream_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wfc_stream_destroy_stream_ptr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.TYPE_11__* @wfc_stream_global_lock_and_find_stream_ptr(i32 %4)
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %3, align 8
  %6 = load i32, i32* @VCOS_FUNCTION, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 (i8*, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7)
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = icmp ne %struct.TYPE_11__* %9, null
  br i1 %10, label %11, label %61

11:                                               ; preds = %1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %11
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = call i32 @STREAM_LOCK(%struct.TYPE_11__* %17)
  %19 = load i32, i32* @VCOS_FUNCTION, align 4
  %20 = call i32 (i8*, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = icmp ne %struct.TYPE_12__* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %16
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %32, align 8
  br label %33

33:                                               ; preds = %25, %16
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = icmp ne %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %45, align 8
  br label %50

46:                                               ; preds = %33
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** @wfc_stream_head, align 8
  br label %50

50:                                               ; preds = %46, %38
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wfc_stream_head, align 8
  %52 = icmp eq %struct.TYPE_12__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (...) @wfc_server_disconnect()
  br label %55

55:                                               ; preds = %53, %50
  br label %60

56:                                               ; preds = %11
  %57 = load i32, i32* @VCOS_FUNCTION, align 4
  %58 = load i32, i32* %2, align 4
  %59 = call i32 (i8*, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %58)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %60

60:                                               ; preds = %56, %55
  br label %65

61:                                               ; preds = %1
  %62 = load i32, i32* @VCOS_FUNCTION, align 4
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @vcos_log_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %60
  %66 = call i32 (...) @GLOBAL_UNLOCK()
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = icmp ne %struct.TYPE_11__* %67, null
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = call i32 @STREAM_UNLOCK(%struct.TYPE_11__* %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @WFC_STREAM_FLAGS_REQ_RECT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = call i32 @vcos_thread_join(i32* %81, i32* null)
  br label %83

83:                                               ; preds = %79, %69
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = call i32 @vcos_mutex_delete(i32* %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = call i32 @vcos_blockpool_free(%struct.TYPE_11__* %87)
  br label %89

89:                                               ; preds = %83, %65
  ret void
}

declare dso_local %struct.TYPE_11__* @wfc_stream_global_lock_and_find_stream_ptr(i32) #1

declare dso_local i32 @vcos_log_trace(i8*, i32, ...) #1

declare dso_local i32 @STREAM_LOCK(%struct.TYPE_11__*) #1

declare dso_local i32 @wfc_server_disconnect(...) #1

declare dso_local i32 @vcos_log_error(i8*, i32, i32) #1

declare dso_local i32 @GLOBAL_UNLOCK(...) #1

declare dso_local i32 @STREAM_UNLOCK(%struct.TYPE_11__*) #1

declare dso_local i32 @vcos_thread_join(i32*, i32*) #1

declare dso_local i32 @vcos_mutex_delete(i32*) #1

declare dso_local i32 @vcos_blockpool_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
