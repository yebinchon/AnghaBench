; ModuleID = '/home/carl/AnghaBench/esp-idf/components/perfmon/extr_xtensa_perfmon_access.c_xtensa_perfmon_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/perfmon/extr_xtensa_perfmon_access.c_xtensa_perfmon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERI_PERFMON_MAX = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@PMCTRL_TRACELEVEL_MASK = common dso_local global i32 0, align 4
@PMCTRL_TRACELEVEL_SHIFT = common dso_local global i32 0, align 4
@PMCTRL_SELECT_MASK = common dso_local global i32 0, align 4
@PMCTRL_SELECT_SHIFT = common dso_local global i32 0, align 4
@PMCTRL_MASK_MASK = common dso_local global i32 0, align 4
@PMCTRL_MASK_SHIFT = common dso_local global i32 0, align 4
@PMCTRL_KRNLCNT_SHIFT = common dso_local global i32 0, align 4
@ERI_PERFMON_PM0 = common dso_local global i64 0, align 8
@ERI_PERFMON_PMCTRL0 = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xtensa_perfmon_init(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @ERI_PERFMON_MAX, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %17, i32* %6, align 4
  br label %55

18:                                               ; preds = %5
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @PMCTRL_TRACELEVEL_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @PMCTRL_TRACELEVEL_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @PMCTRL_SELECT_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @PMCTRL_SELECT_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %23, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @PMCTRL_MASK_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @PMCTRL_MASK_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %29, %34
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, 1
  %38 = load i32, i32* @PMCTRL_KRNLCNT_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %35, %39
  store i32 %40, i32* %12, align 4
  %41 = load i64, i64* @ERI_PERFMON_PM0, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = add i64 %41, %44
  %46 = call i32 @eri_write(i64 %45, i32 0)
  %47 = load i64, i64* @ERI_PERFMON_PMCTRL0, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = add i64 %47, %50
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @eri_write(i64 %51, i32 %52)
  %54 = load i32, i32* @ESP_OK, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %18, %16
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @eri_write(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
