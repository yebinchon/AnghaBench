; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/test/esp32/extr_test_esp_flash.c_test_unaligned_read_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/test/esp32/extr_test_esp_flash.c_test_unaligned_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Testing chip %p...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"i am a message\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_unaligned_read_write(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @TAG, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @ESP_LOGI(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @erase_test_region(i32* %10, i32 2)
  store i64 %11, i64* %3, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = add nsw i32 %13, 1
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @TEST_ASSERT(i32 %16)
  %18 = load i32, i32* @ESP_OK, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add nsw i64 %21, 1
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = add nsw i32 %24, 1
  %26 = call i32 @esp_flash_write(i32* %19, i8* %20, i64 %22, i32 %25)
  %27 = call i32 @TEST_ASSERT_EQUAL(i32 %18, i32 %26)
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %5, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %6, align 8
  %34 = trunc i64 %31 to i32
  %35 = call i32 @memset(i8* %33, i32 238, i32 %34)
  %36 = load i32, i32* @ESP_OK, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = load i64, i64* %3, align 8
  %39 = add nsw i64 %38, 1
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = add nsw i32 %41, 1
  %43 = call i32 @esp_flash_read(i32* %37, i8* %33, i64 %39, i32 %42)
  %44 = call i32 @TEST_ASSERT_EQUAL(i32 %36, i32 %43)
  %45 = load i8*, i8** %4, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = call i32 @TEST_ASSERT_EQUAL_STRING_LEN(i8* %45, i8* %33, i32 %47)
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = add nsw i32 %51, 1
  %53 = call i64 @memcmp(i8* %33, i8* %49, i32 %52)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @TEST_ASSERT(i32 %55)
  %57 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %57)
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, i32*) #1

declare dso_local i64 @erase_test_region(i32*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @esp_flash_write(i32*, i8*, i64, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @esp_flash_read(i32*, i8*, i64, i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_STRING_LEN(i8*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
