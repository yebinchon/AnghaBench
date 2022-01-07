; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader/subproject/main/extr_bootloader_start.c_selected_boot_partition.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader/subproject/main/extr_bootloader_start.c_selected_boot_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@INVALID_INDEX = common dso_local global i32 0, align 4
@DEEPSLEEP_RESET = common dso_local global i64 0, align 8
@CONFIG_BOOTLOADER_DATA_FACTORY_RESET = common dso_local global i8* null, align 8
@CONFIG_BOOTLOADER_HOLD_TIME_GPIO = common dso_local global i32 0, align 4
@CONFIG_BOOTLOADER_NUM_PIN_APP_TEST = common dso_local global i32 0, align 4
@CONFIG_BOOTLOADER_NUM_PIN_FACTORY_RESET = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@TEST_APP_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @selected_boot_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selected_boot_partition(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = call i32 @bootloader_utility_get_selected_boot_partition(%struct.TYPE_6__* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @INVALID_INDEX, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  %13 = call i64 @rtc_get_reset_reason(i32 0)
  %14 = load i64, i64* @DEEPSLEEP_RESET, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %10
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @bootloader_utility_get_selected_boot_partition(%struct.TYPE_6__*) #1

declare dso_local i64 @rtc_get_reset_reason(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
