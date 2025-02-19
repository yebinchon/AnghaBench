; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32s2beta/extr_flash_encrypt.c_encrypt_bootloader.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32s2beta/extr_flash_encrypt.c_encrypt_bootloader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"bootloader is plaintext. Encrypting...\00", align 1
@ESP_BOOTLOADER_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to encrypt bootloader in place: 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"no valid bootloader was found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @encrypt_bootloader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @encrypt_bootloader() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i64 @esp_image_verify_bootloader(i32* %3)
  %5 = load i64, i64* @ESP_OK, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %26

7:                                                ; preds = %0
  %8 = load i32, i32* @TAG, align 4
  %9 = call i32 @ESP_LOGD(i32 %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ESP_BOOTLOADER_OFFSET, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @esp_flash_encrypt_region(i32 %10, i32 %11)
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @ESP_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %7
  %17 = load i32, i32* @TAG, align 4
  %18 = load i64, i64* %2, align 8
  %19 = call i32 @ESP_LOGE(i32 %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %2, align 8
  store i64 %20, i64* %1, align 8
  br label %31

21:                                               ; preds = %7
  %22 = call i64 (...) @esp_secure_boot_enabled()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %21
  br label %29

26:                                               ; preds = %0
  %27 = load i32, i32* @TAG, align 4
  %28 = call i32 @ESP_LOGW(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %25
  %30 = load i64, i64* @ESP_OK, align 8
  store i64 %30, i64* %1, align 8
  br label %31

31:                                               ; preds = %29, %16
  %32 = load i64, i64* %1, align 8
  ret i64 %32
}

declare dso_local i64 @esp_image_verify_bootloader(i32*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i64 @esp_flash_encrypt_region(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i64) #1

declare dso_local i64 @esp_secure_boot_enabled(...) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
