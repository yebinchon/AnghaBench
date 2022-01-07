; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_syscall_subr.c_thread_poll_yield.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_syscall_subr.c_thread_poll_yield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, i32 }

@TH_SFLAG_DEPRESS = common dso_local global i32 0, align 4
@TH_MODE_FIXED = common dso_local global i64 0, align 8
@max_poll_computation = common dso_local global i32 0, align 4
@sched_poll_yield_shift = common dso_local global i32 0, align 4
@TIMER_CALL_USER_CRITICAL = common dso_local global i32 0, align 4
@TH_SFLAG_POLLDEPRESS = common dso_local global i32 0, align 4
@SETPRI_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_poll_yield(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = call %struct.TYPE_7__* (...) @current_thread()
  %9 = icmp eq %struct.TYPE_7__* %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TH_SFLAG_DEPRESS, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TH_MODE_FIXED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %79

26:                                               ; preds = %1
  %27 = call i32 (...) @splsched()
  store i32 %27, i32* %3, align 4
  %28 = call i32 (...) @mach_absolute_time()
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @max_poll_computation, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %26
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = call i32 @thread_lock(%struct.TYPE_7__* %42)
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @sched_poll_yield_shift, align 4
  %52 = ashr i32 %50, %51
  %53 = add nsw i32 %49, %52
  store i32 %53, i32* %6, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 5
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @TIMER_CALL_USER_CRITICAL, align 4
  %58 = call i32 @timer_call_enter(i32* %55, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %41
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %60, %41
  %66 = load i32, i32* @TH_SFLAG_POLLDEPRESS, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %72 = load i32, i32* @SETPRI_DEFAULT, align 4
  %73 = call i32 @thread_recompute_sched_pri(%struct.TYPE_7__* %71, i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %75 = call i32 @thread_unlock(%struct.TYPE_7__* %74)
  br label %76

76:                                               ; preds = %65, %26
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @splx(i32 %77)
  br label %79

79:                                               ; preds = %76, %25
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @current_thread(...) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @thread_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @timer_call_enter(i32*, i32, i32) #1

declare dso_local i32 @thread_recompute_sched_pri(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
