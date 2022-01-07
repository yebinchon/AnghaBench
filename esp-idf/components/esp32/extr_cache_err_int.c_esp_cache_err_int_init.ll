; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_cache_err_int.c_esp_cache_err_int_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_cache_err_int.c_esp_cache_err_int_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETS_CACHEERR_INUM = common dso_local global i32 0, align 4
@ETS_CACHE_IA_INTR_SOURCE = common dso_local global i32 0, align 4
@PRO_CPU_NUM = common dso_local global i64 0, align 8
@DPORT_CACHE_IA_INT_EN_REG = common dso_local global i32 0, align 4
@DPORT_CACHE_IA_INT_PRO_OPPOSITE = common dso_local global i32 0, align 4
@DPORT_CACHE_IA_INT_PRO_DRAM1 = common dso_local global i32 0, align 4
@DPORT_CACHE_IA_INT_PRO_DROM0 = common dso_local global i32 0, align 4
@DPORT_CACHE_IA_INT_PRO_IROM0 = common dso_local global i32 0, align 4
@DPORT_CACHE_IA_INT_PRO_IRAM0 = common dso_local global i32 0, align 4
@DPORT_CACHE_IA_INT_PRO_IRAM1 = common dso_local global i32 0, align 4
@DPORT_CACHE_IA_INT_APP_OPPOSITE = common dso_local global i32 0, align 4
@DPORT_CACHE_IA_INT_APP_DRAM1 = common dso_local global i32 0, align 4
@DPORT_CACHE_IA_INT_APP_DROM0 = common dso_local global i32 0, align 4
@DPORT_CACHE_IA_INT_APP_IROM0 = common dso_local global i32 0, align 4
@DPORT_CACHE_IA_INT_APP_IRAM0 = common dso_local global i32 0, align 4
@DPORT_CACHE_IA_INT_APP_IRAM1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_cache_err_int_init() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @xPortGetCoreID()
  store i64 %2, i64* %1, align 8
  %3 = load i32, i32* @ETS_CACHEERR_INUM, align 4
  %4 = call i32 @ESP_INTR_DISABLE(i32 %3)
  %5 = load i64, i64* %1, align 8
  %6 = load i32, i32* @ETS_CACHE_IA_INTR_SOURCE, align 4
  %7 = load i32, i32* @ETS_CACHEERR_INUM, align 4
  %8 = call i32 @intr_matrix_set(i64 %5, i32 %6, i32 %7)
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @PRO_CPU_NUM, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %0
  %13 = load i32, i32* @DPORT_CACHE_IA_INT_EN_REG, align 4
  %14 = load i32, i32* @DPORT_CACHE_IA_INT_PRO_OPPOSITE, align 4
  %15 = load i32, i32* @DPORT_CACHE_IA_INT_PRO_DRAM1, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @DPORT_CACHE_IA_INT_PRO_DROM0, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @DPORT_CACHE_IA_INT_PRO_IROM0, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @DPORT_CACHE_IA_INT_PRO_IRAM0, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @DPORT_CACHE_IA_INT_PRO_IRAM1, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @DPORT_SET_PERI_REG_MASK(i32 %13, i32 %24)
  br label %40

26:                                               ; preds = %0
  %27 = load i32, i32* @DPORT_CACHE_IA_INT_EN_REG, align 4
  %28 = load i32, i32* @DPORT_CACHE_IA_INT_APP_OPPOSITE, align 4
  %29 = load i32, i32* @DPORT_CACHE_IA_INT_APP_DRAM1, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DPORT_CACHE_IA_INT_APP_DROM0, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @DPORT_CACHE_IA_INT_APP_IROM0, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @DPORT_CACHE_IA_INT_APP_IRAM0, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @DPORT_CACHE_IA_INT_APP_IRAM1, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @DPORT_SET_PERI_REG_MASK(i32 %27, i32 %38)
  br label %40

40:                                               ; preds = %26, %12
  %41 = load i32, i32* @ETS_CACHEERR_INUM, align 4
  %42 = call i32 @ESP_INTR_ENABLE(i32 %41)
  ret void
}

declare dso_local i64 @xPortGetCoreID(...) #1

declare dso_local i32 @ESP_INTR_DISABLE(i32) #1

declare dso_local i32 @intr_matrix_set(i64, i32, i32) #1

declare dso_local i32 @DPORT_SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @ESP_INTR_ENABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
