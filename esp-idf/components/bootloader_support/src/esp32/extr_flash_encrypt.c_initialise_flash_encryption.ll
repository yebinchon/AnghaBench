; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32/extr_flash_encrypt.c_initialise_flash_encryption.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32/extr_flash_encrypt.c_initialise_flash_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFUSE_BLK0_RDATA6_REG = common dso_local global i32 0, align 4
@EFUSE_CODING_SCHEME = common dso_local global i32 0, align 4
@EFUSE_CODING_SCHEME_VAL_NONE = common dso_local global i64 0, align 8
@EFUSE_CODING_SCHEME_VAL_34 = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unknown/unsupported CODING_SCHEME value 0x%x\00", align 1
@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@EFUSE_BLK0_RDATA0_REG = common dso_local global i32 0, align 4
@EFUSE_RD_DIS_BLK1 = common dso_local global i64 0, align 8
@EFUSE_WR_DIS_BLK1 = common dso_local global i64 0, align 8
@EFUSE_BLK1_RDATA0_REG = common dso_local global i32 0, align 4
@EFUSE_BLK1_RDATA1_REG = common dso_local global i32 0, align 4
@EFUSE_BLK1_RDATA2_REG = common dso_local global i32 0, align 4
@EFUSE_BLK1_RDATA3_REG = common dso_local global i32 0, align 4
@EFUSE_BLK1_RDATA4_REG = common dso_local global i32 0, align 4
@EFUSE_BLK1_RDATA5_REG = common dso_local global i32 0, align 4
@EFUSE_BLK1_RDATA6_REG = common dso_local global i32 0, align 4
@EFUSE_BLK1_RDATA7_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Generating new flash encryption key...\00", align 1
@EFUSE_BLK1_WDATA0_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Read & write protecting new key...\00", align 1
@EFUSE_BLK0_WDATA0_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [77 x i8] c"Flash encryption key has to be either unset or both read and write protected\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"Using pre-loaded flash encryption key in EFUSE block 1\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Setting CRYPT_CONFIG efuse to 0xF\00", align 1
@EFUSE_BLK0_WDATA5_REG = common dso_local global i32 0, align 4
@EFUSE_FLASH_CRYPT_CONFIG_M = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"Disable UART bootloader encryption...\00", align 1
@EFUSE_DISABLE_DL_ENCRYPT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"Disable UART bootloader decryption...\00", align 1
@EFUSE_DISABLE_DL_DECRYPT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [37 x i8] c"Disable UART bootloader MMU cache...\00", align 1
@EFUSE_DISABLE_DL_CACHE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"Disable JTAG...\00", align 1
@EFUSE_RD_DISABLE_JTAG = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [42 x i8] c"Disable ROM BASIC interpreter fallback...\00", align 1
@EFUSE_RD_CONSOLE_DEBUG_DISABLE = common dso_local global i64 0, align 8
@EFUSE_BLK0_WDATA6_REG = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @initialise_flash_encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialise_flash_encryption() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = load i32, i32* @EFUSE_BLK0_RDATA6_REG, align 4
  %8 = load i32, i32* @EFUSE_CODING_SCHEME, align 4
  %9 = call i64 @REG_GET_FIELD(i32 %7, i32 %8)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @EFUSE_CODING_SCHEME_VAL_NONE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %0
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @EFUSE_CODING_SCHEME_VAL_34, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* @TAG, align 4
  %19 = load i64, i64* %2, align 8
  %20 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @ESP_ERR_NOT_SUPPORTED, align 4
  store i32 %21, i32* %1, align 4
  br label %138

22:                                               ; preds = %13, %0
  %23 = load i32, i32* @EFUSE_BLK0_RDATA0_REG, align 4
  %24 = call i64 @REG_READ(i32 %23)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @EFUSE_RD_DIS_BLK1, align 8
  %27 = and i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @EFUSE_WR_DIS_BLK1, align 8
  %31 = and i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %84

35:                                               ; preds = %22
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %84

