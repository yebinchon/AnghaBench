; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/scan/main/extr_scan.c_print_auth_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/scan/main/extr_scan.c_print_auth_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Authmode \09WIFI_AUTH_OPEN\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Authmode \09WIFI_AUTH_WEP\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Authmode \09WIFI_AUTH_WPA_PSK\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Authmode \09WIFI_AUTH_WPA2_PSK\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Authmode \09WIFI_AUTH_WPA_WPA2_PSK\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Authmode \09WIFI_AUTH_WPA2_ENTERPRISE\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Authmode \09WIFI_AUTH_UNKNOWN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_auth_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_auth_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %22 [
    i32 133, label %4
    i32 132, label %7
    i32 129, label %10
    i32 130, label %13
    i32 128, label %16
    i32 131, label %19
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @TAG, align 4
  %6 = call i32 @ESP_LOGI(i32 %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %25

7:                                                ; preds = %1
  %8 = load i32, i32* @TAG, align 4
  %9 = call i32 @ESP_LOGI(i32 %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %25

10:                                               ; preds = %1
  %11 = load i32, i32* @TAG, align 4
  %12 = call i32 @ESP_LOGI(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %25

13:                                               ; preds = %1
  %14 = load i32, i32* @TAG, align 4
  %15 = call i32 @ESP_LOGI(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %25

16:                                               ; preds = %1
  %17 = load i32, i32* @TAG, align 4
  %18 = call i32 @ESP_LOGI(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @TAG, align 4
  %21 = call i32 @ESP_LOGI(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @TAG, align 4
  %24 = call i32 @ESP_LOGI(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %19, %16, %13, %10, %7, %4
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
