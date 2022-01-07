; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth.c_esp_eth_set_default_handlers.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth.c_esp_eth_set_default_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"esp-netif handle can't be null\00", align 1
@fail = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ETH_EVENT = common dso_local global i32 0, align 4
@ETHERNET_EVENT_START = common dso_local global i32 0, align 4
@esp_netif_action_start = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@ETHERNET_EVENT_STOP = common dso_local global i32 0, align 4
@esp_netif_action_stop = common dso_local global i32 0, align 4
@ETHERNET_EVENT_CONNECTED = common dso_local global i32 0, align 4
@esp_netif_action_connected = common dso_local global i32 0, align 4
@ETHERNET_EVENT_DISCONNECTED = common dso_local global i32 0, align 4
@esp_netif_action_disconnected = common dso_local global i32 0, align 4
@IP_EVENT = common dso_local global i32 0, align 4
@IP_EVENT_ETH_GOT_IP = common dso_local global i32 0, align 4
@esp_netif_action_got_ip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_eth_set_default_handlers(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* @fail, align 4
  %7 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %8 = call i32 @ETH_CHECK(i8* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7)
  %9 = load i32, i32* @ETH_EVENT, align 4
  %10 = load i32, i32* @ETHERNET_EVENT_START, align 4
  %11 = load i32, i32* @esp_netif_action_start, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @esp_event_handler_register(i32 %9, i32 %10, i32 %11, i8* %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @ESP_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %60

18:                                               ; preds = %1
  %19 = load i32, i32* @ETH_EVENT, align 4
  %20 = load i32, i32* @ETHERNET_EVENT_STOP, align 4
  %21 = load i32, i32* @esp_netif_action_stop, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @esp_event_handler_register(i32 %19, i32 %20, i32 %21, i8* %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @ESP_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %60

28:                                               ; preds = %18
  %29 = load i32, i32* @ETH_EVENT, align 4
  %30 = load i32, i32* @ETHERNET_EVENT_CONNECTED, align 4
  %31 = load i32, i32* @esp_netif_action_connected, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @esp_event_handler_register(i32 %29, i32 %30, i32 %31, i8* %32)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @ESP_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %60

38:                                               ; preds = %28
  %39 = load i32, i32* @ETH_EVENT, align 4
  %40 = load i32, i32* @ETHERNET_EVENT_DISCONNECTED, align 4
  %41 = load i32, i32* @esp_netif_action_disconnected, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = call i64 @esp_event_handler_register(i32 %39, i32 %40, i32 %41, i8* %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @ESP_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %60

48:                                               ; preds = %38
  %49 = load i32, i32* @IP_EVENT, align 4
  %50 = load i32, i32* @IP_EVENT_ETH_GOT_IP, align 4
  %51 = load i32, i32* @esp_netif_action_got_ip, align 4
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @esp_event_handler_register(i32 %49, i32 %50, i32 %51, i8* %52)
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @ESP_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %60

58:                                               ; preds = %48
  %59 = load i64, i64* @ESP_OK, align 8
  store i64 %59, i64* %2, align 8
  br label %64

60:                                               ; preds = %57, %47, %37, %27, %17
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @esp_eth_clear_default_handlers(i8* %61)
  %63 = load i64, i64* %4, align 8
  store i64 %63, i64* %2, align 8
  br label %64

64:                                               ; preds = %60, %58
  %65 = load i64, i64* %2, align 8
  ret i64 %65
}

declare dso_local i32 @ETH_CHECK(i8*, i8*, i32, i32) #1

declare dso_local i64 @esp_event_handler_register(i32, i32, i32, i8*) #1

declare dso_local i32 @esp_eth_clear_default_handlers(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
