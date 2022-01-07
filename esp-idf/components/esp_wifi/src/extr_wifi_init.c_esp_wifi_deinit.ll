; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_init.c_esp_wifi_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_init.c_esp_wifi_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to deinit Wi-Fi driver (0x%x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_wifi_deinit() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @ESP_OK, align 8
  store i64 %2, i64* %1, align 8
  %3 = call i32 (...) @esp_supplicant_deinit()
  %4 = call i64 (...) @esp_wifi_deinit_internal()
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @ESP_OK, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @TAG, align 4
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @ESP_LOGE(i32 %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %10)
  br label %12

12:                                               ; preds = %8, %0
  %13 = load i64, i64* %1, align 8
  ret i64 %13
}

declare dso_local i32 @esp_supplicant_deinit(...) #1

declare dso_local i64 @esp_wifi_deinit_internal(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
