; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_utility.c_set_actual_ota_seq.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_utility.c_set_actual_ota_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@FACTORY_INDEX = common dso_local global i32 0, align 4
@ota_has_initial_contents = common dso_local global i32 0, align 4
@ESP_OTA_IMG_VALID = common dso_local global i32 0, align 4
@FLASH_SECTOR_SIZE = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Set actual ota_seq=%d in otadata[0]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @set_actual_ota_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_actual_ota_seq(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @FACTORY_INDEX, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = load i32, i32* @ota_has_initial_contents, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  %14 = call i32 @memset(%struct.TYPE_10__* %5, i32 255, i32 12)
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @ESP_OTA_IMG_VALID, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = call i32 @bootloader_common_ota_select_crc(%struct.TYPE_10__* %5)
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = call i32 (...) @esp_flash_encryption_enabled()
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  %28 = mul nsw i32 %27, 0
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @write_otadata(%struct.TYPE_10__* %5, i64 %30, i32 %31)
  %33 = load i32, i32* @TAG, align 4
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ESP_LOGI(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %13, %10, %2
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @bootloader_common_ota_select_crc(%struct.TYPE_10__*) #1

declare dso_local i32 @esp_flash_encryption_enabled(...) #1

declare dso_local i32 @write_otadata(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
