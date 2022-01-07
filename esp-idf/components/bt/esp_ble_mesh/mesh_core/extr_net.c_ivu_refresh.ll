; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_ivu_refresh.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_ivu_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.k_work = type { i32 }

@BLE_MESH_IVU_HOURS = common dso_local global i64 0, align 8
@bt_mesh = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s for %u hour%s\00", align 1
@BLE_MESH_IVU_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"IVU in Progress\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"IVU Normal mode\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@BLE_MESH_IVU_MIN_HOURS = common dso_local global i32 0, align 4
@CONFIG_BLE_MESH_SETTINGS = common dso_local global i32 0, align 4
@BLE_MESH_IVU_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_work*)* @ivu_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivu_refresh(%struct.k_work* %0) #0 {
  %2 = alloca %struct.k_work*, align 8
  store %struct.k_work* %0, %struct.k_work** %2, align 8
  %3 = load i64, i64* @BLE_MESH_IVU_HOURS, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 4
  %5 = zext i32 %4 to i64
  %6 = add nsw i64 %5, %3
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 2), align 4
  %9 = load i32, i32* @BLE_MESH_IVU_IN_PROGRESS, align 4
  %10 = call i64 @bt_mesh_atomic_test_bit(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 4
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %14, i8* %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 4
  %21 = load i32, i32* @BLE_MESH_IVU_MIN_HOURS, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load i32, i32* @CONFIG_BLE_MESH_SETTINGS, align 4
  %25 = call i64 @IS_ENABLED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @bt_mesh_store_iv(i32 1)
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32, i32* @BLE_MESH_IVU_TIMEOUT, align 4
  %31 = call i32 @k_delayed_work_submit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 3), i32 %30)
  br label %47

32:                                               ; preds = %1
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 2), align 4
  %34 = load i32, i32* @BLE_MESH_IVU_IN_PROGRESS, align 4
  %35 = call i64 @bt_mesh_atomic_test_bit(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 1), align 4
  %39 = call i32 @bt_mesh_net_iv_update(i32 %38, i32 0)
  br label %47

40:                                               ; preds = %32
  %41 = load i32, i32* @CONFIG_BLE_MESH_SETTINGS, align 4
  %42 = call i64 @IS_ENABLED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 @bt_mesh_store_iv(i32 1)
  br label %46

46:                                               ; preds = %44, %40
  br label %47

47:                                               ; preds = %29, %46, %37
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i8*, i32, i8*) #1

declare dso_local i64 @bt_mesh_atomic_test_bit(i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @bt_mesh_store_iv(i32) #1

declare dso_local i32 @k_delayed_work_submit(i32*, i32) #1

declare dso_local i32 @bt_mesh_net_iv_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
