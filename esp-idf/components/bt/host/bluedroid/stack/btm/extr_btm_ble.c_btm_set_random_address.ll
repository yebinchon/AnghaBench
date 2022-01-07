; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_btm_set_random_address.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_btm_set_random_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@btm_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"btm_set_random_address\00", align 1
@BTM_BLE_ADV_ENABLE = common dso_local global i64 0, align 8
@BTM_BLE_ADV_DISABLE = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_set_random_address(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 1), %struct.TYPE_7__** %3, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0, i32 0), align 8
  store i64 %5, i64* %4, align 8
  %6 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @BTM_BLE_ADV_ENABLE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i64, i64* @BTM_BLE_ADV_DISABLE, align 8
  %12 = call i32 @btsnd_hcic_ble_set_adv_enable(i64 %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @BD_ADDR_LEN, align 4
  %19 = call i32 @memcpy(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @btsnd_hcic_ble_set_random_addr(i32 %22)
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @BTM_BLE_ADV_ENABLE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %13
  %28 = load i64, i64* @BTM_BLE_ADV_ENABLE, align 8
  %29 = call i32 @btsnd_hcic_ble_set_adv_enable(i64 %28)
  br label %30

30:                                               ; preds = %27, %13
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*) #1

declare dso_local i32 @btsnd_hcic_ble_set_adv_enable(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @btsnd_hcic_ble_set_random_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
