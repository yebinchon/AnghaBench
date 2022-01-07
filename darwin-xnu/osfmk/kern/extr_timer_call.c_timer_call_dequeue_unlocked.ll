; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_call_dequeue_unlocked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_call_dequeue_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }

@.str = private unnamed_addr constant [33 x i8] c"timer_call_dequeue_unlocked(%p)\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@timer_longterm_queue = common dso_local global i32* null, align 8
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@DECR_TIMER_ASYNC_DEQ = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@timer_call_dequeue_unlocked_async1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @timer_call_dequeue_unlocked(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = call %struct.TYPE_12__* @TCE(%struct.TYPE_11__* %5)
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = call i32 @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %7)
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = call i32 @simple_lock(i32* %10)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = call i32* @MPQUEUE(%struct.TYPE_11__* %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @timer_queue_lock_spin(i32* %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i64, i64* @FALSE, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %30, align 8
  br label %34

31:                                               ; preds = %18
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = call i32 @timer_call_entry_dequeue(%struct.TYPE_11__* %32)
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** @timer_longterm_queue, align 8
  %37 = icmp eq i32* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = call i32 @timer_longterm_dequeued_locked(%struct.TYPE_11__* %39)
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @timer_queue_unlock(i32* %42)
  br label %44

44:                                               ; preds = %41, %1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = call i32 @simple_unlock(i32* %46)
  %48 = load i32*, i32** %4, align 8
  ret i32* %48
}

declare dso_local %struct.TYPE_12__* @TCE(%struct.TYPE_11__*) #1

declare dso_local i32 @DBG(i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32* @MPQUEUE(%struct.TYPE_11__*) #1

declare dso_local i32 @timer_queue_lock_spin(i32*) #1

declare dso_local i32 @timer_call_entry_dequeue(%struct.TYPE_11__*) #1

declare dso_local i32 @timer_longterm_dequeued_locked(%struct.TYPE_11__*) #1

declare dso_local i32 @timer_queue_unlock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
