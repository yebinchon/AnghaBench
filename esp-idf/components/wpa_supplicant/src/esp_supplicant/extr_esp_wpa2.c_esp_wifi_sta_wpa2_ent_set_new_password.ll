; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_esp_wifi_sta_wpa2_ent_set_new_password.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_esp_wifi_sta_wpa2_ent_set_new_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@g_wpa_new_password = common dso_local global i32* null, align 8
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@g_wpa_password_len = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_wifi_sta_wpa2_ent_set_new_password(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %9, i32* %3, align 4
  br label %31

10:                                               ; preds = %2
  %11 = load i32*, i32** @g_wpa_new_password, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32*, i32** @g_wpa_new_password, align 8
  %15 = call i32 @os_free(i32* %14)
  store i32* null, i32** @g_wpa_new_password, align 8
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @os_zalloc(i32 %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** @g_wpa_new_password, align 8
  %20 = load i32*, i32** @g_wpa_new_password, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %23, i32* %3, align 4
  br label %31

24:                                               ; preds = %16
  %25 = load i32*, i32** @g_wpa_new_password, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @os_memcpy(i32* %25, i8* %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* @g_wpa_password_len, align 4
  %30 = load i32, i32* @ESP_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %22, %8
  %32 = load i32, i32* %3, align 4
  ret i32 %32
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
