; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_wifi_coexist/components/iperf/extr_cmd_wifi.c_wifi_get_local_ip.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_wifi_coexist/components/iperf/extr_cmd_wifi.c_wifi_get_local_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@wifi_event_group = common dso_local global i32 0, align 4
@CONNECTED_BIT = common dso_local global i32 0, align 4
@ap_netif = common dso_local global i32* null, align 8
@WIFI_MODE_STA = common dso_local global i64 0, align 8
@sta_netif = common dso_local global i32* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sta has no IP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @wifi_get_local_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wifi_get_local_ip() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i64, align 8
  %6 = load i32, i32* @wifi_event_group, align 4
  %7 = load i32, i32* @CONNECTED_BIT, align 4
  %8 = call i32 @xEventGroupWaitBits(i32 %6, i32 %7, i32 0, i32 1, i32 0)
  store i32 %8, i32* %2, align 4
  %9 = load i32*, i32** @ap_netif, align 8
  store i32* %9, i32** %3, align 8
  %10 = call i32 @esp_wifi_get_mode(i64* %5)
  %11 = load i64, i64* @WIFI_MODE_STA, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %0
  %15 = load i32, i32* @wifi_event_group, align 4
  %16 = load i32, i32* @CONNECTED_BIT, align 4
  %17 = call i32 @xEventGroupWaitBits(i32 %15, i32 %16, i32 0, i32 1, i32 0)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @CONNECTED_BIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32*, i32** @sta_netif, align 8
  store i32* %23, i32** %3, align 8
  br label %27

24:                                               ; preds = %14
  %25 = load i32, i32* @TAG, align 4
  %26 = call i32 @ESP_LOGE(i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %34

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %0
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @esp_netif_get_ip_info(i32* %29, %struct.TYPE_5__* %4)
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %28, %24
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @xEventGroupWaitBits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @esp_wifi_get_mode(i64*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_netif_get_ip_info(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
