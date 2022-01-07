; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32/extr_secure_boot.c_esp_secure_boot_permanently_enable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32/extr_secure_boot.c_esp_secure_boot_permanently_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"bootloader secure boot is already enabled, continuing..\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@EFUSE_BLK0_RDATA0_REG = common dso_local global i32 0, align 4
@EFUSE_RD_DIS_BLK2 = common dso_local global i32 0, align 4
@EFUSE_WR_DIS_BLK2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Read & write protecting new key...\00", align 1
@EFUSE_BLK0_WDATA0_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"Pre-loaded key is not read protected. Refusing to blow secure boot efuse.\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [75 x i8] c"Pre-loaded key is not write protected. Refusing to blow secure boot efuse.\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"blowing secure boot efuse...\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"before updating, EFUSE_BLK0_RDATA6 %x\00", align 1
@EFUSE_BLK0_RDATA6_REG = common dso_local global i32 0, align 4
@EFUSE_RD_ABS_DONE_0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Disable JTAG...\00", align 1
@EFUSE_RD_DISABLE_JTAG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Disable ROM BASIC interpreter fallback...\00", align 1
@EFUSE_RD_CONSOLE_DEBUG_DISABLE = common dso_local global i32 0, align 4
@EFUSE_BLK0_WDATA6_REG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"after updating, EFUSE_BLK0_RDATA6 %x\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"secure boot is now enabled for bootloader image\00", align 1
@.str.10 = private unnamed_addr constant [95 x i8] c"secure boot not enabled for bootloader image, EFUSE_RD_ABS_DONE_0 is probably write protected!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_secure_boot_permanently_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i64 (...) @esp_secure_boot_enabled()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i32, i32* @TAG, align 4
  %11 = call i32 @ESP_LOGI(i32 %10, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ESP_OK, align 4
  store i32 %12, i32* %1, align 4
  br label %89

13:                                               ; preds = %0
  %14 = load i32, i32* @EFUSE_BLK0_RDATA0_REG, align 4
  %15 = call i32 @REG_READ(i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @EFUSE_RD_DIS_BLK2, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @EFUSE_WR_DIS_BLK2, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i32, i32* @TAG, align 4
  %29 = call i32 @ESP_LOGI(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EFUSE_BLK0_WDATA0_REG, align 4
  %31 = load i32, i32* @EFUSE_WR_DIS_BLK2, align 4
  %32 = load i32, i32* @EFUSE_RD_DIS_BLK2, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @REG_WRITE(i32 %30, i32 %33)
  %35 = call i32 (...) @burn_efuses()
  store i32 1, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %27, %24, %13
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @TAG, align 4
  %41 = call i32 @ESP_LOGE(i32 %40, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %42, i32* %1, align 4
  br label %89

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @TAG, align 4
  %48 = call i32 @ESP_LOGE(i32 %47, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %49, i32* %1, align 4
  br label %89

50:                                               ; preds = %43
  %51 = load i32, i32* @TAG, align 4
  %52 = call i32 @ESP_LOGI(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @TAG, align 4
  %54 = load i32, i32* @EFUSE_BLK0_RDATA6_REG, align 4
  %55 = call i32 @REG_READ(i32 %54)
  %56 = call i32 @ESP_LOGD(i32 %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EFUSE_RD_ABS_DONE_0, align 4
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @TAG, align 4
  %59 = call i32 @ESP_LOGI(i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %60 = load i32, i32* @EFUSE_RD_DISABLE_JTAG, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @TAG, align 4
  %64 = call i32 @ESP_LOGI(i32 %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %65 = load i32, i32* @EFUSE_RD_CONSOLE_DEBUG_DISABLE, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @EFUSE_BLK0_WDATA6_REG, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @REG_WRITE(i32 %68, i32 %69)
  %71 = call i32 (...) @burn_efuses()
  %72 = load i32, i32* @EFUSE_BLK0_RDATA6_REG, align 4
  %73 = call i32 @REG_READ(i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @TAG, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @ESP_LOGD(i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @EFUSE_RD_ABS_DONE_0, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %50
  %82 = load i32, i32* @TAG, align 4
  %83 = call i32 @ESP_LOGI(i32 %82, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  %84 = load i32, i32* @ESP_OK, align 4
  store i32 %84, i32* %1, align 4
  br label %89

85:                                               ; preds = %50
  %86 = load i32, i32* @TAG, align 4
  %87 = call i32 @ESP_LOGE(i32 %86, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.10, i64 0, i64 0))
  %88 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %88, i32* %1, align 4
  br label %89

89:                                               ; preds = %85, %81, %46, %39, %9
  %90 = load i32, i32* %1, align 4
  ret i32 %90
}

declare dso_local i64 @esp_secure_boot_enabled(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @burn_efuses(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
