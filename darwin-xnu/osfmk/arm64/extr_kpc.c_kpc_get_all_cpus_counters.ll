; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_kpc_get_all_cpus_counters.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_kpc_get_all_cpus_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpc_get_counters_remote = type { i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@kpc_xread_sync = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@kpc_get_curcpu_counters_xcall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kpc_get_all_cpus_counters(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kpc_get_counters_remote, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* @FALSE, align 4
  %15 = call i32 @ml_set_interrupts_enabled(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = call %struct.TYPE_2__* (...) @current_processor()
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %18, %3
  %24 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %8, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %8, i32 0, i32 1
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @kpc_get_counter_count(i32 %26)
  store i32 %27, i32* %25, align 4
  %28 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %8, i32 0, i32 2
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %28, align 8
  %30 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %8, i32 0, i32 3
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %30, align 8
  %32 = load i32, i32* @TRUE, align 4
  %33 = load i32, i32* @kpc_get_curcpu_counters_xcall, align 4
  %34 = call i32 @cpu_broadcast_xcall(i32* @kpc_xread_sync, i32 %32, i32 %33, %struct.kpc_get_counters_remote* %8)
  %35 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ml_set_interrupts_enabled(i32 %37)
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local %struct.TYPE_2__* @current_processor(...) #1

declare dso_local i32 @kpc_get_counter_count(i32) #1

declare dso_local i32 @cpu_broadcast_xcall(i32*, i32, i32, %struct.kpc_get_counters_remote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
