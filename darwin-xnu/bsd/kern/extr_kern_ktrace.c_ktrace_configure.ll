; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ktrace.c_ktrace_configure.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ktrace.c_ktrace_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ktrace_owning_unique_id = common dso_local global i64 0, align 8
@ktrace_active_mask = common dso_local global i32 0, align 4
@ktrace_bg_unique_id = common dso_local global i64 0, align 8
@ktrace_state = common dso_local global i64 0, align 8
@KTRACE_STATE_FG = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@KTRACE_STATE_BG = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@ktrace_owner_kernel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ktrace_configure(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @ktrace_assert_lock_held()
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = call i32 (...) @current_proc()
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @proc_uniqueid(i32 %11)
  %13 = load i64, i64* @ktrace_owning_unique_id, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @ktrace_active_mask, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* @ktrace_active_mask, align 4
  store i32 0, i32* %2, align 4
  br label %52

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @proc_uniqueid(i32 %20)
  %22 = load i64, i64* @ktrace_bg_unique_id, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i64, i64* @ktrace_state, align 8
  %26 = load i64, i64* @KTRACE_STATE_FG, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @EBUSY, align 4
  store i32 %29, i32* %2, align 4
  br label %52

30:                                               ; preds = %24, %19
  %31 = call i32 (...) @ktrace_ownership_maintenance()
  %32 = load i64, i64* @ktrace_owning_unique_id, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* @ktrace_state, align 8
  %36 = load i64, i64* @KTRACE_STATE_BG, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34, %30
  %39 = call i32 (...) @kauth_cred_get()
  %40 = call i32 @kauth_cred_issuser(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @EPERM, align 4
  store i32 %43, i32* %2, align 4
  br label %52

44:                                               ; preds = %38
  store i32 0, i32* @ktrace_owner_kernel, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @ktrace_set_owning_proc(i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @ktrace_active_mask, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* @ktrace_active_mask, align 4
  store i32 0, i32* %2, align 4
  br label %52

50:                                               ; preds = %34
  %51 = load i32, i32* @EBUSY, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %44, %42, %28, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @ktrace_assert_lock_held(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i64 @proc_uniqueid(i32) #1

declare dso_local i32 @ktrace_ownership_maintenance(...) #1

declare dso_local i32 @kauth_cred_issuser(i32) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i32 @ktrace_set_owning_proc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
