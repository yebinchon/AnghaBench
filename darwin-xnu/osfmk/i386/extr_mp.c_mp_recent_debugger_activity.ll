; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_mp_recent_debugger_activity.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_mp_recent_debugger_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debugger_entry_time = common dso_local global i64 0, align 8
@LastDebuggerEntryAllowance = common dso_local global i64 0, align 8
@debugger_exit_time = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_recent_debugger_activity() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @mach_absolute_time()
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @debugger_entry_time, align 8
  %5 = sub nsw i64 %3, %4
  %6 = load i64, i64* @LastDebuggerEntryAllowance, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %0
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @debugger_exit_time, align 8
  %11 = sub nsw i64 %9, %10
  %12 = load i64, i64* @LastDebuggerEntryAllowance, align 8
  %13 = icmp slt i64 %11, %12
  br label %14

14:                                               ; preds = %8, %0
  %15 = phi i1 [ true, %0 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i64 @mach_absolute_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
