; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_https_ota/src/extr_esp_https_ota.c__ota_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_https_ota/src/extr_esp_https_ota.c__ota_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@ESP_FAIL = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Error: esp_ota_write failed! err=0x%d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Written image length %d\00", align 1
@ESP_ERR_HTTPS_OTA_IN_PROGRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i8*, i64)* @_ota_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_ota_write(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = icmp eq %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %3
  %15 = load i64, i64* @ESP_FAIL, align 8
  store i64 %15, i64* %4, align 8
  br label %44

16:                                               ; preds = %11
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @esp_ota_write(i32 %19, i8* %20, i64 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @ESP_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load i32, i32* @TAG, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %42

30:                                               ; preds = %16
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load i32, i32* @TAG, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ESP_LOGD(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* @ESP_ERR_HTTPS_OTA_IN_PROGRESS, align 8
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %30, %26
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %42, %14
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

declare dso_local i64 @esp_ota_write(i32, i8*, i64) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i64) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
