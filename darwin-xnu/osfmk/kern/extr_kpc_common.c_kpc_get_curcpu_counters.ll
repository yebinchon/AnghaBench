; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_get_curcpu_counters.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_get_curcpu_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@KPC_CLASS_FIXED_MASK = common dso_local global i32 0, align 4
@KPC_CLASS_CONFIGURABLE_MASK = common dso_local global i32 0, align 4
@KPC_CLASS_POWER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kpc_get_curcpu_counters(i32 %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = call i32 @assert(i64* %10)
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32 @ml_set_interrupts_enabled(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = call %struct.TYPE_2__* (...) @current_processor()
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %16, %3
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @KPC_CLASS_FIXED_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load i64*, i64** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = call i32 @kpc_get_fixed_counters(i64* %30)
  %32 = load i32, i32* @KPC_CLASS_FIXED_MASK, align 4
  %33 = call i64 @kpc_get_counter_count(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %26, %21
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %45 = call i64 @kpc_get_configurable_pmc_mask(i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @kpc_get_configurable_counters(i64* %49, i64 %50)
  %52 = load i64, i64* %9, align 8
  %53 = call i64 @kpc_popcount(i64 %52)
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %43, %38
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @KPC_CLASS_POWER_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load i32, i32* @KPC_CLASS_POWER_MASK, align 4
  %65 = call i64 @kpc_get_configurable_pmc_mask(i32 %64)
  store i64 %65, i64* %9, align 8
  %66 = load i64*, i64** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @kpc_get_configurable_counters(i64* %69, i64 %70)
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @kpc_popcount(i64 %72)
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %63, %58
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ml_set_interrupts_enabled(i32 %79)
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i32 @assert(i64*) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local %struct.TYPE_2__* @current_processor(...) #1

declare dso_local i32 @kpc_get_fixed_counters(i64*) #1

declare dso_local i64 @kpc_get_counter_count(i32) #1

declare dso_local i64 @kpc_get_configurable_pmc_mask(i32) #1

declare dso_local i32 @kpc_get_configurable_counters(i64*, i64) #1

declare dso_local i64 @kpc_popcount(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
