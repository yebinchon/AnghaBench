; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_platform_tests.c_lt_reset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_platform_tests.c_lt_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lt_counter = common dso_local global i64 0, align 8
@lt_max_holders = common dso_local global i64 0, align 8
@lt_num_holders = common dso_local global i64 0, align 8
@lt_max_upgrade_holders = common dso_local global i64 0, align 8
@lt_upgrade_holders = common dso_local global i64 0, align 8
@lt_done_threads = common dso_local global i64 0, align 8
@lt_target_done_threads = common dso_local global i64 0, align 8
@lt_cpu_bind_id = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lt_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lt_reset() #0 {
  store i64 0, i64* @lt_counter, align 8
  store i64 0, i64* @lt_max_holders, align 8
  store i64 0, i64* @lt_num_holders, align 8
  store i64 0, i64* @lt_max_upgrade_holders, align 8
  store i64 0, i64* @lt_upgrade_holders, align 8
  store i64 0, i64* @lt_done_threads, align 8
  store i64 0, i64* @lt_target_done_threads, align 8
  store i64 0, i64* @lt_cpu_bind_id, align 8
  %1 = call i32 (...) @OSMemoryBarrier()
  ret void
}

declare dso_local i32 @OSMemoryBarrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
