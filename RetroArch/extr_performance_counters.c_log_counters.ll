; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_performance_counters.c_log_counters.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_performance_counters.c_log_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_perf_counter = type { i64, i64, i32 }

@PERF_LOG_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.retro_perf_counter**, i32)* @log_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_counters(%struct.retro_perf_counter** %0, i32 %1) #0 {
  %3 = alloca %struct.retro_perf_counter**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.retro_perf_counter** %0, %struct.retro_perf_counter*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %55, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %58

10:                                               ; preds = %6
  %11 = load %struct.retro_perf_counter**, %struct.retro_perf_counter*** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.retro_perf_counter*, %struct.retro_perf_counter** %11, i64 %13
  %15 = load %struct.retro_perf_counter*, %struct.retro_perf_counter** %14, align 8
  %16 = getelementptr inbounds %struct.retro_perf_counter, %struct.retro_perf_counter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %10
  %20 = load i32, i32* @PERF_LOG_FMT, align 4
  %21 = load %struct.retro_perf_counter**, %struct.retro_perf_counter*** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.retro_perf_counter*, %struct.retro_perf_counter** %21, i64 %23
  %25 = load %struct.retro_perf_counter*, %struct.retro_perf_counter** %24, align 8
  %26 = getelementptr inbounds %struct.retro_perf_counter, %struct.retro_perf_counter* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.retro_perf_counter**, %struct.retro_perf_counter*** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.retro_perf_counter*, %struct.retro_perf_counter** %28, i64 %30
  %32 = load %struct.retro_perf_counter*, %struct.retro_perf_counter** %31, align 8
  %33 = getelementptr inbounds %struct.retro_perf_counter, %struct.retro_perf_counter* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.retro_perf_counter**, %struct.retro_perf_counter*** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.retro_perf_counter*, %struct.retro_perf_counter** %36, i64 %38
  %40 = load %struct.retro_perf_counter*, %struct.retro_perf_counter** %39, align 8
  %41 = getelementptr inbounds %struct.retro_perf_counter, %struct.retro_perf_counter* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = sdiv i32 %35, %43
  %45 = load %struct.retro_perf_counter**, %struct.retro_perf_counter*** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.retro_perf_counter*, %struct.retro_perf_counter** %45, i64 %47
  %49 = load %struct.retro_perf_counter*, %struct.retro_perf_counter** %48, align 8
  %50 = getelementptr inbounds %struct.retro_perf_counter, %struct.retro_perf_counter* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @RARCH_LOG(i32 %20, i32 %27, i32 %44, i32 %52)
  br label %54

54:                                               ; preds = %19, %10
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %6

58:                                               ; preds = %6
  ret void
}

declare dso_local i32 @RARCH_LOG(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
