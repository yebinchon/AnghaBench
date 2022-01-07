; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/storage/spiffsgen/main/extr_spiffsgen_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/storage/spiffsgen/main/extr_spiffsgen_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Initializing SPIFFS\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/spiffs\00", align 1
@__const.app_main.conf = private unnamed_addr constant %struct.TYPE_3__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 5, i32 0, i32* null }, align 8
@ESP_OK = common dso_local global i64 0, align 8
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to mount or format filesystem\00", align 1
@ESP_ERR_NOT_FOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to find SPIFFS partition\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to initialize SPIFFS (%s)\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Failed to get SPIFFS partition information (%s)\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Partition size: total: %d, used: %d\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"SPIFFS unmounted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @TAG, align 4
  %6 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_3__* @__const.app_main.conf to i8*), i64 24, i1 false)
  %8 = call i64 @esp_vfs_spiffs_register(%struct.TYPE_3__* %1)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @ESP_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %0
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @ESP_FAIL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @TAG, align 4
  %18 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %32

19:                                               ; preds = %12
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* @ESP_ERR_NOT_FOUND, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @TAG, align 4
  %25 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %31

26:                                               ; preds = %19
  %27 = load i32, i32* @TAG, align 4
  %28 = load i64, i64* %2, align 8
  %29 = call i32 @esp_err_to_name(i64 %28)
  %30 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %23
  br label %32

32:                                               ; preds = %31, %16
  br label %54

33:                                               ; preds = %0
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %34 = call i64 @esp_spiffs_info(i32* null, i64* %3, i64* %4)
  store i64 %34, i64* %2, align 8
  %35 = load i64, i64* %2, align 8
  %36 = load i64, i64* @ESP_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @TAG, align 4
  %40 = load i64, i64* %2, align 8
  %41 = call i32 @esp_err_to_name(i64 %40)
  %42 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  br label %48

43:                                               ; preds = %33
  %44 = load i32, i32* @TAG, align 4
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64 %45, i64 %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = call i32 (...) @read_hello_txt()
  %50 = call i32 (...) @compute_alice_txt_md5()
  %51 = call i32 @esp_vfs_spiffs_unregister(i32* null)
  %52 = load i32, i32* @TAG, align 4
  %53 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %54

54:                                               ; preds = %48, %32
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @esp_vfs_spiffs_register(%struct.TYPE_3__*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @esp_err_to_name(i64) #1

declare dso_local i64 @esp_spiffs_info(i32*, i64*, i64*) #1

declare dso_local i32 @read_hello_txt(...) #1

declare dso_local i32 @compute_alice_txt_md5(...) #1

declare dso_local i32 @esp_vfs_spiffs_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
