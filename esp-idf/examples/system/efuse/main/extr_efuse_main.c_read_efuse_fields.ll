; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/efuse/main/extr_efuse_main.c_read_efuse_fields.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/efuse/main/extr_efuse_main.c_read_efuse_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"read efuse fields\00", align 1
@ESP_EFUSE_MAC_FACTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"1. read MAC address: %02x:%02x:%02x:%02x:%02x:%02x\00", align 1
@ESP_EFUSE_SECURE_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"2. read secure_version: %d\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"3. read custom fields\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @read_efuse_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_efuse_fields(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [6 x i32], align 16
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @TAG, align 4
  %6 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @ESP_EFUSE_MAC_FACTORY, align 4
  %8 = bitcast [6 x i32]* %3 to i32**
  %9 = call i32 @esp_efuse_read_field_blob(i32 %7, i32** %8, i32 192)
  %10 = call i32 @ESP_ERROR_CHECK(i32 %9)
  %11 = load i32, i32* @TAG, align 4
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %13 = load i32, i32* %12, align 16
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 2
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 4
  %21 = load i32, i32* %20, align 16
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %11, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %15, i32 %17, i32 %19, i32 %21, i32 %23)
  store i64 0, i64* %4, align 8
  %25 = load i32, i32* @ESP_EFUSE_SECURE_VERSION, align 4
  %26 = call i32 @esp_efuse_read_field_cnt(i32 %25, i64* %4)
  %27 = call i32 @ESP_ERROR_CHECK(i32 %26)
  %28 = load i32, i32* @TAG, align 4
  %29 = load i64, i64* %4, align 8
  %30 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @TAG, align 4
  %32 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @read_device_desc_efuse_fields(i32* %33)
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_efuse_read_field_blob(i32, i32**, i32) #1

declare dso_local i32 @esp_efuse_read_field_cnt(i32, i64*) #1

declare dso_local i32 @read_device_desc_efuse_fields(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
