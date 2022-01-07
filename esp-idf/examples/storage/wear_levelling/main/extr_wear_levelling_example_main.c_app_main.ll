; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/storage/wear_levelling/main/extr_wear_levelling_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/storage/wear_levelling/main/extr_wear_levelling_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Mounting FAT filesystem\00", align 1
@CONFIG_WL_SECTOR_SIZE = common dso_local global i32 0, align 4
@base_path = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"storage\00", align 1
@s_wl_handle = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to mount FATFS (%s)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Opening file\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"/spiflash/hello.txt\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to open file for writing\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"written using ESP-IDF %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"File written\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Reading file\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Failed to open file for reading\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Read from file: '%s'\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Unmounting FAT filesystem\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = load i32, i32* @TAG, align 4
  %7 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 4, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %11 = load i32, i32* @CONFIG_WL_SECTOR_SIZE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @base_path, align 4
  %13 = call i64 @esp_vfs_fat_spiflash_mount(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %1, i32* @s_wl_handle)
  store i64 %13, i64* %2, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @ESP_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = load i32, i32* @TAG, align 4
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @esp_err_to_name(i64 %19)
  %21 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  br label %71

22:                                               ; preds = %0
  %23 = load i32, i32* @TAG, align 4
  %24 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %25 = call i32* @fopen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %25, i32** %3, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @TAG, align 4
  %30 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %71

31:                                               ; preds = %22
  %32 = load i32*, i32** %3, align 8
  %33 = call i8* (...) @esp_get_idf_version()
  %34 = call i32 @fprintf(i32* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @fclose(i32* %35)
  %37 = load i32, i32* @TAG, align 4
  %38 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %39 = load i32, i32* @TAG, align 4
  %40 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %41 = call i32* @fopen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32* %41, i32** %3, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32, i32* @TAG, align 4
  %46 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %71

47:                                               ; preds = %31
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @fgets(i8* %48, i32 128, i32* %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @fclose(i32* %51)
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %54 = call i8* @strchr(i8* %53, i8 signext 10)
  store i8* %54, i8** %5, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i8*, i8** %5, align 8
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %57, %47
  %60 = load i32, i32* @TAG, align 4
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %62 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @TAG, align 4
  %64 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %65 = load i32, i32* @base_path, align 4
  %66 = load i32, i32* @s_wl_handle, align 4
  %67 = call i32 @esp_vfs_fat_spiflash_unmount(i32 %65, i32 %66)
  %68 = call i32 @ESP_ERROR_CHECK(i32 %67)
  %69 = load i32, i32* @TAG, align 4
  %70 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %71

71:                                               ; preds = %59, %44, %28, %17
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i64 @esp_vfs_fat_spiflash_mount(i32, i8*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @esp_err_to_name(i64) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i8* @esp_get_idf_version(...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_vfs_fat_spiflash_unmount(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
