; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_check_wifi_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_check_wifi_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"wps check wifi mode: failed to get wifi mode ret=%d\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"wps check wifi mode: failed to get sniffer mode ret=%d\00", align 1
@WIFI_MODE_AP = common dso_local global i32 0, align 4
@WIFI_MODE_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"wps check wifi mode: wrong wifi mode=%d sniffer=%d\00", align 1
@ESP_ERR_WIFI_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_check_wifi_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %5 = call i32 @esp_wifi_get_mode(i32* %3)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @ESP_OK, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = load i32, i32* @MSG_ERROR, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @ESP_FAIL, align 4
  store i32 %13, i32* %1, align 4
  br label %43

14:                                               ; preds = %0
  %15 = call i32 @esp_wifi_get_promiscuous(i32* %2)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @ESP_OK, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* @MSG_ERROR, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ESP_FAIL, align 4
  store i32 %23, i32* %1, align 4
  br label %43

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @WIFI_MODE_AP, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @WIFI_MODE_NULL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %41

35:                                               ; preds = %32, %28, %24
  %36 = load i32, i32* @MSG_ERROR, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @ESP_ERR_WIFI_MODE, align 4
  store i32 %40, i32* %1, align 4
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @ESP_OK, align 4
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %41, %35, %19, %9
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @esp_wifi_get_mode(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @esp_wifi_get_promiscuous(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
