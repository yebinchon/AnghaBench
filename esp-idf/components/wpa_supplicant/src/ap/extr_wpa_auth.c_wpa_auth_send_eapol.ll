; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_auth_send_eapol.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_auth_send_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { i32* }
%struct.l2_ethhdr = type { i8*, i8*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"send_eapol, buffer=%p\0A\00", align 1
@ETH_ALEN = common dso_local global i64 0, align 8
@ETH_P_EAPOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_authenticator*, i32*, i32*, i64, i32)* @wpa_auth_send_eapol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_auth_send_eapol(%struct.wpa_authenticator* %0, i32* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_authenticator*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.l2_ethhdr*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = call i8* @os_malloc(i32 256)
  store i8* %14, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = bitcast i8* %15 to %struct.l2_ethhdr*
  store %struct.l2_ethhdr* %16, %struct.l2_ethhdr** %13, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = load i8*, i8** %12, align 8
  %22 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 -1, i32* %6, align 4
  br label %54

23:                                               ; preds = %5
  %24 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %13, align 8
  %25 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* @ETH_ALEN, align 8
  %29 = call i32 @memcpy(i8* %26, i32* %27, i64 %28)
  %30 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %13, align 8
  %31 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %7, align 8
  %34 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @ETH_ALEN, align 8
  %37 = call i32 @memcpy(i8* %32, i32* %35, i64 %36)
  %38 = load i32, i32* @ETH_P_EAPOL, align 4
  %39 = call i32 @host_to_be16(i32 %38)
  %40 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %13, align 8
  %41 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 24
  %44 = load i32*, i32** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @memcpy(i8* %43, i32* %44, i64 %45)
  %47 = load i8*, i8** %12, align 8
  %48 = load i64, i64* %10, align 8
  %49 = add i64 24, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @esp_wifi_internal_tx(i32 1, i8* %47, i32 %50)
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @os_free(i8* %52)
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %23, %19
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @host_to_be16(i32) #1

declare dso_local i32 @esp_wifi_internal_tx(i32, i8*, i32) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
