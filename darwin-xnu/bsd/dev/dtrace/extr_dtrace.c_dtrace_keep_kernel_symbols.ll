; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_keep_kernel_symbols.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_keep_kernel_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dtrace_kernel_symbol_mode = common dso_local global i64 0, align 8
@DTRACE_KERNEL_SYMBOLS_ALWAYS_FROM_KERNEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_keep_kernel_symbols() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @dtrace_is_restricted()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = call i32 (...) @dtrace_are_restrictions_relaxed()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  store i32 0, i32* %1, align 4
  br label %14

8:                                                ; preds = %4, %0
  %9 = load i64, i64* @dtrace_kernel_symbol_mode, align 8
  %10 = load i64, i64* @DTRACE_KERNEL_SYMBOLS_ALWAYS_FROM_KERNEL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 1, i32* %1, align 4
  br label %14

13:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %13, %12, %7
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i64 @dtrace_is_restricted(...) #1

declare dso_local i32 @dtrace_are_restrictions_relaxed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
