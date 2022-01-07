; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_wpa2_sm_ether_send.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_wpa2_sm_ether_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32* }
%struct.l2_ethhdr = type { i32, i32, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"wpa2: invalid data\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, i32*, i32, i32*, i64)* @wpa2_sm_ether_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa2_sm_ether_send(%struct.eap_sm* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.l2_ethhdr*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 -12
  %16 = bitcast i32* %15 to i8*
  store i8* %16, i8** %12, align 8
  store %struct.l2_ethhdr* null, %struct.l2_ethhdr** %13, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @MSG_ERROR, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ESP_FAIL, align 4
  store i32 %22, i32* %6, align 4
  br label %51

23:                                               ; preds = %5
  %24 = load i8*, i8** %12, align 8
  %25 = bitcast i8* %24 to %struct.l2_ethhdr*
  store %struct.l2_ethhdr* %25, %struct.l2_ethhdr** %13, align 8
  %26 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %13, align 8
  %27 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = call i32 @memcpy(i32 %28, i32* %29, i32 %30)
  %32 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %13, align 8
  %33 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %36 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i32 @memcpy(i32 %34, i32* %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @host_to_be16(i32 %40)
  %42 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %13, align 8
  %43 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i8*, i8** %12, align 8
  %45 = load i64, i64* %11, align 8
  %46 = add i64 12, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @wpa2_sendto_wrapper(i8* %44, i32 %47)
  br label %49

49:                                               ; preds = %23
  %50 = load i32, i32* @ESP_OK, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %19
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @host_to_be16(i32) #1

declare dso_local i32 @wpa2_sendto_wrapper(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
