; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_performance_counters.c_performance_counter_register.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_performance_counters.c_performance_counter_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_perf_counter = type { i32 }

@perf_ptr_libretro = common dso_local global i64 0, align 8
@MAX_COUNTERS = common dso_local global i64 0, align 8
@perf_counters_libretro = common dso_local global %struct.retro_perf_counter** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @performance_counter_register(%struct.retro_perf_counter* %0) #0 {
  %2 = alloca %struct.retro_perf_counter*, align 8
  store %struct.retro_perf_counter* %0, %struct.retro_perf_counter** %2, align 8
  %3 = load %struct.retro_perf_counter*, %struct.retro_perf_counter** %2, align 8
  %4 = getelementptr inbounds %struct.retro_perf_counter, %struct.retro_perf_counter* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @perf_ptr_libretro, align 8
  %9 = load i64, i64* @MAX_COUNTERS, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  br label %20

12:                                               ; preds = %7
  %13 = load %struct.retro_perf_counter*, %struct.retro_perf_counter** %2, align 8
  %14 = load %struct.retro_perf_counter**, %struct.retro_perf_counter*** @perf_counters_libretro, align 8
  %15 = load i64, i64* @perf_ptr_libretro, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* @perf_ptr_libretro, align 8
  %17 = getelementptr inbounds %struct.retro_perf_counter*, %struct.retro_perf_counter** %14, i64 %15
  store %struct.retro_perf_counter* %13, %struct.retro_perf_counter** %17, align 8
  %18 = load %struct.retro_perf_counter*, %struct.retro_perf_counter** %2, align 8
  %19 = getelementptr inbounds %struct.retro_perf_counter, %struct.retro_perf_counter* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %20

20:                                               ; preds = %12, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
