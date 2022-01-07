; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ktrace.c_ktrace_ownership_maintenance.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ktrace.c_ktrace_ownership_maintenance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ktrace_owning_unique_id = common dso_local global i64 0, align 8
@ktrace_owning_pid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ktrace_ownership_maintenance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ktrace_ownership_maintenance() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 (...) @ktrace_assert_lock_held()
  %3 = load i64, i64* @ktrace_owning_unique_id, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %23

6:                                                ; preds = %0
  %7 = load i32, i32* @ktrace_owning_pid, align 4
  %8 = call i32* @proc_find(i32 %7)
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = load i32*, i32** %1, align 8
  %13 = call i64 @proc_uniqueid(i32* %12)
  %14 = load i64, i64* @ktrace_owning_unique_id, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 (...) @ktrace_release_ownership()
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @proc_rele(i32* %19)
  br label %23

21:                                               ; preds = %6
  %22 = call i32 (...) @ktrace_release_ownership()
  br label %23

23:                                               ; preds = %5, %21, %18
  ret void
}

declare dso_local i32 @ktrace_assert_lock_held(...) #1

declare dso_local i32* @proc_find(i32) #1

declare dso_local i64 @proc_uniqueid(i32*) #1

declare dso_local i32 @ktrace_release_ownership(...) #1

declare dso_local i32 @proc_rele(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
