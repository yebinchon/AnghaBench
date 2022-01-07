; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_thread_samplers.c_kperf_thread_dispatch_sample.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_thread_samplers.c_kperf_thread_dispatch_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kperf_thread_dispatch = type { i64 }
%struct.kperf_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@PERF_TI_DISPSAMPLE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@kernel_task = common dso_local global i64 0, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_thread_dispatch_sample(%struct.kperf_thread_dispatch* %0, %struct.kperf_context* %1) #0 {
  %3 = alloca %struct.kperf_thread_dispatch*, align 8
  %4 = alloca %struct.kperf_context*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.kperf_thread_dispatch* %0, %struct.kperf_thread_dispatch** %3, align 8
  store %struct.kperf_context* %1, %struct.kperf_context** %4, align 8
  %12 = load %struct.kperf_thread_dispatch*, %struct.kperf_thread_dispatch** %3, align 8
  %13 = icmp ne %struct.kperf_thread_dispatch* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.kperf_context*, %struct.kperf_context** %4, align 8
  %17 = icmp ne %struct.kperf_context* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.kperf_context*, %struct.kperf_context** %4, align 8
  %21 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %5, align 8
  %23 = load i32, i32* @PERF_TI_DISPSAMPLE, align 4
  %24 = load i32, i32* @DBG_FUNC_START, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = call i64 @thread_tid(%struct.TYPE_4__* %26)
  %28 = call i32 @BUF_INFO(i32 %25, i64 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @task_has_64Bit_addr(i64 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 8, i32 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %8, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @kernel_task, align 8
  %43 = icmp ne i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = call i64 @thread_dispatchqaddr(%struct.TYPE_4__* %46)
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %2
  br label %77

51:                                               ; preds = %2
  %52 = load i64, i64* %9, align 8
  %53 = trunc i64 %52 to i32
  %54 = bitcast i64* %10 to i8*
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @copyin(i32 %53, i8* %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i64, i64* %10, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %51
  br label %77

62:                                               ; preds = %58
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @get_task_dispatchqueue_serialno_offset(i64 %64)
  %66 = add nsw i64 %63, %65
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.kperf_thread_dispatch*, %struct.kperf_thread_dispatch** %3, align 8
  %70 = getelementptr inbounds %struct.kperf_thread_dispatch, %struct.kperf_thread_dispatch* %69, i32 0, i32 0
  %71 = bitcast i64* %70 to i8*
  %72 = load i64, i64* %8, align 8
  %73 = call i64 @copyin(i32 %68, i8* %71, i64 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %80

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76, %61, %50
  %78 = load %struct.kperf_thread_dispatch*, %struct.kperf_thread_dispatch** %3, align 8
  %79 = getelementptr inbounds %struct.kperf_thread_dispatch, %struct.kperf_thread_dispatch* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %75
  %81 = load i32, i32* @PERF_TI_DISPSAMPLE, align 4
  %82 = load i32, i32* @DBG_FUNC_END, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @BUF_VERB(i32 %83)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BUF_INFO(i32, i64) #1

declare dso_local i64 @thread_tid(%struct.TYPE_4__*) #1

declare dso_local i64 @task_has_64Bit_addr(i64) #1

declare dso_local i64 @thread_dispatchqaddr(%struct.TYPE_4__*) #1

declare dso_local i64 @copyin(i32, i8*, i64) #1

declare dso_local i64 @get_task_dispatchqueue_serialno_offset(i64) #1

declare dso_local i32 @BUF_VERB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
