; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_privacy.c_btm_ble_enable_resolving_list_for_platform.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_privacy.c_btm_ble_enable_resolving_list_for_platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64 (...)* }

@btm_cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@BTM_BLE_WL_IDLE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@BTM_SEC_MAX_DEVICE_RECORDS = common dso_local global i64 0, align 8
@BTM_RESOLVING_LIST_BIT = common dso_local global i32 0, align 4
@BTM_WHITE_LIST_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_enable_resolving_list_for_platform(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = call %struct.TYPE_9__* (...) @controller_get_interface()
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i64 (...)*, i64 (...)** %6, align 8
  %8 = call i64 (...) %7()
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %66

11:                                               ; preds = %1
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 1, i32 0), align 8
  %13 = load i64, i64* @BTM_BLE_WL_IDLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = call %struct.TYPE_9__* (...) @controller_get_interface()
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64 (...)*, i64 (...)** %17, align 8
  %19 = call i64 (...) %18()
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 1, i32 1), align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @btm_ble_enable_resolving_list(i64 %23)
  br label %29

25:                                               ; preds = %15
  %26 = load i64, i64* %2, align 8
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i32 @btm_ble_disable_resolving_list(i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %22
  br label %66

30:                                               ; preds = %11
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 0), align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 0
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %3, align 8
  store i64 0, i64* %4, align 8
  br label %33

33:                                               ; preds = %57, %30
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @BTM_SEC_MAX_DEVICE_RECORDS, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %33
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BTM_RESOLVING_LIST_BIT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %37
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BTM_WHITE_LIST_BIT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i64, i64* %2, align 8
  %55 = call i32 @btm_ble_enable_resolving_list(i64 %54)
  br label %66

56:                                               ; preds = %45, %37
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %4, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %4, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 1
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %3, align 8
  br label %33

62:                                               ; preds = %33
  %63 = load i64, i64* %2, align 8
  %64 = load i32, i32* @TRUE, align 4
  %65 = call i32 @btm_ble_disable_resolving_list(i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %53, %29, %10
  ret void
}

declare dso_local %struct.TYPE_9__* @controller_get_interface(...) #1

declare dso_local i32 @btm_ble_enable_resolving_list(i64) #1

declare dso_local i32 @btm_ble_disable_resolving_list(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
