; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/test/extr_test_large_flash_writes.c_test_write_large_buffer.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/test/extr_test_large_flash_writes.c_test_write_large_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@SPI_FLASH_SEC_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Writing %d bytes from source %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @test_write_large_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_write_large_buffer(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [8 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call %struct.TYPE_3__* (...) @get_test_data_partition()
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = add i64 %12, 2
  %14 = load i64, i64* @SPI_FLASH_SEC_SIZE, align 8
  %15 = add i64 %13, %14
  %16 = icmp ugt i64 %11, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @TEST_ASSERT(i32 %17)
  %19 = load i64, i64* %4, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %19, i32* %20)
  %22 = load i64, i64* %4, align 8
  %23 = call i32* @malloc(i64 %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @TEST_ASSERT_NOT_NULL(i32* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @SPI_FLASH_SEC_SIZE, align 8
  %31 = add i64 %29, %30
  %32 = load i64, i64* @SPI_FLASH_SEC_SIZE, align 8
  %33 = sub i64 %32, 1
  %34 = xor i64 %33, -1
  %35 = and i64 %31, %34
  %36 = call i32 @spi_flash_erase_range(i64 %28, i64 %35)
  %37 = call i32 @ESP_ERROR_CHECK(i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = load i32*, i32** %3, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spi_flash_write(i64 %41, i32* %42, i64 %43)
  %45 = call i32 @ESP_ERROR_CHECK(i32 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* %4, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @spi_flash_read(i64 %49, i32* %50, i32 %52)
  %54 = call i32 @ESP_ERROR_CHECK(i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @TEST_ASSERT_EQUAL_HEX8_ARRAY(i32* %55, i32* %56, i64 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @free(i32* %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %65 = call i32 @spi_flash_read(i64 %63, i32* %64, i32 32)
  %66 = call i32 @ESP_ERROR_CHECK(i32 %65)
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %68 = load i32, i32* %67, align 16
  %69 = call i32 @TEST_ASSERT_EQUAL_HEX8(i32 255, i32 %68)
  %70 = load i32*, i32** %3, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @TEST_ASSERT_EQUAL_HEX8(i32 %72, i32 %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %4, align 8
  %80 = add i64 %78, %79
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %82 = call i32 @spi_flash_read(i64 %80, i32* %81, i32 32)
  %83 = call i32 @ESP_ERROR_CHECK(i32 %82)
  %84 = load i32*, i32** %3, align 8
  %85 = load i64, i64* %4, align 8
  %86 = sub i64 %85, 1
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %90 = load i32, i32* %89, align 16
  %91 = call i32 @TEST_ASSERT_EQUAL_HEX8(i32 %88, i32 %90)
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @TEST_ASSERT_EQUAL_HEX8(i32 255, i32 %93)
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @TEST_ASSERT_EQUAL_HEX8(i32 255, i32 %96)
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @TEST_ASSERT_EQUAL_HEX8(i32 255, i32 %99)
  ret void
}

declare dso_local %struct.TYPE_3__* @get_test_data_partition(...) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @printf(i8*, i64, i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @spi_flash_erase_range(i64, i64) #1

declare dso_local i32 @spi_flash_write(i64, i32*, i64) #1

declare dso_local i32 @spi_flash_read(i64, i32*, i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_HEX8_ARRAY(i32*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_HEX8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
