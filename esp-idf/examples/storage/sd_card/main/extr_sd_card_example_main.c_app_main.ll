; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/storage/sd_card/main/extr_sd_card_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/storage/sd_card/main/extr_sd_card_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.stat = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Initializing SD card\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Using SDMMC peripheral\00", align 1
@GPIO_PULLUP_ONLY = common dso_local global i32 0, align 4
@__const.app_main.mount_config = private unnamed_addr constant %struct.TYPE_13__ { i32 0, i32 5, i32 16384 }, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"/sdcard\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [101 x i8] c"Failed to mount filesystem. If you want the card to be formatted, set format_if_mount_failed = true.\00", align 1
@.str.4 = private unnamed_addr constant [93 x i8] c"Failed to initialize the card (%s). Make sure SD card lines have pull-up resistors in place.\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"Opening file\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"/sdcard/hello.txt\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Failed to open file for writing\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Hello %s!\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"File written\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"/sdcard/foo.txt\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Renaming file\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Rename failed\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Reading file\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Failed to open file for reading\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Read from file: '%s'\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Card unmounted\00", align 1
@PIN_NUM_CLK = common dso_local global i32 0, align 4
@PIN_NUM_CS = common dso_local global i32 0, align 4
@PIN_NUM_MISO = common dso_local global i32 0, align 4
@PIN_NUM_MOSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = load i32, i32* @TAG, align 4
  %11 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @TAG, align 4
  %13 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (...) @SDMMC_HOST_DEFAULT()
  store i32 %14, i32* %1, align 4
  %15 = call i32 (...) @SDMMC_SLOT_CONFIG_DEFAULT()
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* @GPIO_PULLUP_ONLY, align 4
  %17 = call i32 @gpio_set_pull_mode(i32 15, i32 %16)
  %18 = load i32, i32* @GPIO_PULLUP_ONLY, align 4
  %19 = call i32 @gpio_set_pull_mode(i32 2, i32 %18)
  %20 = load i32, i32* @GPIO_PULLUP_ONLY, align 4
  %21 = call i32 @gpio_set_pull_mode(i32 4, i32 %20)
  %22 = load i32, i32* @GPIO_PULLUP_ONLY, align 4
  %23 = call i32 @gpio_set_pull_mode(i32 12, i32 %22)
  %24 = load i32, i32* @GPIO_PULLUP_ONLY, align 4
  %25 = call i32 @gpio_set_pull_mode(i32 13, i32 %24)
  %26 = bitcast %struct.TYPE_13__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.TYPE_13__* @__const.app_main.mount_config to i8*), i64 12, i1 false)
  %27 = bitcast i32* %2 to %struct.TYPE_11__*
  %28 = call i64 @esp_vfs_fat_sdmmc_mount(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %1, %struct.TYPE_11__* %27, %struct.TYPE_13__* %3, %struct.TYPE_12__** %4)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @ESP_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %0
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @ESP_FAIL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @TAG, align 4
  %38 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %37, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.3, i64 0, i64 0))
  br label %44

39:                                               ; preds = %32
  %40 = load i32, i32* @TAG, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @esp_err_to_name(i64 %41)
  %43 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %40, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %36
  br label %108

45:                                               ; preds = %0
  %46 = load i32, i32* @stdout, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = call i32 @sdmmc_card_print_info(i32 %46, %struct.TYPE_12__* %47)
  %49 = load i32, i32* @TAG, align 4
  %50 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %51 = call i32* @fopen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %51, i32** %6, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @TAG, align 4
  %56 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %108

57:                                               ; preds = %45
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @fprintf(i32* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %62)
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @fclose(i32* %64)
  %66 = load i32, i32* @TAG, align 4
  %67 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %68 = call i64 @stat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), %struct.stat* %7)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = call i32 @unlink(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %57
  %73 = load i32, i32* @TAG, align 4
  %74 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %75 = call i64 @rename(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @TAG, align 4
  %79 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  br label %108

80:                                               ; preds = %72
  %81 = load i32, i32* @TAG, align 4
  %82 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %83 = call i32* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i32* %83, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @TAG, align 4
  %88 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  br label %108

89:                                               ; preds = %80
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @fgets(i8* %90, i32 64, i32* %91)
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @fclose(i32* %93)
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %96 = call i8* @strchr(i8* %95, i8 signext 10)
  store i8* %96, i8** %9, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i8*, i8** %9, align 8
  store i8 0, i8* %100, align 1
  br label %101

101:                                              ; preds = %99, %89
  %102 = load i32, i32* @TAG, align 4
  %103 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %104 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* %103)
  %105 = call i32 (...) @esp_vfs_fat_sdmmc_unmount()
  %106 = load i32, i32* @TAG, align 4
  %107 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  br label %108

108:                                              ; preds = %101, %86, %77, %54, %44
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @SDMMC_HOST_DEFAULT(...) #1

declare dso_local i32 @SDMMC_SLOT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @gpio_set_pull_mode(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @esp_vfs_fat_sdmmc_mount(i8*, i32*, %struct.TYPE_11__*, %struct.TYPE_13__*, %struct.TYPE_12__**) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @esp_err_to_name(i64) #1

declare dso_local i32 @sdmmc_card_print_info(i32, %struct.TYPE_12__*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @esp_vfs_fat_sdmmc_unmount(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
