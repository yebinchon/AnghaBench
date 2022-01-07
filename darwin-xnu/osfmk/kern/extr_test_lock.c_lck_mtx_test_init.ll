; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_lck_mtx_test_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_lck_mtx_test_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lck_mtx_test_init.first = internal global i32 0, align 4
@acquire = common dso_local global i32 0, align 4
@relaxed = common dso_local global i32 0, align 4
@test_mtx_grp_attr = common dso_local global i32 0, align 4
@test_mtx_grp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"testlck_mtx\00", align 1
@test_mtx_attr = common dso_local global i32 0, align 4
@test_mtx = common dso_local global i32 0, align 4
@release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lck_mtx_test_init() #0 {
  %1 = load i32, i32* @acquire, align 4
  %2 = call i32 @os_atomic_load(i32* @lck_mtx_test_init.first, i32 %1)
  %3 = icmp sge i32 %2, 2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %23

5:                                                ; preds = %0
  %6 = load i32, i32* @relaxed, align 4
  %7 = call i64 @os_atomic_cmpxchg(i32* @lck_mtx_test_init.first, i32 0, i32 1, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = call i32 @lck_grp_attr_setdefault(i32* @test_mtx_grp_attr)
  %11 = call i32 @lck_grp_init(i32* @test_mtx_grp, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* @test_mtx_grp_attr)
  %12 = call i32 @lck_attr_setdefault(i32* @test_mtx_attr)
  %13 = call i32 @lck_mtx_init(i32* @test_mtx, i32* @test_mtx_grp, i32* @test_mtx_attr)
  %14 = call i32 (...) @init_test_mtx_stats()
  %15 = load i32, i32* @release, align 4
  %16 = call i32 @os_atomic_inc(i32* @lck_mtx_test_init.first, i32 %15)
  br label %17

17:                                               ; preds = %9, %5
  br label %18

18:                                               ; preds = %22, %17
  %19 = load i32, i32* @acquire, align 4
  %20 = call i32 @os_atomic_load(i32* @lck_mtx_test_init.first, i32 %19)
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %18

23:                                               ; preds = %4, %18
  ret void
}

declare dso_local i32 @os_atomic_load(i32*, i32) #1

declare dso_local i64 @os_atomic_cmpxchg(i32*, i32, i32, i32) #1

declare dso_local i32 @lck_grp_attr_setdefault(i32*) #1

declare dso_local i32 @lck_grp_init(i32*, i8*, i32*) #1

declare dso_local i32 @lck_attr_setdefault(i32*) #1

declare dso_local i32 @lck_mtx_init(i32*, i32*, i32*) #1

declare dso_local i32 @init_test_mtx_stats(...) #1

declare dso_local i32 @os_atomic_inc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
