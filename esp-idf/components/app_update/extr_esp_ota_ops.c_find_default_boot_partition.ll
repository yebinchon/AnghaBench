; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_find_default_boot_partition.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_find_default_boot_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_PARTITION_TYPE_APP = common dso_local global i32 0, align 4
@ESP_PARTITION_SUBTYPE_APP_FACTORY = common dso_local global i64 0, align 8
@ESP_PARTITION_SUBTYPE_APP_OTA_MIN = common dso_local global i64 0, align 8
@ESP_PARTITION_SUBTYPE_APP_OTA_MAX = common dso_local global i64 0, align 8
@ESP_PARTITION_SUBTYPE_APP_TEST = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"invalid partition table, no app partitions\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @find_default_boot_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_default_boot_partition() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @ESP_PARTITION_TYPE_APP, align 4
  %5 = load i64, i64* @ESP_PARTITION_SUBTYPE_APP_FACTORY, align 8
  %6 = call i32* @esp_partition_find_first(i32 %4, i64 %5, i32* null)
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32*, i32** %2, align 8
  store i32* %10, i32** %1, align 8
  br label %40

11:                                               ; preds = %0
  %12 = load i64, i64* @ESP_PARTITION_SUBTYPE_APP_OTA_MIN, align 8
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %26, %11
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @ESP_PARTITION_SUBTYPE_APP_OTA_MAX, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i32, i32* @ESP_PARTITION_TYPE_APP, align 4
  %19 = load i64, i64* %3, align 8
  %20 = call i32* @esp_partition_find_first(i32 %18, i64 %19, i32* null)
  store i32* %20, i32** %2, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32*, i32** %2, align 8
  store i32* %24, i32** %1, align 8
  br label %40

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %3, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %3, align 8
  br label %13

29:                                               ; preds = %13
  %30 = load i32, i32* @ESP_PARTITION_TYPE_APP, align 4
  %31 = load i64, i64* @ESP_PARTITION_SUBTYPE_APP_TEST, align 8
  %32 = call i32* @esp_partition_find_first(i32 %30, i64 %31, i32* null)
  store i32* %32, i32** %2, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32*, i32** %2, align 8
  store i32* %36, i32** %1, align 8
  br label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @TAG, align 4
  %39 = call i32 @ESP_LOGE(i32 %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  br label %40

40:                                               ; preds = %37, %35, %23, %9
  %41 = load i32*, i32** %1, align 8
  ret i32* %41
}

declare dso_local i32* @esp_partition_find_first(i32, i64, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
