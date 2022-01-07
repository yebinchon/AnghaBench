; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___lwp_thread_changepriority.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___lwp_thread_changepriority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32 }

@LWP_STATES_TRANSIENT = common dso_local global i32 0, align 4
@_thr_executing = common dso_local global %struct.TYPE_10__* null, align 8
@_thr_heir = common dso_local global %struct.TYPE_10__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@_context_switch_want = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lwp_thread_changepriority(%struct.TYPE_9__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = call i32 @__lwp_thread_settransient(%struct.TYPE_9__* %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @__lwp_thread_setpriority(%struct.TYPE_9__* %16, i64 %17)
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @_CPU_ISR_Disable(i64 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LWP_STATES_TRANSIENT, align 4
  %26 = call i32 @__lwp_clearstate(i32 %24, i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @__lwp_stateready(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %19
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @_CPU_ISR_Restore(i64 %35)
  br label %76

37:                                               ; preds = %19
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = call i32 @__lwp_priomap_addto(i32* %39)
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = call i32 @__lwp_queue_prependI(i32 %46, i32* %49)
  br label %59

51:                                               ; preds = %37
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = call i32 @__lwp_queue_appendI(i32 %54, i32* %57)
  br label %59

59:                                               ; preds = %51, %43
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @_CPU_ISR_Flash(i64 %60)
  %62 = call i32 (...) @__lwp_thread_calcheir()
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_thr_executing, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_thr_heir, align 8
  %65 = icmp eq %struct.TYPE_10__* %63, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_thr_executing, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* @_context_switch_want, align 4
  br label %73

73:                                               ; preds = %71, %66, %59
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @_CPU_ISR_Restore(i64 %74)
  br label %76

76:                                               ; preds = %73, %34
  ret void
}

declare dso_local i32 @__lwp_thread_settransient(%struct.TYPE_9__*) #1

declare dso_local i32 @__lwp_thread_setpriority(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i32 @__lwp_clearstate(i32, i32) #1

declare dso_local i32 @__lwp_stateready(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

declare dso_local i32 @__lwp_priomap_addto(i32*) #1

declare dso_local i32 @__lwp_queue_prependI(i32, i32*) #1

declare dso_local i32 @__lwp_queue_appendI(i32, i32*) #1

declare dso_local i32 @_CPU_ISR_Flash(i64) #1

declare dso_local i32 @__lwp_thread_calcheir(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
