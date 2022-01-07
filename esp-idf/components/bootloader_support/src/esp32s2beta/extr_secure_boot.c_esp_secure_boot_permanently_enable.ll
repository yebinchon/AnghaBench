; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32s2beta/extr_secure_boot.c_esp_secure_boot_permanently_enable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32s2beta/extr_secure_boot.c_esp_secure_boot_permanently_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"secure boot is already enabled, continuing..\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Verifying bootloader signature...\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to verify bootloader signature\00", align 1
@EFUSE_PGM_DATA3_REG = common dso_local global i32 0, align 4
@EFUSE_SECURE_BOOT_EN = common dso_local global i32 0, align 4
@ETS_EFUSE_BLOCK0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Secure boot permanently enabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_secure_boot_permanently_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i32], align 16
  %3 = alloca i32, align 4
  %4 = call i64 (...) @ets_efuse_secure_boot_enabled()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @TAG, align 4
  %8 = call i32 @ESP_LOGI(i32 %7, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @ESP_OK, align 4
  store i32 %9, i32* %1, align 4
  br label %34

10:                                               ; preds = %0
  %11 = load i32, i32* @TAG, align 4
  %12 = call i32 @ESP_LOGI(i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %13 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %14 = call i32 @ets_secure_boot_verify_bootloader(i32* %13, i32 0)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ESP_OK, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load i32, i32* @TAG, align 4
  %20 = call i32 @ESP_LOGE(i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* %1, align 4
  br label %34

22:                                               ; preds = %10
  %23 = call i32 (...) @ets_efuse_clear_program_registers()
  %24 = load i32, i32* @EFUSE_PGM_DATA3_REG, align 4
  %25 = load i32, i32* @EFUSE_SECURE_BOOT_EN, align 4
  %26 = call i32 @REG_SET_BIT(i32 %24, i32 %25)
  %27 = load i32, i32* @ETS_EFUSE_BLOCK0, align 4
  %28 = call i32 @ets_efuse_program(i32 %27)
  %29 = call i64 (...) @ets_efuse_secure_boot_enabled()
  %30 = call i32 @assert(i64 %29)
  %31 = load i32, i32* @TAG, align 4
  %32 = call i32 @ESP_LOGI(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* @ESP_OK, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %22, %18, %6
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i64 @ets_efuse_secure_boot_enabled(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @ets_secure_boot_verify_bootloader(i32*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @ets_efuse_clear_program_registers(...) #1

declare dso_local i32 @REG_SET_BIT(i32, i32) #1

declare dso_local i32 @ets_efuse_program(i32) #1

declare dso_local i32 @assert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
