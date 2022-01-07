; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_kpc.c_kperf_kpc_thread_sample.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_kpc.c_kperf_kpc_thread_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpcdata = type { i32, i32, i32, i64, i32 }

@PERF_KPC_THREAD_SAMPLE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@KPC_MAX_COUNTERS = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_kpc_thread_sample(%struct.kpcdata* %0, i32 %1) #0 {
  %3 = alloca %struct.kpcdata*, align 8
  %4 = alloca i32, align 4
  store %struct.kpcdata* %0, %struct.kpcdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @PERF_KPC_THREAD_SAMPLE, align 4
  %6 = load i32, i32* @DBG_FUNC_START, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* %4, align 4
  %9 = call i32 (i32, i32, ...) @BUF_INFO(i32 %7, i32 %8)
  %10 = call i32 (...) @kpc_get_running()
  %11 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %12 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @KPC_MAX_COUNTERS, align 4
  %14 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %15 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %17 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %16, i32 0, i32 0
  %18 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %19 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @kpc_get_curthread_counters(i32* %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %25 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %28 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(i32 %26, i32 0, i32 %32)
  br label %34

34:                                               ; preds = %23, %2
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %39 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  br label %54

40:                                               ; preds = %34
  %41 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %42 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @kpc_get_config_count(i32 %43)
  %45 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %46 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  %47 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %48 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %51 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @kpc_get_config(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %40, %37
  %55 = load i32, i32* @PERF_KPC_THREAD_SAMPLE, align 4
  %56 = load i32, i32* @DBG_FUNC_END, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %59 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.kpcdata*, %struct.kpcdata** %3, align 8
  %62 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i32, ...) @BUF_INFO(i32 %57, i32 %60, i32 %63)
  ret void
}

declare dso_local i32 @BUF_INFO(i32, i32, ...) #1

declare dso_local i32 @kpc_get_running(...) #1

declare dso_local i64 @kpc_get_curthread_counters(i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @kpc_get_config_count(i32) #1

declare dso_local i32 @kpc_get_config(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
