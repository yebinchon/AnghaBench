; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_machine_routines.c_platform_syscall.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_machine_routines.c_platform_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @platform_syscall(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i64 @get_saved_state_reg(i32* %4, i32 3)
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %28 [
    i32 0, label %8
    i32 1, label %14
    i32 2, label %20
    i32 3, label %24
  ]

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @get_saved_state_reg(i32* %9, i32 0)
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @get_saved_state_reg(i32* %11, i32 1)
  %13 = call i32 @icache_invalidate_trap(i64 %10, i64 %12)
  br label %29

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @get_saved_state_reg(i32* %15, i32 0)
  %17 = load i32*, i32** %2, align 8
  %18 = call i64 @get_saved_state_reg(i32* %17, i32 1)
  %19 = call i32 @dcache_flush_trap(i64 %16, i64 %18)
  br label %29

20:                                               ; preds = %1
  %21 = load i32*, i32** %2, align 8
  %22 = call i64 @get_saved_state_reg(i32* %21, i32 0)
  %23 = call i32 @thread_set_cthread_self(i64 %22)
  br label %29

24:                                               ; preds = %1
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 (...) @thread_get_cthread_self()
  %27 = call i32 @set_saved_state_reg(i32* %25, i32 0, i32 %26)
  br label %29

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %28, %24, %20, %14, %8
  %30 = call i32 (...) @thread_exception_return()
  unreachable
}

declare dso_local i64 @get_saved_state_reg(i32*, i32) #1

declare dso_local i32 @icache_invalidate_trap(i64, i64) #1

declare dso_local i32 @dcache_flush_trap(i64, i64) #1

declare dso_local i32 @thread_set_cthread_self(i64) #1

declare dso_local i32 @set_saved_state_reg(i32*, i32, i32) #1

declare dso_local i32 @thread_get_cthread_self(...) #1

declare dso_local i32 @thread_exception_return(...) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
