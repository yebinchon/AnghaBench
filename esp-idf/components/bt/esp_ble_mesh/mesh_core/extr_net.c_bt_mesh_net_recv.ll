; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_net_recv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_net_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_buf_simple = type { i32 }
%struct.bt_mesh_net_rx = type { i32, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_buf_simple_state = type { i32 }

@buf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"rssi %d net_if %u\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Removing rejected message from Network Message Cache\00", align 1
@msg_cache = common dso_local global i64* null, align 8
@msg_cache_next = common dso_local global i64 0, align 8
@BLE_MESH_NET_IF_PROXY = common dso_local global i32 0, align 4
@CONFIG_BLE_MESH_GATT_PROXY_SERVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt_mesh_net_recv(%struct.net_buf_simple* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_buf_simple*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bt_mesh_net_rx, align 8
  %8 = alloca %struct.net_buf_simple_state, align 4
  store %struct.net_buf_simple* %0, %struct.net_buf_simple** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @buf, align 4
  %10 = call i32 @NET_BUF_SIMPLE_DEFINE(i32 %9, i32 29)
  %11 = bitcast %struct.bt_mesh_net_rx* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %7, i32 0, i32 4
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = call i32 (...) @ready_to_recv()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %55

20:                                               ; preds = %3
  %21 = load %struct.net_buf_simple*, %struct.net_buf_simple** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @bt_mesh_net_decode(%struct.net_buf_simple* %21, i32 %22, %struct.bt_mesh_net_rx* %7, i32* @buf)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %55

26:                                               ; preds = %20
  %27 = call i32 @net_buf_simple_save(i32* @buf, %struct.net_buf_simple_state* %8)
  %28 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %7, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @bt_mesh_fixed_group_match(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %7, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @bt_mesh_elem_find(i32 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %33, %26
  %40 = phi i1 [ true, %26 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %7, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = call i32 @bt_mesh_trans_recv(i32* @buf, %struct.bt_mesh_net_rx* %7)
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = call i32 @BT_WARN(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i64*, i64** @msg_cache, align 8
  %50 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %7, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %7, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* @msg_cache_next, align 8
  br label %55

55:                                               ; preds = %19, %25, %47, %39
  ret void
}

declare dso_local i32 @NET_BUF_SIMPLE_DEFINE(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @ready_to_recv(...) #1

declare dso_local i64 @bt_mesh_net_decode(%struct.net_buf_simple*, i32, %struct.bt_mesh_net_rx*, i32*) #1

declare dso_local i32 @net_buf_simple_save(i32*, %struct.net_buf_simple_state*) #1

declare dso_local i64 @bt_mesh_fixed_group_match(i32) #1

declare dso_local i64 @bt_mesh_elem_find(i32) #1

declare dso_local i32 @bt_mesh_trans_recv(i32*, %struct.bt_mesh_net_rx*) #1

declare dso_local i32 @BT_WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
