; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_pet.c_pet_sample_all_tasks.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_pet.c_pet_sample_all_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pet_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@PERF_PET_SAMPLE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@PERF_PET_ERROR = common dso_local global i32 0, align 4
@ERR_TASK = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@pet_tasks_count = common dso_local global i32 0, align 4
@pet_tasks = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pet_sample_all_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pet_sample_all_tasks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @pet_lock, align 4
  %8 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %9 = call i32 @lck_mtx_assert(i32 %7, i32 %8)
  %10 = load i32, i32* @PERF_PET_SAMPLE, align 4
  %11 = load i32, i32* @DBG_FUNC_START, align 4
  %12 = or i32 %10, %11
  %13 = call i32 (i32, ...) @BUF_INFO(i32 %12)
  %14 = call i64 (...) @pet_tasks_prepare()
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @KERN_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load i32, i32* @PERF_PET_ERROR, align 4
  %20 = load i32, i32* @ERR_TASK, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 (i32, ...) @BUF_INFO(i32 %19, i32 %20, i64 %21)
  %23 = load i32, i32* @PERF_PET_SAMPLE, align 4
  %24 = load i32, i32* @DBG_FUNC_END, align 4
  %25 = or i32 %23, %24
  %26 = call i32 (i32, ...) @BUF_INFO(i32 %25, i32 0)
  br label %65

27:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %41, %27
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @pet_tasks_count, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32*, i32** @pet_tasks, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @pet_sample_task(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %28

44:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %56, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @pet_tasks_count, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i32*, i32** @pet_tasks, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @task_deallocate(i32 %54)
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %45

59:                                               ; preds = %45
  %60 = load i32, i32* @PERF_PET_SAMPLE, align 4
  %61 = load i32, i32* @DBG_FUNC_END, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @pet_tasks_count, align 4
  %64 = call i32 (i32, ...) @BUF_INFO(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %18
  ret void
}

declare dso_local i32 @lck_mtx_assert(i32, i32) #1

declare dso_local i32 @BUF_INFO(i32, ...) #1

declare dso_local i64 @pet_tasks_prepare(...) #1

declare dso_local i32 @pet_sample_task(i32, i32) #1

declare dso_local i32 @task_deallocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
