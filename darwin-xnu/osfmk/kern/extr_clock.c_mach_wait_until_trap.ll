; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_mach_wait_until_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_mach_wait_until_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mach_wait_until_trap_args = type { i32 }

@THREAD_ABORTSAFE = common dso_local global i32 0, align 4
@TIMEOUT_URGENCY_USER_NORMAL = common dso_local global i32 0, align 4
@THREAD_WAITING = common dso_local global i64 0, align 8
@mach_wait_until_continue = common dso_local global i32 0, align 4
@THREAD_INTERRUPTED = common dso_local global i64 0, align 8
@KERN_ABORTED = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mach_wait_until_trap(%struct.mach_wait_until_trap_args* %0) #0 {
  %2 = alloca %struct.mach_wait_until_trap_args*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.mach_wait_until_trap_args* %0, %struct.mach_wait_until_trap_args** %2, align 8
  %5 = load %struct.mach_wait_until_trap_args*, %struct.mach_wait_until_trap_args** %2, align 8
  %6 = getelementptr inbounds %struct.mach_wait_until_trap_args, %struct.mach_wait_until_trap_args* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @THREAD_ABORTSAFE, align 4
  %9 = load i32, i32* @TIMEOUT_URGENCY_USER_NORMAL, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @assert_wait_deadline_with_leeway(i32 ptrtoint (i32 (%struct.mach_wait_until_trap_args*)* @mach_wait_until_trap to i32), i32 %8, i32 %9, i32 %10, i32 0)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @THREAD_WAITING, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @mach_wait_until_continue, align 4
  %17 = call i64 @thread_block(i32 %16)
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @THREAD_INTERRUPTED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @KERN_ABORTED, align 4
  br label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @KERN_SUCCESS, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  ret i32 %27
}

declare dso_local i64 @assert_wait_deadline_with_leeway(i32, i32, i32, i32, i32) #1

declare dso_local i64 @thread_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
