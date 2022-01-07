; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_periph_ctrl.c_get_clk_en_mask.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_periph_ctrl.c_get_clk_en_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DPORT_RMT_CLK_EN = common dso_local global i32 0, align 4
@DPORT_LEDC_CLK_EN = common dso_local global i32 0, align 4
@DPORT_UART_CLK_EN = common dso_local global i32 0, align 4
@DPORT_UART1_CLK_EN = common dso_local global i32 0, align 4
@DPORT_I2C_EXT0_CLK_EN = common dso_local global i32 0, align 4
@DPORT_I2C_EXT1_CLK_EN = common dso_local global i32 0, align 4
@DPORT_I2S0_CLK_EN = common dso_local global i32 0, align 4
@DPORT_I2S1_CLK_EN = common dso_local global i32 0, align 4
@DPORT_TIMERGROUP_CLK_EN = common dso_local global i32 0, align 4
@DPORT_TIMERGROUP1_CLK_EN = common dso_local global i32 0, align 4
@DPORT_PWM0_CLK_EN = common dso_local global i32 0, align 4
@DPORT_PWM1_CLK_EN = common dso_local global i32 0, align 4
@DPORT_PWM2_CLK_EN = common dso_local global i32 0, align 4
@DPORT_PWM3_CLK_EN = common dso_local global i32 0, align 4
@DPORT_UHCI0_CLK_EN = common dso_local global i32 0, align 4
@DPORT_UHCI1_CLK_EN = common dso_local global i32 0, align 4
@DPORT_PCNT_CLK_EN = common dso_local global i32 0, align 4
@DPORT_SPI01_CLK_EN = common dso_local global i32 0, align 4
@DPORT_WIFI_CLK_SDIO_HOST_EN = common dso_local global i32 0, align 4
@DPORT_WIFI_CLK_SDIOSLAVE_EN = common dso_local global i32 0, align 4
@DPORT_CAN_CLK_EN = common dso_local global i32 0, align 4
@DPORT_WIFI_CLK_EMAC_EN = common dso_local global i32 0, align 4
@DPORT_WIFI_CLK_RNG_EN = common dso_local global i32 0, align 4
@DPORT_WIFI_CLK_BT_EN_M = common dso_local global i32 0, align 4
@DPORT_WIFI_CLK_WIFI_BT_COMMON_M = common dso_local global i32 0, align 4
@DPORT_BT_BASEBAND_EN = common dso_local global i32 0, align 4
@DPORT_BT_LC_EN = common dso_local global i32 0, align 4
@DPORT_PERI_EN_AES = common dso_local global i32 0, align 4
@DPORT_PERI_EN_RSA = common dso_local global i32 0, align 4
@DPORT_PERI_EN_SHA = common dso_local global i32 0, align 4
@DPORT_SPI2_CLK_EN = common dso_local global i32 0, align 4
@DPORT_SPI2_DMA_CLK_EN = common dso_local global i32 0, align 4
@DPORT_SPI3_CLK_EN = common dso_local global i32 0, align 4
@DPORT_SPI3_DMA_CLK_EN = common dso_local global i32 0, align 4
@DPORT_SPI4_CLK_EN = common dso_local global i32 0, align 4
@DPORT_SPI_DMA_CLK_EN = common dso_local global i32 0, align 4
@DPORT_SPI_SHARED_DMA_CLK_EN = common dso_local global i32 0, align 4
@DPORT_UART2_CLK_EN = common dso_local global i32 0, align 4
@DPORT_USB_CLK_EN = common dso_local global i32 0, align 4
@DPORT_WIFI_CLK_WIFI_EN_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_clk_en_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_clk_en_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %59 [
    i32 149, label %5
    i32 155, label %7
    i32 136, label %9
    i32 135, label %11
    i32 159, label %13
    i32 158, label %15
    i32 157, label %17
    i32 156, label %19
    i32 138, label %21
    i32 137, label %23
    i32 153, label %25
    i32 152, label %27
    i32 151, label %29
    i32 150, label %31
    i32 133, label %33
    i32 132, label %35
    i32 154, label %37
    i32 140, label %39
    i32 145, label %41
    i32 146, label %43
    i32 163, label %45
    i32 162, label %47
    i32 148, label %49
    i32 128, label %51
    i32 164, label %51
    i32 129, label %53
    i32 166, label %55
    i32 165, label %57
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @DPORT_RMT_CLK_EN, align 4
  store i32 %6, i32* %2, align 4
  br label %60

7:                                                ; preds = %1
  %8 = load i32, i32* @DPORT_LEDC_CLK_EN, align 4
  store i32 %8, i32* %2, align 4
  br label %60

9:                                                ; preds = %1
  %10 = load i32, i32* @DPORT_UART_CLK_EN, align 4
  store i32 %10, i32* %2, align 4
  br label %60

11:                                               ; preds = %1
  %12 = load i32, i32* @DPORT_UART1_CLK_EN, align 4
  store i32 %12, i32* %2, align 4
  br label %60

13:                                               ; preds = %1
  %14 = load i32, i32* @DPORT_I2C_EXT0_CLK_EN, align 4
  store i32 %14, i32* %2, align 4
  br label %60

15:                                               ; preds = %1
  %16 = load i32, i32* @DPORT_I2C_EXT1_CLK_EN, align 4
  store i32 %16, i32* %2, align 4
  br label %60

17:                                               ; preds = %1
  %18 = load i32, i32* @DPORT_I2S0_CLK_EN, align 4
  store i32 %18, i32* %2, align 4
  br label %60

19:                                               ; preds = %1
  %20 = load i32, i32* @DPORT_I2S1_CLK_EN, align 4
  store i32 %20, i32* %2, align 4
  br label %60

21:                                               ; preds = %1
  %22 = load i32, i32* @DPORT_TIMERGROUP_CLK_EN, align 4
  store i32 %22, i32* %2, align 4
  br label %60

23:                                               ; preds = %1
  %24 = load i32, i32* @DPORT_TIMERGROUP1_CLK_EN, align 4
  store i32 %24, i32* %2, align 4
  br label %60

25:                                               ; preds = %1
  %26 = load i32, i32* @DPORT_PWM0_CLK_EN, align 4
  store i32 %26, i32* %2, align 4
  br label %60

27:                                               ; preds = %1
  %28 = load i32, i32* @DPORT_PWM1_CLK_EN, align 4
  store i32 %28, i32* %2, align 4
  br label %60

29:                                               ; preds = %1
  %30 = load i32, i32* @DPORT_PWM2_CLK_EN, align 4
  store i32 %30, i32* %2, align 4
  br label %60

31:                                               ; preds = %1
  %32 = load i32, i32* @DPORT_PWM3_CLK_EN, align 4
  store i32 %32, i32* %2, align 4
  br label %60

33:                                               ; preds = %1
  %34 = load i32, i32* @DPORT_UHCI0_CLK_EN, align 4
  store i32 %34, i32* %2, align 4
  br label %60

35:                                               ; preds = %1
  %36 = load i32, i32* @DPORT_UHCI1_CLK_EN, align 4
  store i32 %36, i32* %2, align 4
  br label %60

37:                                               ; preds = %1
  %38 = load i32, i32* @DPORT_PCNT_CLK_EN, align 4
  store i32 %38, i32* %2, align 4
  br label %60

39:                                               ; preds = %1
  %40 = load i32, i32* @DPORT_SPI01_CLK_EN, align 4
  store i32 %40, i32* %2, align 4
  br label %60

41:                                               ; preds = %1
  %42 = load i32, i32* @DPORT_WIFI_CLK_SDIO_HOST_EN, align 4
  store i32 %42, i32* %2, align 4
  br label %60

43:                                               ; preds = %1
  %44 = load i32, i32* @DPORT_WIFI_CLK_SDIOSLAVE_EN, align 4
  store i32 %44, i32* %2, align 4
  br label %60

45:                                               ; preds = %1
  %46 = load i32, i32* @DPORT_CAN_CLK_EN, align 4
  store i32 %46, i32* %2, align 4
  br label %60

47:                                               ; preds = %1
  %48 = load i32, i32* @DPORT_WIFI_CLK_EMAC_EN, align 4
  store i32 %48, i32* %2, align 4
  br label %60

49:                                               ; preds = %1
  %50 = load i32, i32* @DPORT_WIFI_CLK_RNG_EN, align 4
  store i32 %50, i32* %2, align 4
  br label %60

51:                                               ; preds = %1, %1
  %52 = load i32, i32* @DPORT_WIFI_CLK_BT_EN_M, align 4
  store i32 %52, i32* %2, align 4
  br label %60

53:                                               ; preds = %1
  %54 = load i32, i32* @DPORT_WIFI_CLK_WIFI_BT_COMMON_M, align 4
  store i32 %54, i32* %2, align 4
  br label %60

55:                                               ; preds = %1
  %56 = load i32, i32* @DPORT_BT_BASEBAND_EN, align 4
  store i32 %56, i32* %2, align 4
  br label %60

57:                                               ; preds = %1
  %58 = load i32, i32* @DPORT_BT_LC_EN, align 4
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
