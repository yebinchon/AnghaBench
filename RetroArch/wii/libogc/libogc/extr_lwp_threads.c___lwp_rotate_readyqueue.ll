; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___lwp_rotate_readyqueue.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___lwp_rotate_readyqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }

@_lwp_thr_ready = common dso_local global %struct.TYPE_12__* null, align 8
@_thr_executing = common dso_local global %struct.TYPE_13__* null, align 8
@_thr_heir = common dso_local global %struct.TYPE_13__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@_context_switch_want = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lwp_rotate_readyqueue(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_lwp_thr_ready, align 8
  %8 = load i64, i64* %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i64 %8
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** @_thr_executing, align 8
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = icmp eq %struct.TYPE_12__* %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (...) @__lwp_thread_yield()
  br label %56

18:                                               ; preds = %1
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @_CPU_ISR_Disable(i64 %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = call i32 @__lwp_queue_isempty(%struct.TYPE_12__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = call i32 @__lwp_queue_onenode(%struct.TYPE_12__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = call i32* @__lwp_queue_firstnodeI(%struct.TYPE_12__* %29)
  store i32* %30, i32** %6, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @__lwp_queue_appendI(%struct.TYPE_12__* %31, i32* %32)
  br label %34

34:                                               ; preds = %28, %24, %18
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @_CPU_ISR_Flash(i64 %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** @_thr_heir, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = icmp eq %struct.TYPE_12__* %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** @_thr_heir, align 8
  br label %47

47:                                               ; preds = %42, %34
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** @_thr_heir, align 8
  %50 = icmp ne %struct.TYPE_13__* %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* @_context_switch_want, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @_CPU_ISR_Restore(i64 %54)
  br label %56

56:                                               ; preds = %53, %16
  ret void
}

declare dso_local i32 @__lwp_thread_yield(...) #1

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i32 @__lwp_queue_isempty(%struct.TYPE_12__*) #1

declare dso_local i32 @__lwp_queue_onenode(%struct.TYPE_12__*) #1

declare dso_local i32* @__lwp_queue_firstnodeI(%struct.TYPE_12__*) #1

declare dso_local i32 @__lwp_queue_appendI(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @_CPU_ISR_Flash(i64) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
