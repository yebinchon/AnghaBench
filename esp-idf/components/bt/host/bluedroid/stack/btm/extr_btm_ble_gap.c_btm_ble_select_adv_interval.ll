; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_select_adv_interval.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_select_adv_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@BTM_BLE_GAP_ADV_FAST_INT_1 = common dso_local global i64 0, align 8
@BTM_BLE_GAP_ADV_FAST_INT_2 = common dso_local global i64 0, align 8
@BTM_BLE_GAP_ADV_DIR_MIN_INT = common dso_local global i64 0, align 8
@BTM_BLE_GAP_ADV_DIR_MAX_INT = common dso_local global i64 0, align 8
@BTM_BLE_GAP_ADV_SLOW_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_select_adv_interval(%struct.TYPE_3__* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %7, align 8
  store i64 %21, i64* %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %8, align 8
  store i64 %25, i64* %26, align 8
  br label %47

27:                                               ; preds = %13, %4
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %42 [
    i32 131, label %29
    i32 130, label %29
    i32 128, label %33
    i32 129, label %33
    i32 132, label %37
  ]

29:                                               ; preds = %27, %27
  %30 = load i64, i64* @BTM_BLE_GAP_ADV_FAST_INT_1, align 8
  %31 = load i64*, i64** %8, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i64*, i64** %7, align 8
  store i64 %30, i64* %32, align 8
  br label %46

33:                                               ; preds = %27, %27
  %34 = load i64, i64* @BTM_BLE_GAP_ADV_FAST_INT_2, align 8
  %35 = load i64*, i64** %8, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i64*, i64** %7, align 8
  store i64 %34, i64* %36, align 8
  br label %46

37:                                               ; preds = %27
  %38 = load i64, i64* @BTM_BLE_GAP_ADV_DIR_MIN_INT, align 8
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i64, i64* @BTM_BLE_GAP_ADV_DIR_MAX_INT, align 8
  %41 = load i64*, i64** %8, align 8
  store i64 %40, i64* %41, align 8
  br label %46

42:                                               ; preds = %27
  %43 = load i64, i64* @BTM_BLE_GAP_ADV_SLOW_INT, align 8
  %44 = load i64*, i64** %8, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i64*, i64** %7, align 8
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %37, %33, %29
  br label %47

47:                                               ; preds = %46, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
