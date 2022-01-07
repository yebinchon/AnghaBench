; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sd.c_test_cd_input.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sd.c_test_cd_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIG_GPIO_OUT_IDX = common dso_local global i32 0, align 4
@GPIO_ENABLE_W1TS_REG = common dso_local global i32 0, align 4
@GPIO_OUT_W1TS_REG = common dso_local global i32 0, align 4
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@GPIO_OUT_W1TC_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @test_cd_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cd_input(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = call i32* @malloc(i32 4)
  store i32* %6, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i32 @TEST_ASSERT_NOT_NULL(i32* %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SIG_GPIO_OUT_IDX, align 4
  %11 = call i32 @gpio_matrix_out(i32 %9, i32 %10, i32 0, i32 0)
  %12 = load i32, i32* @GPIO_ENABLE_W1TS_REG, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = call i32 @REG_WRITE(i32 %12, i32 %14)
  %16 = load i32, i32* @GPIO_OUT_W1TS_REG, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = call i32 @REG_WRITE(i32 %16, i32 %18)
  %20 = call i32 @usleep(i32 1000)
  %21 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @sdmmc_card_init(i32* %22, i32* %23)
  %25 = call i32 @TEST_ESP_ERR(i32 %21, i32 %24)
  %26 = load i32, i32* @GPIO_OUT_W1TC_REG, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = call i32 @REG_WRITE(i32 %26, i32 %28)
  %30 = call i32 @usleep(i32 1000)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @sdmmc_card_init(i32* %31, i32* %32)
  %34 = call i32 @TEST_ESP_OK(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @free(i32* %35)
  ret void
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #1

declare dso_local i32 @gpio_matrix_out(i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @TEST_ESP_ERR(i32, i32) #1

declare dso_local i32 @sdmmc_card_init(i32*, i32*) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
