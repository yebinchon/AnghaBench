; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_debug.c_DebuggerLock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_debug.c_DebuggerLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUGGER_NO_CPU = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@debugger_cpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @DebuggerLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DebuggerLock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @cpu_number()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @DEBUGGER_NO_CPU, align 4
  store i32 %4, i32* %2, align 4
  %5 = call i64 (...) @ml_get_interrupts_enabled()
  %6 = load i64, i64* @FALSE, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* @debugger_cpu, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  br label %23

14:                                               ; preds = %0
  br label %15

15:                                               ; preds = %20, %14
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @atomic_compare_exchange_strong(i32* @debugger_cpu, i32* %2, i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @DEBUGGER_NO_CPU, align 4
  store i32 %21, i32* %2, align 4
  br label %15

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %13
  ret void
}

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @atomic_compare_exchange_strong(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
