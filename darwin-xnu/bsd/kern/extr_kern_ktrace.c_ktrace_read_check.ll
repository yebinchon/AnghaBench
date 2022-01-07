; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ktrace.c_ktrace_read_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ktrace.c_ktrace_read_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ktrace_owning_unique_id = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ktrace_read_check() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @ktrace_assert_lock_held()
  %3 = call i32 (...) @current_proc()
  %4 = call i64 @proc_uniqueid(i32 %3)
  %5 = load i64, i64* @ktrace_owning_unique_id, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %17

8:                                                ; preds = %0
  %9 = call i32 (...) @kauth_cred_get()
  %10 = call i64 @kauth_cred_issuser(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @EPERM, align 4
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i32 [ 0, %12 ], [ %14, %13 ]
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %15, %7
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @ktrace_assert_lock_held(...) #1

declare dso_local i64 @proc_uniqueid(i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i64 @kauth_cred_issuser(i32) #1

declare dso_local i32 @kauth_cred_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
