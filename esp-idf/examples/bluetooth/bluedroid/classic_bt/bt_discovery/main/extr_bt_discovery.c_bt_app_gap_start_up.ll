; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_discovery/main/extr_bt_discovery.c_bt_app_gap_start_up.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_discovery/main/extr_bt_discovery.c_bt_app_gap_start_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ESP_GAP_INQRUIY\00", align 1
@ESP_BT_CONNECTABLE = common dso_local global i32 0, align 4
@ESP_BT_GENERAL_DISCOVERABLE = common dso_local global i32 0, align 4
@bt_app_gap_cb = common dso_local global i32 0, align 4
@m_dev_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@APP_GAP_STATE_DEVICE_DISCOVERING = common dso_local global i32 0, align 4
@ESP_BT_INQ_MODE_GENERAL_INQUIRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt_app_gap_start_up() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i32 @esp_bt_dev_set_device_name(i8* %3)
  %5 = load i32, i32* @ESP_BT_CONNECTABLE, align 4
  %6 = load i32, i32* @ESP_BT_GENERAL_DISCOVERABLE, align 4
  %7 = call i32 @esp_bt_gap_set_scan_mode(i32 %5, i32 %6)
  %8 = load i32, i32* @bt_app_gap_cb, align 4
  %9 = call i32 @esp_bt_gap_register_callback(i32 %8)
  store %struct.TYPE_4__* @m_dev_info, %struct.TYPE_4__** %2, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = call i32 @memset(%struct.TYPE_4__* %10, i32 0, i32 4)
  %12 = load i32, i32* @APP_GAP_STATE_DEVICE_DISCOVERING, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @ESP_BT_INQ_MODE_GENERAL_INQUIRY, align 4
  %16 = call i32 @esp_bt_gap_start_discovery(i32 %15, i32 10, i32 0)
  ret void
}

declare dso_local i32 @esp_bt_dev_set_device_name(i8*) #1

declare dso_local i32 @esp_bt_gap_set_scan_mode(i32, i32) #1

declare dso_local i32 @esp_bt_gap_register_callback(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @esp_bt_gap_start_discovery(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
