; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/diskio/extr_diskio_rawflash.c_ff_raw_read.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/diskio/extr_diskio_rawflash.c_ff_raw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ff_raw_read - pdrv=%i, sector=%i, count=%in\00", align 1
@ff_raw_handles = common dso_local global i32** null, align 8
@SPI_FLASH_SEC_SIZE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"esp_partition_read failed (0x%x)\00", align 1
@RES_ERROR = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_raw_read(i64 %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @TAG, align 4
  %13 = load i64, i64* %6, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @ESP_LOGV(i32 %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  %18 = load i32**, i32*** @ff_raw_handles, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 %19
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @assert(i32* %22)
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @SPI_FLASH_SEC_SIZE, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load i64*, i64** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @SPI_FLASH_SEC_SIZE, align 4
  %31 = mul nsw i32 %29, %30
  %32 = call i64 @esp_partition_read(i32* %24, i32 %27, i64* %28, i32 %31)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @ESP_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %4
  %37 = load i32, i32* @TAG, align 4
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @ESP_LOGE(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @RES_ERROR, align 4
  store i32 %40, i32* %5, align 4
  br label %43

41:                                               ; preds = %4
  %42 = load i32, i32* @RES_OK, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @ESP_LOGV(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @esp_partition_read(i32*, i32, i64*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
