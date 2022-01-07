; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/scan/main/extr_scan.c_wifi_scan.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/scan/main/extr_scan.c_wifi_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, i32 }

@DEFAULT_SCAN_LIST_SIZE = common dso_local global i32 0, align 4
@WIFI_MODE_STA = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Total APs scanned = %u\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SSID \09\09%s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"RSSI \09\09%d\00", align 1
@WIFI_AUTH_WEP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"Channel \09\09%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wifi_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wifi_scan() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 (...) @esp_netif_init()
  %9 = call i32 (...) @esp_event_loop_create_default()
  %10 = call i32 @ESP_ERROR_CHECK(i32 %9)
  %11 = call i32* (...) @esp_netif_create_default_wifi_sta()
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @assert(i32* %12)
  %14 = call i32 (...) @WIFI_INIT_CONFIG_DEFAULT()
  store i32 %14, i32* %2, align 4
  %15 = call i32 @esp_wifi_init(i32* %2)
  %16 = call i32 @ESP_ERROR_CHECK(i32 %15)
  %17 = load i32, i32* @DEFAULT_SCAN_LIST_SIZE, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @DEFAULT_SCAN_LIST_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %4, align 8
  %21 = alloca %struct.TYPE_4__, i64 %19, align 16
  store i64 %19, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %22 = mul nuw i64 32, %19
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(%struct.TYPE_4__* %21, i32 0, i32 %23)
  %25 = load i32, i32* @WIFI_MODE_STA, align 4
  %26 = call i32 @esp_wifi_set_mode(i32 %25)
  %27 = call i32 @ESP_ERROR_CHECK(i32 %26)
  %28 = call i32 (...) @esp_wifi_start()
  %29 = call i32 @ESP_ERROR_CHECK(i32 %28)
  %30 = call i32 @esp_wifi_scan_start(i32* null, i32 1)
  %31 = call i32 @ESP_ERROR_CHECK(i32 %30)
  %32 = call i32 @esp_wifi_scan_get_ap_records(i32* %3, %struct.TYPE_4__* %21)
  %33 = call i32 @ESP_ERROR_CHECK(i32 %32)
  %34 = call i32 @esp_wifi_scan_get_ap_num(i32* %6)
  %35 = call i32 @ESP_ERROR_CHECK(i32 %34)
  %36 = load i32, i32* @TAG, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ESP_LOGI(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %97, %0
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @DEFAULT_SCAN_LIST_SIZE, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  br i1 %48, label %49, label %100

49:                                               ; preds = %47
  %50 = load i32, i32* @TAG, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 16
  %56 = call i32 @ESP_LOGI(i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @TAG, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ESP_LOGI(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @print_auth_mode(i64 %68)
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @WIFI_AUTH_WEP, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %49
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @print_cipher_type(i32 %82, i32 %87)
  br label %89

89:                                               ; preds = %77, %49
  %90 = load i32, i32* @TAG, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 16
  %96 = call i32 @ESP_LOGI(i32 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %39

100:                                              ; preds = %47
  %101 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %101)
  ret void
}

declare dso_local i32 @esp_netif_init(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_event_loop_create_default(...) #1

declare dso_local i32* @esp_netif_create_default_wifi_sta(...) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @WIFI_INIT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @esp_wifi_init(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @esp_wifi_set_mode(i32) #1

declare dso_local i32 @esp_wifi_start(...) #1

declare dso_local i32 @esp_wifi_scan_start(i32*, i32) #1

declare dso_local i32 @esp_wifi_scan_get_ap_records(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @esp_wifi_scan_get_ap_num(i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32) #1

declare dso_local i32 @print_auth_mode(i64) #1

declare dso_local i32 @print_cipher_type(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
