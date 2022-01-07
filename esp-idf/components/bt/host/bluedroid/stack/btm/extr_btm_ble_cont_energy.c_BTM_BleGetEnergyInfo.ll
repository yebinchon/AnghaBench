; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_cont_energy.c_BTM_BleGetEnergyInfo.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_cont_energy.c_BTM_BleGetEnergyInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64 }

@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"BTM_BleGetEnergyInfo\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Controller does not support get energy info\0A\00", align 1
@BTM_ERR_PROCESSING = common dso_local global i32 0, align 4
@ble_energy_info_cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@HCI_BLE_ENERGY_INFO_OCF = common dso_local global i32 0, align 4
@btm_ble_cont_energy_cmpl_cback = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"BTM_BleGetEnergyInfo status: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_BleGetEnergyInfo(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %6, i32* %4, align 4
  %7 = call i32 @BTM_BleGetVendorCapabilities(%struct.TYPE_4__* %5)
  %8 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 0, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @BTM_ERR_PROCESSING, align 4
  store i32 %14, i32* %2, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  store i32* %16, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_energy_info_cb, i32 0, i32 0), align 8
  %17 = load i32, i32* @HCI_BLE_ENERGY_INFO_OCF, align 4
  %18 = load i32, i32* @btm_ble_cont_energy_cmpl_cback, align 4
  %19 = call i32 @BTM_VendorSpecificCommand(i32 %17, i32 0, i32* null, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @BTM_CMD_STARTED, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %22, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @BTM_BleGetVendorCapabilities(%struct.TYPE_4__*) #1

declare dso_local i32 @BTM_TRACE_EVENT(i8*) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*, ...) #1

declare dso_local i32 @BTM_VendorSpecificCommand(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
