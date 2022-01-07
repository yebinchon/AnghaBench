; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_https_ota/src/extr_esp_https_ota.c_esp_https_ota_get_img_desc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_https_ota/src/extr_esp_https_ota.c_esp_https_ota_get_img_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32*, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"esp_https_ota_read_img_desc: Invalid argument\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_HTTPS_OTA_BEGIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"esp_https_ota_read_img_desc: Invalid state\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@IMAGE_HEADER_SIZE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_https_ota_get_img_desc(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %6, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @TAG, align 4
  %18 = call i32 @ESP_LOGE(i32 %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %19, i32* %3, align 4
  br label %64

20:                                               ; preds = %13
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ESP_HTTPS_OTA_BEGIN, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @TAG, align 4
  %28 = call i32 @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ESP_FAIL, align 4
  store i32 %29, i32* %3, align 4
  br label %64

30:                                               ; preds = %20
  %31 = load i32, i32* @IMAGE_HEADER_SIZE, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @esp_http_client_read(i32 %34, i32* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @ESP_FAIL, align 4
  store i32 %43, i32* %3, align 4
  br label %64

44:                                               ; preds = %30
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp uge i64 %46, 12
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 8
  %54 = call i32 @memcpy(i32* %49, i32* %53, i32 4)
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %62

60:                                               ; preds = %44
  %61 = load i32, i32* @ESP_FAIL, align 4
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %48
  %63 = load i32, i32* @ESP_OK, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %60, %42, %26, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_http_client_read(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
