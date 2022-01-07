; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_call.c_thread_call_initialize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_call.c_thread_call_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"thread_call\00", align 1
@thread_call_zone = common dso_local global i32 0, align 4
@Z_CALLERACCT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@Z_NOENCRYPT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@thread_call_lck_grp = common dso_local global i32 0, align 4
@LCK_GRP_ATTR_NULL = common dso_local global i32 0, align 4
@thread_call_lock_data = common dso_local global i32 0, align 4
@LCK_ATTR_NULL = common dso_local global i32 0, align 4
@THREAD_CALL_DEALLOC_INTERVAL_NS = common dso_local global i32 0, align 4
@thread_call_dealloc_interval_abs = common dso_local global i32 0, align 4
@daemon_waitq = common dso_local global i32 0, align 4
@SYNC_POLICY_DISABLE_IRQ = common dso_local global i32 0, align 4
@SYNC_POLICY_FIFO = common dso_local global i32 0, align 4
@THREAD_CALL_INDEX_MAX = common dso_local global i64 0, align 8
@thread_call_groups = common dso_local global i32* null, align 8
@thread_call_internal_queue = common dso_local global i32 0, align 4
@internal_call_storage = common dso_local global %struct.TYPE_5__* null, align 8
@INTERNAL_CALL_COUNT = common dso_local global i64 0, align 8
@thread_call_internal_queue_count = common dso_local global i32 0, align 4
@thread_call_daemon_awake = common dso_local global i32 0, align 4
@thread_call_daemon = common dso_local global i64 0, align 8
@BASEPRI_PREEMPT_HIGH = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"thread_call_initialize\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_call_initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 4, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = mul nsw i32 4096, %8
  %10 = load i32, i32* %1, align 4
  %11 = mul nsw i32 16, %10
  %12 = call i32 @zinit(i32 %7, i32 %9, i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* @thread_call_zone, align 4
  %13 = load i32, i32* @thread_call_zone, align 4
  %14 = load i32, i32* @Z_CALLERACCT, align 4
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @zone_change(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @thread_call_zone, align 4
  %18 = load i32, i32* @Z_NOENCRYPT, align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32 @zone_change(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @LCK_GRP_ATTR_NULL, align 4
  %22 = call i32 @lck_grp_init(i32* @thread_call_lck_grp, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @LCK_ATTR_NULL, align 4
  %24 = call i32 @lck_mtx_init(i32* @thread_call_lock_data, i32* @thread_call_lck_grp, i32 %23)
  %25 = load i32, i32* @THREAD_CALL_DEALLOC_INTERVAL_NS, align 4
  %26 = call i32 @nanotime_to_absolutetime(i32 0, i32 %25, i32* @thread_call_dealloc_interval_abs)
  %27 = load i32, i32* @SYNC_POLICY_DISABLE_IRQ, align 4
  %28 = load i32, i32* @SYNC_POLICY_FIFO, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @waitq_init(i32* @daemon_waitq, i32 %29)
  store i64 0, i64* %2, align 8
  br label %31

31:                                               ; preds = %40, %0
  %32 = load i64, i64* %2, align 8
  %33 = load i64, i64* @THREAD_CALL_INDEX_MAX, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32*, i32** @thread_call_groups, align 8
  %37 = load i64, i64* %2, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i32 @thread_call_group_setup(i32* %38)
  br label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %2, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %2, align 8
  br label %31

43:                                               ; preds = %31
  %44 = call i32 (...) @disable_ints_and_lock()
  store i32 %44, i32* %3, align 4
  %45 = call i32 @queue_init(i32* @thread_call_internal_queue)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @internal_call_storage, align 8
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %4, align 8
  br label %47

47:                                               ; preds = %60, %43
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @internal_call_storage, align 8
  %50 = load i64, i64* @INTERNAL_CALL_COUNT, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %50
  %52 = icmp ult %struct.TYPE_5__* %48, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @enqueue_tail(i32* @thread_call_internal_queue, i32* %56)
  %58 = load i32, i32* @thread_call_internal_queue_count, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @thread_call_internal_queue_count, align 4
  br label %60

60:                                               ; preds = %53
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 1
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %4, align 8
  br label %47

63:                                               ; preds = %47
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* @thread_call_daemon_awake, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @enable_ints_and_unlock(i32 %65)
  %67 = load i64, i64* @thread_call_daemon, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i64, i64* @BASEPRI_PREEMPT_HIGH, align 8
  %70 = add nsw i64 %69, 1
  %71 = call i64 @kernel_thread_start_priority(i32 %68, i32* null, i64 %70, i32* %5)
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @KERN_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %63
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @thread_deallocate(i32 %78)
  ret void
}

declare dso_local i32 @zinit(i32, i32, i32, i8*) #1

declare dso_local i32 @zone_change(i32, i32, i32) #1

declare dso_local i32 @lck_grp_init(i32*, i8*, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32*, i32) #1

declare dso_local i32 @nanotime_to_absolutetime(i32, i32, i32*) #1

declare dso_local i32 @waitq_init(i32*, i32) #1

declare dso_local i32 @thread_call_group_setup(i32*) #1

declare dso_local i32 @disable_ints_and_lock(...) #1

declare dso_local i32 @queue_init(i32*) #1

declare dso_local i32 @enqueue_tail(i32*, i32*) #1

declare dso_local i32 @enable_ints_and_unlock(i32) #1

declare dso_local i64 @kernel_thread_start_priority(i32, i32*, i64, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @thread_deallocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
