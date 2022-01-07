; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_esp_wifi_sta_wpa2_ent_set_username.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_esp_wifi_sta_wpa2_ent_set_username.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USERNAME_LEN_MAX = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@g_wpa_username = common dso_local global i32* null, align 8
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@g_wpa_username_len = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_wifi_sta_wpa2_ent_set_username(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @USERNAME_LEN_MAX, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %2
  %13 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %13, i32* %3, align 4
  br label %35

14:                                               ; preds = %8
  %15 = load i32*, i32** @g_wpa_username, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32*, i32** @g_wpa_username, align 8
  %19 = call i32 @os_free(i32* %18)
  store i32* null, i32** @g_wpa_username, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @os_zalloc(i32 %21)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** @g_wpa_username, align 8
  %24 = load i32*, i32** @g_wpa_username, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %27, i32* %3, align 4
  br label %35

28:                                               ; preds = %20
  %29 = load i32*, i32** @g_wpa_username, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @os_memcpy(i32* %29, i8* %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* @g_wpa_username_len, align 4
  %34 = load i32, i32* @ESP_OK, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %28, %26, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
