; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_debug.c_DebuggerUnlock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_debug.c_DebuggerUnlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debugger_cpu = common dso_local global i64 0, align 8
@DEBUGGER_NO_CPU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @DebuggerUnlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DebuggerUnlock() #0 {
  %1 = load i64, i64* @debugger_cpu, align 8
  %2 = call i64 (...) @cpu_number()
  %3 = icmp eq i64 %1, %2
  %4 = zext i1 %3 to i32
  %5 = call i32 @assert(i32 %4)
  %6 = load i64, i64* @DEBUGGER_NO_CPU, align 8
  store i64 %6, i64* @debugger_cpu, align 8
  %7 = call i32 (...) @OSMemoryBarrier()
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @cpu_number(...) #1

declare dso_local i32 @OSMemoryBarrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
