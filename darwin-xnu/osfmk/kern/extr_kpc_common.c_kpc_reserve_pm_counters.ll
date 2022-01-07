; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_reserve_pm_counters.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_reserve_pm_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kpc_pm_handler = common dso_local global i32* null, align 8
@kpc_pm_has_custom_config = common dso_local global i32 0, align 4
@kpc_pm_pmc_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"kpc: pm registered pmc_mask=%llx custom_config=%d\0A\00", align 1
@KPC_CLASS_CONFIGURABLE_MASK = common dso_local global i32 0, align 4
@force_all_ctrs = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kpc_reserve_pm_counters(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i64 (...) @kpc_configurable_count()
  %12 = shl i64 1, %11
  %13 = sub i64 %12, 1
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** @kpc_pm_handler, align 8
  %20 = icmp eq i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @kpc_popcount(i32 %26)
  %28 = call i64 (...) @kpc_configurable_count()
  %29 = icmp ule i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* @kpc_pm_has_custom_config, align 4
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* @kpc_pm_pmc_mask, align 4
  %34 = load i32*, i32** %5, align 8
  store i32* %34, i32** @kpc_pm_handler, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %39 = call i64 @kpc_get_counter_count(i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i32, i32* @kpc_pm_pmc_mask, align 4
  %41 = call i64 @kpc_popcount(i32 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %42, %43
  %45 = call i64 (...) @kpc_configurable_count()
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i64, i64* @force_all_ctrs, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %3
  %52 = load i32, i32* @FALSE, align 4
  br label %55

53:                                               ; preds = %3
  %54 = load i32, i32* @TRUE, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  ret i32 %56
}

declare dso_local i64 @kpc_configurable_count(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @kpc_popcount(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i64 @kpc_get_counter_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
