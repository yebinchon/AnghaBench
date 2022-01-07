; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_set_adv_flag.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_set_adv_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@btm_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"disc_mode %04x\00", align 1
@BTM_BLE_LIMITED_DISCOVERABLE = common dso_local global i32 0, align 4
@BTM_BLE_GEN_DISC_FLAG = common dso_local global i32 0, align 4
@BTM_BLE_LIMIT_DISC_FLAG = common dso_local global i32 0, align 4
@BTM_BLE_GENERAL_DISCOVERABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"flag = 0x%x,old_flag = 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_set_adv_flag(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0, i32 0), %struct.TYPE_7__** %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @btm_ble_update_dmt_flag_bits(i32* %5, i32 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @BTM_BLE_LIMITED_DISCOVERABLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load i32, i32* @BTM_BLE_GEN_DISC_FLAG, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @BTM_BLE_LIMIT_DISC_FLAG, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %56

35:                                               ; preds = %17
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @BTM_BLE_GENERAL_DISCOVERABLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* @BTM_BLE_GEN_DISC_FLAG, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @BTM_BLE_LIMIT_DISC_FLAG, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %55

48:                                               ; preds = %35
  %49 = load i32, i32* @BTM_BLE_LIMIT_DISC_FLAG, align 4
  %50 = load i32, i32* @BTM_BLE_GEN_DISC_FLAG, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %48, %40
  br label %56

56:                                               ; preds = %55, %27
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @btm_ble_update_adv_flag(i32 %64)
  br label %66

66:                                               ; preds = %60, %56
  ret void
}

declare dso_local i32 @btm_ble_update_dmt_flag_bits(i32*, i32, i32) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*, i32, i32) #1

declare dso_local i32 @btm_ble_update_adv_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
