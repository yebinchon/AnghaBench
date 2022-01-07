; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_pm.c_btm_pm_device_in_scan_state.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_pm.c_btm_pm_device_in_scan_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@btm_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BTM_BL_PAGING_STARTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"btm_pm_device_in_scan_state- paging\00", align 1
@TRUE = common dso_local global i32 0, align 4
@BTM_BR_INQ_ACTIVE_MASK = common dso_local global i32 0, align 4
@BTM_BLE_INQ_ACTIVE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"btm_pm_device_in_scan_state- Inq active\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_pm_device_in_scan_state() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 3), align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 4
  %6 = call i32 @fixed_queue_is_empty(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load i64, i64* @BTM_BL_PAGING_STARTED, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %4, %0
  %13 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %1, align 4
  br label %27

15:                                               ; preds = %8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1, i32 0), align 8
  %17 = load i32, i32* @BTM_BR_INQ_ACTIVE_MASK, align 4
  %18 = load i32, i32* @BTM_BLE_INQ_ACTIVE_MASK, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %1, align 4
  br label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %25, %22, %12
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @fixed_queue_is_empty(i32) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
