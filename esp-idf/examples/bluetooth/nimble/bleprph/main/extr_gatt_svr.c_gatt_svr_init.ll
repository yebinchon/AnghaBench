; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/bleprph/main/extr_gatt_svr.c_gatt_svr_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/bleprph/main/extr_gatt_svr.c_gatt_svr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gatt_svr_svcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gatt_svr_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @ble_svc_gap_init()
  %4 = call i32 (...) @ble_svc_gatt_init()
  %5 = load i32, i32* @gatt_svr_svcs, align 4
  %6 = call i32 @ble_gatts_count_cfg(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %19

11:                                               ; preds = %0
  %12 = load i32, i32* @gatt_svr_svcs, align 4
  %13 = call i32 @ble_gatts_add_svcs(i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* %1, align 4
  br label %19

18:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %16, %9
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @ble_svc_gap_init(...) #1

declare dso_local i32 @ble_svc_gatt_init(...) #1

declare dso_local i32 @ble_gatts_count_cfg(i32) #1

declare dso_local i32 @ble_gatts_add_svcs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
