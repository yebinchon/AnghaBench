; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_bt_device.c_esp_bt_dev_get_address.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_bt_device.c_esp_bt_dev_get_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* (...)* }
%struct.TYPE_3__ = type { i32* }

@ESP_BLUEDROID_STATUS_ENABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @esp_bt_dev_get_address() #0 {
  %1 = alloca i32*, align 8
  %2 = call i64 (...) @esp_bluedroid_get_status()
  %3 = load i64, i64* @ESP_BLUEDROID_STATUS_ENABLED, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %13

6:                                                ; preds = %0
  %7 = call %struct.TYPE_4__* (...) @controller_get_interface()
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__* (...)*, %struct.TYPE_3__* (...)** %8, align 8
  %10 = call %struct.TYPE_3__* (...) %9()
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %1, align 8
  br label %13

13:                                               ; preds = %6, %5
  %14 = load i32*, i32** %1, align 8
  ret i32* %14
}

declare dso_local i64 @esp_bluedroid_get_status(...) #1

declare dso_local %struct.TYPE_4__* @controller_get_interface(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
