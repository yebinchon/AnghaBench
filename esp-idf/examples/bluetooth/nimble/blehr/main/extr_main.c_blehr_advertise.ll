; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blehr/main/extr_main.c_blehr_advertise.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blehr/main/extr_main.c_blehr_advertise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_gap_adv_params = type { i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.ble_hs_adv_fields = type { i32, i32, i32, i32, i32, i32, i32*, i32 }

@BLE_HS_ADV_F_DISC_GEN = common dso_local global i32 0, align 4
@BLE_HS_ADV_F_BREDR_UNSUP = common dso_local global i32 0, align 4
@BLE_HS_ADV_TX_PWR_LVL_AUTO = common dso_local global i32 0, align 4
@device_name = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"error setting advertisement data; rc=%d\0A\00", align 1
@BLE_GAP_CONN_MODE_UND = common dso_local global i32 0, align 4
@BLE_GAP_DISC_MODE_GEN = common dso_local global i32 0, align 4
@blehr_addr_type = common dso_local global i32 0, align 4
@BLE_HS_FOREVER = common dso_local global i32 0, align 4
@blehr_gap_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"error enabling advertisement; rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @blehr_advertise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blehr_advertise() #0 {
  %1 = alloca %struct.ble_gap_adv_params, align 8
  %2 = alloca %struct.ble_hs_adv_fields, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @memset(%struct.ble_hs_adv_fields* %2, i32 0, i32 40)
  %5 = load i32, i32* @BLE_HS_ADV_F_DISC_GEN, align 4
  %6 = load i32, i32* @BLE_HS_ADV_F_BREDR_UNSUP, align 4
  %7 = or i32 %5, %6
  %8 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %2, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %2, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @BLE_HS_ADV_TX_PWR_LVL_AUTO, align 4
  %11 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %2, i32 0, i32 7
  store i32 %10, i32* %11, align 8
  %12 = load i64, i64* @device_name, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %2, i32 0, i32 6
  store i32* %13, i32** %14, align 8
  %15 = load i64, i64* @device_name, align 8
  %16 = call i32 @strlen(i64 %15)
  %17 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %2, i32 0, i32 5
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %2, i32 0, i32 2
  store i32 1, i32* %18, align 8
  %19 = call i32 @ble_gap_adv_set_fields(%struct.ble_hs_adv_fields* %2)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %0
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @MODLOG_DFLT(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %44

26:                                               ; preds = %0
  %27 = bitcast %struct.ble_gap_adv_params* %1 to %struct.ble_hs_adv_fields*
  %28 = call i32 @memset(%struct.ble_hs_adv_fields* %27, i32 0, i32 40)
  %29 = load i32, i32* @BLE_GAP_CONN_MODE_UND, align 4
  %30 = getelementptr inbounds %struct.ble_gap_adv_params, %struct.ble_gap_adv_params* %1, i32 0, i32 4
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* @BLE_GAP_DISC_MODE_GEN, align 4
  %32 = getelementptr inbounds %struct.ble_gap_adv_params, %struct.ble_gap_adv_params* %1, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @blehr_addr_type, align 4
  %34 = load i32, i32* @BLE_HS_FOREVER, align 4
  %35 = bitcast %struct.ble_gap_adv_params* %1 to %struct.ble_hs_adv_fields*
  %36 = load i32, i32* @blehr_gap_event, align 4
  %37 = call i32 @ble_gap_adv_start(i32 %33, i32* null, i32 %34, %struct.ble_hs_adv_fields* %35, i32 %36, i32* null)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @MODLOG_DFLT(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %22, %40, %26
  ret void
}

declare dso_local i32 @memset(%struct.ble_hs_adv_fields*, i32, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @ble_gap_adv_set_fields(%struct.ble_hs_adv_fields*) #1

declare dso_local i32 @MODLOG_DFLT(i32, i8*, i32) #1

declare dso_local i32 @ble_gap_adv_start(i32, i32*, i32, %struct.ble_hs_adv_fields*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
