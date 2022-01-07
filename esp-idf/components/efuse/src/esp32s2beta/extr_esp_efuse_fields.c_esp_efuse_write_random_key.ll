; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32s2beta/extr_esp_efuse_fields.c_esp_efuse_write_random_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32s2beta/extr_esp_efuse_fields.c_esp_efuse_write_random_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Writing random values to address 0x%08x\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"EFUSE_BLKx_WDATA%d_REG = 0x%08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_efuse_write_random_key(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [8 x i64], align 16
  %4 = alloca [24 x i64], align 16
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 0
  %7 = call i32 @bootloader_fill_random(i64* %6, i32 64)
  %8 = load i32, i32* @TAG, align 4
  %9 = load i64, i64* %2, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i32 (i32, i8*, i32, ...) @ESP_LOGV(i32 %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %33, %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load i32, i32* @TAG, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i32, i8*, i32, ...) @ESP_LOGV(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %17, i64 %21)
  %23 = load i64, i64* %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 4, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @REG_WRITE(i64 %27, i64 %31)
  br label %33

33:                                               ; preds = %15
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %12

36:                                               ; preds = %12
  %37 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 0
  %38 = call i32 @bzero(i64* %37, i32 64)
  %39 = getelementptr inbounds [24 x i64], [24 x i64]* %4, i64 0, i64 0
  %40 = call i32 @bzero(i64* %39, i32 192)
  ret void
}

declare dso_local i32 @bootloader_fill_random(i64*, i32) #1

declare dso_local i32 @ESP_LOGV(i32, i8*, i32, ...) #1

declare dso_local i32 @REG_WRITE(i64, i64) #1

declare dso_local i32 @bzero(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
