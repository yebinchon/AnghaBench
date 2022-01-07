; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/ethernet/eth2ap/main/extr_ethernet_example_main.c_eth_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/ethernet/eth2ap/main/extr_ethernet_example_main.c_eth_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Ethernet Link Up\00", align 1
@s_ethernet_is_connected = common dso_local global i32 0, align 4
@s_eth_handle = common dso_local global i32 0, align 4
@ETH_CMD_G_MAC_ADDR = common dso_local global i32 0, align 4
@s_eth_mac = common dso_local global i32 0, align 4
@WIFI_IF_AP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Ethernet Link Down\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Ethernet Started\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Ethernet Stopped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*)* @eth_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eth_event_handler(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %33 [
    i32 131, label %10
    i32 130, label %22
    i32 129, label %27
    i32 128, label %30
  ]

10:                                               ; preds = %4
  %11 = load i32, i32* @TAG, align 4
  %12 = call i32 @ESP_LOGI(i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @s_ethernet_is_connected, align 4
  %13 = load i32, i32* @s_eth_handle, align 4
  %14 = load i32, i32* @ETH_CMD_G_MAC_ADDR, align 4
  %15 = load i32, i32* @s_eth_mac, align 4
  %16 = call i32 @esp_eth_ioctl(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @WIFI_IF_AP, align 4
  %18 = load i32, i32* @s_eth_mac, align 4
  %19 = call i32 @esp_wifi_set_mac(i32 %17, i32 %18)
  %20 = call i32 (...) @esp_wifi_start()
  %21 = call i32 @ESP_ERROR_CHECK(i32 %20)
  br label %34

22:                                               ; preds = %4
  %23 = load i32, i32* @TAG, align 4
  %24 = call i32 @ESP_LOGI(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* @s_ethernet_is_connected, align 4
  %25 = call i32 (...) @esp_wifi_stop()
  %26 = call i32 @ESP_ERROR_CHECK(i32 %25)
  br label %34

27:                                               ; preds = %4
  %28 = load i32, i32* @TAG, align 4
  %29 = call i32 @ESP_LOGI(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %34

30:                                               ; preds = %4
  %31 = load i32, i32* @TAG, align 4
  %32 = call i32 @ESP_LOGI(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %34

33:                                               ; preds = %4
  br label %34

34:                                               ; preds = %33, %30, %27, %22, %10
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @esp_eth_ioctl(i32, i32, i32) #1

declare dso_local i32 @esp_wifi_set_mac(i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_wifi_start(...) #1

declare dso_local i32 @esp_wifi_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