38:                                               ; preds = %35
  %39 = load i32, i32* @EFUSE_BLK1_RDATA0_REG, align 4
  %40 = call i64 @REG_READ(i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %84

42:                                               ; preds = %38
  %43 = load i32, i32* @EFUSE_BLK1_RDATA1_REG, align 4
  %44 = call i64 @REG_READ(i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %42
  %47 = load i32, i32* @EFUSE_BLK1_RDATA2_REG, align 4
  %48 = call i64 @REG_READ(i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %84

50:                                               ; preds = %46
  %51 = load i32, i32* @EFUSE_BLK1_RDATA3_REG, align 4
  %52 = call i64 @REG_READ(i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %50
  %55 = load i32, i32* @EFUSE_BLK1_RDATA4_REG, align 4
  %56 = call i64 @REG_READ(i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %54
  %59 = load i32, i32* @EFUSE_BLK1_RDATA5_REG, align 4
  %60 = call i64 @REG_READ(i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  %63 = load i32, i32* @EFUSE_BLK1_RDATA6_REG, align 4
  %64 = call i64 @REG_READ(i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = load i32, i32* @EFUSE_BLK1_RDATA7_REG, align 4
  %68 = call i64 @REG_READ(i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load i32, i32* @TAG, align 4
  %72 = call i32 @ESP_LOGI(i32 %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @EFUSE_BLK1_WDATA0_REG, align 4
  %74 = call i32 @esp_efuse_write_random_key(i32 %73)
  %75 = call i32 (...) @esp_efuse_burn_new_values()
  %76 = load i32, i32* @TAG, align 4
  %77 = call i32 @ESP_LOGI(i32 %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @EFUSE_BLK0_WDATA0_REG, align 4
  %79 = load i64, i64* @EFUSE_WR_DIS_BLK1, align 8
  %80 = load i64, i64* @EFUSE_RD_DIS_BLK1, align 8
  %81 = or i64 %79, %80
  %82 = call i32 @REG_WRITE(i32 %78, i64 %81)
  %83 = call i32 (...) @esp_efuse_burn_new_values()
  br label %97

84:                                               ; preds = %66, %62, %58, %54, %50, %46, %42, %38, %35, %22
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* @TAG, align 4
  %92 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %91, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %93, i32* %1, align 4
  br label %138

94:                                               ; preds = %87
  %95 = load i32, i32* @TAG, align 4
  %96 = call i32 @ESP_LOGW(i32 %95, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %70
  %98 = load i32, i32* @TAG, align 4
  %99 = call i32 @ESP_LOGI(i32 %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* @EFUSE_BLK0_WDATA5_REG, align 4
  %101 = load i64, i64* @EFUSE_FLASH_CRYPT_CONFIG_M, align 8
  %102 = call i32 @REG_WRITE(i32 %100, i64 %101)
  %103 = call i32 (...) @esp_efuse_burn_new_values()
  store i64 0, i64* %6, align 8
  %104 = load i32, i32* @TAG, align 4
  %105 = call i32 @ESP_LOGI(i32 %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %106 = load i64, i64* @EFUSE_DISABLE_DL_ENCRYPT, align 8
  %107 = load i64, i64* %6, align 8
  %108 = or i64 %107, %106
  store i64 %108, i64* %6, align 8
  %109 = load i32, i32* @TAG, align 4
  %110 = call i32 @ESP_LOGI(i32 %109, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %111 = load i64, i64* @EFUSE_DISABLE_DL_DECRYPT, align 8
  %112 = load i64, i64* %6, align 8
  %113 = or i64 %112, %111
  store i64 %113, i64* %6, align 8
  %114 = load i32, i32* @TAG, align 4
  %115 = call i32 @ESP_LOGI(i32 %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %116 = load i64, i64* @EFUSE_DISABLE_DL_CACHE, align 8
  %117 = load i64, i64* %6, align 8
  %118 = or i64 %117, %116
  store i64 %118, i64* %6, align 8
  %119 = load i32, i32* @TAG, align 4
  %120 = call i32 @ESP_LOGI(i32 %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %121 = load i64, i64* @EFUSE_RD_DISABLE_JTAG, align 8
  %122 = load i64, i64* %6, align 8
  %123 = or i64 %122, %121
  store i64 %123, i64* %6, align 8
  %124 = load i32, i32* @TAG, align 4
  %125 = call i32 @ESP_LOGI(i32 %124, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %126 = load i64, i64* @EFUSE_RD_CONSOLE_DEBUG_DISABLE, align 8
  %127 = load i64, i64* %6, align 8
  %128 = or i64 %127, %126
  store i64 %128, i64* %6, align 8
  %129 = load i64, i64* %6, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %97
  %132 = load i32, i32* @EFUSE_BLK0_WDATA6_REG, align 4
  %133 = load i64, i64* %6, align 8
  %134 = call i32 @REG_WRITE(i32 %132, i64 %133)
  %135 = call i32 (...) @esp_efuse_burn_new_values()
  br label %136

136:                                              ; preds = %131, %97
  %137 = load i32, i32* @ESP_OK, align 4
  store i32 %137, i32* %1, align 4
  br label %138

138:                                              ; preds = %136, %90, %17
  %139 = load i32, i32* %1, align 4
  ret i32 %139
}

declare dso_local i64 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i64 @REG_READ(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @esp_efuse_write_random_key(i32) #1

declare dso_local i32 @esp_efuse_burn_new_values(...) #1

declare dso_local i32 @REG_WRITE(i32, i64) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
