; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/efuse/main/extr_efuse_main.c_read_device_desc_efuse_fields.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/efuse/main/extr_efuse_main.c_read_device_desc_efuse_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@ESP_EFUSE_MODULE_VERSION = common dso_local global i32 0, align 4
@ESP_EFUSE_DEVICE_ROLE = common dso_local global i32 0, align 4
@ESP_EFUSE_SETTING_1 = common dso_local global i32 0, align 4
@ESP_EFUSE_SETTING_2 = common dso_local global i32 0, align 4
@ESP_EFUSE_CUSTOM_SECURE_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @read_device_desc_efuse_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_device_desc_efuse_fields(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load i32, i32* @ESP_EFUSE_MODULE_VERSION, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  %6 = call i32 @esp_efuse_read_field_blob(i32 %3, i32* %5, i32 8)
  %7 = call i32 @ESP_ERROR_CHECK(i32 %6)
  %8 = load i32, i32* @ESP_EFUSE_DEVICE_ROLE, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = call i32 @esp_efuse_read_field_blob(i32 %8, i32* %10, i32 3)
  %12 = call i32 @ESP_ERROR_CHECK(i32 %11)
  %13 = load i32, i32* @ESP_EFUSE_SETTING_1, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = call i32 @esp_efuse_read_field_blob(i32 %13, i32* %15, i32 6)
  %17 = call i32 @ESP_ERROR_CHECK(i32 %16)
  %18 = load i32, i32* @ESP_EFUSE_SETTING_2, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = call i32 @esp_efuse_read_field_blob(i32 %18, i32* %20, i32 5)
  %22 = call i32 @ESP_ERROR_CHECK(i32 %21)
  %23 = load i32, i32* @ESP_EFUSE_CUSTOM_SECURE_VERSION, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @esp_efuse_read_field_cnt(i32 %23, i32* %25)
  %27 = call i32 @ESP_ERROR_CHECK(i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = call i32 @print_device_desc(%struct.TYPE_4__* %28)
  ret void
}

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_efuse_read_field_blob(i32, i32*, i32) #1

declare dso_local i32 @esp_efuse_read_field_cnt(i32, i32*) #1

declare dso_local i32 @print_device_desc(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
