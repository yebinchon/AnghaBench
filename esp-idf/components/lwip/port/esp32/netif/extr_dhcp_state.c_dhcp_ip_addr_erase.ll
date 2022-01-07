; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/netif/extr_dhcp_state.c_dhcp_ip_addr_erase.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/netif/extr_dhcp_state.c_dhcp_ip_addr_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DHCP_NAMESPACE = common dso_local global i32 0, align 4
@NVS_READWRITE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dhcp_ip_addr_erase(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @VALID_NETIF_ID(i8* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load i32, i32* @DHCP_NAMESPACE, align 4
  %9 = load i32, i32* @NVS_READWRITE, align 4
  %10 = call i64 @nvs_open(i32 %8, i32 %9, i32* %3)
  %11 = load i64, i64* @ESP_OK, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @esp_netif_get_ifkey(i8* %15)
  %17 = call i32 @nvs_erase_key(i32 %14, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @nvs_commit(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @nvs_close(i32 %20)
  br label %22

22:                                               ; preds = %13, %7
  br label %23

23:                                               ; preds = %22, %1
  ret void
}

declare dso_local i64 @VALID_NETIF_ID(i8*) #1

declare dso_local i64 @nvs_open(i32, i32, i32*) #1

declare dso_local i32 @nvs_erase_key(i32, i32) #1

declare dso_local i32 @esp_netif_get_ifkey(i8*) #1

declare dso_local i32 @nvs_commit(i32) #1

declare dso_local i32 @nvs_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
