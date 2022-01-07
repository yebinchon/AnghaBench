; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_update_test_mtx_stats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_update_test_mtx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lck_mtx_test_stats_elem = type { i32, i32, i32, i64, i64, i32 }

@enabled = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@TEST_MTX_MAX_STATS = common dso_local global i64 0, align 8
@lck_mtx_test_stats = common dso_local global %struct.lck_mtx_test_stats_elem* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @update_test_mtx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_test_mtx_stats(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lck_mtx_test_stats_elem*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i64 @atomic_load(i32* @enabled)
  %10 = load i64, i64* @TRUE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %75

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @TEST_MTX_MAX_STATS, align 8
  %15 = icmp ult i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp sle i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = sub nsw i64 %23, %24
  store i64 %25, i64* %7, align 8
  %26 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** @lck_mtx_test_stats, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %26, i64 %27
  store %struct.lck_mtx_test_stats_elem* %28, %struct.lck_mtx_test_stats_elem** %8, align 8
  %29 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %30 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %29, i32 0, i32 5
  %31 = call i32 @lck_spin_lock(i32* %30)
  %32 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %33 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %38 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  %43 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %44 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %47 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %45, %48
  %50 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %51 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %53 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %12
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %60 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %12
  %62 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %63 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %70 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %69, i32 0, i32 4
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %61
  %72 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %73 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %72, i32 0, i32 5
  %74 = call i32 @lck_spin_unlock(i32* %73)
  br label %75

75:                                               ; preds = %71, %3
  ret void
}

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lck_spin_lock(i32*) #1

declare dso_local i32 @lck_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
