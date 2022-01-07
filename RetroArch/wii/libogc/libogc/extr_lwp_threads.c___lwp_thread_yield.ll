; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___lwp_thread_yield.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___lwp_thread_yield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@_thr_executing = common dso_local global %struct.TYPE_11__* null, align 8
@_thr_heir = common dso_local global %struct.TYPE_11__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@_context_switch_want = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lwp_thread_yield() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** @_thr_executing, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %3, align 8
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @_CPU_ISR_Disable(i32 %8)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = call i32 @__lwp_queue_onenode(%struct.TYPE_10__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = call i32 @__lwp_queue_extractI(i32* %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = call i32 @__lwp_queue_appendI(%struct.TYPE_10__* %18, i32* %21)
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @_CPU_ISR_Flash(i32 %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = call i64 @__lwp_thread_isheir(%struct.TYPE_11__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %13
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** @_thr_heir, align 8
  br label %33

33:                                               ; preds = %28, %13
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* @_context_switch_want, align 4
  br label %42

35:                                               ; preds = %0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = call i64 @__lwp_thread_isheir(%struct.TYPE_11__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* @_context_switch_want, align 4
  br label %41

41:                                               ; preds = %39, %35
  br label %42

42:                                               ; preds = %41, %33
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @_CPU_ISR_Restore(i32 %43)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__lwp_queue_onenode(%struct.TYPE_10__*) #1

declare dso_local i32 @__lwp_queue_extractI(i32*) #1

declare dso_local i32 @__lwp_queue_appendI(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @_CPU_ISR_Flash(i32) #1

declare dso_local i64 @__lwp_thread_isheir(%struct.TYPE_11__*) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
