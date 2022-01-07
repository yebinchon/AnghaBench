; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_get_next_update_partition.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_get_next_update_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_PARTITION_SUBTYPE_APP_OTA_0 = common dso_local global i64 0, align 8
@ESP_PARTITION_SUBTYPE_APP_OTA_MAX = common dso_local global i64 0, align 8
@ESP_PARTITION_TYPE_APP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @esp_ota_get_next_update_partition(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32* (...) @esp_ota_get_running_partition()
  store i32* %11, i32** %3, align 8
  br label %15

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @esp_partition_verify(i32* %13)
  store i32* %14, i32** %3, align 8
  br label %15

15:                                               ; preds = %12, %10
  %16 = load i32*, i32** %3, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i64, i64* @ESP_PARTITION_SUBTYPE_APP_OTA_0, align 8
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %49, %15
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @ESP_PARTITION_SUBTYPE_APP_OTA_MAX, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load i32, i32* @ESP_PARTITION_TYPE_APP, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32* @esp_partition_find_first(i32 %26, i64 %27, i32* null)
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %49

32:                                               ; preds = %25
  %33 = load i32*, i32** %4, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32*, i32** %7, align 8
  store i32* %36, i32** %4, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = icmp eq i32* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  store i32* %46, i32** %2, align 8
  br label %54

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %41
  br label %49

49:                                               ; preds = %48, %31
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %6, align 8
  br label %21

52:                                               ; preds = %21
  %53 = load i32*, i32** %4, align 8
  store i32* %53, i32** %2, align 8
  br label %54

54:                                               ; preds = %52, %45
  %55 = load i32*, i32** %2, align 8
  ret i32* %55
}

declare dso_local i32* @esp_ota_get_running_partition(...) #1

declare dso_local i32* @esp_partition_verify(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @esp_partition_find_first(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
