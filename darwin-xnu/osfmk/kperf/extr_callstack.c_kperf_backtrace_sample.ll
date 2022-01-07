; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_callstack.c_kperf_backtrace_sample.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_callstack.c_kperf_backtrace_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callstack = type { i32, i32, i64* }
%struct.kperf_context = type { i64, i32 }

@CALLSTACK_KERNEL = common dso_local global i32 0, align 4
@CALLSTACK_KERNEL_WORDS = common dso_local global i32 0, align 4
@CALLSTACK_64BIT = common dso_local global i32 0, align 4
@PERF_CS_BACKTRACE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@CALLSTACK_VALID = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_backtrace_sample(%struct.callstack* %0, %struct.kperf_context* %1) #0 {
  %3 = alloca %struct.callstack*, align 8
  %4 = alloca %struct.kperf_context*, align 8
  store %struct.callstack* %0, %struct.callstack** %3, align 8
  store %struct.kperf_context* %1, %struct.kperf_context** %4, align 8
  %5 = load %struct.callstack*, %struct.callstack** %3, align 8
  %6 = icmp ne %struct.callstack* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.kperf_context*, %struct.kperf_context** %4, align 8
  %10 = icmp ne %struct.kperf_context* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.kperf_context*, %struct.kperf_context** %4, align 8
  %14 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 (...) @current_thread()
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* @CALLSTACK_KERNEL, align 4
  %21 = load i32, i32* @CALLSTACK_KERNEL_WORDS, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.callstack*, %struct.callstack** %3, align 8
  %24 = getelementptr inbounds %struct.callstack, %struct.callstack* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @CALLSTACK_64BIT, align 4
  %26 = load %struct.callstack*, %struct.callstack** %3, align 8
  %27 = getelementptr inbounds %struct.callstack, %struct.callstack* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* @PERF_CS_BACKTRACE, align 4
  %31 = load i32, i32* @DBG_FUNC_START, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @BUF_VERB(i32 %32, i32 1)
  %34 = load %struct.callstack*, %struct.callstack** %3, align 8
  %35 = getelementptr inbounds %struct.callstack, %struct.callstack* %34, i32 0, i32 2
  %36 = bitcast i64** %35 to i64*
  %37 = load %struct.callstack*, %struct.callstack** %3, align 8
  %38 = getelementptr inbounds %struct.callstack, %struct.callstack* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load %struct.kperf_context*, %struct.kperf_context** %4, align 8
  %42 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @backtrace_frame(i64* %36, i32 %40, i32 %43)
  %45 = load %struct.callstack*, %struct.callstack** %3, align 8
  %46 = getelementptr inbounds %struct.callstack, %struct.callstack* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.callstack*, %struct.callstack** %3, align 8
  %48 = getelementptr inbounds %struct.callstack, %struct.callstack* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %2
  %52 = load i32, i32* @CALLSTACK_VALID, align 4
  %53 = load %struct.callstack*, %struct.callstack** %3, align 8
  %54 = getelementptr inbounds %struct.callstack, %struct.callstack* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.callstack*, %struct.callstack** %3, align 8
  %58 = getelementptr inbounds %struct.callstack, %struct.callstack* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = load %struct.callstack*, %struct.callstack** %3, align 8
  %61 = getelementptr inbounds %struct.callstack, %struct.callstack* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %59, i64 %64
  store i64 0, i64* %65, align 8
  %66 = load %struct.callstack*, %struct.callstack** %3, align 8
  %67 = getelementptr inbounds %struct.callstack, %struct.callstack* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %51, %2
  %71 = load i32, i32* @PERF_CS_BACKTRACE, align 4
  %72 = load i32, i32* @DBG_FUNC_END, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.callstack*, %struct.callstack** %3, align 8
  %75 = getelementptr inbounds %struct.callstack, %struct.callstack* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @BUF_VERB(i32 %73, i32 %76)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @current_thread(...) #1

declare dso_local i32 @BUF_VERB(i32, i32) #1

declare dso_local i32 @backtrace_frame(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
