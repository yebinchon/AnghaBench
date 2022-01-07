; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/test/esp32/extr_test_esp_flash.c_setup_bus.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/test/esp32/extr_test_esp_flash.c_setup_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@SPI_HOST = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"setup flash on SPI1 CS1...\0A\00", align 1
@HSPI_HOST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"setup flash on SPI2 (HSPI) CS0...\0A\00", align 1
@HSPI_PIN_NUM_HD = common dso_local global i32 0, align 4
@HSPI_PIN_NUM_WP = common dso_local global i32 0, align 4
@HSPI_PIN_NUM_CLK = common dso_local global i32 0, align 4
@HSPI_PIN_NUM_MISO = common dso_local global i32 0, align 4
@HSPI_PIN_NUM_MOSI = common dso_local global i32 0, align 4
@VSPI_HOST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"setup flash on SPI3 (VSPI) CS0...\0A\00", align 1
@VSPI_PIN_NUM_HD = common dso_local global i32 0, align 4
@VSPI_PIN_NUM_WP = common dso_local global i32 0, align 4
@VSPI_PIN_NUM_CLK = common dso_local global i32 0, align 4
@VSPI_PIN_NUM_MISO = common dso_local global i32 0, align 4
@VSPI_PIN_NUM_MOSI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"invalid bus\00", align 1
@EXTRA_SPI1_CLK_IO = common dso_local global i32 0, align 4
@SPICLK_OUT_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @setup_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_bus(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @SPI_HOST, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @TAG, align 4
  %12 = call i32 @ESP_LOGI(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %62

13:                                               ; preds = %1
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @HSPI_HOST, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load i32, i32* @TAG, align 4
  %19 = call i32 @ESP_LOGI(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %21 = load i32, i32* @HSPI_PIN_NUM_HD, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 64, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %24 = load i32, i32* @HSPI_PIN_NUM_WP, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %26 = load i32, i32* @HSPI_PIN_NUM_CLK, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  %28 = load i32, i32* @HSPI_PIN_NUM_MISO, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 5
  %30 = load i32, i32* @HSPI_PIN_NUM_MOSI, align 4
  store i32 %30, i32* %29, align 4
  %31 = load i64, i64* %2, align 8
  %32 = call i32 @spi_bus_initialize(i64 %31, %struct.TYPE_3__* %3, i32 0)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @TEST_ESP_OK(i32 %33)
  br label %61

35:                                               ; preds = %13
  %36 = load i64, i64* %2, align 8
  %37 = load i64, i64* @VSPI_HOST, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load i32, i32* @TAG, align 4
  %41 = call i32 @ESP_LOGI(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %43 = load i32, i32* @VSPI_PIN_NUM_HD, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 64, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %46 = load i32, i32* @VSPI_PIN_NUM_WP, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %48 = load i32, i32* @VSPI_PIN_NUM_CLK, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %50 = load i32, i32* @VSPI_PIN_NUM_MISO, align 4
  store i32 %50, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  %52 = load i32, i32* @VSPI_PIN_NUM_MOSI, align 4
  store i32 %52, i32* %51, align 4
  %53 = load i64, i64* %2, align 8
  %54 = call i32 @spi_bus_initialize(i64 %53, %struct.TYPE_3__* %5, i32 0)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @TEST_ESP_OK(i32 %55)
  br label %60

57:                                               ; preds = %35
  %58 = load i32, i32* @TAG, align 4
  %59 = call i32 @ESP_LOGE(i32 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %39
  br label %61

61:                                               ; preds = %60, %17
  br label %62

62:                                               ; preds = %61, %10
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @spi_bus_initialize(i64, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
