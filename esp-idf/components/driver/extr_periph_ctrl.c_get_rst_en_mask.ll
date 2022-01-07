; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_periph_ctrl.c_get_rst_en_mask.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_periph_ctrl.c_get_rst_en_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DPORT_RMT_RST = common dso_local global i32 0, align 4
@DPORT_LEDC_RST = common dso_local global i32 0, align 4
@DPORT_UART_RST = common dso_local global i32 0, align 4
@DPORT_UART1_RST = common dso_local global i32 0, align 4
@DPORT_I2C_EXT0_RST = common dso_local global i32 0, align 4
@DPORT_I2C_EXT1_RST = common dso_local global i32 0, align 4
@DPORT_I2S0_RST = common dso_local global i32 0, align 4
@DPORT_I2S1_RST = common dso_local global i32 0, align 4
@DPORT_TIMERGROUP_RST = common dso_local global i32 0, align 4
@DPORT_TIMERGROUP1_RST = common dso_local global i32 0, align 4
@DPORT_PWM0_RST = common dso_local global i32 0, align 4
@DPORT_PWM1_RST = common dso_local global i32 0, align 4
@DPORT_PWM2_RST = common dso_local global i32 0, align 4
@DPORT_PWM3_RST = common dso_local global i32 0, align 4
@DPORT_UHCI0_RST = common dso_local global i32 0, align 4
@DPORT_UHCI1_RST = common dso_local global i32 0, align 4
@DPORT_PCNT_RST = common dso_local global i32 0, align 4
@DPORT_SPI01_RST = common dso_local global i32 0, align 4
@DPORT_SDIO_HOST_RST = common dso_local global i32 0, align 4
@DPORT_SDIO_RST = common dso_local global i32 0, align 4
@DPORT_CAN_RST = common dso_local global i32 0, align 4
@DPORT_EMAC_RST = common dso_local global i32 0, align 4
@DPORT_PERI_EN_AES = common dso_local global i32 0, align 4
@DPORT_PERI_EN_DIGITAL_SIGNATURE = common dso_local global i32 0, align 4
@DPORT_PERI_EN_RSA = common dso_local global i32 0, align 4
@DPORT_PERI_EN_SECUREBOOT = common dso_local global i32 0, align 4
@DPORT_PERI_EN_SHA = common dso_local global i32 0, align 4
@DPORT_SPI2_DMA_RST = common dso_local global i32 0, align 4
@DPORT_SPI2_RST = common dso_local global i32 0, align 4
@DPORT_SPI3_DMA_RST = common dso_local global i32 0, align 4
@DPORT_SPI3_RST = common dso_local global i32 0, align 4
@DPORT_SPI4_RST = common dso_local global i32 0, align 4
@DPORT_SPI_DMA_RST = common dso_local global i32 0, align 4
@DPORT_SPI_SHARED_DMA_RST = common dso_local global i32 0, align 4
@DPORT_UART2_RST = common dso_local global i32 0, align 4
@DPORT_USB_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_rst_en_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rst_en_mask(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %52 [
    i32 148, label %7
    i32 154, label %9
    i32 136, label %11
    i32 135, label %13
    i32 158, label %15
    i32 157, label %17
    i32 156, label %19
    i32 155, label %21
    i32 138, label %23
    i32 137, label %25
    i32 152, label %27
    i32 151, label %29
    i32 150, label %31
    i32 149, label %33
    i32 133, label %35
    i32 132, label %37
    i32 153, label %39
    i32 140, label %41
    i32 145, label %43
    i32 146, label %45
    i32 162, label %47
    i32 161, label %49
    i32 128, label %51
    i32 163, label %51
    i32 129, label %51
    i32 165, label %51
    i32 164, label %51
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @DPORT_RMT_RST, align 4
  store i32 %8, i32* %3, align 4
  br label %53

9:                                                ; preds = %2
  %10 = load i32, i32* @DPORT_LEDC_RST, align 4
  store i32 %10, i32* %3, align 4
  br label %53

11:                                               ; preds = %2
  %12 = load i32, i32* @DPORT_UART_RST, align 4
  store i32 %12, i32* %3, align 4
  br label %53

13:                                               ; preds = %2
  %14 = load i32, i32* @DPORT_UART1_RST, align 4
  store i32 %14, i32* %3, align 4
  br label %53

15:                                               ; preds = %2
  %16 = load i32, i32* @DPORT_I2C_EXT0_RST, align 4
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load i32, i32* @DPORT_I2C_EXT1_RST, align 4
  store i32 %18, i32* %3, align 4
  br label %53

19:                                               ; preds = %2
  %20 = load i32, i32* @DPORT_I2S0_RST, align 4
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %2
  %22 = load i32, i32* @DPORT_I2S1_RST, align 4
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load i32, i32* @DPORT_TIMERGROUP_RST, align 4
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %2
  %26 = load i32, i32* @DPORT_TIMERGROUP1_RST, align 4
  store i32 %26, i32* %3, align 4
  br label %53

27:                                               ; preds = %2
  %28 = load i32, i32* @DPORT_PWM0_RST, align 4
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %2
  %30 = load i32, i32* @DPORT_PWM1_RST, align 4
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %2
  %32 = load i32, i32* @DPORT_PWM2_RST, align 4
  store i32 %32, i32* %3, align 4
  br label %53

33:                                               ; preds = %2
  %34 = load i32, i32* @DPORT_PWM3_RST, align 4
  store i32 %34, i32* %3, align 4
  br label %53

35:                                               ; preds = %2
  %36 = load i32, i32* @DPORT_UHCI0_RST, align 4
  store i32 %36, i32* %3, align 4
  br label %53

37:                                               ; preds = %2
  %38 = load i32, i32* @DPORT_UHCI1_RST, align 4
  store i32 %38, i32* %3, align 4
  br label %53

39:                                               ; preds = %2
  %40 = load i32, i32* @DPORT_PCNT_RST, align 4
  store i32 %40, i32* %3, align 4
  br label %53

41:                                               ; preds = %2
  %42 = load i32, i32* @DPORT_SPI01_RST, align 4
  store i32 %42, i32* %3, align 4
  br label %53

43:                                               ; preds = %2
  %44 = load i32, i32* @DPORT_SDIO_HOST_RST, align 4
  store i32 %44, i32* %3, align 4
  br label %53

45:                                               ; preds = %2
  %46 = load i32, i32* @DPORT_SDIO_RST, align 4
  store i32 %46, i32* %3, align 4
  br label %53

47:                                               ; preds = %2
  %48 = load i32, i32* @DPORT_CAN_RST, align 4
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %2
  %50 = load i32, i32* @DPORT_EMAC_RST, align 4
  store i32 %50, i32* %3, align 4
  br label %53

51:                                               ; preds = %2, %2, %2, %2, %2
  store i32 0, i32* %3, align 4
  br label %53

52:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
