; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/test/esp32/extr_test_esp_flash.c_read_and_check.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/test/esp32/extr_test_esp_flash.c_read_and_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"Checking chip %p, %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32*, i64)* @read_and_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_and_check(i32* %0, %struct.TYPE_3__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [8 x i32], align 16
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %11, i64 %12)
  %14 = load i64, i64* %8, align 8
  %15 = call i32* @malloc(i64 %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @TEST_ASSERT_NOT_NULL(i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @esp_flash_read(i32* %18, i32* %19, i64 %23, i32 %25)
  %27 = call i32 @ESP_ERROR_CHECK(i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @TEST_ASSERT_EQUAL_HEX8_ARRAY(i32* %28, i32* %29, i64 %30)
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @free(i32* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @esp_flash_read(i32* %34, i32* %35, i64 %38, i32 32)
  %40 = call i32 @ESP_ERROR_CHECK(i32 %39)
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %42 = load i32, i32* %41, align 16
  %43 = call i32 @TEST_ASSERT_EQUAL_HEX8(i32 255, i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @TEST_ASSERT_EQUAL_HEX8(i32 %46, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %54, %55
  %57 = call i32 @esp_flash_read(i32* %50, i32* %51, i64 %56, i32 32)
  %58 = call i32 @ESP_ERROR_CHECK(i32 %57)
  %59 = load i32*, i32** %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %65 = load i32, i32* %64, align 16
  %66 = call i32 @TEST_ASSERT_EQUAL_HEX8(i32 %63, i32 %65)
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @TEST_ASSERT_EQUAL_HEX8(i32 255, i32 %68)
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @TEST_ASSERT_EQUAL_HEX8(i32 255, i32 %71)
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @TEST_ASSERT_EQUAL_HEX8(i32 255, i32 %74)
  ret void
}

declare dso_local i32 @printf(i8*, i32*, i64) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_flash_read(i32*, i32*, i64, i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_HEX8_ARRAY(i32*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_HEX8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
