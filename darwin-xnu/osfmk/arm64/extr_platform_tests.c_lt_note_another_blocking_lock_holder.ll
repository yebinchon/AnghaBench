; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_platform_tests.c_lt_note_another_blocking_lock_holder.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_platform_tests.c_lt_note_another_blocking_lock_holder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lt_hw_lock = common dso_local global i32 0, align 4
@lt_num_holders = common dso_local global i64 0, align 8
@lt_max_holders = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lt_note_another_blocking_lock_holder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lt_note_another_blocking_lock_holder() #0 {
  %1 = call i32 @hw_lock_lock(i32* @lt_hw_lock)
  %2 = load i64, i64* @lt_num_holders, align 8
  %3 = add nsw i64 %2, 1
  store i64 %3, i64* @lt_num_holders, align 8
  %4 = load i64, i64* @lt_max_holders, align 8
  %5 = load i64, i64* @lt_num_holders, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i64, i64* @lt_num_holders, align 8
  br label %11

9:                                                ; preds = %0
  %10 = load i64, i64* @lt_max_holders, align 8
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i64 [ %8, %7 ], [ %10, %9 ]
  store i64 %12, i64* @lt_max_holders, align 8
  %13 = call i32 @hw_lock_unlock(i32* @lt_hw_lock)
  ret void
}

declare dso_local i32 @hw_lock_lock(i32*) #1

declare dso_local i32 @hw_lock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
