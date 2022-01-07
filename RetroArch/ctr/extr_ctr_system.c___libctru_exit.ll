; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_system.c___libctru_exit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_system.c___libctru_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__system_argv = common dso_local global i64 0, align 8
@__linear_heap = common dso_local global i32 0, align 4
@__linear_heap_size = common dso_local global i64 0, align 8
@MEMOP_FREE = common dso_local global i32 0, align 4
@__heapBase = common dso_local global i32 0, align 4
@__heap_size = common dso_local global i64 0, align 8
@__stack_size_extra = common dso_local global i64 0, align 8
@__stack_bottom = common dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @__libctru_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* @__system_argv, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i64, i64* @__system_argv, align 8
  %8 = call i32 @free(i64 %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @__linear_heap, align 4
  %11 = load i64, i64* @__linear_heap_size, align 8
  %12 = load i32, i32* @MEMOP_FREE, align 4
  %13 = call i32 @svcControlMemory(i32* %3, i32 %10, i32 0, i64 %11, i32 %12, i32 0)
  %14 = load i32, i32* @__heapBase, align 4
  %15 = load i64, i64* @__heap_size, align 8
  %16 = load i32, i32* @MEMOP_FREE, align 4
  %17 = call i32 @svcControlMemory(i32* %3, i32 %14, i32 0, i64 %15, i32 %16, i32 0)
  %18 = load i64, i64* @__stack_size_extra, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %9
  %21 = load i32, i32* @__stack_bottom, align 4
  %22 = load i64, i64* @__stack_size_extra, align 8
  %23 = load i32, i32* @MEMOP_FREE, align 4
  %24 = call i32 @svcControlMemory(i32* %3, i32 %21, i32 0, i64 %22, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %20, %9
  %26 = call i32 (...) @envDestroyHandles()
  br i1 true, label %27, label %29

27:                                               ; preds = %25
  %28 = call i32 (...) @__sync_fini()
  br label %29

29:                                               ; preds = %27, %25
  br i1 true, label %30, label %32

30:                                               ; preds = %29
  %31 = call i32 (...) @__system_retAddr()
  br label %32

32:                                               ; preds = %30, %29
  %33 = call i32 (...) @svcExitProcess()
  unreachable
}

declare dso_local i32 @free(i64) #1

declare dso_local i32 @svcControlMemory(i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @envDestroyHandles(...) #1

declare dso_local i32 @__sync_fini(...) #1

declare dso_local i32 @__system_retAddr(...) #1

declare dso_local i32 @svcExitProcess(...) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
