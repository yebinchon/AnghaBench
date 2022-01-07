; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_host.c_sdmmc_host_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_host.c_sdmmc_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@s_intr_handle = common dso_local global i32* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@PERIPH_SDMMC_MODULE = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"peripheral version %x, hardware config %08x\00", align 1
@SDMMC = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@SDMMC_EVENT_QUEUE_LENGTH = common dso_local global i32 0, align 4
@s_event_queue = common dso_local global i32* null, align 8
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@s_io_intr_event = common dso_local global i32* null, align 8
@ETS_SDIO_HOST_INTR_SOURCE = common dso_local global i32 0, align 4
@sdmmc_isr = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@SDMMC_INTMASK_CD = common dso_local global i32 0, align 4
@SDMMC_INTMASK_CMD_DONE = common dso_local global i32 0, align 4
@SDMMC_INTMASK_DATA_OVER = common dso_local global i32 0, align 4
@SDMMC_INTMASK_RCRC = common dso_local global i32 0, align 4
@SDMMC_INTMASK_DCRC = common dso_local global i32 0, align 4
@SDMMC_INTMASK_RTO = common dso_local global i32 0, align 4
@SDMMC_INTMASK_DTO = common dso_local global i32 0, align 4
@SDMMC_INTMASK_HTO = common dso_local global i32 0, align 4
@SDMMC_INTMASK_SBE = common dso_local global i32 0, align 4
@SDMMC_INTMASK_EBE = common dso_local global i32 0, align 4
@SDMMC_INTMASK_RESP_ERR = common dso_local global i32 0, align 4
@SDMMC_INTMASK_HLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sdmmc_host_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32*, i32** @s_intr_handle, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %6, i64* %1, align 8
  br label %84

7:                                                ; preds = %0
  %8 = load i32, i32* @PERIPH_SDMMC_MODULE, align 4
  %9 = call i32 @periph_module_reset(i32 %8)
  %10 = load i32, i32* @PERIPH_SDMMC_MODULE, align 4
  %11 = call i32 @periph_module_enable(i32 %10)
  %12 = call i32 @sdmmc_host_set_clk_div(i32 2)
  %13 = call i32 (...) @sdmmc_host_reset()
  %14 = load i32, i32* @TAG, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SDMMC, i32 0, i32 5), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SDMMC, i32 0, i32 4), align 4
  %17 = call i32 @ESP_LOGD(i32 %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SDMMC, i32 0, i32 3, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SDMMC, i32 0, i32 2, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SDMMC, i32 0, i32 1, i32 0), align 8
  %18 = load i32, i32* @SDMMC_EVENT_QUEUE_LENGTH, align 4
  %19 = call i32* @xQueueCreate(i32 %18, i32 4)
  store i32* %19, i32** @s_event_queue, align 8
  %20 = load i32*, i32** @s_event_queue, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %7
  %23 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %23, i64* %1, align 8
  br label %84

24:                                               ; preds = %7
  %25 = call i32* (...) @xSemaphoreCreateBinary()
  store i32* %25, i32** @s_io_intr_event, align 8
  %26 = load i32*, i32** @s_io_intr_event, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** @s_event_queue, align 8
  %30 = call i32 @vQueueDelete(i32* %29)
  store i32* null, i32** @s_event_queue, align 8
  %31 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %31, i64* %1, align 8
  br label %84

32:                                               ; preds = %24
  %33 = load i32, i32* @ETS_SDIO_HOST_INTR_SOURCE, align 4
  %34 = load i32*, i32** @s_event_queue, align 8
  %35 = call i64 @esp_intr_alloc(i32 %33, i32 0, i32* @sdmmc_isr, i32* %34, i32** @s_intr_handle)
  store i64 %35, i64* %2, align 8
  %36 = load i64, i64* %2, align 8
  %37 = load i64, i64* @ESP_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32*, i32** @s_event_queue, align 8
  %41 = call i32 @vQueueDelete(i32* %40)
  store i32* null, i32** @s_event_queue, align 8
  %42 = load i32*, i32** @s_io_intr_event, align 8
  %43 = call i32 @vSemaphoreDelete(i32* %42)
  store i32* null, i32** @s_io_intr_event, align 8
  %44 = load i64, i64* %2, align 8
  store i64 %44, i64* %1, align 8
  br label %84

45:                                               ; preds = %32
  %46 = load i32, i32* @SDMMC_INTMASK_CD, align 4
  %47 = load i32, i32* @SDMMC_INTMASK_CMD_DONE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SDMMC_INTMASK_DATA_OVER, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SDMMC_INTMASK_RCRC, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SDMMC_INTMASK_DCRC, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SDMMC_INTMASK_RTO, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SDMMC_INTMASK_DTO, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SDMMC_INTMASK_HTO, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SDMMC_INTMASK_SBE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SDMMC_INTMASK_EBE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @SDMMC_INTMASK_RESP_ERR, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @SDMMC_INTMASK_HLE, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SDMMC, i32 0, i32 2, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SDMMC, i32 0, i32 1, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SDMMC, i32 0, i32 0, i32 0), align 8
  %69 = call i32 (...) @sdmmc_host_dma_init()
  %70 = call i64 (...) @sdmmc_host_transaction_handler_init()
  store i64 %70, i64* %2, align 8
  %71 = load i64, i64* %2, align 8
  %72 = load i64, i64* @ESP_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %45
  %75 = load i32*, i32** @s_event_queue, align 8
  %76 = call i32 @vQueueDelete(i32* %75)
  store i32* null, i32** @s_event_queue, align 8
  %77 = load i32*, i32** @s_io_intr_event, align 8
  %78 = call i32 @vSemaphoreDelete(i32* %77)
  store i32* null, i32** @s_io_intr_event, align 8
  %79 = load i32*, i32** @s_intr_handle, align 8
  %80 = call i32 @esp_intr_free(i32* %79)
  store i32* null, i32** @s_intr_handle, align 8
  %81 = load i64, i64* %2, align 8
  store i64 %81, i64* %1, align 8
  br label %84

82:                                               ; preds = %45
  %83 = load i64, i64* @ESP_OK, align 8
  store i64 %83, i64* %1, align 8
  br label %84

84:                                               ; preds = %82, %74, %39, %28, %22, %5
  %85 = load i64, i64* %1, align 8
  ret i64 %85
}

declare dso_local i32 @periph_module_reset(i32) #1

declare dso_local i32 @periph_module_enable(i32) #1

declare dso_local i32 @sdmmc_host_set_clk_div(i32) #1

declare dso_local i32 @sdmmc_host_reset(...) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32, i32) #1

declare dso_local i32* @xQueueCreate(i32, i32) #1

declare dso_local i32* @xSemaphoreCreateBinary(...) #1

declare dso_local i32 @vQueueDelete(i32*) #1

declare dso_local i64 @esp_intr_alloc(i32, i32, i32*, i32*, i32**) #1

declare dso_local i32 @vSemaphoreDelete(i32*) #1

declare dso_local i32 @sdmmc_host_dma_init(...) #1

declare dso_local i64 @sdmmc_host_transaction_handler_init(...) #1

declare dso_local i32 @esp_intr_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
