; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_bgconn.c_btm_ble_resume_bg_conn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_bgconn.c_btm_ble_resume_bg_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@btm_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4
@BTM_BLE_CONN_NONE = common dso_local global i64 0, align 8
@BTM_BLE_CONN_AUTO = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@BTM_BLE_CONN_SELECTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_ble_resume_bg_conn() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  store %struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), %struct.TYPE_3__** %1, align 8
  %3 = load i32, i32* @FALSE, align 4
  store i32 %3, i32* %2, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BTM_BLE_CONN_NONE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BTM_BLE_CONN_AUTO, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @TRUE, align 4
  %17 = call i32 @btm_ble_start_auto_conn(i32 %16)
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %9
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BTM_BLE_CONN_SELECTIVE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @TRUE, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0, i32 1), align 8
  %27 = call i32 @btm_ble_start_select_conn(i32 %25, i32 %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %18
  br label %29

29:                                               ; preds = %28, %0
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @btm_ble_start_auto_conn(i32) #1

declare dso_local i32 @btm_ble_start_select_conn(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
