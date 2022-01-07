; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_ssid_save.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_ssid_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64* }

@gWpsSm = common dso_local global %struct.TYPE_2__* null, align 8
@ESP_FAIL = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"WPS: ssid[%s]\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_ssid_save(i64* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = icmp ne i64* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gWpsSm, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @ESP_FAIL, align 4
  store i32 %13, i32* %3, align 4
  br label %46

14:                                               ; preds = %9
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gWpsSm, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = call i32 @memset(i64* %17, i32 0, i32 8)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gWpsSm, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @memcpy(i64* %21, i64* %22, i64 %23)
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gWpsSm, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %28, 1
  %30 = call i64 @os_zalloc(i64 %29)
  %31 = inttoptr i64 %30 to i64*
  store i64* %31, i64** %6, align 8
  %32 = load i64*, i64** %6, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %14
  %35 = load i64*, i64** %6, align 8
  %36 = load i64*, i64** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @memcpy(i64* %35, i64* %36, i64 %37)
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load i64*, i64** %6, align 8
  %41 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64* %40)
  %42 = load i64*, i64** %6, align 8
  %43 = call i32 @os_free(i64* %42)
  br label %44

44:                                               ; preds = %34, %14
  %45 = load i32, i32* @ESP_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i64 @os_zalloc(i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64*) #1

declare dso_local i32 @os_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
