; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_esp_wifi_sta_wpa2_ent_set_cert_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_esp_wifi_sta_wpa2_ent_set_cert_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_wpa_client_cert = common dso_local global i8* null, align 8
@g_wpa_client_cert_len = common dso_local global i32 0, align 4
@g_wpa_private_key = common dso_local global i8* null, align 8
@g_wpa_private_key_len = common dso_local global i32 0, align 4
@g_wpa_private_key_passwd = common dso_local global i8* null, align 8
@g_wpa_private_key_passwd_len = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_wifi_sta_wpa2_ent_set_cert_key(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %6
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** @g_wpa_client_cert, align 8
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* @g_wpa_client_cert_len, align 4
  br label %21

21:                                               ; preds = %18, %15, %6
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %9, align 8
  store i8* %28, i8** @g_wpa_private_key, align 8
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* @g_wpa_private_key_len, align 4
  br label %30

30:                                               ; preds = %27, %24, %21
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %12, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %11, align 8
  store i8* %37, i8** @g_wpa_private_key_passwd, align 8
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* @g_wpa_private_key_passwd_len, align 4
  br label %39

39:                                               ; preds = %36, %33, %30
  %40 = load i32, i32* @ESP_OK, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
