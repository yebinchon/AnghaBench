; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32/extr_flash_encrypt.c_encrypt_flash_contents.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32/extr_flash_encrypt.c_encrypt_flash_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_PARTITION_TABLE_MAX_ENTRIES = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Cannot re-encrypt data (FLASH_CRYPT_CNT 0x%02x write disabled %d\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"All flash regions checked for encryption pass\00", align 1
@EFUSE_RD_FLASH_CRYPT_CNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"FLASH_CRYPT_CNT 0x%x -> 0x%x\00", align 1
@EFUSE_FLASH_CRYPT_CNT = common dso_local global i32 0, align 4
@EFUSE_FLASH_CRYPT_CNT_S = common dso_local global i32 0, align 4
@EFUSE_BLK0_WDATA0_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Flash encryption completed\00", align 1
@EFUSE_WR_DIS_FLASH_CRYPT_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @encrypt_flash_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @encrypt_flash_contents(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @ESP_PARTITION_TABLE_MAX_ENTRIES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 255
  br i1 %23, label %24, label %30

24:                                               ; preds = %21, %2
  %25 = load i32, i32* @TAG, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ESP_LOGE(i32 %25, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i64, i64* @ESP_FAIL, align 8
  store i64 %29, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %107

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = call i64 (...) @initialise_flash_encryption()
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @ESP_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %107

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %30
  %42 = call i64 (...) @encrypt_bootloader()
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @ESP_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i64, i64* %6, align 8
  store i64 %47, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %107

48:                                               ; preds = %41
  %49 = call i64 @encrypt_and_load_partition_table(i32* %18, i32* %9)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @ESP_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i64, i64* %6, align 8
  store i64 %54, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %107

55:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %72, %55
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %18, i64 %63
  %65 = call i64 @encrypt_partition(i32 %61, i32* %64)
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @ESP_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i64, i64* %6, align 8
  store i64 %70, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %107

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %56

75:                                               ; preds = %56
  %76 = load i32, i32* @TAG, align 4
  %77 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* %4, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* @EFUSE_RD_FLASH_CRYPT_CNT, align 4
  %81 = and i32 %79, %80
  %82 = call i32 @llvm.cttz.i32(i32 %81, i1 true)
  %83 = add i32 %82, 1
  %84 = icmp eq i32 %81, 0
  %85 = select i1 %84, i32 0, i32 %83
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %12, align 4
  %88 = sub nsw i32 %87, 1
  %89 = shl i32 1, %88
  %90 = add nsw i32 %86, %89
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* @TAG, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @EFUSE_FLASH_CRYPT_CNT, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @EFUSE_FLASH_CRYPT_CNT_S, align 4
  %99 = shl i32 %97, %98
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* @EFUSE_BLK0_WDATA0_REG, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @REG_WRITE(i32 %100, i32 %101)
  %103 = call i32 (...) @esp_efuse_burn_new_values()
  %104 = load i32, i32* @TAG, align 4
  %105 = call i32 @ESP_LOGI(i32 %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i64, i64* @ESP_OK, align 8
  store i64 %106, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %107

107:                                              ; preds = %75, %69, %53, %46, %38, %24
  %108 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i64, i64* %3, align 8
  ret i64 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32, i32) #2

declare dso_local i64 @initialise_flash_encryption(...) #2

declare dso_local i64 @encrypt_bootloader(...) #2

declare dso_local i64 @encrypt_and_load_partition_table(i32*, i32*) #2

declare dso_local i64 @encrypt_partition(i32, i32*) #2

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

declare dso_local i32 @REG_WRITE(i32, i32) #2

declare dso_local i32 @esp_efuse_burn_new_values(...) #2

declare dso_local i32 @ESP_LOGI(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
