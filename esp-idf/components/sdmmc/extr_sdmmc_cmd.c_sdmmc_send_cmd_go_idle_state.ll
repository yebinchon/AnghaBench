; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_cmd.c_sdmmc_send_cmd_go_idle_state.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_cmd.c_sdmmc_send_cmd_go_idle_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SCF_CMD_BC = common dso_local global i32 0, align 4
@SCF_RSP_R0 = common dso_local global i32 0, align 4
@MMC_GO_IDLE_STATE = common dso_local global i32 0, align 4
@SDMMC_GO_IDLE_DELAY_MS = common dso_local global i32 0, align 4
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@SCF_RSP_R1 = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sdmmc_send_cmd_go_idle_state(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %6 = load i32, i32* @SCF_CMD_BC, align 4
  %7 = load i32, i32* @SCF_RSP_R0, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %10 = load i32, i32* @MMC_GO_IDLE_STATE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @sdmmc_send_cmd(i32* %11, %struct.TYPE_3__* %3)
  store i64 %12, i64* %4, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @host_is_spi(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* @SDMMC_GO_IDLE_DELAY_MS, align 4
  %19 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %20 = sdiv i32 %18, %19
  %21 = call i32 @vTaskDelay(i32 %20)
  %22 = load i32, i32* @SCF_RSP_R1, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = call i64 @sdmmc_send_cmd(i32* %26, %struct.TYPE_3__* %3)
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %16, %1
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @ESP_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* @SDMMC_GO_IDLE_DELAY_MS, align 4
  %34 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %35 = sdiv i32 %33, %34
  %36 = call i32 @vTaskDelay(i32 %35)
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i64 @sdmmc_send_cmd(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @host_is_spi(i32*) #1

declare dso_local i32 @vTaskDelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
