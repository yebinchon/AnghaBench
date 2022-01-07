; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_aio_queue_async_request.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_aio_queue_async_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@aio_max_requests = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@aio_max_requests_per_process = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"aio_queue_async_request(): too many in flight for proc: %d.\0A\00", align 1
@DBG_BSD_AIO = common dso_local global i32 0, align 4
@AIO_work_queued = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i64, i32)* @aio_queue_async_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_queue_async_request(%struct.TYPE_15__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = call i32 (...) @aio_increment_total_count()
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @aio_max_requests, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EAGAIN, align 4
  store i32 %18, i32* %9, align 4
  br label %108

19:                                               ; preds = %3
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.TYPE_16__* @aio_create_queue_entry(%struct.TYPE_15__* %20, i64 %21, i32 0, i32 %22)
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %8, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %25 = icmp eq %struct.TYPE_16__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @EAGAIN, align 4
  store i32 %27, i32* %9, align 4
  br label %108

28:                                               ; preds = %19
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = call i32 @aio_proc_lock_spin(%struct.TYPE_15__* %29)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @is_already_queued(i32 %33, i32 %36)
  %38 = load i64, i64* @TRUE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @EAGAIN, align 4
  store i32 %41, i32* %9, align 4
  br label %103

42:                                               ; preds = %28
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = call i64 @aio_get_process_count(%struct.TYPE_15__* %43)
  %45 = load i64, i64* @aio_max_requests_per_process, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EAGAIN, align 4
  store i32 %52, i32* %9, align 4
  br label %103

53:                                               ; preds = %42
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = call i32 @aio_proc_mutex(%struct.TYPE_15__* %54)
  %56 = call i32 @lck_mtx_convert_spin(i32 %55)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %59 = call i32 @aio_enqueue_work(%struct.TYPE_15__* %57, %struct.TYPE_16__* %58, i32 1)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = call i32 @aio_proc_unlock(%struct.TYPE_15__* %60)
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  store i32* %64, i32** %11, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  store i32* %67, i32** %12, align 8
  %68 = load i32, i32* @DBG_BSD_AIO, align 4
  %69 = load i32, i32* @AIO_work_queued, align 4
  %70 = call i32 @BSDDBG_CODE(i32 %68, i32 %69)
  %71 = load i32, i32* @DBG_FUNC_START, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = ptrtoint %struct.TYPE_15__* %73 to i32
  %75 = load i64, i64* %6, align 8
  %76 = trunc i64 %75 to i32
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %72, i32 %74, i32 %76, i32 %79, i32 %83, i32 0)
  %85 = load i32, i32* @DBG_BSD_AIO, align 4
  %86 = load i32, i32* @AIO_work_queued, align 4
  %87 = call i32 @BSDDBG_CODE(i32 %85, i32 %86)
  %88 = load i32, i32* @DBG_FUNC_END, align 4
  %89 = or i32 %87, %88
  %90 = load i32*, i32** %11, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %89, i32 %92, i32 %95, i32 %98, i32 %101, i32 0)
  store i32 0, i32* %4, align 4
  br label %111

103:                                              ; preds = %47, %40
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %105 = call i32 @aio_proc_unlock(%struct.TYPE_15__* %104)
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %107 = call i32 @aio_free_request(%struct.TYPE_16__* %106)
  br label %108

108:                                              ; preds = %103, %26, %17
  %109 = call i32 (...) @aio_decrement_total_count()
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %108, %53
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @aio_increment_total_count(...) #1

declare dso_local %struct.TYPE_16__* @aio_create_queue_entry(%struct.TYPE_15__*, i64, i32, i32) #1

declare dso_local i32 @aio_proc_lock_spin(%struct.TYPE_15__*) #1

declare dso_local i64 @is_already_queued(i32, i32) #1

declare dso_local i64 @aio_get_process_count(%struct.TYPE_15__*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @lck_mtx_convert_spin(i32) #1

declare dso_local i32 @aio_proc_mutex(%struct.TYPE_15__*) #1

declare dso_local i32 @aio_enqueue_work(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @aio_proc_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i32 @aio_free_request(%struct.TYPE_16__*) #1

declare dso_local i32 @aio_decrement_total_count(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
