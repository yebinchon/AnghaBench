; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_adv.c_bt_mesh_adv_send.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_adv.c_bt_mesh_adv_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_buf = type { i32, i32 }
%struct.bt_mesh_send_cb = type { i32 }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32, i8*, %struct.bt_mesh_send_cb*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"type 0x%02x len %u: %s\00", align 1
@portMAX_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt_mesh_adv_send(%struct.net_buf* %0, %struct.bt_mesh_send_cb* %1, i8* %2) #0 {
  %4 = alloca %struct.net_buf*, align 8
  %5 = alloca %struct.bt_mesh_send_cb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  store %struct.net_buf* %0, %struct.net_buf** %4, align 8
  store %struct.bt_mesh_send_cb* %1, %struct.bt_mesh_send_cb** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.net_buf*, %struct.net_buf** %4, align 8
  %10 = call %struct.TYPE_5__* @BLE_MESH_ADV(%struct.net_buf* %9)
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.net_buf*, %struct.net_buf** %4, align 8
  %14 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.net_buf*, %struct.net_buf** %4, align 8
  %17 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.net_buf*, %struct.net_buf** %4, align 8
  %20 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bt_hex(i32 %18, i32 %21)
  %23 = call i32 @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %22)
  %24 = load %struct.bt_mesh_send_cb*, %struct.bt_mesh_send_cb** %5, align 8
  %25 = load %struct.net_buf*, %struct.net_buf** %4, align 8
  %26 = call %struct.TYPE_5__* @BLE_MESH_ADV(%struct.net_buf* %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store %struct.bt_mesh_send_cb* %24, %struct.bt_mesh_send_cb** %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.net_buf*, %struct.net_buf** %4, align 8
  %30 = call %struct.TYPE_5__* @BLE_MESH_ADV(%struct.net_buf* %29)
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  %32 = load %struct.net_buf*, %struct.net_buf** %4, align 8
  %33 = call %struct.TYPE_5__* @BLE_MESH_ADV(%struct.net_buf* %32)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.net_buf*, %struct.net_buf** %4, align 8
  %36 = call i64 @net_buf_ref(%struct.net_buf* %35)
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* @portMAX_DELAY, align 4
  %40 = call i32 @bt_mesh_task_post(%struct.TYPE_4__* %7, i32 %39)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32) #2

declare dso_local %struct.TYPE_5__* @BLE_MESH_ADV(%struct.net_buf*) #2

declare dso_local i32 @bt_hex(i32, i32) #2

declare dso_local i64 @net_buf_ref(%struct.net_buf*) #2

declare dso_local i32 @bt_mesh_task_post(%struct.TYPE_4__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
