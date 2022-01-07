; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_bgconn.c_btm_execute_wl_dev_operation.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_bgconn.c_btm_execute_wl_dev_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@btm_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@TRUE = common dso_local global i64 0, align 8
@BTM_BLE_MAX_BG_CONN_DEV_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btm_execute_wl_dev_operation() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_cb, i32 0, i32 0, i32 0), align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %1, align 8
  store i64 0, i64* %2, align 8
  %5 = load i64, i64* @TRUE, align 8
  store i64 %5, i64* %3, align 8
  store i64 0, i64* %2, align 8
  br label %6

6:                                                ; preds = %35, %0
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @BTM_BLE_MAX_BG_CONN_DEV_NUM, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i1 [ false, %6 ], [ %12, %10 ]
  br i1 %14, label %15, label %40

15:                                               ; preds = %13
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @btm_add_dev_to_controller(i32 %23, i32 %26, i32 %29)
  store i64 %30, i64* %3, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %32 = call i32 @memset(%struct.TYPE_6__* %31, i32 0, i32 24)
  br label %34

33:                                               ; preds = %15
  br label %40

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %2, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %2, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 1
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %1, align 8
  br label %6

40:                                               ; preds = %33, %13
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local i64 @btm_add_dev_to_controller(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
