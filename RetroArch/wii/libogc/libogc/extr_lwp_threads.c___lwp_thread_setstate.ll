; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___lwp_thread_setstate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___lwp_thread_setstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32* }
%struct.TYPE_7__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@_context_switch_want = common dso_local global i32 0, align 4
@_thr_heir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lwp_thread_setstate(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @_CPU_ISR_Disable(i32 %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @__lwp_stateready(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @__lwp_clearstate(i32 %20, i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @_CPU_ISR_Restore(i32 %25)
  br label %62

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @__lwp_queue_onenode(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @__lwp_queue_init_empty(i32* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = call i32 @__lwp_priomap_removefrom(i32* %38)
  br label %45

40:                                               ; preds = %27
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = call i32 @__lwp_queue_extractI(i32* %43)
  br label %45

45:                                               ; preds = %40, %34
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @_CPU_ISR_Flash(i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = call i64 @__lwp_thread_isheir(%struct.TYPE_8__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 (...) @__lwp_thread_calcheir()
  br label %53

53:                                               ; preds = %51, %45
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = call i64 @__lwp_thread_isexec(%struct.TYPE_8__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* @_context_switch_want, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @_CPU_ISR_Restore(i32 %60)
  br label %62

62:                                               ; preds = %59, %17
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__lwp_stateready(i32) #1

declare dso_local i32 @__lwp_clearstate(i32, i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i64 @__lwp_queue_onenode(i32*) #1

declare dso_local i32 @__lwp_queue_init_empty(i32*) #1

declare dso_local i32 @__lwp_priomap_removefrom(i32*) #1

declare dso_local i32 @__lwp_queue_extractI(i32*) #1

declare dso_local i32 @_CPU_ISR_Flash(i32) #1

declare dso_local i64 @__lwp_thread_isheir(%struct.TYPE_8__*) #1

declare dso_local i32 @__lwp_thread_calcheir(...) #1

declare dso_local i64 @__lwp_thread_isexec(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
