; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/wpa2_enterprise/main/extr_wpa2_enterprise_main.c_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/wpa2_enterprise/main/extr_wpa2_enterprise_main.c_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIFI_EVENT = common dso_local global i64 0, align 8
@WIFI_EVENT_STA_START = common dso_local global i64 0, align 8
@WIFI_EVENT_STA_DISCONNECTED = common dso_local global i64 0, align 8
@wifi_event_group = common dso_local global i32 0, align 4
@CONNECTED_BIT = common dso_local global i32 0, align 4
@IP_EVENT = common dso_local global i64 0, align 8
@IP_EVENT_STA_GOT_IP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i8*)* @event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_handler(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @WIFI_EVENT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @WIFI_EVENT_STA_START, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 (...) @esp_wifi_connect()
  br label %45

18:                                               ; preds = %12, %4
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @WIFI_EVENT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @WIFI_EVENT_STA_DISCONNECTED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = call i32 (...) @esp_wifi_connect()
  %28 = load i32, i32* @wifi_event_group, align 4
  %29 = load i32, i32* @CONNECTED_BIT, align 4
  %30 = call i32 @xEventGroupClearBits(i32 %28, i32 %29)
  br label %44

31:                                               ; preds = %22, %18
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @IP_EVENT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @IP_EVENT_STA_GOT_IP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @wifi_event_group, align 4
  %41 = load i32, i32* @CONNECTED_BIT, align 4
  %42 = call i32 @xEventGroupSetBits(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %35, %31
  br label %44

44:                                               ; preds = %43, %26
  br label %45

45:                                               ; preds = %44, %16
  ret void
}

declare dso_local i32 @esp_wifi_connect(...) #1

declare dso_local i32 @xEventGroupClearBits(i32, i32) #1

declare dso_local i32 @xEventGroupSetBits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
