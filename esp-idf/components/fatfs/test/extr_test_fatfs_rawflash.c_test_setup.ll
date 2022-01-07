; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_rawflash.c_test_setup.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_rawflash.c_test_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32 }

@_binary_fatfs_img_end = external dso_local constant [0 x i8], align 1
@_binary_fatfs_img_start = external dso_local constant [0 x i8], align 1
@SPI_FLASH_MMAP_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Copying fatfs.img into test partition...\0A\00", align 1
@SPI_FLASH_SEC_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"/spiflash\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"flash_test\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @test_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_setup(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %11 = load i64, i64* %2, align 8
  store i64 %11, i64* %10, align 8
  %12 = call %struct.TYPE_9__* (...) @get_test_data_partition()
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp eq i64 %16, sub nsw (i64 sub (i64 ptrtoint ([0 x i8]* @_binary_fatfs_img_end to i64), i64 ptrtoint ([0 x i8]* @_binary_fatfs_img_start to i64)), i64 1)
  %18 = zext i1 %17 to i32
  %19 = call i32 @TEST_ASSERT(i32 %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SPI_FLASH_MMAP_DATA, align 4
  %25 = call i32 @esp_partition_mmap(%struct.TYPE_9__* %20, i32 0, i32 %23, i32 %24, i8** %6, i32* %5)
  %26 = call i32 @TEST_ESP_OK(i32 %25)
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @memcmp(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_binary_fatfs_img_start, i64 0, i64 0), i8* %27, i32 %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @spi_flash_munmap(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %67, label %38

38:                                               ; preds = %1
  %39 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @esp_partition_erase_range(%struct.TYPE_9__* %40, i32 0, i32 %43)
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %60, %38
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %45
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_binary_fatfs_img_start, i64 0, i64 0), i64 %55
  %57 = load i64, i64* @SPI_FLASH_SEC_SIZE, align 8
  %58 = call i32 @esp_partition_write(%struct.TYPE_9__* %52, i32 %53, i8* %56, i64 %57)
  %59 = call i32 @ESP_ERROR_CHECK(i32 %58)
  br label %60

60:                                               ; preds = %51
  %61 = load i64, i64* @SPI_FLASH_SEC_SIZE, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  br label %45

66:                                               ; preds = %45
  br label %67

67:                                               ; preds = %66, %1
  %68 = call i32 @esp_vfs_fat_rawflash_mount(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_8__* %3)
  %69 = call i32 @TEST_ESP_OK(i32 %68)
  ret void
}

declare dso_local %struct.TYPE_9__* @get_test_data_partition(...) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @esp_partition_mmap(%struct.TYPE_9__*, i32, i32, i32, i8**, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @spi_flash_munmap(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @esp_partition_erase_range(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_partition_write(%struct.TYPE_9__*, i32, i8*, i64) #1

declare dso_local i32 @esp_vfs_fat_rawflash_mount(i8*, i8*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
