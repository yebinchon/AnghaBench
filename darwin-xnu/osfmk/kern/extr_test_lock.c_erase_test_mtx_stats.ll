; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_erase_test_mtx_stats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_erase_test_mtx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lck_mtx_test_stats_elem = type { i32, i32, i64, i64, i64, i64 }

@TEST_MTX_MAX_STATS = common dso_local global i64 0, align 8
@lck_mtx_test_stats = common dso_local global %struct.lck_mtx_test_stats_elem* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @erase_test_mtx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @erase_test_mtx_stats(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.lck_mtx_test_stats_elem*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @TEST_MTX_MAX_STATS, align 8
  %6 = icmp ult i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** @lck_mtx_test_stats, align 8
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %9, i64 %10
  store %struct.lck_mtx_test_stats_elem* %11, %struct.lck_mtx_test_stats_elem** %3, align 8
  %12 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %3, align 8
  %13 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %12, i32 0, i32 0
  %14 = call i32 @lck_spin_lock(i32* %13)
  %15 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %3, align 8
  %16 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %3, align 8
  %18 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %3, align 8
  %20 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %3, align 8
  %22 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %3, align 8
  %24 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %23, i32 0, i32 1
  store i32 -1, i32* %24, align 4
  %25 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %3, align 8
  %26 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %25, i32 0, i32 0
  %27 = call i32 @lck_spin_unlock(i32* %26)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lck_spin_lock(i32*) #1

declare dso_local i32 @lck_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
