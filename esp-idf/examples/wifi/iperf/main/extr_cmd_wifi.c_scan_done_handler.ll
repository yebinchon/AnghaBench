; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/iperf/main/extr_cmd_wifi.c_scan_done_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/iperf/main/extr_cmd_wifi.c_scan_done_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to malloc buffer to print scan results\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"[%s][rssi=%d]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"sta scan done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*)* @scan_done_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_done_handler(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = call i32 @esp_wifi_scan_get_ap_num(i32* %9)
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = trunc i64 %15 to i32
  %17 = call %struct.TYPE_5__* @malloc(i32 %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %11, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @TAG, align 4
  %22 = call i32 @ESP_LOGE(i32 %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %57

23:                                               ; preds = %4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %25 = call i64 @esp_wifi_scan_get_ap_records(i32* %9, %struct.TYPE_5__* %24)
  %26 = load i64, i64* @ESP_OK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %48, %28
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load i32, i32* @TAG, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %46)
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %29

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %51, %23
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = call i32 @free(%struct.TYPE_5__* %53)
  %55 = load i32, i32* @TAG, align 4
  %56 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %20
  ret void
}

declare dso_local i32 @esp_wifi_scan_get_ap_num(i32*) #1

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @esp_wifi_scan_get_ap_records(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
