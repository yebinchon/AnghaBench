; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/test/extr_test_switch_ota.c_get_running_firmware.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/test/extr_test_switch_ota.c_get_running_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Running partition type %d subtype %d (offset 0x%08x)\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Configured partition type %d subtype %d (offset 0x%08x)\00", align 1
@ESP_PARTITION_SUBTYPE_APP_TEST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* ()* @get_running_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @get_running_firmware() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = call %struct.TYPE_8__* (...) @esp_ota_get_boot_partition()
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %1, align 8
  %4 = call %struct.TYPE_8__* (...) @esp_ota_get_running_partition()
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %2, align 8
  %5 = load i32, i32* @TAG, align 4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ESP_LOGI(i32 %5, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %8, i64 %11, i32 %14)
  %16 = load i32, i32* @TAG, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ESP_LOGI(i32 %16, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %19, i64 %22, i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %28 = call i32 @TEST_ASSERT_NOT_EQUAL(i32* null, %struct.TYPE_8__* %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = call i32 @TEST_ASSERT_NOT_EQUAL(i32* null, %struct.TYPE_8__* %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ESP_PARTITION_SUBTYPE_APP_TEST, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %39 = call i32 @TEST_ASSERT_EQUAL_PTR(%struct.TYPE_8__* %37, %struct.TYPE_8__* %38)
  br label %40

40:                                               ; preds = %36, %0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %41
}

declare dso_local %struct.TYPE_8__* @esp_ota_get_boot_partition(...) #1

declare dso_local %struct.TYPE_8__* @esp_ota_get_running_partition(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @TEST_ASSERT_NOT_EQUAL(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_PTR(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
