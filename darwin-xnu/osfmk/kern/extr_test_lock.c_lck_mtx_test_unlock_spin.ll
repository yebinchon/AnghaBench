; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_lck_mtx_test_unlock_spin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_lck_mtx_test_unlock_spin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_mtx = common dso_local global i32 0, align 4
@TEST_MTX_UNLOCK_SPIN_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lck_mtx_test_unlock_spin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lck_mtx_test_unlock_spin() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @mach_absolute_time()
  store i32 %2, i32* %1, align 4
  %3 = call i32 @lck_mtx_unlock(i32* @test_mtx)
  %4 = load i32, i32* %1, align 4
  %5 = call i32 (...) @mach_absolute_time()
  %6 = load i32, i32* @TEST_MTX_UNLOCK_SPIN_STATS, align 4
  %7 = call i32 @update_test_mtx_stats(i32 %4, i32 %5, i32 %6)
  ret void
}

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @update_test_mtx_stats(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
