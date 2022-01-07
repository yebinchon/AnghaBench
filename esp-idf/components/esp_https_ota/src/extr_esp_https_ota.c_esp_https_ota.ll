; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_https_ota/src/extr_esp_https_ota.c_esp_https_ota.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_https_ota/src/extr_esp_https_ota.c_esp_https_ota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"esp_http_client config not found\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@ESP_FAIL = common dso_local global i64 0, align 8
@ESP_ERR_HTTPS_OTA_IN_PROGRESS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_https_ota(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @TAG, align 4
  %12 = call i32 @ESP_LOGE(i32 %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %13, i64* %2, align 8
  br label %48

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %16 = load i32*, i32** %3, align 8
  store i32* %16, i32** %15, align 8
  store i32* null, i32** %5, align 8
  %17 = call i64 @esp_https_ota_begin(%struct.TYPE_3__* %4, i32** %5)
  store i64 %17, i64* %6, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i64, i64* @ESP_FAIL, align 8
  store i64 %21, i64* %2, align 8
  br label %48

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %30
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @esp_https_ota_perform(i32* %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @ESP_ERR_HTTPS_OTA_IN_PROGRESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %31

30:                                               ; preds = %23
  br label %23

31:                                               ; preds = %29
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @esp_https_ota_finish(i32* %32)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @ESP_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %2, align 8
  br label %48

39:                                               ; preds = %31
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @ESP_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* %2, align 8
  br label %48

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* @ESP_OK, align 8
  store i64 %47, i64* %2, align 8
  br label %48

48:                                               ; preds = %46, %43, %37, %20, %10
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @esp_https_ota_begin(%struct.TYPE_3__*, i32**) #1

declare dso_local i64 @esp_https_ota_perform(i32*) #1

declare dso_local i64 @esp_https_ota_finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
