; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_performance_counters.c_rarch_perf_register.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_performance_counters.c_rarch_perf_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_perf_counter = type { i32 }

@RARCH_CTL_IS_PERFCNT_ENABLE = common dso_local global i32 0, align 4
@perf_ptr_rarch = common dso_local global i64 0, align 8
@MAX_COUNTERS = common dso_local global i64 0, align 8
@perf_counters_rarch = common dso_local global %struct.retro_perf_counter** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rarch_perf_register(%struct.retro_perf_counter* %0) #0 {
  %2 = alloca %struct.retro_perf_counter*, align 8
  store %struct.retro_perf_counter* %0, %struct.retro_perf_counter** %2, align 8
  %3 = load i32, i32* @RARCH_CTL_IS_PERFCNT_ENABLE, align 4
  %4 = call i32 @rarch_ctl(i32 %3, i32* null)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load %struct.retro_perf_counter*, %struct.retro_perf_counter** %2, align 8
  %8 = getelementptr inbounds %struct.retro_perf_counter, %struct.retro_perf_counter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = load i64, i64* @perf_ptr_rarch, align 8
  %13 = load i64, i64* @MAX_COUNTERS, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %6, %1
  br label %24

16:                                               ; preds = %11
  %17 = load %struct.retro_perf_counter*, %struct.retro_perf_counter** %2, align 8
  %18 = load %struct.retro_perf_counter**, %struct.retro_perf_counter*** @perf_counters_rarch, align 8
  %19 = load i64, i64* @perf_ptr_rarch, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @perf_ptr_rarch, align 8
  %21 = getelementptr inbounds %struct.retro_perf_counter*, %struct.retro_perf_counter** %18, i64 %19
  store %struct.retro_perf_counter* %17, %struct.retro_perf_counter** %21, align 8
  %22 = load %struct.retro_perf_counter*, %struct.retro_perf_counter** %2, align 8
  %23 = getelementptr inbounds %struct.retro_perf_counter, %struct.retro_perf_counter* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @rarch_ctl(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
