; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_platform_tests.c_lt_grab_hw_lock_with_to.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_platform_tests.c_lt_grab_hw_lock_with_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lt_hw_lock = common dso_local global i32 0, align 4
@LockTimeOut = common dso_local global i32 0, align 4
@lt_counter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lt_grab_hw_lock_with_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lt_grab_hw_lock_with_to() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = load i32, i32* @LockTimeOut, align 4
  %3 = call i64 @hw_lock_to(i32* @lt_hw_lock, i32 %2)
  %4 = icmp eq i64 0, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (...) @mp_enable_preemption()
  br label %1

7:                                                ; preds = %1
  %8 = load i32, i32* @lt_counter, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @lt_counter, align 4
  %10 = call i32 (...) @lt_spin_a_little_bit()
  %11 = call i32 @hw_lock_unlock(i32* @lt_hw_lock)
  ret void
}

declare dso_local i64 @hw_lock_to(i32*, i32) #1

declare dso_local i32 @mp_enable_preemption(...) #1

declare dso_local i32 @lt_spin_a_little_bit(...) #1

declare dso_local i32 @hw_lock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
