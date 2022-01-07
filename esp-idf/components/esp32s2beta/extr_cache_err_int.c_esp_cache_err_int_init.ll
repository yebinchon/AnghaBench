; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_cache_err_int.c_esp_cache_err_int_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_cache_err_int.c_esp_cache_err_int_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETS_CACHEERR_INUM = common dso_local global i32 0, align 4
@ETS_CACHE_IA_INTR_SOURCE = common dso_local global i32 0, align 4
@DPORT_PRO_CACHE_IA_INT_EN_REG = common dso_local global i32 0, align 4
@DPORT_MMU_ENTRY_FAULT_INT_ENA = common dso_local global i32 0, align 4
@DPORT_DCACHE_REJECT_INT_ENA = common dso_local global i32 0, align 4
@DPORT_DCACHE_WRITE_FLASH_INT_ENA = common dso_local global i32 0, align 4
@DPORT_DC_PRELOAD_SIZE_FAULT_INT_ENA = common dso_local global i32 0, align 4
@DPORT_DC_SYNC_SIZE_FAULT_INT_ENA = common dso_local global i32 0, align 4
@DPORT_ICACHE_REJECT_INT_ENA = common dso_local global i32 0, align 4
@DPORT_IC_PRELOAD_SIZE_FAULT_INT_ENA = common dso_local global i32 0, align 4
@DPORT_IC_SYNC_SIZE_FAULT_INT_ENA = common dso_local global i32 0, align 4
@DPORT_CACHE_DBG_INT_CLR = common dso_local global i32 0, align 4
@DPORT_CACHE_DBG_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_cache_err_int_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @xPortGetCoreID()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @ETS_CACHEERR_INUM, align 4
  %4 = call i32 @ESP_INTR_DISABLE(i32 %3)
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @ETS_CACHE_IA_INTR_SOURCE, align 4
  %7 = load i32, i32* @ETS_CACHEERR_INUM, align 4
  %8 = call i32 @intr_matrix_set(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* @DPORT_PRO_CACHE_IA_INT_EN_REG, align 4
  %10 = load i32, i32* @DPORT_MMU_ENTRY_FAULT_INT_ENA, align 4
  %11 = load i32, i32* @DPORT_DCACHE_REJECT_INT_ENA, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @DPORT_DCACHE_WRITE_FLASH_INT_ENA, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @DPORT_DC_PRELOAD_SIZE_FAULT_INT_ENA, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @DPORT_DC_SYNC_SIZE_FAULT_INT_ENA, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @DPORT_ICACHE_REJECT_INT_ENA, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @DPORT_IC_PRELOAD_SIZE_FAULT_INT_ENA, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @DPORT_IC_SYNC_SIZE_FAULT_INT_ENA, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @DPORT_CACHE_DBG_INT_CLR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @DPORT_CACHE_DBG_EN, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @DPORT_SET_PERI_REG_MASK(i32 %9, i32 %28)
  %30 = load i32, i32* @ETS_CACHEERR_INUM, align 4
  %31 = call i32 @ESP_INTR_ENABLE(i32 %30)
  ret void
}

declare dso_local i32 @xPortGetCoreID(...) #1

declare dso_local i32 @ESP_INTR_DISABLE(i32) #1

declare dso_local i32 @intr_matrix_set(i32, i32, i32) #1

declare dso_local i32 @DPORT_SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @ESP_INTR_ENABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
