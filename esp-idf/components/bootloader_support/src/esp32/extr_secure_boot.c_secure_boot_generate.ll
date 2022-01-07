; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32/extr_secure_boot.c_secure_boot_generate.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32/extr_secure_boot.c_secure_boot_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@ESP_OK = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SPI erase failed: 0x%x\00", align 1
@ESP_BOOTLOADER_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"bootloader_mmap(0x1000, 0x%x) failed\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"write iv+digest to flash\00", align 1
@FLASH_OFFS_SECURE_BOOT_IV_DIGEST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"SPI write failed: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @secure_boot_generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secure_boot_generate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = urem i64 %9, 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 8
  %16 = add i64 %15, 1
  %17 = mul i64 %16, 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %12, %1
  %20 = call i32 (...) @ets_secure_boot_start()
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = call i32 @ets_secure_boot_rd_iv(i32* %23)
  %25 = call i32 @ets_secure_boot_hash(i32* null)
  %26 = call i32 @bootloader_flash_erase_sector(i32 0)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @ESP_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32, i32* @TAG, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @ESP_LOGE(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 0, i32* %2, align 4
  br label %84

34:                                               ; preds = %19
  %35 = load i32, i32* @ESP_BOOTLOADER_OFFSET, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32* @bootloader_mmap(i32 %35, i32 %36)
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @TAG, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @ESP_LOGE(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i32 0, i32* %2, align 4
  br label %84

44:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %56, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %52, 4
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = call i32 @ets_secure_boot_hash(i32* %54)
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  br label %45

61:                                               ; preds = %45
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @bootloader_munmap(i32* %62)
  %64 = call i32 (...) @ets_secure_boot_obtain()
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = call i32 @ets_secure_boot_rd_abstract(i32* %67)
  %69 = call i32 (...) @ets_secure_boot_finish()
  %70 = load i32, i32* @TAG, align 4
  %71 = call i32 @ESP_LOGD(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @FLASH_OFFS_SECURE_BOOT_IV_DIGEST, align 4
  %73 = call i32 (...) @esp_flash_encryption_enabled()
  %74 = call i32 @bootloader_flash_write(i32 %72, %struct.TYPE_3__* %5, i32 16, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @ESP_OK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %61
  %79 = load i32, i32* @TAG, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @ESP_LOGE(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  store i32 0, i32* %2, align 4
  br label %84

82:                                               ; preds = %61
  %83 = call i32 @Cache_Read_Enable(i32 0)
  store i32 1, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %78, %40, %30
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @ets_secure_boot_start(...) #1

declare dso_local i32 @ets_secure_boot_rd_iv(i32*) #1

declare dso_local i32 @ets_secure_boot_hash(i32*) #1

declare dso_local i32 @bootloader_flash_erase_sector(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32* @bootloader_mmap(i32, i32) #1

declare dso_local i32 @bootloader_munmap(i32*) #1

declare dso_local i32 @ets_secure_boot_obtain(...) #1

declare dso_local i32 @ets_secure_boot_rd_abstract(i32*) #1

declare dso_local i32 @ets_secure_boot_finish(...) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i32 @bootloader_flash_write(i32, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @esp_flash_encryption_enabled(...) #1

declare dso_local i32 @Cache_Read_Enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
