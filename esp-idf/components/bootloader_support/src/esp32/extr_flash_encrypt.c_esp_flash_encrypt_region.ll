; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32/extr_flash_encrypt.c_esp_flash_encrypt_region.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32/extr_flash_encrypt.c_esp_flash_encrypt_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLASH_SECTOR_SIZE = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"esp_flash_encrypt_region bad src_addr 0x%x\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"flash operation failed: 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_flash_encrypt_region(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %12 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  %13 = sext i32 %12 to i64
  %14 = udiv i64 %13, 4
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  %19 = srem i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @TAG, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ESP_LOGE(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ESP_FAIL, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %75

26:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %63, %26
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %27
  %32 = call i32 (...) @rtc_wdt_feed()
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %33, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  %40 = call i32 @bootloader_flash_read(i32 %38, i32* %16, i32 %39, i32 0)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ESP_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %70

45:                                               ; preds = %31
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  %48 = sdiv i32 %46, %47
  %49 = call i32 @bootloader_flash_erase_sector(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @ESP_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %70

54:                                               ; preds = %45
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  %57 = call i32 @bootloader_flash_write(i32 %55, i32* %16, i32 %56, i32 1)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @ESP_OK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %70

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %10, align 8
  br label %27

68:                                               ; preds = %27
  %69 = load i32, i32* @ESP_OK, align 4
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %75

70:                                               ; preds = %61, %53, %44
  %71 = load i32, i32* @TAG, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @ESP_LOGE(i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %75

75:                                               ; preds = %70, %68, %21
  %76 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #2

declare dso_local i32 @rtc_wdt_feed(...) #2

declare dso_local i32 @bootloader_flash_read(i32, i32*, i32, i32) #2

declare dso_local i32 @bootloader_flash_erase_sector(i32) #2

declare dso_local i32 @bootloader_flash_write(i32, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
