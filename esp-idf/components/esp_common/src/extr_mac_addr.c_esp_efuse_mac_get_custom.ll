; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_common/src/extr_mac_addr.c_esp_efuse_mac_get_custom.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_common/src/extr_mac_addr.c_esp_efuse_mac_get_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_EFUSE_MAC_CUSTOM_VER = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Base MAC address from BLK3 of EFUSE version error, version = %d\00", align 1
@ESP_ERR_INVALID_VERSION = common dso_local global i32 0, align 4
@ESP_EFUSE_MAC_CUSTOM = common dso_local global i32 0, align 4
@ESP_EFUSE_MAC_CUSTOM_CRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"Base MAC address from BLK3 of EFUSE CRC error, efuse_crc = 0x%02x; calc_crc = 0x%02x\00", align 1
@ESP_ERR_INVALID_CRC = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_efuse_mac_get_custom(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @ESP_EFUSE_MAC_CUSTOM_VER, align 4
  %8 = call i32 @esp_efuse_read_field_blob(i32 %7, i32* %4, i32 8)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @TAG, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i32, i8*, i32, ...) @ESP_LOGE(i32 %12, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @ESP_ERR_INVALID_VERSION, align 4
  store i32 %15, i32* %2, align 4
  br label %35

16:                                               ; preds = %1
  %17 = load i32, i32* @ESP_EFUSE_MAC_CUSTOM, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @esp_efuse_read_field_blob(i32 %17, i32* %18, i32 48)
  %20 = load i32, i32* @ESP_EFUSE_MAC_CUSTOM_CRC, align 4
  %21 = call i32 @esp_efuse_read_field_blob(i32 %20, i32* %5, i32 8)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @esp_crc8(i32* %22, i32 6)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %16
  %28 = load i32, i32* @TAG, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32, i8*, i32, ...) @ESP_LOGE(i32 %28, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @ESP_ERR_INVALID_CRC, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %16
  %34 = load i32, i32* @ESP_OK, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %27, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @esp_efuse_read_field_blob(i32, i32*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32, ...) #1

declare dso_local i32 @esp_crc8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
