; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/vfs/extr_vfs_fat_spiflash.c_esp_vfs_fat_rawflash_mount.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/vfs/extr_vfs_fat_spiflash.c_esp_vfs_fat_rawflash_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ESP_OK = common dso_local global i64 0, align 8
@ESP_PARTITION_TYPE_DATA = common dso_local global i32 0, align 4
@ESP_PARTITION_SUBTYPE_DATA_FAT = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"Failed to find FATFS partition (type='data', subtype='fat', partition_label='%s'). Check the partition table.\00", align 1
@ESP_ERR_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"the maximum count of volumes is already mounted\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"using pdrv=%i\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"ff_diskio_register_raw_partition failed pdrv=%i, error - 0x(%x)\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"esp_vfs_fat_register failed 0x(%x)\00", align 1
@FR_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"f_mount failed (%d)\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_vfs_fat_rawflash_mount(i8* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x i8], align 1
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %14 = load i64, i64* @ESP_OK, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* @ESP_PARTITION_TYPE_DATA, align 4
  %16 = load i32, i32* @ESP_PARTITION_SUBTYPE_DATA_FAT, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32* @esp_partition_find_first(i32 %15, i32 %16, i8* %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* @TAG, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = call i32 (i32, i8*, i64, ...) @ESP_LOGE(i32 %22, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* @ESP_ERR_NOT_FOUND, align 8
  store i64 %26, i64* %4, align 8
  br label %96

27:                                               ; preds = %3
  store i64 255, i64* %10, align 8
  %28 = call i64 @ff_diskio_get_drive(i64* %10)
  %29 = load i64, i64* @ESP_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @TAG, align 4
  %33 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %34, i64* %4, align 8
  br label %96

35:                                               ; preds = %27
  %36 = load i32, i32* @TAG, align 4
  %37 = load i64, i64* %10, align 8
  %38 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %40 = load i64, i64* %10, align 8
  %41 = add nsw i64 48, %40
  %42 = trunc i64 %41 to i8
  store i8 %42, i8* %39, align 1
  %43 = getelementptr inbounds i8, i8* %39, i64 1
  store i8 58, i8* %43, align 1
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 0, i8* %44, align 1
  %45 = load i64, i64* %10, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i64 @ff_diskio_register_raw_partition(i64 %45, i32* %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @ESP_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %35
  %52 = load i32, i32* @TAG, align 4
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 (i32, i8*, i64, ...) @ESP_LOGE(i32 %52, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i64 %53, i64 %54)
  br label %90

56:                                               ; preds = %35
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @esp_vfs_fat_register(i8* %57, i8* %58, i32 %61, i32** %12)
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %76

67:                                               ; preds = %56
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @ESP_OK, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @TAG, align 4
  %73 = load i64, i64* %8, align 8
  %74 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %73)
  br label %90

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %66
  %77 = load i32*, i32** %12, align 8
  %78 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %79 = call i64 @f_mount(i32* %77, i8* %78, i32 1)
  store i64 %79, i64* %13, align 8
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* @FR_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32, i32* @TAG, align 4
  %85 = load i64, i64* %13, align 8
  %86 = call i32 @ESP_LOGW(i32 %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %85)
  %87 = load i64, i64* @ESP_FAIL, align 8
  store i64 %87, i64* %8, align 8
  br label %90

88:                                               ; preds = %76
  %89 = load i64, i64* @ESP_OK, align 8
  store i64 %89, i64* %4, align 8
  br label %96

90:                                               ; preds = %83, %71, %51
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @esp_vfs_fat_unregister_path(i8* %91)
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @ff_diskio_unregister(i64 %93)
  %95 = load i64, i64* %8, align 8
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %90, %88, %31, %21
  %97 = load i64, i64* %4, align 8
  ret i64 %97
}

declare dso_local i32* @esp_partition_find_first(i32, i32, i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i64, ...) #1

declare dso_local i64 @ff_diskio_get_drive(i64*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i64 @ff_diskio_register_raw_partition(i64, i32*) #1

declare dso_local i64 @esp_vfs_fat_register(i8*, i8*, i32, i32**) #1

declare dso_local i64 @f_mount(i32*, i8*, i32) #1

declare dso_local i32 @ESP_LOGW(i32, i8*, i64) #1

declare dso_local i32 @esp_vfs_fat_unregister_path(i8*) #1

declare dso_local i32 @ff_diskio_unregister(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
