; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ktrace.c_ktrace_set_owning_pid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ktrace.c_ktrace_set_owning_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@ktrace_keep_ownership_on_reset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ktrace_set_owning_pid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @ktrace_assert_lock_held()
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (...) @ktrace_set_invalid_owning_pid()
  store i32 0, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = call i32 (...) @ktrace_set_invalid_owning_pid()
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %2, align 4
  br label %29

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @proc_find(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = call i32 (...) @ktrace_set_invalid_owning_pid()
  %23 = load i32, i32* @ESRCH, align 4
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %16
  store i32 1, i32* @ktrace_keep_ownership_on_reset, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ktrace_set_owning_proc(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @proc_rele(i32 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %21, %13, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @ktrace_assert_lock_held(...) #1

declare dso_local i32 @ktrace_set_invalid_owning_pid(...) #1

declare dso_local i32 @proc_find(i32) #1

declare dso_local i32 @ktrace_set_owning_proc(i32) #1

declare dso_local i32 @proc_rele(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
