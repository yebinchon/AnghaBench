; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_flash_encrypt.c_esp_get_flash_encryption_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_flash_encrypt.c_esp_get_flash_encryption_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_FLASH_ENC_MODE_DEVELOPMENT = common dso_local global i32 0, align 4
@ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT = common dso_local global i32 0, align 4
@ESP_EFUSE_DISABLE_DL_CACHE = common dso_local global i32 0, align 4
@ESP_EFUSE_DISABLE_DL_ENCRYPT = common dso_local global i32 0, align 4
@ESP_EFUSE_DISABLE_DL_DECRYPT = common dso_local global i32 0, align 4
@ESP_FLASH_ENC_MODE_RELEASE = common dso_local global i32 0, align 4
@ESP_FLASH_ENC_MODE_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_get_flash_encryption_mode() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load i32, i32* @ESP_FLASH_ENC_MODE_DEVELOPMENT, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i64 (...) @esp_flash_encryption_enabled()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %0
  %10 = load i32, i32* @ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT, align 4
  %11 = call i32 @esp_efuse_read_field_blob(i32 %10, i64* %1, i32 1)
  %12 = load i64, i64* %1, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = load i32, i32* @ESP_EFUSE_DISABLE_DL_CACHE, align 4
  %16 = call i32 @esp_efuse_read_field_blob(i32 %15, i64* %4, i32 1)
  %17 = load i32, i32* @ESP_EFUSE_DISABLE_DL_ENCRYPT, align 4
  %18 = call i32 @esp_efuse_read_field_blob(i32 %17, i64* %2, i32 1)
  %19 = load i32, i32* @ESP_EFUSE_DISABLE_DL_DECRYPT, align 4
  %20 = call i32 @esp_efuse_read_field_blob(i32 %19, i64* %3, i32 1)
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load i64, i64* %2, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i64, i64* %3, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @ESP_FLASH_ENC_MODE_RELEASE, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %26, %23, %14
  br label %32

32:                                               ; preds = %31, %9
  br label %35

33:                                               ; preds = %0
  %34 = load i32, i32* @ESP_FLASH_ENC_MODE_DISABLED, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i64 @esp_flash_encryption_enabled(...) #1

declare dso_local i32 @esp_efuse_read_field_blob(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
