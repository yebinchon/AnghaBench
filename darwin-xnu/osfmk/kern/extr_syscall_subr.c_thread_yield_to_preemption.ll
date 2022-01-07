; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_syscall_subr.c_thread_yield_to_preemption.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_syscall_subr.c_thread_yield_to_preemption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AST_NONE = common dso_local global i32 0, align 4
@AST_PREEMPT = common dso_local global i32 0, align 4
@AST_YIELD = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_yield_to_preemption() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32* (...) @ast_pending()
  store i32* %6, i32** %1, align 8
  %7 = load i32, i32* @AST_NONE, align 4
  store i32 %7, i32* %2, align 4
  %8 = load i32*, i32** %1, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AST_PREEMPT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %0
  %14 = call i32 (...) @current_thread()
  store i32 %14, i32* %4, align 4
  %15 = call i32 (...) @splsched()
  store i32 %15, i32* %5, align 4
  %16 = call i32 (...) @current_processor()
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @thread_lock(i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @AST_YIELD, align 4
  %21 = call i32 @csw_check(i32 %19, i32 %20)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @ast_on(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @thread_unlock(i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @AST_NONE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %13
  %30 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @thread_block_reason(i32 %30, i32* null, i32 %31)
  br label %33

33:                                               ; preds = %29, %13
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @splx(i32 %34)
  br label %36

36:                                               ; preds = %33, %0
  ret void
}

declare dso_local i32* @ast_pending(...) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @current_processor(...) #1

declare dso_local i32 @thread_lock(i32) #1

declare dso_local i32 @csw_check(i32, i32) #1

declare dso_local i32 @ast_on(i32) #1

declare dso_local i32 @thread_unlock(i32) #1

declare dso_local i32 @thread_block_reason(i32, i32*, i32) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
