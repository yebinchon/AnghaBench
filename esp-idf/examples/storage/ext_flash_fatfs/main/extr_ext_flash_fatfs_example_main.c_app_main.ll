; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/storage/ext_flash_fatfs/main/extr_ext_flash_fatfs_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/storage/ext_flash_fatfs/main/extr_ext_flash_fatfs_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"storage\00", align 1
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"FAT FS: %d kB total, %d kB free\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Opening file\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"/extflash/hello.txt\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to open file for writing\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Written using ESP-IDF %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"File written\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Reading file\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed to open file for reading\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Read from file: '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = call i32* (...) @example_init_ext_flash()
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %69

12:                                               ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @example_add_partition(i32* %13, i8* %14)
  %16 = call i32 (...) @example_list_data_partitions()
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @example_mount_fatfs(i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %69

21:                                               ; preds = %12
  %22 = call i32 @example_get_fatfs_usage(i64* %3, i64* %4)
  %23 = load i32, i32* @TAG, align 4
  %24 = load i64, i64* %3, align 8
  %25 = udiv i64 %24, 1024
  %26 = load i64, i64* %4, align 8
  %27 = udiv i64 %26, 1024
  %28 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %25, i64 %27)
  %29 = load i32, i32* @TAG, align 4
  %30 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32* @fopen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load i32, i32* @TAG, align 4
  %36 = call i32 @ESP_LOGE(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %69

37:                                               ; preds = %21
  %38 = load i32*, i32** %5, align 8
  %39 = call i8* (...) @esp_get_idf_version()
  %40 = call i32 @fprintf(i32* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @fclose(i32* %41)
  %43 = load i32, i32* @TAG, align 4
  %44 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %45 = load i32, i32* @TAG, align 4
  %46 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %47 = call i32* @fopen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i32, i32* @TAG, align 4
  %52 = call i32 @ESP_LOGE(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %69

53:                                               ; preds = %37
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @fgets(i8* %54, i32 128, i32* %55)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @fclose(i32* %57)
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %60 = call i8* @strchr(i8* %59, i8 signext 10)
  store i8* %60, i8** %7, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i8*, i8** %7, align 8
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %63, %53
  %66 = load i32, i32* @TAG, align 4
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %68 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %65, %50, %34, %20, %11
  ret void
}

declare dso_local i32* @example_init_ext_flash(...) #1

declare dso_local i32 @example_add_partition(i32*, i8*) #1

declare dso_local i32 @example_list_data_partitions(...) #1

declare dso_local i32 @example_mount_fatfs(i8*) #1

declare dso_local i32 @example_get_fatfs_usage(i64*, i64*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i8* @esp_get_idf_version(...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
