; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_pet.c_pet_thread_loop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_pet.c_pet_thread_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERF_PET_THREAD = common dso_local global i32 0, align 4
@pet_lock = common dso_local global i32 0, align 4
@PERF_PET_IDLE = common dso_local global i32 0, align 4
@PERF_PET_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @pet_thread_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @pet_thread_loop(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @PERF_PET_THREAD, align 4
  %7 = call i32 (i32, ...) @BUF_INFO(i32 %6, i32 1)
  %8 = load i32, i32* @pet_lock, align 4
  %9 = call i32 @lck_mtx_lock(i32 %8)
  br label %10

10:                                               ; preds = %10, %2
  %11 = load i32, i32* @PERF_PET_IDLE, align 4
  %12 = call i32 (i32, ...) @BUF_INFO(i32 %11)
  %13 = call i32 (...) @pet_thread_idle()
  %14 = load i32, i32* @PERF_PET_RUN, align 4
  %15 = call i32 (i32, ...) @BUF_INFO(i32 %14)
  %16 = call i64 (...) @mach_absolute_time()
  store i64 %16, i64* %5, align 8
  %17 = call i32 (...) @pet_thread_work_unit()
  %18 = call i64 (...) @mach_absolute_time()
  %19 = load i64, i64* %5, align 8
  %20 = sub nsw i64 %18, %19
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @kperf_timer_pet_rearm(i64 %21)
  br label %10
}

declare dso_local i32 @BUF_INFO(i32, ...) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @pet_thread_idle(...) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @pet_thread_work_unit(...) #1

declare dso_local i32 @kperf_timer_pet_rearm(i64) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
