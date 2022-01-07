; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf.c_kperf_on_cpu_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf.c_kperf_on_cpu_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kperf_kdebug_cswitch = common dso_local global i64 0, align 8
@PERF_TI_CSWITCH = common dso_local global i32 0, align 4
@kperf_lightweight_pet_active = common dso_local global i64 0, align 8
@kperf_lazy_wait_action = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_on_cpu_internal(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %8 = load i64, i64* @kperf_kdebug_cswitch, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @get_threadtask(i32 %11)
  %13 = call i32 @task_pid(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @PERF_TI_CSWITCH, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @thread_tid(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @BUF_DATA(i32 %14, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %10, %3
  %20 = load i64, i64* @kperf_lightweight_pet_active, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i64*, i64** %6, align 8
  %26 = call i32 @kperf_pet_on_cpu(i32 %23, i32 %24, i64* %25)
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i64, i64* @kperf_lazy_wait_action, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i64*, i64** %6, align 8
  %34 = call i32 @kperf_lazy_wait_sample(i32 %31, i32 %32, i64* %33)
  br label %35

35:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @task_pid(i32) #1

declare dso_local i32 @get_threadtask(i32) #1

declare dso_local i32 @BUF_DATA(i32, i32, i32) #1

declare dso_local i32 @thread_tid(i32) #1

declare dso_local i32 @kperf_pet_on_cpu(i32, i32, i64*) #1

declare dso_local i32 @kperf_lazy_wait_sample(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
