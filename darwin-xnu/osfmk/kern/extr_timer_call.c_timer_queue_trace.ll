; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_queue_trace.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_queue_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@kdebug_enable = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DECR_TIMER_QUEUE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_queue_trace(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load i32, i32* @kdebug_enable, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %79

8:                                                ; preds = %1
  %9 = call i32 (...) @splclock()
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = call i32 @timer_queue_lock_spin(%struct.TYPE_11__* %10)
  %12 = load i32, i32* @KDEBUG_TRACE, align 4
  %13 = load i32, i32* @DECR_TIMER_QUEUE, align 4
  %14 = load i32, i32* @DBG_FUNC_START, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (...) @mach_absolute_time()
  %20 = call i32 @TIMER_KDEBUG_TRACE(i32 %12, i32 %15, i32 %18, i32 %19, i32 0, i32 0, i32 0)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = call i32 @queue_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %65, label %25

25:                                               ; preds = %8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = call i32 @queue_first(i32* %27)
  %29 = call %struct.TYPE_10__* @TIMER_CALL(i32 %28)
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %3, align 8
  br label %30

30:                                               ; preds = %56, %25
  %31 = load i32, i32* @KDEBUG_TRACE, align 4
  %32 = load i32, i32* @DECR_TIMER_QUEUE, align 4
  %33 = load i32, i32* @DBG_FUNC_NONE, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = call %struct.TYPE_12__* @TCE(%struct.TYPE_10__* %38)
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = call %struct.TYPE_12__* @TCE(%struct.TYPE_10__* %42)
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = call %struct.TYPE_12__* @TCE(%struct.TYPE_10__* %46)
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @VM_KERNEL_UNSLIDE(i32 %49)
  %51 = call i32 @TIMER_KDEBUG_TRACE(i32 %31, i32 %34, i32 %37, i32 %41, i32 %45, i32 %50, i32 0)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = call i32 @qe(%struct.TYPE_10__* %52)
  %54 = call i32 @queue_next(i32 %53)
  %55 = call %struct.TYPE_10__* @TIMER_CALL(i32 %54)
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %3, align 8
  br label %56

56:                                               ; preds = %30
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = call i32 @qe(%struct.TYPE_10__* %59)
  %61 = call i32 @queue_end(i32* %58, i32 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br i1 %63, label %30, label %64

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %8
  %66 = load i32, i32* @KDEBUG_TRACE, align 4
  %67 = load i32, i32* @DECR_TIMER_QUEUE, align 4
  %68 = load i32, i32* @DBG_FUNC_END, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (...) @mach_absolute_time()
  %74 = call i32 @TIMER_KDEBUG_TRACE(i32 %66, i32 %69, i32 %72, i32 %73, i32 0, i32 0, i32 0)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = call i32 @timer_queue_unlock(%struct.TYPE_11__* %75)
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @splx(i32 %77)
  br label %79

79:                                               ; preds = %65, %7
  ret void
}

declare dso_local i32 @splclock(...) #1

declare dso_local i32 @timer_queue_lock_spin(%struct.TYPE_11__*) #1

declare dso_local i32 @TIMER_KDEBUG_TRACE(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @queue_empty(i32*) #1

declare dso_local %struct.TYPE_10__* @TIMER_CALL(i32) #1

declare dso_local i32 @queue_first(i32*) #1

declare dso_local %struct.TYPE_12__* @TCE(%struct.TYPE_10__*) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE(i32) #1

declare dso_local i32 @queue_next(i32) #1

declare dso_local i32 @qe(%struct.TYPE_10__*) #1

declare dso_local i32 @queue_end(i32*, i32) #1

declare dso_local i32 @timer_queue_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
