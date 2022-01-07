; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_action.c_kperf_kdebug_handler.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_action.c_kperf_kdebug_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kperf_sample = type { i32 }
%struct.kperf_context = type { i64*, i32, i32, i32, i32, i32 }

@SAMPLE_FLAG_PEND_USER = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@PERF_KDBG_HNDLR = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@TRIGGER_TYPE_KDEBUG = common dso_local global i32 0, align 4
@SAMPLE_FLAG_NON_INTERRUPT = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_kdebug_handler(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kperf_sample*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kperf_context, align 8
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %12 = load i32, i32* @SAMPLE_FLAG_PEND_USER, align 4
  store i32 %12, i32* %5, align 4
  store %struct.kperf_sample* null, %struct.kperf_sample** %6, align 8
  %13 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @kperf_kdebug_should_trigger(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %60

18:                                               ; preds = %2
  %19 = load i32, i32* @PERF_KDBG_HNDLR, align 4
  %20 = load i32, i32* @DBG_FUNC_START, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @BUF_VERB(i32 %21, i32 %22)
  %24 = call i32 (...) @current_thread()
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @get_threadtask(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %11, i32 0, i32 0
  store i64* null, i64** %27, align 8
  %28 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %11, i32 0, i32 1
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %11, i32 0, i32 2
  %30 = load i32, i32* @TRIGGER_TYPE_KDEBUG, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %11, i32 0, i32 3
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @task_pid(i32 %32)
  store i32 %33, i32* %31, align 8
  %34 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %11, i32 0, i32 4
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %11, i32 0, i32 5
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %36, align 8
  %38 = call i32 @ml_set_interrupts_enabled(i32 0)
  store i32 %38, i32* %8, align 4
  %39 = call %struct.kperf_sample* (...) @kperf_intr_sample_buffer()
  store %struct.kperf_sample* %39, %struct.kperf_sample** %6, align 8
  %40 = call i32 (...) @ml_at_interrupt_context()
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %18
  %43 = load i32, i32* @SAMPLE_FLAG_NON_INTERRUPT, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i64*, i64** %4, align 8
  %47 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %11, i32 0, i32 0
  store i64* %46, i64** %47, align 8
  br label %48

48:                                               ; preds = %42, %18
  %49 = load %struct.kperf_sample*, %struct.kperf_sample** %6, align 8
  %50 = call i32 (...) @kperf_kdebug_get_action()
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @kperf_sample(%struct.kperf_sample* %49, %struct.kperf_context* %11, i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ml_set_interrupts_enabled(i32 %53)
  %55 = load i32, i32* @PERF_KDBG_HNDLR, align 4
  %56 = load i32, i32* @DBG_FUNC_END, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @BUF_VERB(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %48, %17
  ret void
}

declare dso_local i32 @kperf_kdebug_should_trigger(i32) #1

declare dso_local i32 @BUF_VERB(i32, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @get_threadtask(i32) #1

declare dso_local i32 @task_pid(i32) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local %struct.kperf_sample* @kperf_intr_sample_buffer(...) #1

declare dso_local i32 @ml_at_interrupt_context(...) #1

declare dso_local i32 @kperf_sample(%struct.kperf_sample*, %struct.kperf_context*, i32, i32) #1

declare dso_local i32 @kperf_kdebug_get_action(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
