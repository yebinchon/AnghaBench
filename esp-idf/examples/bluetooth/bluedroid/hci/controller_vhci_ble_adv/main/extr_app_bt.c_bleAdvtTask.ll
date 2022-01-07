; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/hci/controller_vhci_ble_adv/main/extr_app_bt.c_bleAdvtTask.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/hci/controller_vhci_ble_adv/main/extr_app_bt.c_bleAdvtTask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vhci_host_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"BLE advt task start\0A\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"BLE Advertise, flag_send_avail: %d, cmd_sent: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bleAdvtTask(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = call i32 @esp_vhci_host_register_callback(i32* @vhci_host_cb)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %1, %33
  %8 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %9 = sdiv i32 1000, %8
  %10 = call i32 @vTaskDelay(i32 %9)
  %11 = call i32 (...) @esp_vhci_host_check_send_available()
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %32 [
    i32 0, label %16
    i32 1, label %20
    i32 2, label %24
    i32 3, label %28
  ]

16:                                               ; preds = %14
  %17 = call i32 (...) @hci_cmd_send_reset()
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %32

20:                                               ; preds = %14
  %21 = call i32 (...) @hci_cmd_send_ble_set_adv_param()
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %32

24:                                               ; preds = %14
  %25 = call i32 (...) @hci_cmd_send_ble_set_adv_data()
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %14
  %29 = call i32 (...) @hci_cmd_send_ble_adv_start()
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %14, %28, %24, %20, %16
  br label %33

33:                                               ; preds = %32, %7
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  br label %7
}

declare dso_local i32 @esp_vhci_host_register_callback(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @esp_vhci_host_check_send_available(...) #1

declare dso_local i32 @hci_cmd_send_reset(...) #1

declare dso_local i32 @hci_cmd_send_ble_set_adv_param(...) #1

declare dso_local i32 @hci_cmd_send_ble_set_adv_data(...) #1

declare dso_local i32 @hci_cmd_send_ble_adv_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
