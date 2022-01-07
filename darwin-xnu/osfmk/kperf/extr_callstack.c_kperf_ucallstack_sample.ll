; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_callstack.c_kperf_ucallstack_sample.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_callstack.c_kperf_ucallstack_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callstack = type { i64, i32, i64 }
%struct.kperf_context = type { i32* }

@MAX_CALLSTACK_FRAMES = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@PERF_CS_USAMPLE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@CALLSTACK_KERNEL_WORDS = common dso_local global i32 0, align 4
@CALLSTACK_64BIT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@CALLSTACK_VALID = common dso_local global i32 0, align 4
@PERF_CS_ERROR = common dso_local global i32 0, align 4
@ERR_GETSTACK = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_ucallstack_sample(%struct.callstack* %0, %struct.kperf_context* %1) #0 {
  %3 = alloca %struct.callstack*, align 8
  %4 = alloca %struct.kperf_context*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.callstack* %0, %struct.callstack** %3, align 8
  store %struct.kperf_context* %1, %struct.kperf_context** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.callstack*, %struct.callstack** %3, align 8
  %9 = icmp ne %struct.callstack* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.kperf_context*, %struct.kperf_context** %4, align 8
  %13 = icmp ne %struct.kperf_context* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.callstack*, %struct.callstack** %3, align 8
  %17 = getelementptr inbounds %struct.callstack, %struct.callstack* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MAX_CALLSTACK_FRAMES, align 8
  %20 = icmp sle i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i64 (...) @ml_get_interrupts_enabled()
  %24 = load i64, i64* @TRUE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.kperf_context*, %struct.kperf_context** %4, align 8
  %29 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* @PERF_CS_USAMPLE, align 4
  %36 = load i32, i32* @DBG_FUNC_START, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @thread_tid(i32* %38)
  %40 = load %struct.callstack*, %struct.callstack** %3, align 8
  %41 = getelementptr inbounds %struct.callstack, %struct.callstack* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i32, i64, i64, ...) @BUF_INFO(i32 %37, i64 %39, i64 %42)
  %44 = load %struct.callstack*, %struct.callstack** %3, align 8
  %45 = getelementptr inbounds %struct.callstack, %struct.callstack* %44, i32 0, i32 1
  store i32 0, i32* %45, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.callstack*, %struct.callstack** %3, align 8
  %48 = getelementptr inbounds %struct.callstack, %struct.callstack* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i64*
  %51 = load %struct.callstack*, %struct.callstack** %3, align 8
  %52 = getelementptr inbounds %struct.callstack, %struct.callstack* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 1
  %55 = load %struct.callstack*, %struct.callstack** %3, align 8
  %56 = getelementptr inbounds %struct.callstack, %struct.callstack* %55, i32 0, i32 0
  %57 = call i32 @backtrace_thread_user(i32* %46, i64* %50, i64 %54, i64* %56, i32* %6)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* @CALLSTACK_KERNEL_WORDS, align 4
  %59 = load %struct.callstack*, %struct.callstack** %3, align 8
  %60 = getelementptr inbounds %struct.callstack, %struct.callstack* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %2
  %66 = load i32, i32* @CALLSTACK_64BIT, align 4
  %67 = load %struct.callstack*, %struct.callstack** %3, align 8
  %68 = getelementptr inbounds %struct.callstack, %struct.callstack* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %2
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @EFAULT, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74, %71
  %79 = load %struct.callstack*, %struct.callstack** %3, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @callstack_fixup_user(%struct.callstack* %79, i32* %80)
  %82 = load i32, i32* @CALLSTACK_VALID, align 4
  %83 = load %struct.callstack*, %struct.callstack** %3, align 8
  %84 = getelementptr inbounds %struct.callstack, %struct.callstack* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %96

87:                                               ; preds = %74
  %88 = load %struct.callstack*, %struct.callstack** %3, align 8
  %89 = getelementptr inbounds %struct.callstack, %struct.callstack* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* @PERF_CS_ERROR, align 4
  %91 = load i32, i32* @ERR_GETSTACK, align 4
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = call i32 (i32, i64, i64, ...) @BUF_INFO(i32 %90, i64 %92, i64 %94)
  br label %96

96:                                               ; preds = %87, %78
  %97 = load i32, i32* @PERF_CS_USAMPLE, align 4
  %98 = load i32, i32* @DBG_FUNC_END, align 4
  %99 = or i32 %97, %98
  %100 = load i32*, i32** %5, align 8
  %101 = call i64 @thread_tid(i32* %100)
  %102 = load %struct.callstack*, %struct.callstack** %3, align 8
  %103 = getelementptr inbounds %struct.callstack, %struct.callstack* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = load %struct.callstack*, %struct.callstack** %3, align 8
  %107 = getelementptr inbounds %struct.callstack, %struct.callstack* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i32, i64, i64, ...) @BUF_INFO(i32 %99, i64 %101, i64 %105, i64 %108)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @BUF_INFO(i32, i64, i64, ...) #1

declare dso_local i64 @thread_tid(i32*) #1

declare dso_local i32 @backtrace_thread_user(i32*, i64*, i64, i64*, i32*) #1

declare dso_local i32 @callstack_fixup_user(%struct.callstack*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
