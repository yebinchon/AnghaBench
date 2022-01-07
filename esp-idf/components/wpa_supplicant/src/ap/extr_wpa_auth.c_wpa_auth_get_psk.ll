; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_auth_get_psk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_auth_get_psk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { i32 }
%struct.hostapd_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.wpa_authenticator*, i32*, i32*)* @wpa_auth_get_psk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wpa_auth_get_psk(%struct.wpa_authenticator* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_authenticator*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hostapd_data*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = call i64 (...) @esp_wifi_get_hostap_private_internal()
  %10 = inttoptr i64 %9 to %struct.hostapd_data*
  store %struct.hostapd_data* %10, %struct.hostapd_data** %8, align 8
  %11 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %12 = icmp ne %struct.hostapd_data* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %22

14:                                               ; preds = %3
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %16 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @hostapd_get_psk(i32 %17, i32* %18, i32* %19)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %4, align 8
  br label %22

22:                                               ; preds = %14, %13
  %23 = load i32*, i32** %4, align 8
  ret i32* %23
}

declare dso_local i64 @esp_wifi_get_hostap_private_internal(...) #1

declare dso_local i64 @hostapd_get_psk(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
