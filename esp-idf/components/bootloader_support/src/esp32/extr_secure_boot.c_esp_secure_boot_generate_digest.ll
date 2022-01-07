; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32/extr_secure_boot.c_esp_secure_boot_generate_digest.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32/extr_secure_boot.c_esp_secure_boot_generate_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"bootloader secure boot is already enabled. No need to generate digest. continuing..\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@EFUSE_BLK0_RDATA6_REG = common dso_local global i32 0, align 4
@EFUSE_CODING_SCHEME = common dso_local global i32 0, align 4
@EFUSE_CODING_SCHEME_VAL_NONE = common dso_local global i64 0, align 8
@EFUSE_CODING_SCHEME_VAL_34 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Unknown/unsupported CODING_SCHEME value 0x%x\00", align 1
@ESP_ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"bootloader image appears invalid! error %d\00", align 1
@EFUSE_BLK0_RDATA0_REG = common dso_local global i32 0, align 4
@EFUSE_RD_DIS_BLK2 = common dso_local global i64 0, align 8
@EFUSE_WR_DIS_BLK2 = common dso_local global i64 0, align 8
@EFUSE_BLK2_RDATA0_REG = common dso_local global i32 0, align 4
@EFUSE_BLK2_RDATA1_REG = common dso_local global i32 0, align 4
@EFUSE_BLK2_RDATA2_REG = common dso_local global i32 0, align 4
@EFUSE_BLK2_RDATA3_REG = common dso_local global i32 0, align 4
@EFUSE_BLK2_RDATA4_REG = common dso_local global i32 0, align 4
@EFUSE_BLK2_RDATA5_REG = common dso_local global i32 0, align 4
@EFUSE_BLK2_RDATA6_REG = common dso_local global i32 0, align 4
@EFUSE_BLK2_RDATA7_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Generating new secure boot key...\00", align 1
@EFUSE_BLK2_WDATA0_REG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Using pre-loaded secure boot key in EFUSE block 2\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Generating secure boot digest...\00", align 1
@ESP_IMAGE_HASH_LEN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"secure boot generation failed\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"Digest generation complete.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_secure_boot_generate_digest() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = call i64 (...) @esp_secure_boot_enabled()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i32, i32* @TAG, align 4
  %13 = call i32 @ESP_LOGI(i32 %12, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @ESP_OK, align 8
  store i64 %14, i64* %1, align 8
  br label %124

15:                                               ; preds = %0
  %16 = load i32, i32* @EFUSE_BLK0_RDATA6_REG, align 4
  %17 = load i32, i32* @EFUSE_CODING_SCHEME, align 4
  %18 = call i64 @REG_GET_FIELD(i32 %16, i32 %17)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @EFUSE_CODING_SCHEME_VAL_NONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @EFUSE_CODING_SCHEME_VAL_34, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* @TAG, align 4
  %28 = load i64, i64* %3, align 8
  %29 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* @ESP_ERR_NOT_SUPPORTED, align 8
  store i64 %30, i64* %1, align 8
  br label %124

31:                                               ; preds = %22, %15
  %32 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %32, i8 0, i64 24, i1 false)
  %33 = call i64 @esp_image_verify_bootloader_data(%struct.TYPE_5__* %4)
  store i64 %33, i64* %2, align 8
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @ESP_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* @TAG, align 4
  %39 = load i64, i64* %2, align 8
  %40 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* %2, align 8
  store i64 %41, i64* %1, align 8
  br label %124

42:                                               ; preds = %31
  %43 = load i32, i32* @EFUSE_BLK0_RDATA0_REG, align 4
  %44 = call i64 @REG_READ(i32 %43)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @EFUSE_RD_DIS_BLK2, align 8
  %47 = and i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @EFUSE_WR_DIS_BLK2, align 8
  %51 = and i64 %49, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %96

55:                                               ; preds = %42
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %96

58:                                               ; preds = %55
  %59 = load i32, i32* @EFUSE_BLK2_RDATA0_REG, align 4
  %60 = call i64 @REG_READ(i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %96

62:                                               ; preds = %58
  %63 = load i32, i32* @EFUSE_BLK2_RDATA1_REG, align 4
  %64 = call i64 @REG_READ(i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %62
  %67 = load i32, i32* @EFUSE_BLK2_RDATA2_REG, align 4
  %68 = call i64 @REG_READ(i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %66
  %71 = load i32, i32* @EFUSE_BLK2_RDATA3_REG, align 4
  %72 = call i64 @REG_READ(i32 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %75 = load i32, i32* @EFUSE_BLK2_RDATA4_REG, align 4
  %76 = call i64 @REG_READ(i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load i32, i32* @EFUSE_BLK2_RDATA5_REG, align 4
  %80 = call i64 @REG_READ(i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load i32, i32* @EFUSE_BLK2_RDATA6_REG, align 4
  %84 = call i64 @REG_READ(i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i32, i32* @EFUSE_BLK2_RDATA7_REG, align 4
  %88 = call i64 @REG_READ(i32 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* @TAG, align 4
  %92 = call i32 @ESP_LOGI(i32 %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* @EFUSE_BLK2_WDATA0_REG, align 4
  %94 = call i32 @esp_efuse_write_random_key(i32 %93)
  %95 = call i32 (...) @burn_efuses()
  br label %99

96:                                               ; preds = %86, %82, %78, %74, %70, %66, %62, %58, %55, %42
  %97 = load i32, i32* @TAG, align 4
  %98 = call i32 @ESP_LOGW(i32 %97, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %90
  %100 = load i32, i32* @TAG, align 4
  %101 = call i32 @ESP_LOGI(i32 %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %99
  %109 = load i64, i64* @ESP_IMAGE_HASH_LEN, align 8
  %110 = load i64, i64* %8, align 8
  %111 = sub nsw i64 %110, %109
  store i64 %111, i64* %8, align 8
  br label %112

112:                                              ; preds = %108, %99
  %113 = load i64, i64* %8, align 8
  %114 = call i32 @secure_boot_generate(i64 %113)
  %115 = icmp eq i32 0, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i32, i32* @TAG, align 4
  %118 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %119 = load i64, i64* @ESP_FAIL, align 8
  store i64 %119, i64* %1, align 8
  br label %124

120:                                              ; preds = %112
  %121 = load i32, i32* @TAG, align 4
  %122 = call i32 @ESP_LOGI(i32 %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %123 = load i64, i64* @ESP_OK, align 8
  store i64 %123, i64* %1, align 8
  br label %124

124:                                              ; preds = %120, %116, %37, %26, %11
  %125 = load i64, i64* %1, align 8
  ret i64 %125
}

declare dso_local i64 @esp_secure_boot_enabled(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i64 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @esp_image_verify_bootloader_data(%struct.TYPE_5__*) #1

declare dso_local i64 @REG_READ(i32) #1

declare dso_local i32 @esp_efuse_write_random_key(i32) #1

declare dso_local i32 @burn_efuses(...) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

declare dso_local i32 @secure_boot_generate(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
