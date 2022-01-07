; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/test/esp32/extr_test_esp_flash.c_test_three_byte_read_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/test/esp32/extr_test_esp_flash.c_test_three_byte_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Testing chip %p...\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"offs:%X\0A\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_three_byte_read_write(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @TAG, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @ESP_LOGI(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @erase_test_region(i32* %10, i32 2)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ets_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %26, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 2000
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i32, i32* @ESP_OK, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 3, %21
  %23 = add nsw i32 %20, %22
  %24 = call i32 @esp_flash_write(i32* %19, i32* %4, i32 %23, i32 3)
  %25 = call i32 @TEST_ASSERT_EQUAL(i32 %18, i32 %24)
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %14

29:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %47, %29
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 2000
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load i32, i32* @ESP_OK, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 3, %37
  %39 = add nsw i32 %36, %38
  %40 = call i32 @esp_flash_read(i32* %35, i32* %6, i32 %39, i32 3)
  %41 = call i32 @TEST_ASSERT_EQUAL(i32 %34, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 16777215
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 16777215
  %46 = call i32 @TEST_ASSERT_EQUAL_HEX32(i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %33
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %30

50:                                               ; preds = %30
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, i32*) #1

declare dso_local i32 @erase_test_region(i32*, i32) #1

declare dso_local i32 @ets_printf(i8*, i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @esp_flash_write(i32*, i32*, i32, i32) #1

declare dso_local i32 @esp_flash_read(i32*, i32*, i32, i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_HEX32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
