; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa_main.c_wpa_ap_rx_eapol.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa_main.c_wpa_ap_rx_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.wpa_state_machine = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_ap_rx_eapol(i8* %0, i8* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hostapd_data*, align 8
  %11 = alloca %struct.wpa_state_machine*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.hostapd_data*
  store %struct.hostapd_data* %13, %struct.hostapd_data** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.wpa_state_machine*
  store %struct.wpa_state_machine* %15, %struct.wpa_state_machine** %11, align 8
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %17 = icmp ne %struct.hostapd_data* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %11, align 8
  %20 = icmp ne %struct.wpa_state_machine* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %4
  store i32 0, i32* %5, align 4
  br label %30

22:                                               ; preds = %18
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %24 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %11, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @wpa_receive(i32 %25, %struct.wpa_state_machine* %26, i32* %27, i64 %28)
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %22, %21
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @wpa_receive(i32, %struct.wpa_state_machine*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
