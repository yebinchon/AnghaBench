; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sdio.c_test_cmd53_read_write_multiple_bytes.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sdio.c_test_cmd53_read_write_multiple_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"Write multiple bytes using CMD53\0A\00", align 1
@SLCHOST_CONF_W0 = common dso_local global i64 0, align 8
@DR_REG_SLCHOST_BASE = common dso_local global i64 0, align 8
@MALLOC_CAP_DMA = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Read back using CMD52\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Read back using CMD53\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @test_cmd53_read_write_multiple_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cmd53_read_write_multiple_bytes(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @SLCHOST_CONF_W0, align 8
  %13 = load i64, i64* @DR_REG_SLCHOST_BASE, align 8
  %14 = sub i64 %12, %13
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* @MALLOC_CAP_DMA, align 4
  %16 = call i32* @heap_caps_malloc(i32 512, i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  store i32* %17, i32** %7, align 8
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %29, %2
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %20, 3
  %22 = udiv i64 %21, 4
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = call i32 (...) @rand()
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %8, align 8
  br label %18

32:                                               ; preds = %18
  %33 = load i32*, i32** %3, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @sdmmc_io_write_bytes(i32* %33, i32 1, i64 %34, i32* %35, i64 %36)
  %38 = call i32 @TEST_ESP_OK(i32 %37)
  %39 = load i32, i32* @TAG, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @ESP_LOG_BUFFER_HEX(i32 %39, i32* %40, i64 %41)
  %43 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @MALLOC_CAP_DMA, align 4
  %45 = call i32* @heap_caps_malloc(i32 512, i32 %44)
  store i32* %45, i32** %9, align 8
  store i64 0, i64* %10, align 8
  br label %46

46:                                               ; preds = %60, %32
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i32*, i32** %3, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %52, %53
  %55 = load i32*, i32** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = call i32 @sdmmc_io_read_byte(i32* %51, i32 1, i64 %54, i32* %57)
  %59 = call i32 @TEST_ESP_OK(i32 %58)
  br label %60

60:                                               ; preds = %50
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %46

63:                                               ; preds = %46
  %64 = load i32, i32* @TAG, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @ESP_LOG_BUFFER_HEX(i32 %64, i32* %65, i64 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @TEST_ASSERT_EQUAL_UINT8_ARRAY(i32* %68, i32* %69, i64 %70)
  %72 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32*, i32** %3, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @sdmmc_io_read_bytes(i32* %73, i32 1, i64 %74, i32* %75, i64 %76)
  %78 = call i32 @TEST_ESP_OK(i32 %77)
  %79 = load i32, i32* @TAG, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @ESP_LOG_BUFFER_HEX(i32 %79, i32* %80, i64 %81)
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @TEST_ASSERT_EQUAL_UINT8_ARRAY(i32* %83, i32* %84, i64 %85)
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @free(i32* %87)
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @free(i32* %89)
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @heap_caps_malloc(i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @sdmmc_io_write_bytes(i32*, i32, i64, i32*, i64) #1

declare dso_local i32 @ESP_LOG_BUFFER_HEX(i32, i32*, i64) #1

declare dso_local i32 @sdmmc_io_read_byte(i32*, i32, i64, i32*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_UINT8_ARRAY(i32*, i32*, i64) #1

declare dso_local i32 @sdmmc_io_read_bytes(i32*, i32, i64, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
