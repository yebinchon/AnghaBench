; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_flash_encrypt.c_esp_flash_encryption_init_checks.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_flash_encrypt.c_esp_flash_encryption_init_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_FLASH_ENC_MODE_DEVELOPMENT = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Flash encryption mode is DEVELOPMENT (not secure)\00", align 1
@ESP_FLASH_ENC_MODE_RELEASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Flash encryption mode is RELEASE\00", align 1
@ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_flash_encryption_init_checks() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @esp_get_flash_encryption_mode()
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @ESP_FLASH_ENC_MODE_DEVELOPMENT, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @TAG, align 4
  %8 = call i32 @ESP_EARLY_LOGW(i32 %7, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %17

9:                                                ; preds = %0
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @ESP_FLASH_ENC_MODE_RELEASE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @TAG, align 4
  %15 = call i32 @ESP_EARLY_LOGI(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %9
  br label %17

17:                                               ; preds = %16, %6
  ret void
}

declare dso_local i64 @esp_get_flash_encryption_mode(...) #1

declare dso_local i32 @ESP_EARLY_LOGW(i32, i8*) #1

declare dso_local i32 @ESP_EARLY_LOGI(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
