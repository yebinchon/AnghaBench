; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sd.c_probe_spi.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sd.c_probe_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @probe_spi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_spi(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = call i32 (...) @sd_test_board_power_on()
  %15 = call i32 (...) @SDSPI_HOST_DEFAULT()
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = call { i64, i64 } (...) @SDSPI_SLOT_CONFIG_DEFAULT()
  %18 = bitcast %struct.TYPE_7__* %12 to { i64, i64 }*
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  %20 = extractvalue { i64, i64 } %17, 0
  store i64 %20, i64* %19, align 4
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  %22 = extractvalue { i64, i64 } %17, 1
  store i64 %22, i64* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = call i32 (...) @sdspi_host_init()
  %32 = call i32 @TEST_ESP_OK(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sdspi_host_init_slot(i32 %34, %struct.TYPE_7__* %12)
  %36 = call i32 @TEST_ESP_OK(i32 %35)
  %37 = call i32* @malloc(i32 4)
  store i32* %37, i32** %13, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @TEST_ASSERT_NOT_NULL(i32* %38)
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @sdmmc_card_init(%struct.TYPE_8__* %11, i32* %40)
  %42 = call i32 @TEST_ESP_OK(i32 %41)
  %43 = load i32, i32* @stdout, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @sdmmc_card_print_info(i32 %43, i32* %44)
  %46 = call i32 (...) @sdspi_host_deinit()
  %47 = call i32 @TEST_ESP_OK(i32 %46)
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @free(i32* %48)
  %50 = call i32 (...) @sd_test_board_power_off()
  ret void
}

declare dso_local i32 @sd_test_board_power_on(...) #1

declare dso_local i32 @SDSPI_HOST_DEFAULT(...) #1

declare dso_local { i64, i64 } @SDSPI_SLOT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @sdspi_host_init(...) #1

declare dso_local i32 @sdspi_host_init_slot(i32, %struct.TYPE_7__*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #1

declare dso_local i32 @sdmmc_card_init(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @sdmmc_card_print_info(i32, i32*) #1

declare dso_local i32 @sdspi_host_deinit(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @sd_test_board_power_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
