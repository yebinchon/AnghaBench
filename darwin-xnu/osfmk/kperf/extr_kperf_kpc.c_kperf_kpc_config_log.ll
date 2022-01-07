; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_kpc.c_kperf_kpc_config_log.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_kpc.c_kperf_kpc_config_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpcdata = type { i32, i32, i32 }

@PERF_KPC_CONFIG = common dso_local global i32 0, align 4
@KPC_CLASS_FIXED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kpcdata*)* @kperf_kpc_config_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kperf_kpc_config_log(%struct.kpcdata* %0) #0 {
  %2 = alloca %struct.kpcdata*, align 8
  store %struct.kpcdata* %0, %struct.kpcdata** %2, align 8
  %3 = load i32, i32* @PERF_KPC_CONFIG, align 4
  %4 = load %struct.kpcdata*, %struct.kpcdata** %2, align 8
  %5 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.kpcdata*, %struct.kpcdata** %2, align 8
  %8 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @KPC_CLASS_FIXED_MASK, align 4
  %11 = call i32 @kpc_get_counter_count(i32 %10)
  %12 = load %struct.kpcdata*, %struct.kpcdata** %2, align 8
  %13 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BUF_DATA(i32 %3, i32 %6, i32 %9, i32 %11, i32 %14)
  ret void
}

declare dso_local i32 @BUF_DATA(i32, i32, i32, i32, i32) #1

declare dso_local i32 @kpc_get_counter_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
