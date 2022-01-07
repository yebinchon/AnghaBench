; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_update_listen_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_update_listen_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@gatt_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TRUE = common dso_local global i64 0, align 8
@GATT_MAX_APPS = common dso_local global i64 0, align 8
@GATT_LISTEN_TO_ALL = common dso_local global i64 0, align 8
@GATT_LISTEN_TO_NONE = common dso_local global i64 0, align 8
@AP_SCAN_CONN_ALL = common dso_local global i32 0, align 4
@AP_SCAN_CONN_WL = common dso_local global i32 0, align 4
@BTM_BLE_CONNECTABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gatt_update_listen_mode() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gatt_cb, i32 0, i32 0), align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 0
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %2, align 8
  store i64 0, i64* %3, align 8
  %10 = load i64, i64* @TRUE, align 8
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %31, %0
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @GATT_MAX_APPS, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %26, %20, %15
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %1, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %1, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 1
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %2, align 8
  br label %11

36:                                               ; preds = %11
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @GATT_LISTEN_TO_ALL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @GATT_LISTEN_TO_NONE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %36
  %45 = load i32, i32* @AP_SCAN_CONN_ALL, align 4
  %46 = call i32 @BTM_BleUpdateAdvFilterPolicy(i32 %45)
  br label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @AP_SCAN_CONN_WL, align 4
  %49 = call i32 @BTM_BleUpdateAdvFilterPolicy(i32 %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %50
  %54 = call i32 @BTM_ReadConnectability(i32* %5, i32* %6)
  store i32 %54, i32* %4, align 4
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* @GATT_LISTEN_TO_NONE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @BTM_BLE_CONNECTABLE, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %73

62:                                               ; preds = %53
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @BTM_BLE_CONNECTABLE, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i32, i32* @BTM_BLE_CONNECTABLE, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %58
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @btm_ble_set_connectability(i32 %74)
  br label %76

76:                                               ; preds = %73, %50
  %77 = load i64, i64* %7, align 8
  ret i64 %77
}

declare dso_local i32 @BTM_BleUpdateAdvFilterPolicy(i32) #1

declare dso_local i32 @BTM_ReadConnectability(i32*, i32*) #1

declare dso_local i32 @btm_ble_set_connectability(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
