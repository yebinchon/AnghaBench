; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/security/flash_encryption/main/extr_flash_encrypt_main.c_example_print_flash_encryption_status.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/security/flash_encryption/main/extr_flash_encrypt_main.c_example_print_flash_encryption_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_EFUSE_FLASH_CRYPT_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"FLASH_CRYPT_CNT eFuse value is %d\0A\00", align 1
@ESP_FLASH_ENC_MODE_DISABLED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Flash encryption feature is disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Flash encryption feature is enabled in %s mode\0A\00", align 1
@ESP_FLASH_ENC_MODE_DEVELOPMENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"DEVELOPMENT\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"RELEASE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @example_print_flash_encryption_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @example_print_flash_encryption_status() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @ESP_EFUSE_FLASH_CRYPT_CNT, align 4
  %4 = call i32 @esp_efuse_read_field_blob(i32 %3, i32* %1, i32 7)
  %5 = load i32, i32* %1, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i64 (...) @esp_get_flash_encryption_mode()
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @ESP_FLASH_ENC_MODE_DISABLED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %20

13:                                               ; preds = %0
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @ESP_FLASH_ENC_MODE_DEVELOPMENT, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %13, %11
  ret void
}

declare dso_local i32 @esp_efuse_read_field_blob(i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @esp_get_flash_encryption_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
