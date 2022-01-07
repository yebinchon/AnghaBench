; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_start_slow_adv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_start_slow_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@btm_cb = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@BTM_BLE_ADV_ENABLE = common dso_local global i64 0, align 8
@BLE_ADDR_PUBLIC = common dso_local global i32 0, align 4
@BTM_BLE_GAP_ADV_SLOW_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @btm_ble_start_slow_adv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btm_ble_start_slow_adv() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0, i32 1), %struct.TYPE_11__** %1, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BTM_BLE_ADV_ENABLE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %0
  store %struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0, i32 0), %struct.TYPE_10__** %2, align 8
  %12 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load i32, i32* @BLE_ADDR_PUBLIC, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = call i32 (...) @btm_ble_stop_adv()
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @btm_set_conn_mode_adv_init_addr(%struct.TYPE_11__* %18, i32 %20, i32* %4, i32* %5)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @BTM_BLE_GAP_ADV_SLOW_INT, align 4
  %25 = load i32, i32* @BTM_BLE_GAP_ADV_SLOW_INT, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @btsnd_hcic_ble_write_adv_params(i32 %24, i32 %25, i32 %28, i32 %29, i32 %30, i32 %38, i32 %33, i32 %36)
  %40 = call i32 (...) @btm_ble_start_adv()
  br label %41

41:                                               ; preds = %11, %0
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @btm_ble_stop_adv(...) #2

declare dso_local i32 @btm_set_conn_mode_adv_init_addr(%struct.TYPE_11__*, i32, i32*, i32*) #2

declare dso_local i32 @btsnd_hcic_ble_write_adv_params(i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @btm_ble_start_adv(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
