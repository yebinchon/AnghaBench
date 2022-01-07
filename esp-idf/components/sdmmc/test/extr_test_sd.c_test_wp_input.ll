; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sd.c_test_wp_input.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sd.c_test_wp_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIG_GPIO_OUT_IDX = common dso_local global i32 0, align 4
@GPIO_ENABLE_W1TS_REG = common dso_local global i32 0, align 4
@GPIO_OUT_W1TC_REG = common dso_local global i32 0, align 4
@MALLOC_CAP_DMA = common dso_local global i32 0, align 4
@GPIO_OUT_W1TS_REG = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @test_wp_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_wp_input(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = call i32* @malloc(i32 4)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @TEST_ASSERT_NOT_NULL(i32* %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SIG_GPIO_OUT_IDX, align 4
  %12 = call i32 @gpio_matrix_out(i32 %10, i32 %11, i32 0, i32 0)
  %13 = load i32, i32* @GPIO_ENABLE_W1TS_REG, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = call i32 @REG_WRITE(i32 %13, i32 %15)
  %17 = load i32, i32* @GPIO_OUT_W1TC_REG, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = call i32 @REG_WRITE(i32 %17, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @sdmmc_card_init(i32* %21, i32* %22)
  %24 = call i32 @TEST_ESP_OK(i32 %23)
  %25 = load i32, i32* @MALLOC_CAP_DMA, align 4
  %26 = call i32* @heap_caps_calloc(i32 1, i32 512, i32 %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* @GPIO_OUT_W1TS_REG, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = call i32 @REG_WRITE(i32 %27, i32 %29)
  %31 = call i32 @usleep(i32 1000)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @sdmmc_write_sectors(i32* %32, i32** %6, i32 0, i32 1)
  %34 = call i32 @TEST_ESP_OK(i32 %33)
  %35 = load i32, i32* @GPIO_OUT_W1TC_REG, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = call i32 @REG_WRITE(i32 %35, i32 %37)
  %39 = call i32 @usleep(i32 1000)
  %40 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @sdmmc_write_sectors(i32* %41, i32** %6, i32 0, i32 1)
  %43 = call i32 @TEST_ESP_ERR(i32 %40, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @sdmmc_read_sectors(i32* %44, i32** %6, i32 0, i32 1)
  %46 = call i32 @TEST_ESP_OK(i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @free(i32* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @free(i32* %49)
  ret void
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #1

declare dso_local i32 @gpio_matrix_out(i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @sdmmc_card_init(i32*, i32*) #1

declare dso_local i32* @heap_caps_calloc(i32, i32, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @sdmmc_write_sectors(i32*, i32**, i32, i32) #1

declare dso_local i32 @TEST_ESP_ERR(i32, i32) #1

declare dso_local i32 @sdmmc_read_sectors(i32*, i32**, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
