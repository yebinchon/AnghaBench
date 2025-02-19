; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_update_dmt_flag_bits.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_update_dmt_flag_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (...)* }

@BTM_DISCOVERABLE_MASK = common dso_local global i32 0, align 4
@BTM_CONNECTABLE_MASK = common dso_local global i32 0, align 4
@BTM_BLE_BREDR_NOT_SPT = common dso_local global i32 0, align 4
@BTM_BLE_DMT_CONTROLLER_SPT = common dso_local global i32 0, align 4
@BTM_BLE_DMT_HOST_SPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_update_dmt_flag_bits(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BTM_DISCOVERABLE_MASK, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @BTM_CONNECTABLE_MASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32, i32* @BTM_BLE_BREDR_NOT_SPT, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4
  br label %27

21:                                               ; preds = %11, %3
  %22 = load i32, i32* @BTM_BLE_BREDR_NOT_SPT, align 4
  %23 = xor i32 %22, -1
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %23
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %16
  %28 = call %struct.TYPE_2__* (...) @controller_get_interface()
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64 (...)*, i64 (...)** %29, align 8
  %31 = call i64 (...) %30()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* @BTM_BLE_DMT_CONTROLLER_SPT, align 4
  %35 = load i32, i32* @BTM_BLE_DMT_HOST_SPT, align 4
  %36 = or i32 %34, %35
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %48

40:                                               ; preds = %27
  %41 = load i32, i32* @BTM_BLE_DMT_CONTROLLER_SPT, align 4
  %42 = load i32, i32* @BTM_BLE_DMT_HOST_SPT, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %40, %33
  ret void
}

declare dso_local %struct.TYPE_2__* @controller_get_interface(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
