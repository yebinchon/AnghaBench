; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/file_serving/main/extr_main.c_init_spiffs.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/file_serving/main/extr_main.c_init_spiffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Initializing SPIFFS\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/spiffs\00", align 1
@__const.init_spiffs.conf = private unnamed_addr constant %struct.TYPE_3__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 5, i32 1, i32* null }, align 8
@ESP_OK = common dso_local global i64 0, align 8
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to mount or format filesystem\00", align 1
@ESP_ERR_NOT_FOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to find SPIFFS partition\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to initialize SPIFFS (%s)\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Failed to get SPIFFS partition information (%s)\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Partition size: total: %d, used: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @init_spiffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_spiffs() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @TAG, align 4
  %7 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = bitcast %struct.TYPE_3__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_3__* @__const.init_spiffs.conf to i8*), i64 24, i1 false)
  %9 = call i64 @esp_vfs_spiffs_register(%struct.TYPE_3__* %2)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @ESP_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %0
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @ESP_FAIL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @TAG, align 4
  %19 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %33

20:                                               ; preds = %13
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @ESP_ERR_NOT_FOUND, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @TAG, align 4
  %26 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %32

27:                                               ; preds = %20
  %28 = load i32, i32* @TAG, align 4
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @esp_err_to_name(i64 %29)
  %31 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %24
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i64, i64* @ESP_FAIL, align 8
  store i64 %34, i64* %1, align 8
  br label %52

35:                                               ; preds = %0
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %36 = call i64 @esp_spiffs_info(i32* null, i64* %4, i64* %5)
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @ESP_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @TAG, align 4
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @esp_err_to_name(i64 %42)
  %44 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* @ESP_FAIL, align 8
  store i64 %45, i64* %1, align 8
  br label %52

46:                                               ; preds = %35
  %47 = load i32, i32* @TAG, align 4
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64 %48, i64 %49)
  %51 = load i64, i64* @ESP_OK, align 8
  store i64 %51, i64* %1, align 8
  br label %52

52:                                               ; preds = %46, %40, %33
  %53 = load i64, i64* %1, align 8
  ret i64 %53
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @esp_vfs_spiffs_register(%struct.TYPE_3__*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @esp_err_to_name(i64) #1

declare dso_local i64 @esp_spiffs_info(i32*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
