; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_get_configurable_pmc_mask.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_get_configurable_pmc_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KPC_CLASS_CONFIGURABLE_MASK = common dso_local global i32 0, align 4
@KPC_CLASS_POWER_MASK = common dso_local global i32 0, align 4
@force_all_ctrs = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@kpc_pm_pmc_mask = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@kpc_pm_handler = common dso_local global i32* null, align 8
@kpc_pm_has_custom_config = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kpc_get_configurable_pmc_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i64 (...) @kpc_configurable_count()
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %3, align 4
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %11 = load i32, i32* @KPC_CLASS_POWER_MASK, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %1
  br label %71

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 64
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = shl i64 1, %25
  %27 = sub i64 %26, 1
  store i64 %27, i64* %6, align 8
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %19
  %33 = load i64, i64* @force_all_ctrs, align 8
  %34 = load i64, i64* @TRUE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %4, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %4, align 8
  br label %47

40:                                               ; preds = %32
  %41 = load i64, i64* @kpc_pm_pmc_mask, align 8
  %42 = xor i64 %41, -1
  %43 = load i64, i64* %6, align 8
  %44 = and i64 %42, %43
  %45 = load i64, i64* %4, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %40, %36
  br label %48

48:                                               ; preds = %47, %19
  %49 = load i64, i64* @force_all_ctrs, align 8
  %50 = load i64, i64* @FALSE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = load i32*, i32** @kpc_pm_handler, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load i64, i64* @kpc_pm_has_custom_config, align 8
  %57 = load i64, i64* @FALSE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @KPC_CLASS_POWER_MASK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i64, i64* @kpc_pm_pmc_mask, align 8
  %66 = load i64, i64* %6, align 8
  %67 = and i64 %65, %66
  %68 = load i64, i64* %5, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %64, %59, %55, %52, %48
  br label %71

71:                                               ; preds = %70, %18
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* %5, align 8
  %74 = or i64 %72, %73
  %75 = load i64, i64* %6, align 8
  %76 = xor i64 %75, -1
  %77 = and i64 %74, %76
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* %5, align 8
  %83 = or i64 %81, %82
  %84 = call i64 @kpc_popcount(i64 %83)
  %85 = call i64 (...) @kpc_configurable_count()
  %86 = icmp sle i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* %5, align 8
  %91 = and i64 %89, %90
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i64, i64* %4, align 8
  %96 = load i64, i64* %5, align 8
  %97 = or i64 %95, %96
  ret i64 %97
}

declare dso_local i64 @kpc_configurable_count(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @kpc_popcount(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
