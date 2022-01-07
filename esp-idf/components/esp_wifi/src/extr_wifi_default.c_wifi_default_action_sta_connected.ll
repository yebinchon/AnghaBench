; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_default.c_wifi_default_action_sta_connected.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_default.c_wifi_default_action_sta_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_wifi_netifs = common dso_local global i32** null, align 8
@WIFI_IF_STA = common dso_local global i64 0, align 8
@esp_netif_receive = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"esp_wifi_register_if_rxcb for if=%p failed with %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*)* @wifi_default_action_sta_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wifi_default_action_sta_connected(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32**, i32*** @s_wifi_netifs, align 8
  %13 = load i64, i64* @WIFI_IF_STA, align 8
  %14 = getelementptr inbounds i32*, i32** %12, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %4
  %18 = load i32**, i32*** @s_wifi_netifs, align 8
  %19 = load i64, i64* @WIFI_IF_STA, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 %19
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @esp_netif_get_io_driver(i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @esp_wifi_is_if_ready_when_started(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @esp_netif_receive, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @esp_wifi_register_if_rxcb(i32 %28, i32 %29, i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @ESP_OK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32, i32* @TAG, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @ESP_LOGE(i32 %35, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %49

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %17
  %41 = load i32**, i32*** @s_wifi_netifs, align 8
  %42 = load i64, i64* @WIFI_IF_STA, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @esp_netif_action_connected(i32* %44, i32 %45, i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %34, %40, %4
  ret void
}

declare dso_local i32 @esp_netif_get_io_driver(i32*) #1

declare dso_local i32 @esp_wifi_is_if_ready_when_started(i32) #1

declare dso_local i32 @esp_wifi_register_if_rxcb(i32, i32, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32, i32) #1

declare dso_local i32 @esp_netif_action_connected(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
