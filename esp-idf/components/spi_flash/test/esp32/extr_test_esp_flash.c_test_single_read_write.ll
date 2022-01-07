; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/test/esp32/extr_test_esp_flash.c_test_single_read_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/test/esp32/extr_test_esp_flash.c_test_single_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Testing chip %p...\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_single_read_write(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @TAG, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @ESP_LOGI(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @erase_test_region(i32* %10, i32 2)
  store i64 %11, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %24, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ult i32 %13, 512
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load i32, i32* @ESP_OK, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = call i32 @esp_flash_write(i32* %17, i32* %4, i64 %21, i32 1)
  %23 = call i32 @TEST_ASSERT_EQUAL_HEX(i32 %16, i32 %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %12

27:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %43, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp ult i32 %29, 512
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i32, i32* @ESP_OK, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @esp_flash_read(i32* %33, i32* %6, i64 %37, i32 1)
  %39 = call i32 @TEST_ASSERT_EQUAL_HEX(i32 %32, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @TEST_ASSERT_EQUAL_HEX8(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %28

46:                                               ; preds = %28
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, i32*) #1

declare dso_local i64 @erase_test_region(i32*, i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_HEX(i32, i32) #1

declare dso_local i32 @esp_flash_write(i32*, i32*, i64, i32) #1

declare dso_local i32 @esp_flash_read(i32*, i32*, i64, i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_HEX8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
