; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_get_state_partition.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_get_state_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@ESP_PARTITION_SUBTYPE_APP_OTA_MIN = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_ota_get_state_partition(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x %struct.TYPE_8__], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %18, i32* %3, align 4
  br label %85

19:                                               ; preds = %14
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = call i32 @is_ota_partition(%struct.TYPE_7__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @ESP_ERR_NOT_SUPPORTED, align 4
  store i32 %24, i32* %3, align 4
  br label %85

25:                                               ; preds = %19
  %26 = call i32 (...) @get_ota_partition_count()
  store i32 %26, i32* %7, align 4
  %27 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %6, i64 0, i64 0
  %28 = call i32* @read_otadata(%struct.TYPE_8__* %27)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %25
  %34 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  store i32 %34, i32* %3, align 4
  br label %85

35:                                               ; preds = %30
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ESP_PARTITION_SUBTYPE_APP_OTA_MIN, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %75, %35
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %78

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %6, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* %7, align 4
  %52 = srem i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %44
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %6, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %6, i64 0, i64 %63
  %65 = call i64 @bootloader_common_ota_select_crc(%struct.TYPE_8__* %64)
  %66 = icmp eq i64 %61, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %56
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %6, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  store i32 0, i32* %9, align 4
  br label %78

74:                                               ; preds = %56, %44
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %41

78:                                               ; preds = %67, %41
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  store i32 %82, i32* %3, align 4
  br label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @ESP_OK, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %81, %33, %23, %17
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @is_ota_partition(%struct.TYPE_7__*) #1

declare dso_local i32 @get_ota_partition_count(...) #1

declare dso_local i32* @read_otadata(%struct.TYPE_8__*) #1

declare dso_local i64 @bootloader_common_ota_select_crc(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
