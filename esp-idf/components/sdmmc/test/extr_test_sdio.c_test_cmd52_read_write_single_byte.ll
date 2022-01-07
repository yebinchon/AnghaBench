; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sdio.c_test_cmd52_read_write_single_byte.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sdio.c_test_cmd52_read_write_single_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"Write bytes to slave's W0_REG using CMD52\0A\00", align 1
@SLCHOST_CONF_W0 = common dso_local global i64 0, align 8
@DR_REG_SLCHOST_BASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Read back bytes using CMD52\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_cmd52_read_write_single_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cmd52_read_write_single_byte(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @SLCHOST_CONF_W0, align 8
  %12 = load i64, i64* @DR_REG_SLCHOST_BASE, align 8
  %13 = sub i64 %11, %12
  store i64 %13, i64* %4, align 8
  store i32 165, i32* %5, align 4
  store i32 182, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @sdmmc_io_write_byte(i32* %14, i32 1, i64 %15, i32 165, i32* %7)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @TEST_ESP_OK(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @TEST_ASSERT_EQUAL_UINT8(i32 165, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, 1
  %24 = call i32 @sdmmc_io_write_byte(i32* %21, i32 1, i64 %23, i32 182, i32* %8)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @TEST_ESP_OK(i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @TEST_ASSERT_EQUAL_UINT8(i32 182, i32 %27)
  %29 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %2, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @sdmmc_io_read_byte(i32* %30, i32 1, i64 %31, i32* %9)
  %33 = call i32 @TEST_ESP_OK(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @TEST_ASSERT_EQUAL_UINT8(i32 165, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, 1
  %39 = call i32 @sdmmc_io_read_byte(i32* %36, i32 1, i64 %38, i32* %9)
  %40 = call i32 @TEST_ESP_OK(i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @TEST_ASSERT_EQUAL_UINT8(i32 182, i32 %41)
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sdmmc_io_write_byte(i32*, i32, i64, i32, i32*) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_UINT8(i32, i32) #1

declare dso_local i32 @sdmmc_io_read_byte(i32*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
