; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ktrace.c_ktrace_init_background.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ktrace.c_ktrace_init_background.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRIV_KTRACE_BACKGROUND = common dso_local global i32 0, align 4
@should_notify_on_init = common dso_local global i32 0, align 4
@ktrace_state = common dso_local global i64 0, align 8
@KTRACE_STATE_OFF = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ktrace_bg_unique_id = common dso_local global i32 0, align 4
@ktrace_bg_pid = common dso_local global i32 0, align 4
@KTRACE_STATE_BG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ktrace_init_background to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ktrace_init_background() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %4 = call i32 (...) @ktrace_assert_lock_held()
  %5 = call i32 (...) @kauth_cred_get()
  %6 = load i32, i32* @PRIV_KTRACE_BACKGROUND, align 4
  %7 = call i32 @priv_check_cred(i32 %5, i32 %6, i32 0)
  store i32 %7, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %39

11:                                               ; preds = %0
  %12 = load i32, i32* @should_notify_on_init, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i64, i64* @ktrace_state, align 8
  %16 = load i64, i64* @KTRACE_STATE_OFF, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = call i64 (...) @ktrace_background_available_notify_user()
  %20 = load i64, i64* @KERN_FAILURE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %1, align 4
  br label %39

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %14
  store i32 0, i32* @should_notify_on_init, align 4
  br label %26

26:                                               ; preds = %25, %11
  %27 = call i32 (...) @current_proc()
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @proc_uniqueid(i32 %28)
  store i32 %29, i32* @ktrace_bg_unique_id, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @proc_pid(i32 %30)
  store i32 %31, i32* @ktrace_bg_pid, align 4
  %32 = load i64, i64* @ktrace_state, align 8
  %33 = load i64, i64* @KTRACE_STATE_BG, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @ktrace_set_owning_proc(i32 %36)
  br label %38

38:                                               ; preds = %35, %26
  store i32 0, i32* %1, align 4
  br label %39

39:                                               ; preds = %38, %22, %9
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @ktrace_assert_lock_held(...) #1

declare dso_local i32 @priv_check_cred(i32, i32, i32) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i64 @ktrace_background_available_notify_user(...) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @proc_uniqueid(i32) #1

declare dso_local i32 @proc_pid(i32) #1

declare dso_local i32 @ktrace_set_owning_proc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
