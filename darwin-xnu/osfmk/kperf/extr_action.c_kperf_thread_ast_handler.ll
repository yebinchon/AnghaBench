; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_action.c_kperf_thread_ast_handler.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_action.c_kperf_thread_ast_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kperf_sample = type { i32 }
%struct.kperf_context = type { i32, i32, i32 }

@PERF_AST_HNDLR = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@SAMPLE_CONTINUE = common dso_local global i32 0, align 4
@T_KPERF_AST_DISPATCH = common dso_local global i32 0, align 4
@SAMPLER_TH_DISPATCH = common dso_local global i32 0, align 4
@T_KPERF_AST_CALLSTACK = common dso_local global i32 0, align 4
@SAMPLER_USTACK = common dso_local global i32 0, align 4
@SAMPLER_TH_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_thread_ast_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kperf_sample, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.kperf_context, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @PERF_AST_HNDLR, align 4
  %11 = load i32, i32* @DBG_FUNC_START, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @kperf_get_thread_flags(i32 %14)
  %16 = call i32 (i32, i32, ...) @BUF_INFO(i32 %12, i32 %13, i32 %15)
  %17 = call i32 @memset(%struct.kperf_sample* %3, i32 0, i32 4)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @get_threadtask(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @task_did_exec(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @task_is_exec_copy(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23, %1
  %28 = load i32, i32* @PERF_AST_HNDLR, align 4
  %29 = load i32, i32* @DBG_FUNC_END, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SAMPLE_CONTINUE, align 4
  %32 = call i32 (i32, i32, ...) @BUF_INFO(i32 %30, i32 %31)
  br label %74

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %5, i32 0, i32 0
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @task_pid(i32 %35)
  store i32 %36, i32* %34, align 4
  %37 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %5, i32 0, i32 1
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %5, i32 0, i32 2
  %40 = load i32, i32* %2, align 4
  store i32 %40, i32* %39, align 4
  store i32 0, i32* %6, align 4
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @kperf_get_thread_flags(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @T_KPERF_AST_DISPATCH, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load i32, i32* @SAMPLER_TH_DISPATCH, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %33
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @T_KPERF_AST_CALLSTACK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* @SAMPLER_USTACK, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @SAMPLER_TH_INFO, align 4
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %56, %51
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @T_KPERF_GET_CALLSTACK_DEPTH(i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @kperf_sample_internal(%struct.kperf_sample* %3, %struct.kperf_context* %5, i32 %66, i32 0, i32 0, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* @PERF_AST_HNDLR, align 4
  %70 = load i32, i32* @DBG_FUNC_END, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %9, align 4
  %73 = call i32 (i32, i32, ...) @BUF_INFO(i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %63, %27
  ret void
}

declare dso_local i32 @BUF_INFO(i32, i32, ...) #1

declare dso_local i32 @kperf_get_thread_flags(i32) #1

declare dso_local i32 @memset(%struct.kperf_sample*, i32, i32) #1

declare dso_local i32 @get_threadtask(i32) #1

declare dso_local i64 @task_did_exec(i32) #1

declare dso_local i64 @task_is_exec_copy(i32) #1

declare dso_local i32 @task_pid(i32) #1

declare dso_local i32 @T_KPERF_GET_CALLSTACK_DEPTH(i32) #1

declare dso_local i32 @kperf_sample_internal(%struct.kperf_sample*, %struct.kperf_context*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
