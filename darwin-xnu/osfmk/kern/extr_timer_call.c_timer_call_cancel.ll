; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_call_cancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_call_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DECR_TIMER_CANCEL = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@TIMER_CALL_RATELIMITED = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@callout__cancel = common dso_local global i32 0, align 4
@timer_call_func_t = common dso_local global i32 0, align 4
@timer_call_param_t = common dso_local global i32 0, align 4
@uint32_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timer_call_cancel(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = call i32 (...) @splclock()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @KDEBUG_TRACE, align 4
  %8 = load i32, i32* @DECR_TIMER_CANCEL, align 4
  %9 = load i32, i32* @DBG_FUNC_START, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_15__* %11)
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %14 = call %struct.TYPE_13__* @TCE(%struct.TYPE_15__* %13)
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @TIMER_KDEBUG_TRACE(i32 %7, i32 %10, i32 %12, i32 %16, i32 %19, i32 %22, i32 0)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = call %struct.TYPE_15__* @timer_call_dequeue_unlocked(%struct.TYPE_15__* %24)
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %3, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = icmp ne %struct.TYPE_15__* %26, null
  br i1 %27, label %28, label %86

28:                                               ; preds = %1
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = call i32 @timer_queue_lock_spin(%struct.TYPE_15__* %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 4
  %33 = call i32 @queue_empty(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %72, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %38 = call %struct.TYPE_13__* @TCE(%struct.TYPE_15__* %37)
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 4
  %43 = call i32 @queue_first(i32* %42)
  %44 = call %struct.TYPE_14__* @CE(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @timer_queue_cancel(%struct.TYPE_15__* %36, i32 %40, i32 %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 4
  %50 = call i32 @queue_first(i32* %49)
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %5, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TIMER_CALL_RATELIMITED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %35
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = call %struct.TYPE_13__* @TCE(%struct.TYPE_15__* %60)
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  br label %68

64:                                               ; preds = %35
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = phi i32 [ %63, %59 ], [ %67, %64 ]
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %83

72:                                               ; preds = %28
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %75 = call %struct.TYPE_13__* @TCE(%struct.TYPE_15__* %74)
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @UINT64_MAX, align 4
  %79 = call i32 @timer_queue_cancel(%struct.TYPE_15__* %73, i32 %77, i32 %78)
  %80 = load i32, i32* @UINT64_MAX, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %72, %68
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %85 = call i32 @timer_queue_unlock(%struct.TYPE_15__* %84)
  br label %86

86:                                               ; preds = %83, %1
  %87 = load i32, i32* @KDEBUG_TRACE, align 4
  %88 = load i32, i32* @DECR_TIMER_CANCEL, align 4
  %89 = load i32, i32* @DBG_FUNC_END, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %92 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_15__* %91)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_15__* %93)
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %96 = call %struct.TYPE_13__* @TCE(%struct.TYPE_15__* %95)
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (...) @mach_absolute_time()
  %100 = sub nsw i32 %98, %99
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %102 = call %struct.TYPE_13__* @TCE(%struct.TYPE_15__* %101)
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %106 = call %struct.TYPE_13__* @TCE(%struct.TYPE_15__* %105)
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %104, %108
  %110 = call i32 @TIMER_KDEBUG_TRACE(i32 %87, i32 %90, i32 %92, i32 %94, i32 %100, i32 %109, i32 0)
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @splx(i32 %111)
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %114 = icmp ne %struct.TYPE_15__* %113, null
  %115 = zext i1 %114 to i32
  ret i32 %115
}

declare dso_local i32 @splclock(...) #1

declare dso_local i32 @TIMER_KDEBUG_TRACE(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_13__* @TCE(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @timer_call_dequeue_unlocked(%struct.TYPE_15__*) #1

declare dso_local i32 @timer_queue_lock_spin(%struct.TYPE_15__*) #1

declare dso_local i32 @queue_empty(i32*) #1

declare dso_local i32 @timer_queue_cancel(%struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @CE(i32) #1

declare dso_local i32 @queue_first(i32*) #1

declare dso_local i32 @timer_queue_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
