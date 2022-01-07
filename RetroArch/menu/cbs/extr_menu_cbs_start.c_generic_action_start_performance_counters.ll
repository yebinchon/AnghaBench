; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_start.c_generic_action_start_performance_counters.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_start.c_generic_action_start_performance_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_perf_counter = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.retro_perf_counter**, i32, i32, i8*)* @generic_action_start_performance_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_action_start_performance_counters(%struct.retro_perf_counter** %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.retro_perf_counter**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.retro_perf_counter** %0, %struct.retro_perf_counter*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load %struct.retro_perf_counter**, %struct.retro_perf_counter*** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.retro_perf_counter*, %struct.retro_perf_counter** %9, i64 %11
  %13 = load %struct.retro_perf_counter*, %struct.retro_perf_counter** %12, align 8
  %14 = icmp ne %struct.retro_perf_counter* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load %struct.retro_perf_counter**, %struct.retro_perf_counter*** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.retro_perf_counter*, %struct.retro_perf_counter** %16, i64 %18
  %20 = load %struct.retro_perf_counter*, %struct.retro_perf_counter** %19, align 8
  %21 = getelementptr inbounds %struct.retro_perf_counter, %struct.retro_perf_counter* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.retro_perf_counter**, %struct.retro_perf_counter*** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.retro_perf_counter*, %struct.retro_perf_counter** %22, i64 %24
  %26 = load %struct.retro_perf_counter*, %struct.retro_perf_counter** %25, align 8
  %27 = getelementptr inbounds %struct.retro_perf_counter, %struct.retro_perf_counter* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %15, %4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
