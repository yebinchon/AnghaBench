; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_handle_system_event.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_handle_system_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_mdns_server = common dso_local global i32 0, align 4
@WIFI_EVENT = common dso_local global i64 0, align 8
@WIFI_EVENT_STA_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"WIFI_STA_DEF\00", align 1
@s_esp_netifs = common dso_local global i32* null, align 8
@MDNS_IF_STA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"WIFI_AP_DEF\00", align 1
@MDNS_IF_AP = common dso_local global i64 0, align 8
@ESP_NETIF_DHCP_STOPPED = common dso_local global i32 0, align 4
@MDNS_IP_PROTOCOL_V4 = common dso_local global i32 0, align 4
@MDNS_IP_PROTOCOL_V6 = common dso_local global i32 0, align 4
@IP_EVENT = common dso_local global i64 0, align 8
@ETHERNET_EVENT_START = common dso_local global i32 0, align 4
@ETH_EVENT = common dso_local global i64 0, align 8
@MDNS_IF_ETH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32*)* @_mdns_handle_system_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mdns_handle_system_event(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @_mdns_server, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %104

12:                                               ; preds = %3
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @WIFI_EVENT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @WIFI_EVENT_STA_START, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = call i32 @esp_netif_get_handle_from_ifkey(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** @s_esp_netifs, align 8
  %23 = load i64, i64* @MDNS_IF_STA, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %21, i32* %24, align 4
  br label %38

25:                                               ; preds = %16, %12
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @WIFI_EVENT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 131
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = call i32 @esp_netif_get_handle_from_ifkey(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32*, i32** @s_esp_netifs, align 8
  %35 = load i64, i64* @MDNS_IF_AP, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %29, %25
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @WIFI_EVENT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %77 [
    i32 129, label %44
    i32 128, label %59
    i32 131, label %66
    i32 130, label %70
  ]

44:                                               ; preds = %42
  %45 = load i64, i64* @MDNS_IF_STA, align 8
  %46 = call i32 @_mdns_get_esp_netif(i64 %45)
  %47 = call i32 @esp_netif_dhcpc_get_status(i32 %46, i32* %7)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ESP_NETIF_DHCP_STOPPED, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i64, i64* @MDNS_IF_STA, align 8
  %55 = load i32, i32* @MDNS_IP_PROTOCOL_V4, align 4
  %56 = call i32 @_mdns_enable_pcb(i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %44
  br label %78

59:                                               ; preds = %42
  %60 = load i64, i64* @MDNS_IF_STA, align 8
  %61 = load i32, i32* @MDNS_IP_PROTOCOL_V4, align 4
  %62 = call i32 @_mdns_disable_pcb(i64 %60, i32 %61)
  %63 = load i64, i64* @MDNS_IF_STA, align 8
  %64 = load i32, i32* @MDNS_IP_PROTOCOL_V6, align 4
  %65 = call i32 @_mdns_disable_pcb(i64 %63, i32 %64)
  br label %78

66:                                               ; preds = %42
  %67 = load i64, i64* @MDNS_IF_AP, align 8
  %68 = load i32, i32* @MDNS_IP_PROTOCOL_V4, align 4
  %69 = call i32 @_mdns_enable_pcb(i64 %67, i32 %68)
  br label %78

70:                                               ; preds = %42
  %71 = load i64, i64* @MDNS_IF_AP, align 8
  %72 = load i32, i32* @MDNS_IP_PROTOCOL_V4, align 4
  %73 = call i32 @_mdns_disable_pcb(i64 %71, i32 %72)
  %74 = load i64, i64* @MDNS_IF_AP, align 8
  %75 = load i32, i32* @MDNS_IP_PROTOCOL_V6, align 4
  %76 = call i32 @_mdns_disable_pcb(i64 %74, i32 %75)
  br label %78

77:                                               ; preds = %42
  br label %78

78:                                               ; preds = %77, %70, %66, %59, %58
  br label %104

79:                                               ; preds = %38
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* @IP_EVENT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  switch i32 %84, label %101 [
    i32 132, label %85
    i32 133, label %92
  ]

85:                                               ; preds = %83
  %86 = load i64, i64* @MDNS_IF_STA, align 8
  %87 = load i32, i32* @MDNS_IP_PROTOCOL_V4, align 4
  %88 = call i32 @_mdns_enable_pcb(i64 %86, i32 %87)
  %89 = load i64, i64* @MDNS_IF_STA, align 8
  %90 = load i32, i32* @MDNS_IP_PROTOCOL_V6, align 4
  %91 = call i32 @_mdns_announce_pcb(i64 %89, i32 %90, i32* null, i32 0, i32 1)
  br label %102

92:                                               ; preds = %83
  %93 = load i32*, i32** %6, align 8
  %94 = call i64 @_mdns_get_if_from_esp_netif(i32* %93)
  store i64 %94, i64* %8, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load i32, i32* @MDNS_IP_PROTOCOL_V6, align 4
  %97 = call i32 @_mdns_enable_pcb(i64 %95, i32 %96)
  %98 = load i64, i64* %8, align 8
  %99 = load i32, i32* @MDNS_IP_PROTOCOL_V4, align 4
  %100 = call i32 @_mdns_announce_pcb(i64 %98, i32 %99, i32* null, i32 0, i32 1)
  br label %102

101:                                              ; preds = %83
  br label %102

102:                                              ; preds = %101, %92, %85
  br label %103

103:                                              ; preds = %102, %79
  br label %104

104:                                              ; preds = %11, %103, %78
  ret void
}

declare dso_local i32 @esp_netif_get_handle_from_ifkey(i8*) #1

declare dso_local i32 @esp_netif_dhcpc_get_status(i32, i32*) #1

declare dso_local i32 @_mdns_get_esp_netif(i64) #1

declare dso_local i32 @_mdns_enable_pcb(i64, i32) #1

declare dso_local i32 @_mdns_disable_pcb(i64, i32) #1

declare dso_local i32 @_mdns_announce_pcb(i64, i32, i32*, i32, i32) #1

declare dso_local i64 @_mdns_get_if_from_esp_netif(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
