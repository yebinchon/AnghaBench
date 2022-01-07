; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth.c_esp_eth_clear_default_handlers.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth.c_esp_eth_clear_default_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"esp-netif handle can't be null\00", align 1
@fail = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ETH_EVENT = common dso_local global i32 0, align 4
@ETHERNET_EVENT_START = common dso_local global i32 0, align 4
@esp_netif_action_start = common dso_local global i32 0, align 4
@ETHERNET_EVENT_STOP = common dso_local global i32 0, align 4
@esp_netif_action_stop = common dso_local global i32 0, align 4
@ETHERNET_EVENT_CONNECTED = common dso_local global i32 0, align 4
@esp_netif_action_connected = common dso_local global i32 0, align 4
@ETHERNET_EVENT_DISCONNECTED = common dso_local global i32 0, align 4
@esp_netif_action_disconnected = common dso_local global i32 0, align 4
@IP_EVENT = common dso_local global i32 0, align 4
@IP_EVENT_ETH_GOT_IP = common dso_local global i32 0, align 4
@esp_netif_action_got_ip = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_eth_clear_default_handlers(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* @fail, align 4
  %7 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %8 = call i32 @ETH_CHECK(i8* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7)
  %9 = load i32, i32* @ETH_EVENT, align 4
  %10 = load i32, i32* @ETHERNET_EVENT_START, align 4
  %11 = load i32, i32* @esp_netif_action_start, align 4
  %12 = call i32 @esp_event_handler_unregister(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @ETH_EVENT, align 4
  %14 = load i32, i32* @ETHERNET_EVENT_STOP, align 4
  %15 = load i32, i32* @esp_netif_action_stop, align 4
  %16 = call i32 @esp_event_handler_unregister(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @ETH_EVENT, align 4
  %18 = load i32, i32* @ETHERNET_EVENT_CONNECTED, align 4
  %19 = load i32, i32* @esp_netif_action_connected, align 4
  %20 = call i32 @esp_event_handler_unregister(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @ETH_EVENT, align 4
  %22 = load i32, i32* @ETHERNET_EVENT_DISCONNECTED, align 4
  %23 = load i32, i32* @esp_netif_action_disconnected, align 4
  %24 = call i32 @esp_event_handler_unregister(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @IP_EVENT, align 4
  %26 = load i32, i32* @IP_EVENT_ETH_GOT_IP, align 4
  %27 = load i32, i32* @esp_netif_action_got_ip, align 4
  %28 = call i32 @esp_event_handler_unregister(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* @ESP_OK, align 4
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; No predecessors!
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %1
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @ETH_CHECK(i8*, i8*, i32, i32) #1

declare dso_local i32 @esp_event_handler_unregister(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
