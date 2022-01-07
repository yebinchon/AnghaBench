; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_get_config_count.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_get_config_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KPC_CLASS_FIXED_MASK = common dso_local global i32 0, align 4
@KPC_CLASS_CONFIGURABLE_MASK = common dso_local global i32 0, align 4
@KPC_CLASS_POWER_MASK = common dso_local global i32 0, align 4
@KPC_CLASS_RAWPMU_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kpc_get_config_count(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @KPC_CLASS_FIXED_MASK, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = call i64 (...) @kpc_fixed_config_count()
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %10
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %9, %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %18 = load i32, i32* @KPC_CLASS_POWER_MASK, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @kpc_get_configurable_pmc_mask(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @kpc_configurable_config_count(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %22, %15
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @KPC_CLASS_RAWPMU_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = call i32 (...) @kpc_multiple_clients()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = call i64 (...) @kpc_rawpmu_config_count()
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %36, %31
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @kpc_fixed_config_count(...) #1

declare dso_local i32 @kpc_get_configurable_pmc_mask(i32) #1

declare dso_local i64 @kpc_configurable_config_count(i32) #1

declare dso_local i32 @kpc_multiple_clients(...) #1

declare dso_local i64 @kpc_rawpmu_config_count(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
