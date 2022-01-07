; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Exception.c_exception_signals.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Exception.c_exception_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGABRT = common dso_local global i32 0, align 4
@Exception_Signal = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exception_signals() #0 {
  %1 = load i32, i32* @SIGABRT, align 4
  %2 = load i32, i32* @Exception_Signal, align 4
  %3 = call i32 @signal(i32 %1, i32 %2)
  %4 = load i32, i32* @SIGFPE, align 4
  %5 = load i32, i32* @Exception_Signal, align 4
  %6 = call i32 @signal(i32 %4, i32 %5)
  %7 = load i32, i32* @SIGILL, align 4
  %8 = load i32, i32* @Exception_Signal, align 4
  %9 = call i32 @signal(i32 %7, i32 %8)
  %10 = load i32, i32* @SIGINT, align 4
  %11 = load i32, i32* @Exception_Signal, align 4
  %12 = call i32 @signal(i32 %10, i32 %11)
  %13 = load i32, i32* @SIGSEGV, align 4
  %14 = load i32, i32* @Exception_Signal, align 4
  %15 = call i32 @signal(i32 %13, i32 %14)
  %16 = load i32, i32* @SIGTERM, align 4
  %17 = load i32, i32* @Exception_Signal, align 4
  %18 = call i32 @signal(i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
