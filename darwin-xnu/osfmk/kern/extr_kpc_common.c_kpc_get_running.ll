; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_get_running.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_get_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KPC_CLASS_FIXED_MASK = common dso_local global i32 0, align 4
@KPC_CLASS_CONFIGURABLE_MASK = common dso_local global i32 0, align 4
@KPC_CLASS_POWER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kpc_get_running() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store i32 0, i32* %2, align 4
  %3 = call i64 (...) @kpc_is_running_fixed()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @KPC_CLASS_FIXED_MASK, align 4
  %7 = load i32, i32* %2, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %2, align 4
  br label %9

9:                                                ; preds = %5, %0
  %10 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %11 = call i64 @kpc_get_configurable_pmc_mask(i32 %10)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = call i64 @kpc_is_running_configurable(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %17 = load i32, i32* %2, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %15, %9
  %20 = load i32, i32* @KPC_CLASS_POWER_MASK, align 4
  %21 = call i64 @kpc_get_configurable_pmc_mask(i32 %20)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i64, i64* %1, align 8
  %26 = call i64 @kpc_is_running_configurable(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @KPC_CLASS_POWER_MASK, align 4
  %30 = load i32, i32* %2, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %24, %19
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @kpc_is_running_fixed(...) #1

declare dso_local i64 @kpc_get_configurable_pmc_mask(i32) #1

declare dso_local i64 @kpc_is_running_configurable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
