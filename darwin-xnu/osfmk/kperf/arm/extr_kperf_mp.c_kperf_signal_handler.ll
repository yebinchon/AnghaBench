; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/arm/extr_kperf_mp.c_kperf_signal_handler.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/arm/extr_kperf_mp.c_kperf_signal_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kperf_timer = type { i32 }

@kperf_timerc = common dso_local global i64 0, align 8
@kperf_timerv = common dso_local global %struct.kperf_timer* null, align 8
@memory_order_relaxed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_signal_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kperf_timer*, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i32 @UINT64_C(i32 1)
  %8 = load i32, i32* %2, align 4
  %9 = shl i32 %7, %8
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i64, i64* @kperf_timerc, align 8
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %10
  %16 = load %struct.kperf_timer*, %struct.kperf_timer** @kperf_timerv, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %16, i64 %18
  store %struct.kperf_timer* %19, %struct.kperf_timer** %6, align 8
  %20 = load %struct.kperf_timer*, %struct.kperf_timer** %6, align 8
  %21 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %20, i32 0, i32 0
  %22 = load i32, i32* %3, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* @memory_order_relaxed, align 4
  %25 = call i32 @atomic_fetch_and_explicit(i32* %21, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %15
  %31 = load %struct.kperf_timer*, %struct.kperf_timer** %6, align 8
  %32 = call i32 @kperf_ipi_handler(%struct.kperf_timer* %31)
  br label %33

33:                                               ; preds = %30, %15
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %10

37:                                               ; preds = %10
  ret void
}

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @atomic_fetch_and_explicit(i32*, i32, i32) #1

declare dso_local i32 @kperf_ipi_handler(%struct.kperf_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
