; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/test/esp32/extr_test_esp_flash.c_test_erase_large_region.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/test/esp32/extr_test_esp_flash.c_test_erase_large_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Testing chip %p...\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"OHAI\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_erase_large_region(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @TAG, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @ESP_LOGI(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %8)
  %10 = call %struct.TYPE_3__* (...) @get_test_data_partition()
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %11 = load i32, i32* @ESP_OK, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @esp_flash_write(i32* %12, i8* %13, i64 %16, i32 5)
  %18 = call i32 @TEST_ASSERT_EQUAL(i32 %11, i32 %17)
  %19 = load i32, i32* @ESP_OK, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = sub nsw i64 %28, 5
  %30 = call i32 @esp_flash_write(i32* %20, i8* %21, i64 %29, i32 5)
  %31 = call i32 @TEST_ASSERT_EQUAL(i32 %19, i32 %30)
  %32 = load i8*, i8** %4, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @ESP_OK, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = sub nsw i64 %43, 5
  %45 = call i32 @esp_flash_read(i32* %36, i32* %5, i64 %44, i32 4)
  %46 = call i32 @TEST_ASSERT_EQUAL(i32 %35, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = call i32 @TEST_ASSERT_EQUAL_HEX32(i32 0, i32 %50)
  %52 = load i32, i32* @ESP_OK, align 4
  %53 = load i32*, i32** %2, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @esp_flash_read(i32* %53, i32* %5, i64 %56, i32 4)
  %58 = call i32 @TEST_ASSERT_EQUAL(i32 %52, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = call i32 @TEST_ASSERT_EQUAL_HEX32(i32 0, i32 %62)
  %64 = load i32, i32* @ESP_OK, align 4
  %65 = load i32*, i32** %2, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @esp_flash_erase_region(i32* %65, i64 %68, i64 %71)
  %73 = call i32 @TEST_ASSERT_EQUAL(i32 %64, i32 %72)
  %74 = load i32, i32* @ESP_OK, align 4
  %75 = load i32*, i32** %2, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @esp_flash_read(i32* %75, i32* %5, i64 %78, i32 4)
  %80 = call i32 @TEST_ASSERT_EQUAL(i32 %74, i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @TEST_ASSERT_EQUAL_HEX32(i32 -1, i32 %81)
  %83 = load i32, i32* @ESP_OK, align 4
  %84 = load i32*, i32** %2, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  %92 = sub nsw i64 %91, 5
  %93 = call i32 @esp_flash_read(i32* %84, i32* %5, i64 %92, i32 4)
  %94 = call i32 @TEST_ASSERT_EQUAL(i32 %83, i32 %93)
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @TEST_ASSERT_EQUAL_HEX32(i32 -1, i32 %95)
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_3__* @get_test_data_partition(...) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @esp_flash_write(i32*, i8*, i64, i32) #1

declare dso_local i32 @esp_flash_read(i32*, i32*, i64, i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_HEX32(i32, i32) #1

declare dso_local i32 @esp_flash_erase_region(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
