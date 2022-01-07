; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_kpc_x86.c_kpc_set_running_arch.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_kpc_x86.c_kpc_set_running_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpc_running_remote = type { i32, i32 }

@CPUMASK_ALL = common dso_local global i32 0, align 4
@ASYNC = common dso_local global i32 0, align 4
@kpc_set_running_mp_call = common dso_local global i32 0, align 4
@kpc_running_cfg_pmc_mask = common dso_local global i32 0, align 4
@kpc_running_classes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kpc_set_running_arch(%struct.kpc_running_remote* %0) #0 {
  %2 = alloca %struct.kpc_running_remote*, align 8
  store %struct.kpc_running_remote* %0, %struct.kpc_running_remote** %2, align 8
  %3 = load %struct.kpc_running_remote*, %struct.kpc_running_remote** %2, align 8
  %4 = call i32 @assert(%struct.kpc_running_remote* %3)
  %5 = load i32, i32* @CPUMASK_ALL, align 4
  %6 = load i32, i32* @ASYNC, align 4
  %7 = load i32, i32* @kpc_set_running_mp_call, align 4
  %8 = load %struct.kpc_running_remote*, %struct.kpc_running_remote** %2, align 8
  %9 = call i32 @mp_cpus_call(i32 %5, i32 %6, i32 %7, %struct.kpc_running_remote* %8)
  %10 = load %struct.kpc_running_remote*, %struct.kpc_running_remote** %2, align 8
  %11 = getelementptr inbounds %struct.kpc_running_remote, %struct.kpc_running_remote* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @kpc_running_cfg_pmc_mask, align 4
  %13 = load %struct.kpc_running_remote*, %struct.kpc_running_remote** %2, align 8
  %14 = getelementptr inbounds %struct.kpc_running_remote, %struct.kpc_running_remote* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* @kpc_running_classes, align 4
  ret i32 0
}

declare dso_local i32 @assert(%struct.kpc_running_remote*) #1

declare dso_local i32 @mp_cpus_call(i32, i32, i32, %struct.kpc_running_remote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
