; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_default.c_esp_netif_create_default_wifi_mesh_netifs.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_default.c_esp_netif_create_default_wifi_mesh_netifs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }

@ESP_NETIF_BASE_DEFAULT_WIFI_AP = common dso_local global i32 0, align 4
@ESP_NETIF_DHCP_SERVER = common dso_local global i32 0, align 4
@ESP_NETIF_NETSTACK_DEFAULT_WIFI_AP = common dso_local global i32 0, align 4
@ESP_NETIF_BASE_DEFAULT_WIFI_STA = common dso_local global i32 0, align 4
@ESP_NETIF_DHCP_CLIENT = common dso_local global i32 0, align 4
@ESP_NETIF_NETSTACK_DEFAULT_WIFI_STA = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_netif_create_default_wifi_mesh_netifs(i32** %0, i32** %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32** %1, i32*** %4, align 8
  %10 = load i32, i32* @ESP_NETIF_BASE_DEFAULT_WIFI_AP, align 4
  %11 = call i32 @memcpy(%struct.TYPE_5__* %5, i32 %10, i32 4)
  %12 = load i32, i32* @ESP_NETIF_DHCP_SERVER, align 4
  %13 = xor i32 %12, -1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %13
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %18 = load i32, i32* @ESP_NETIF_NETSTACK_DEFAULT_WIFI_AP, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %19, align 8
  %20 = call i32* @esp_netif_new(%struct.TYPE_6__* %6)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @assert(i32* %21)
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @esp_netif_attach_wifi_ap(i32* %23)
  %25 = call i32 @ESP_ERROR_CHECK(i32 %24)
  %26 = call i32 (...) @esp_wifi_set_default_wifi_ap_handlers()
  %27 = call i32 @ESP_ERROR_CHECK(i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @esp_netif_dhcps_stop(i32* %28)
  %30 = call i32 @ESP_ERROR_CHECK(i32 %29)
  %31 = load i32, i32* @ESP_NETIF_BASE_DEFAULT_WIFI_STA, align 4
  %32 = call i32 @memcpy(%struct.TYPE_5__* %5, i32 %31, i32 4)
  %33 = load i32, i32* @ESP_NETIF_DHCP_CLIENT, align 4
  %34 = xor i32 %33, -1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %39 = load i32, i32* @ESP_NETIF_NETSTACK_DEFAULT_WIFI_STA, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %40, align 8
  %41 = call i32* @esp_netif_new(%struct.TYPE_6__* %8)
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @assert(i32* %42)
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @esp_netif_attach_wifi_station(i32* %44)
  %46 = call i32 @ESP_ERROR_CHECK(i32 %45)
  %47 = call i32 (...) @esp_wifi_set_default_wifi_sta_handlers()
  %48 = call i32 @ESP_ERROR_CHECK(i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @esp_netif_dhcpc_stop(i32* %49)
  %51 = call i32 @ESP_ERROR_CHECK(i32 %50)
  %52 = load i32**, i32*** %3, align 8
  %53 = icmp ne i32** %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %2
  %55 = load i32*, i32** %9, align 8
  %56 = load i32**, i32*** %3, align 8
  store i32* %55, i32** %56, align 8
  br label %57

57:                                               ; preds = %54, %2
  %58 = load i32**, i32*** %4, align 8
  %59 = icmp ne i32** %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32*, i32** %7, align 8
  %62 = load i32**, i32*** %4, align 8
  store i32* %61, i32** %62, align 8
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* @ESP_OK, align 4
  ret i32 %64
}

declare dso_local i32 @memcpy(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32* @esp_netif_new(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_netif_attach_wifi_ap(i32*) #1

declare dso_local i32 @esp_wifi_set_default_wifi_ap_handlers(...) #1

declare dso_local i32 @esp_netif_dhcps_stop(i32*) #1

declare dso_local i32 @esp_netif_attach_wifi_station(i32*) #1

declare dso_local i32 @esp_wifi_set_default_wifi_sta_handlers(...) #1

declare dso_local i32 @esp_netif_dhcpc_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
