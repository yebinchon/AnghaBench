; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/test/extr_test_switch_ota.c_copy_current_app_to_next_part.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/test/extr_test_switch_ota.c_copy_current_app_to_next_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Writing to partition subtype %d at offset 0x%x\00", align 1
@OTA_SIZE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_8__*)* @copy_current_app_to_next_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_current_app_to_next_part(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = call i32 @esp_ota_get_next_update_partition(i32* null)
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = call i32 @TEST_ASSERT_NOT_EQUAL(i32* null, %struct.TYPE_8__* %7)
  %9 = load i32, i32* @TAG, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ESP_LOGI(i32 %9, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  store i32 0, i32* %5, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = load i32, i32* @OTA_SIZE_UNKNOWN, align 4
  %19 = call i32 @esp_ota_begin(%struct.TYPE_8__* %17, i32 %18, i32* %5)
  %20 = call i32 @TEST_ESP_OK(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = call i32 @copy_app_partition(i32 %21, %struct.TYPE_8__* %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @esp_ota_end(i32 %24)
  %26 = call i32 @TEST_ESP_OK(i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = call i32 @esp_ota_set_boot_partition(%struct.TYPE_8__* %27)
  %29 = call i32 @TEST_ESP_OK(i32 %28)
  ret void
}

declare dso_local i32 @esp_ota_get_next_update_partition(i32*) #1

declare dso_local i32 @TEST_ASSERT_NOT_EQUAL(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @esp_ota_begin(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @copy_app_partition(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @esp_ota_end(i32) #1

declare dso_local i32 @esp_ota_set_boot_partition(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
