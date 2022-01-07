; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_post_block.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_post_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@ESP_FAIL = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@pdPASS = common dso_local global i64 0, align 8
@s_wps_api_sem = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_post_block(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @ESP_FAIL, align 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = load i64, i64* @ESP_OK, align 8
  %12 = load i32, i32* %4, align 4
  %13 = ptrtoint %struct.TYPE_2__* %6 to i32
  %14 = call i64 @wps_post(i32 %12, i32 %13)
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ESP_FAIL, align 4
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load i64, i64* @pdPASS, align 8
  %20 = load i32, i32* @s_wps_api_sem, align 4
  %21 = load i32, i32* @portMAX_DELAY, align 4
  %22 = call i64 @xSemaphoreTake(i32 %20, i32 %21)
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @ESP_FAIL, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %24, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @wps_post(i32, i32) #1

declare dso_local i64 @xSemaphoreTake(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
