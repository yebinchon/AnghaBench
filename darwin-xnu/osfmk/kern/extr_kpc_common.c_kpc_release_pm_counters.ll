; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_release_pm_counters.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_release_pm_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kpc_pm_handler = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@kpc_pm_has_custom_config = common dso_local global i32 0, align 4
@kpc_pm_pmc_mask = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"kpc: pm released counters\0A\00", align 1
@KPC_CLASS_CONFIGURABLE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kpc_release_pm_counters() #0 {
  %1 = load i32*, i32** @kpc_pm_handler, align 8
  %2 = icmp ne i32* %1, null
  %3 = zext i1 %2 to i32
  %4 = call i32 @assert(i32 %3)
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* @kpc_pm_has_custom_config, align 4
  store i64 0, i64* @kpc_pm_pmc_mask, align 8
  store i32* null, i32** @kpc_pm_handler, align 8
  %6 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %8 = call i64 @kpc_get_counter_count(i32 %7)
  %9 = call i64 (...) @kpc_configurable_count()
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @kpc_get_counter_count(i32) #1

declare dso_local i64 @kpc_configurable_count(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
