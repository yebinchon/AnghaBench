; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/netif/extr_dhcp_state.c_dhcp_ip_addr_restore.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/netif/extr_dhcp_state.c_dhcp_ip_addr_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32 }
%struct.dhcp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DHCP_NAMESPACE = common dso_local global i32 0, align 4
@NVS_READONLY = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dhcp_ip_addr_restore(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.netif*, align 8
  %6 = alloca %struct.dhcp*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.netif*
  store %struct.netif* %10, %struct.netif** %5, align 8
  %11 = load %struct.netif*, %struct.netif** %5, align 8
  %12 = call %struct.dhcp* @netif_dhcp_data(%struct.netif* %11)
  store %struct.dhcp* %12, %struct.dhcp** %6, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i32* @esp_netif_get_handle_from_netif_impl(i8* %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @VALID_NETIF_ID(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %1
  %19 = load %struct.dhcp*, %struct.dhcp** %6, align 8
  %20 = getelementptr inbounds %struct.dhcp, %struct.dhcp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* %21, i32** %8, align 8
  %22 = load i32, i32* @DHCP_NAMESPACE, align 4
  %23 = load i32, i32* @NVS_READONLY, align 4
  %24 = call i64 @nvs_open(i32 %22, i32 %23, i32* %3)
  %25 = load i64, i64* @ESP_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @esp_netif_get_ifkey(i32* %29)
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @nvs_get_u32(i32 %28, i32 %30, i32* %31)
  %33 = load i64, i64* @ESP_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @nvs_close(i32 %37)
  br label %39

39:                                               ; preds = %36, %18
  br label %40

40:                                               ; preds = %39, %1
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.dhcp* @netif_dhcp_data(%struct.netif*) #1

declare dso_local i32* @esp_netif_get_handle_from_netif_impl(i8*) #1

declare dso_local i64 @VALID_NETIF_ID(i32*) #1

declare dso_local i64 @nvs_open(i32, i32, i32*) #1

declare dso_local i64 @nvs_get_u32(i32, i32, i32*) #1

declare dso_local i32 @esp_netif_get_ifkey(i32*) #1

declare dso_local i32 @nvs_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
