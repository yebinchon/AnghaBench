; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_kpc_x86.c_kpc_get_all_cpus_counters.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_kpc_x86.c_kpc_get_all_cpus_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpc_get_counters_remote = type { i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@CPUMASK_ALL = common dso_local global i32 0, align 4
@ASYNC = common dso_local global i32 0, align 4
@kpc_get_curcpu_counters_mp_call = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kpc_get_all_cpus_counters(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kpc_get_counters_remote, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %8, i32 0, i32 1
  %11 = load i32*, i32** %6, align 8
  store i32* %11, i32** %10, align 8
  %12 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %8, i32 0, i32 2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @kpc_get_counter_count(i32 %13)
  store i32 %14, i32* %12, align 8
  %15 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %8, i32 0, i32 3
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @assert(i32* %17)
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32 @ml_set_interrupts_enabled(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = call %struct.TYPE_2__* (...) @current_processor()
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %3
  %29 = load i32, i32* @CPUMASK_ALL, align 4
  %30 = load i32, i32* @ASYNC, align 4
  %31 = load i32, i32* @kpc_get_curcpu_counters_mp_call, align 4
  %32 = call i32 @mp_cpus_call(i32 %29, i32 %30, i32 %31, %struct.kpc_get_counters_remote* %8)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ml_set_interrupts_enabled(i32 %33)
  %35 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  ret i32 %36
}

declare dso_local i32 @kpc_get_counter_count(i32) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local %struct.TYPE_2__* @current_processor(...) #1

declare dso_local i32 @mp_cpus_call(i32, i32, i32, %struct.kpc_get_counters_remote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
