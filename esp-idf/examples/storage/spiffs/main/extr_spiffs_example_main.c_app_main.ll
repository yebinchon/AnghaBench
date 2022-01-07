; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/storage/spiffs/main/extr_spiffs_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/storage/spiffs/main/extr_spiffs_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32* }
%struct.stat = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Initializing SPIFFS\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/spiffs\00", align 1
@__const.app_main.conf = private unnamed_addr constant %struct.TYPE_3__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 5, i32 1, i32* null }, align 8
@ESP_OK = common dso_local global i64 0, align 8
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to mount or format filesystem\00", align 1
@ESP_ERR_NOT_FOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to find SPIFFS partition\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to initialize SPIFFS (%s)\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Failed to get SPIFFS partition information (%s)\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Partition size: total: %d, used: %d\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Opening file\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"/spiffs/hello.txt\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed to open file for writing\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Hello World!\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"File written\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"/spiffs/foo.txt\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Renaming file\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Rename failed\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Reading file\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Failed to open file for reading\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Read from file: '%s'\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"SPIFFS unmounted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = load i32, i32* @TAG, align 4
  %10 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_3__* @__const.app_main.conf to i8*), i64 24, i1 false)
  %12 = call i64 @esp_vfs_spiffs_register(%struct.TYPE_3__* %1)
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @ESP_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %0
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @ESP_FAIL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @TAG, align 4
  %22 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %36

23:                                               ; preds = %16
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* @ESP_ERR_NOT_FOUND, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @TAG, align 4
  %29 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %35

30:                                               ; preds = %23
  %31 = load i32, i32* @TAG, align 4
  %32 = load i64, i64* %2, align 8
  %33 = call i32 @esp_err_to_name(i64 %32)
  %34 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %30, %27
  br label %36

36:                                               ; preds = %35, %20
  br label %108

37:                                               ; preds = %0
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %38 = call i64 @esp_spiffs_info(i32* null, i64* %3, i64* %4)
  store i64 %38, i64* %2, align 8
  %39 = load i64, i64* %2, align 8
  %40 = load i64, i64* @ESP_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* @TAG, align 4
  %44 = load i64, i64* %2, align 8
  %45 = call i32 @esp_err_to_name(i64 %44)
  %46 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %43, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  br label %52

47:                                               ; preds = %37
  %48 = load i32, i32* @TAG, align 4
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64 %49, i64 %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* @TAG, align 4
  %54 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %55 = call i32* @fopen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32* %55, i32** %5, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @TAG, align 4
  %60 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %108

61:                                               ; preds = %52
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @fprintf(i32* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @fclose(i32* %64)
  %66 = load i32, i32* @TAG, align 4
  %67 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %68 = call i64 @stat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), %struct.stat* %6)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = call i32 @unlink(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %61
  %73 = load i32, i32* @TAG, align 4
  %74 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %75 = call i64 @rename(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @TAG, align 4
  %79 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  br label %108

80:                                               ; preds = %72
  %81 = load i32, i32* @TAG, align 4
  %82 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %83 = call i32* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store i32* %83, i32** %5, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @TAG, align 4
  %88 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  br label %108

89:                                               ; preds = %80
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @fgets(i8* %90, i32 64, i32* %91)
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @fclose(i32* %93)
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %96 = call i8* @strchr(i8* %95, i8 signext 10)
  store i8* %96, i8** %8, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i8*, i8** %8, align 8
  store i8 0, i8* %100, align 1
  br label %101

101:                                              ; preds = %99, %89
  %102 = load i32, i32* @TAG, align 4
  %103 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %104 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* %103)
  %105 = call i32 @esp_vfs_spiffs_unregister(i32* null)
  %106 = load i32, i32* @TAG, align 4
  %107 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  br label %108

108:                                              ; preds = %101, %86, %77, %58, %36
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @esp_vfs_spiffs_register(%struct.TYPE_3__*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @esp_err_to_name(i64) #1

declare dso_local i64 @esp_spiffs_info(i32*, i64*, i64*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @esp_vfs_spiffs_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
