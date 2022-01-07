; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sdio.c_esp32_slave_init_extra.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sdio.c_esp32_slave_init_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"Initialize some ESP32 SDIO slave registers\0A\00", align 1
@SLCCONF1 = common dso_local global i32 0, align 4
@SLC_SLC0_RX_STITCH_EN = common dso_local global i32 0, align 4
@SLC_SLC0_TX_STITCH_EN = common dso_local global i32 0, align 4
@SLC0TX_LINK = common dso_local global i32 0, align 4
@SLC_SLC0_TXLINK_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @esp32_slave_init_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp32_slave_init_extra(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @SLCCONF1, align 4
  %7 = call i32 @slave_slc_reg_read(i32* %5, i32 %6, i32* %3)
  %8 = call i32 @TEST_ESP_OK(i32 %7)
  %9 = load i32, i32* @SLC_SLC0_RX_STITCH_EN, align 4
  %10 = load i32, i32* @SLC_SLC0_TX_STITCH_EN, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @SLCCONF1, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @slave_slc_reg_write(i32* %15, i32 %16, i32 %17)
  %19 = call i32 @TEST_ESP_OK(i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @SLC0TX_LINK, align 4
  %22 = call i32 @slave_slc_reg_read(i32* %20, i32 %21, i32* %3)
  %23 = call i32 @TEST_ESP_OK(i32 %22)
  %24 = load i32, i32* @SLC_SLC0_TXLINK_START, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @SLC0TX_LINK, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @slave_slc_reg_write(i32* %27, i32 %28, i32 %29)
  %31 = call i32 @TEST_ESP_OK(i32 %30)
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @slave_slc_reg_read(i32*, i32, i32*) #1

declare dso_local i32 @slave_slc_reg_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
