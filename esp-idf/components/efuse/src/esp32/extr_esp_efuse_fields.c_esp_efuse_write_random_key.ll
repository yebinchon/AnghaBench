; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32/extr_esp_efuse_fields.c_esp_efuse_write_random_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32/extr_esp_efuse_fields.c_esp_efuse_write_random_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFUSE_BLK2 = common dso_local global i32 0, align 4
@EFUSE_CODING_SCHEME_NONE = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Writing random values to address 0x%08x\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"EFUSE_BLKx_WDATA%d_REG = 0x%08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_efuse_write_random_key(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [8 x i64], align 16
  %4 = alloca [24 x i64], align 16
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i32, i32* @EFUSE_BLK2, align 4
  %8 = call i64 @esp_efuse_get_coding_scheme(i32 %7)
  %9 = load i64, i64* @EFUSE_CODING_SCHEME_NONE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 0
  %13 = call i32 @bootloader_fill_random(i64* %12, i32 64)
  br label %26

14:                                               ; preds = %1
  %15 = getelementptr inbounds [24 x i64], [24 x i64]* %4, i64 0, i64 0
  %16 = call i32 @bootloader_fill_random(i64* %15, i32 192)
  %17 = getelementptr inbounds [24 x i64], [24 x i64]* %4, i64 0, i64 0
  %18 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 0
  %19 = call i64 @esp_efuse_utility_apply_34_encoding(i64* %17, i64* %18, i32 192)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @ESP_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  br label %26

26:                                               ; preds = %14, %11
  %27 = load i32, i32* @TAG, align 4
  %28 = load i64, i64* %2, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 (i32, i8*, i32, ...) @ESP_LOGV(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %52, %26
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load i32, i32* @TAG, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i32, i8*, i32, ...) @ESP_LOGV(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %36, i64 %40)
  %42 = load i64, i64* %2, align 8
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 4, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @REG_WRITE(i64 %46, i64 %50)
  br label %52

52:                                               ; preds = %34
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %31

55:                                               ; preds = %31
  %56 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 0
  %57 = call i32 @bzero(i64* %56, i32 64)
  %58 = getelementptr inbounds [24 x i64], [24 x i64]* %4, i64 0, i64 0
  %59 = call i32 @bzero(i64* %58, i32 192)
  ret void
}

declare dso_local i64 @esp_efuse_get_coding_scheme(i32) #1

declare dso_local i32 @bootloader_fill_random(i64*, i32) #1

declare dso_local i64 @esp_efuse_utility_apply_34_encoding(i64*, i64*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ESP_LOGV(i32, i8*, i32, ...) #1

declare dso_local i32 @REG_WRITE(i64, i64) #1

declare dso_local i32 @bzero(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
