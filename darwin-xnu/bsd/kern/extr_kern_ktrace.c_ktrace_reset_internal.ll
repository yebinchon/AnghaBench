; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ktrace.c_ktrace_reset_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ktrace.c_ktrace_reset_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ktrace_keep_ownership_on_reset = common dso_local global i32 0, align 4
@ktrace_active_mask = common dso_local global i32 0, align 4
@KTRACE_KPERF = common dso_local global i32 0, align 4
@KTRACE_KDEBUG = common dso_local global i32 0, align 4
@ktrace_state = common dso_local global i64 0, align 8
@KTRACE_STATE_FG = common dso_local global i64 0, align 8
@KTRACE_STATE_BG = common dso_local global i64 0, align 8
@should_notify_on_init = common dso_local global i32 0, align 4
@KTRACE_STATE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ktrace_reset_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ktrace_reset_internal(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @ktrace_keep_ownership_on_reset, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, i32* @ktrace_active_mask, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* @ktrace_active_mask, align 4
  br label %10

10:                                               ; preds = %5, %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @KTRACE_KPERF, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 (...) @kperf_reset()
  br label %17

17:                                               ; preds = %15, %10
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @KTRACE_KDEBUG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 (...) @kdebug_reset()
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32, i32* @ktrace_active_mask, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load i64, i64* @ktrace_state, align 8
  %29 = load i64, i64* @KTRACE_STATE_FG, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (...) @ktrace_promote_background()
  br label %41

33:                                               ; preds = %27
  %34 = load i64, i64* @ktrace_state, align 8
  %35 = load i64, i64* @KTRACE_STATE_BG, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  store i32 1, i32* @should_notify_on_init, align 4
  %38 = call i32 (...) @ktrace_release_ownership()
  %39 = load i64, i64* @KTRACE_STATE_OFF, align 8
  store i64 %39, i64* @ktrace_state, align 8
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %31
  br label %42

42:                                               ; preds = %41, %24
  ret void
}

declare dso_local i32 @kperf_reset(...) #1

declare dso_local i32 @kdebug_reset(...) #1

declare dso_local i32 @ktrace_promote_background(...) #1

declare dso_local i32 @ktrace_release_ownership(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
