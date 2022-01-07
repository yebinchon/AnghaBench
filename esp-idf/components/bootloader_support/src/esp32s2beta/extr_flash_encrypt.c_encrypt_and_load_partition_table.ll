; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32s2beta/extr_flash_encrypt.c_encrypt_and_load_partition_table.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32s2beta/extr_flash_encrypt.c_encrypt_and_load_partition_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_PARTITION_TABLE_OFFSET = common dso_local global i32 0, align 4
@ESP_PARTITION_TABLE_MAX_LEN = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to read partition table data\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"partition table is plaintext. Encrypting...\00", align 1
@FLASH_SECTOR_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to encrypt partition table in place. %x\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Failed to read partition table data - not plaintext?\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @encrypt_and_load_partition_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @encrypt_and_load_partition_table(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @ESP_PARTITION_TABLE_OFFSET, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @ESP_PARTITION_TABLE_MAX_LEN, align 4
  %11 = call i64 @bootloader_flash_read(i32 %8, i32* %9, i32 %10, i32 0)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @ESP_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @TAG, align 4
  %17 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %3, align 8
  br label %46

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @esp_partition_table_verify(i32* %20, i32 0, i32* %21)
  %23 = load i64, i64* @ESP_OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load i32, i32* @TAG, align 4
  %27 = call i32 @ESP_LOGD(i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ESP_PARTITION_TABLE_OFFSET, align 4
  %29 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  %30 = call i64 @esp_flash_encrypt_region(i32 %28, i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @ESP_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load i32, i32* @TAG, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %3, align 8
  br label %46

39:                                               ; preds = %25
  br label %44

40:                                               ; preds = %19
  %41 = load i32, i32* @TAG, align 4
  %42 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %43, i64* %3, align 8
  br label %46

44:                                               ; preds = %39
  %45 = load i64, i64* @ESP_OK, align 8
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %44, %40, %34, %15
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local i64 @bootloader_flash_read(i32, i32*, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i64 @esp_partition_table_verify(i32*, i32, i32*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i64 @esp_flash_encrypt_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
