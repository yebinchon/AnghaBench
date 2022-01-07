; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_callstack.c_kperf_continuation_sample.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_callstack.c_kperf_continuation_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callstack = type { i32, i32, i32* }
%struct.kperf_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@CALLSTACK_CONTINUATION = common dso_local global i32 0, align 4
@CALLSTACK_VALID = common dso_local global i32 0, align 4
@CALLSTACK_KERNEL = common dso_local global i32 0, align 4
@CALLSTACK_64BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_continuation_sample(%struct.callstack* %0, %struct.kperf_context* %1) #0 {
  %3 = alloca %struct.callstack*, align 8
  %4 = alloca %struct.kperf_context*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store %struct.callstack* %0, %struct.callstack** %3, align 8
  store %struct.kperf_context* %1, %struct.kperf_context** %4, align 8
  %6 = load %struct.callstack*, %struct.callstack** %3, align 8
  %7 = icmp ne %struct.callstack* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.kperf_context*, %struct.kperf_context** %4, align 8
  %11 = icmp ne %struct.kperf_context* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.kperf_context*, %struct.kperf_context** %4, align 8
  %15 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %5, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* @CALLSTACK_CONTINUATION, align 4
  %28 = load i32, i32* @CALLSTACK_VALID, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CALLSTACK_KERNEL, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.callstack*, %struct.callstack** %3, align 8
  %33 = getelementptr inbounds %struct.callstack, %struct.callstack* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @CALLSTACK_64BIT, align 4
  %35 = load %struct.callstack*, %struct.callstack** %3, align 8
  %36 = getelementptr inbounds %struct.callstack, %struct.callstack* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.callstack*, %struct.callstack** %3, align 8
  %40 = getelementptr inbounds %struct.callstack, %struct.callstack* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @VM_KERNEL_UNSLIDE(i32* %43)
  %45 = load %struct.callstack*, %struct.callstack** %3, align 8
  %46 = getelementptr inbounds %struct.callstack, %struct.callstack* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %44, i32* %48, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
