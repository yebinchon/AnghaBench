; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_kpc.c_kperf_kpc_cpu_sample.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_kpc.c_kperf_kpc_cpu_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpcdata = type { i32, i32, i32, i64, i32, i32 }

@PERF_KPC_CPU_SAMPLE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_kpc_cpu_sample(%struct.kpcdata* %0, i32 %1) #0 {
  %3 = alloca %struct.kpcdata*, align 8
  %4 = alloca i32, align 4
  store %struct.kpcdata* %0, %struct.kpcdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @PERF_KPC_CPU_SAMPLE, align 4
  %6 = load i32, i32* @DBG_FUNC_START, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* %4, align 4
  %9 = call i32 (i32, i32, ...) @BUF_INFO(i32 %7, i32 %8)
  %10 = call i32 (...) @kpc_get_running()
  %11 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %12 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %14 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %17 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %16, i32 0, i32 5
  %18 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %19 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @kpc_get_cpu_counters(i32 0, i32 %15, i32* %17, i32 %20)
  %22 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %23 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %28 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  br label %43

29:                                               ; preds = %2
  %30 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %31 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @kpc_get_config_count(i32 %32)
  %34 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %35 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %37 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %40 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @kpc_get_config(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %29, %26
  %44 = load i32, i32* @PERF_KPC_CPU_SAMPLE, align 4
  %45 = load i32, i32* @DBG_FUNC_END, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %48 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %51 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i32, ...) @BUF_INFO(i32 %46, i32 %49, i32 %52)
  ret void
}

declare dso_local i32 @BUF_INFO(i32, i32, ...) #1

declare dso_local i32 @kpc_get_running(...) #1

declare dso_local i32 @kpc_get_cpu_counters(i32, i32, i32*, i32) #1

declare dso_local i64 @kpc_get_config_count(i32) #1

declare dso_local i32 @kpc_get_config(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
