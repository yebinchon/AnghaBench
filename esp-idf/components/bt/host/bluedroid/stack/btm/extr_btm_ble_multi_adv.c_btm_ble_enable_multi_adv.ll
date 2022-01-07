; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_btm_ble_enable_multi_adv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_btm_ble_enable_multi_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTM_BLE_MULTI_ADV_ENB_LEN = common dso_local global i32 0, align 4
@BTM_BLE_MULTI_ADV_ENB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c" btm_ble_enable_multi_adv: enb %d, Inst ID %d\00", align 1
@HCI_BLE_MULTI_ADV_OCF = common dso_local global i32 0, align 4
@btm_ble_multi_adv_vsc_cmpl_cback = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_ble_enable_multi_adv(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @BTM_BLE_MULTI_ADV_ENB_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  store i32 %19, i32* %10, align 4
  store i32* %15, i32** %9, align 8
  %20 = load i32, i32* @BTM_BLE_MULTI_ADV_ENB_LEN, align 4
  %21 = call i32 @memset(i32* %15, i32 0, i32 %20)
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* @BTM_BLE_MULTI_ADV_ENB, align 4
  %24 = call i32 @UINT8_TO_STREAM(i32* %22, i32 %23)
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @UINT8_TO_STREAM(i32* %25, i32 %26)
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @UINT8_TO_STREAM(i32* %28, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* @HCI_BLE_MULTI_ADV_OCF, align 4
  %35 = load i32, i32* @BTM_BLE_MULTI_ADV_ENB_LEN, align 4
  %36 = load i32, i32* @btm_ble_multi_adv_vsc_cmpl_cback, align 4
  %37 = call i32 @BTM_VendorSpecificCommand(i32 %34, i32 %35, i32* %15, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @BTM_CMD_STARTED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %3
  %41 = load i32, i32* @BTM_BLE_MULTI_ADV_ENB, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @btm_ble_multi_adv_enq_op_q(i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %3
  %46 = load i32, i32* %11, align 4
  %47 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %47)
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #2

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i32, i32) #2

declare dso_local i32 @BTM_VendorSpecificCommand(i32, i32, i32*, i32) #2

declare dso_local i32 @btm_ble_multi_adv_enq_op_q(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
