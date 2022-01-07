; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_pet.c_pet_stop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_pet.c_pet_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pet_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@pet_initted = common dso_local global i32 0, align 4
@pet_tasks = common dso_local global i32* null, align 8
@pet_tasks_size = common dso_local global i64 0, align 8
@pet_tasks_count = common dso_local global i64 0, align 8
@pet_threads = common dso_local global i32* null, align 8
@pet_threads_size = common dso_local global i64 0, align 8
@pet_threads_count = common dso_local global i64 0, align 8
@pet_sample = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@pet_running = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pet_stop() #0 {
  %1 = load i32, i32* @pet_lock, align 4
  %2 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %3 = call i32 @lck_mtx_assert(i32 %1, i32 %2)
  %4 = load i32, i32* @pet_initted, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %39

7:                                                ; preds = %0
  %8 = load i32*, i32** @pet_tasks, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load i64, i64* @pet_tasks_size, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32*, i32** @pet_tasks, align 8
  %16 = load i64, i64* @pet_tasks_size, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @kfree(i32* %15, i32 %17)
  store i32* null, i32** @pet_tasks, align 8
  store i64 0, i64* @pet_tasks_size, align 8
  store i64 0, i64* @pet_tasks_count, align 8
  br label %19

19:                                               ; preds = %10, %7
  %20 = load i32*, i32** @pet_threads, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i64, i64* @pet_threads_size, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** @pet_threads, align 8
  %28 = load i64, i64* @pet_threads_size, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @kfree(i32* %27, i32 %29)
  store i32* null, i32** @pet_threads, align 8
  store i64 0, i64* @pet_threads_size, align 8
  store i64 0, i64* @pet_threads_count, align 8
  br label %31

31:                                               ; preds = %22, %19
  %32 = load i32*, i32** @pet_sample, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** @pet_sample, align 8
  %36 = call i32 @kfree(i32* %35, i32 4)
  store i32* null, i32** @pet_sample, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* @pet_running, align 4
  br label %39

39:                                               ; preds = %37, %6
  ret void
}

declare dso_local i32 @lck_mtx_assert(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kfree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
