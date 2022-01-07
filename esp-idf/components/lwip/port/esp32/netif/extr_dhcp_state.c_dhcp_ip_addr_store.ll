; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/netif/extr_dhcp_state.c_dhcp_ip_addr_store.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/netif/extr_dhcp_state.c_dhcp_ip_addr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32 }
%struct.dhcp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DHCP_NAMESPACE = common dso_local global i32 0, align 4
@NVS_READWRITE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dhcp_ip_addr_store(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.netif*, align 8
  %5 = alloca %struct.dhcp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.netif*
  store %struct.netif* %9, %struct.netif** %4, align 8
  %10 = load %struct.netif*, %struct.netif** %4, align 8
  %11 = call %struct.dhcp* @netif_dhcp_data(%struct.netif* %10)
  store %struct.dhcp* %11, %struct.dhcp** %5, align 8
  %12 = load %struct.dhcp*, %struct.dhcp** %5, align 8
  %13 = getelementptr inbounds %struct.dhcp, %struct.dhcp* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = call i32* @esp_netif_get_handle_from_netif_impl(i8* %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @VALID_NETIF_ID(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %1
  %22 = load i32, i32* @DHCP_NAMESPACE, align 4
  %23 = load i32, i32* @NVS_READWRITE, align 4
  %24 = call i64 @nvs_open(i32 %22, i32 %23, i32* %3)
  %25 = load i64, i64* @ESP_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @esp_netif_get_ifkey(i32* %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @nvs_set_u32(i32 %28, i32 %30, i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @nvs_commit(i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @nvs_close(i32 %35)
  br label %37

37:                                               ; preds = %27, %21
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

declare dso_local %struct.dhcp* @netif_dhcp_data(%struct.netif*) #1

declare dso_local i32* @esp_netif_get_handle_from_netif_impl(i8*) #1

declare dso_local i64 @VALID_NETIF_ID(i32*) #1

declare dso_local i64 @nvs_open(i32, i32, i32*) #1

declare dso_local i32 @nvs_set_u32(i32, i32, i32) #1

declare dso_local i32 @esp_netif_get_ifkey(i32*) #1

declare dso_local i32 @nvs_commit(i32) #1

declare dso_local i32 @nvs_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
