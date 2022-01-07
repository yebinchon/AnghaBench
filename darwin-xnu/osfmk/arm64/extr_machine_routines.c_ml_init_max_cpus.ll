; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_machine_routines.c_ml_init_max_cpus.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_machine_routines.c_ml_init_max_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@max_cpus_initialized = common dso_local global i64 0, align 8
@MAX_CPUS_SET = common dso_local global i64 0, align 8
@machine_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MAX_CPUS_WAIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ml_init_max_cpus(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @FALSE, align 4
  %5 = call i32 @ml_set_interrupts_enabled(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i64, i64* @max_cpus_initialized, align 8
  %7 = load i64, i64* @MAX_CPUS_SET, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @machine_info, i32 0, i32 0), align 4
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @machine_info, i32 0, i32 1), align 4
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @machine_info, i32 0, i32 2), align 4
  %13 = load i64, i64* @max_cpus_initialized, align 8
  %14 = load i64, i64* @MAX_CPUS_WAIT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = call i32 @thread_wakeup(i32 ptrtoint (i64* @max_cpus_initialized to i32))
  br label %18

18:                                               ; preds = %16, %9
  %19 = load i64, i64* @MAX_CPUS_SET, align 8
  store i64 %19, i64* @max_cpus_initialized, align 8
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ml_set_interrupts_enabled(i32 %21)
  ret void
}

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @thread_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
