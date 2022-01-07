; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_pet.c_pet_sample_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_pet.c_pet_sample_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.kperf_context = type { i32, i32, %struct.TYPE_5__* }

@pet_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@SAMPLE_FLAG_IDLE_THREADS = common dso_local global i32 0, align 4
@SAMPLE_FLAG_THREAD_ONLY = common dso_local global i32 0, align 4
@PERF_PET_SAMPLE_THREAD = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SAMPLE_FLAG_EMPTY_CALLSTACK = common dso_local global i32 0, align 4
@pet_sample = common dso_local global i32 0, align 4
@pet_action_id = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_5__*, i32)* @pet_sample_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pet_sample_thread(i32 %0, i32 %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kperf_context, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @pet_lock, align 4
  %13 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %14 = call i32 @lck_mtx_assert(i32 %12, i32 %13)
  %15 = load i32, i32* @SAMPLE_FLAG_IDLE_THREADS, align 4
  %16 = load i32, i32* @SAMPLE_FLAG_THREAD_ONLY, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @PERF_PET_SAMPLE_THREAD, align 4
  %19 = load i32, i32* @DBG_FUNC_START, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @BUF_VERB(i32 %20)
  %22 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %10, i32 0, i32 0
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %10, i32 0, i32 1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %10, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %26, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = call i64 @kperf_thread_get_dirty(%struct.TYPE_5__* %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i32 @kperf_thread_set_dirty(%struct.TYPE_5__* %33, i32 %34)
  br label %48

36:                                               ; preds = %4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = srem i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @SAMPLE_FLAG_EMPTY_CALLSTACK, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %43, %36
  br label %48

48:                                               ; preds = %47, %32
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* @pet_sample, align 4
  %54 = load i32, i32* @pet_action_id, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @kperf_sample(i32 %53, %struct.kperf_context* %10, i32 %54, i32 %55)
  %57 = load i32, i32* @PERF_PET_SAMPLE_THREAD, align 4
  %58 = load i32, i32* @DBG_FUNC_END, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @BUF_VERB(i32 %59)
  ret void
}

declare dso_local i32 @lck_mtx_assert(i32, i32) #1

declare dso_local i32 @BUF_VERB(i32) #1

declare dso_local i64 @kperf_thread_get_dirty(%struct.TYPE_5__*) #1

declare dso_local i32 @kperf_thread_set_dirty(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @kperf_sample(i32, %struct.kperf_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
