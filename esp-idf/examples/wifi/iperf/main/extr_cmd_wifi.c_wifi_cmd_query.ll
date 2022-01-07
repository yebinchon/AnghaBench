; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/iperf/main/extr_cmd_wifi.c_wifi_cmd_query.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/iperf/main/extr_cmd_wifi.c_wifi_cmd_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@WIFI_MODE_AP = common dso_local global i64 0, align 8
@WIFI_IF_AP = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"AP mode, %s %s\00", align 1
@WIFI_MODE_STA = common dso_local global i64 0, align 8
@wifi_event_group = common dso_local global i32 0, align 4
@CONNECTED_BIT = common dso_local global i32 0, align 4
@WIFI_IF_STA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"sta mode, connected %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"sta mode, disconnected\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"NULL mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @wifi_cmd_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wifi_cmd_query(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 @esp_wifi_get_mode(i64* %7)
  %10 = load i64, i64* @WIFI_MODE_AP, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i32, i32* @WIFI_IF_AP, align 4
  %15 = call i32 @esp_wifi_get_config(i32 %14, %struct.TYPE_5__* %6)
  %16 = load i32, i32* @TAG, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  br label %52

24:                                               ; preds = %2
  %25 = load i64, i64* @WIFI_MODE_STA, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load i32, i32* @wifi_event_group, align 4
  %30 = load i32, i32* @CONNECTED_BIT, align 4
  %31 = call i32 @xEventGroupWaitBits(i32 %29, i32 %30, i32 0, i32 1, i32 0)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @CONNECTED_BIT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load i32, i32* @WIFI_IF_STA, align 4
  %38 = call i32 @esp_wifi_get_config(i32 %37, %struct.TYPE_5__* %6)
  %39 = load i32, i32* @TAG, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %47

44:                                               ; preds = %28
  %45 = load i32, i32* @TAG, align 4
  %46 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %36
  br label %51

48:                                               ; preds = %24
  %49 = load i32, i32* @TAG, align 4
  %50 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %53

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %13
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %48
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @esp_wifi_get_mode(i64*) #1

declare dso_local i32 @esp_wifi_get_config(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @xEventGroupWaitBits(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
