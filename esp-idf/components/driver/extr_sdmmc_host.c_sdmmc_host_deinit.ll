; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_host.c_sdmmc_host_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_host.c_sdmmc_host_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_intr_handle = common dso_local global i32* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@s_event_queue = common dso_local global i32* null, align 8
@s_io_intr_event = common dso_local global i32* null, align 8
@PERIPH_SDMMC_MODULE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdmmc_host_deinit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @s_intr_handle, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %5, i32* %1, align 4
  br label %18

6:                                                ; preds = %0
  %7 = load i32*, i32** @s_intr_handle, align 8
  %8 = call i32 @esp_intr_free(i32* %7)
  store i32* null, i32** @s_intr_handle, align 8
  %9 = load i32*, i32** @s_event_queue, align 8
  %10 = call i32 @vQueueDelete(i32* %9)
  store i32* null, i32** @s_event_queue, align 8
  %11 = load i32*, i32** @s_io_intr_event, align 8
  %12 = call i32 @vQueueDelete(i32* %11)
  store i32* null, i32** @s_io_intr_event, align 8
  %13 = call i32 (...) @sdmmc_host_input_clk_disable()
  %14 = call i32 (...) @sdmmc_host_transaction_handler_deinit()
  %15 = load i32, i32* @PERIPH_SDMMC_MODULE, align 4
  %16 = call i32 @periph_module_disable(i32 %15)
  %17 = load i32, i32* @ESP_OK, align 4
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %6, %4
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @esp_intr_free(i32*) #1

declare dso_local i32 @vQueueDelete(i32*) #1

declare dso_local i32 @sdmmc_host_input_clk_disable(...) #1

declare dso_local i32 @sdmmc_host_transaction_handler_deinit(...) #1

declare dso_local i32 @periph_module_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
