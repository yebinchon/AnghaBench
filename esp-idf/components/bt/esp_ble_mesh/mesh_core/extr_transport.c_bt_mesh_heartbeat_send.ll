; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_bt_mesh_heartbeat_send.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_bt_mesh_heartbeat_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_cfg_srv = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.__packed = type { i32, i32 }
%struct.bt_mesh_msg_ctx = type { i64, i32, i32, i32 }
%struct.bt_mesh_net_tx = type { i32, i32, %struct.bt_mesh_msg_ctx*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.__packed.0 = type { i32, i32 }

@BLE_MESH_KEY_UNUSED = common dso_local global i32 0, align 4
@BLE_MESH_ADDR_UNASSIGNED = common dso_local global i64 0, align 8
@BLE_MESH_RELAY_ENABLED = common dso_local global i64 0, align 8
@BLE_MESH_FEAT_RELAY = common dso_local global i32 0, align 4
@BLE_MESH_GATT_PROXY_ENABLED = common dso_local global i64 0, align 8
@BLE_MESH_FEAT_PROXY = common dso_local global i32 0, align 4
@BLE_MESH_FRIEND_ENABLED = common dso_local global i64 0, align 8
@BLE_MESH_FEAT_FRIEND = common dso_local global i32 0, align 4
@BLE_MESH_FEAT_LOW_POWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"InitTTL %u feat 0x%04x\00", align 1
@TRANS_CTL_OP_HEARTBEAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt_mesh_heartbeat_send() #0 {
  %1 = alloca %struct.bt_mesh_cfg_srv*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.__packed, align 4
  %4 = alloca %struct.bt_mesh_msg_ctx, align 8
  %5 = alloca %struct.bt_mesh_net_tx, align 8
  %6 = call %struct.bt_mesh_cfg_srv* (...) @bt_mesh_cfg_get()
  store %struct.bt_mesh_cfg_srv* %6, %struct.bt_mesh_cfg_srv** %1, align 8
  store i32 0, i32* %2, align 4
  %7 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %4, i32 0, i32 0
  %8 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %1, align 8
  %9 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %4, i32 0, i32 1
  %13 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %1, align 8
  %14 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %12, align 8
  %17 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %4, i32 0, i32 2
  %18 = load i32, i32* @BLE_MESH_KEY_UNUSED, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %4, i32 0, i32 3
  %20 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %1, align 8
  %21 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %19, align 8
  %24 = getelementptr inbounds %struct.bt_mesh_net_tx, %struct.bt_mesh_net_tx* %5, i32 0, i32 0
  %25 = call i32 (...) @bt_mesh_net_transmit_get()
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.bt_mesh_net_tx, %struct.bt_mesh_net_tx* %5, i32 0, i32 1
  %27 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %1, align 8
  %28 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.TYPE_5__* @bt_mesh_model_elem(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %26, align 4
  %33 = getelementptr inbounds %struct.bt_mesh_net_tx, %struct.bt_mesh_net_tx* %5, i32 0, i32 2
  store %struct.bt_mesh_msg_ctx* %4, %struct.bt_mesh_msg_ctx** %33, align 8
  %34 = getelementptr inbounds %struct.bt_mesh_net_tx, %struct.bt_mesh_net_tx* %5, i32 0, i32 3
  %35 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %1, align 8
  %36 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bt_mesh_subnet_get(i32 %38)
  store i32 %39, i32* %34, align 8
  %40 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %1, align 8
  %41 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BLE_MESH_ADDR_UNASSIGNED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %0
  br label %96

47:                                               ; preds = %0
  %48 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %1, align 8
  %49 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.__packed, %struct.__packed* %3, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = call i64 (...) @bt_mesh_relay_get()
  %54 = load i64, i64* @BLE_MESH_RELAY_ENABLED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i32, i32* @BLE_MESH_FEAT_RELAY, align 4
  %58 = load i32, i32* %2, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %47
  %61 = call i64 (...) @bt_mesh_gatt_proxy_get()
  %62 = load i64, i64* @BLE_MESH_GATT_PROXY_ENABLED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @BLE_MESH_FEAT_PROXY, align 4
  %66 = load i32, i32* %2, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = call i64 (...) @bt_mesh_friend_get()
  %70 = load i64, i64* @BLE_MESH_FRIEND_ENABLED, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* @BLE_MESH_FEAT_FRIEND, align 4
  %74 = load i32, i32* %2, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %68
  %77 = call i64 (...) @bt_mesh_lpn_established()
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* @BLE_MESH_FEAT_LOW_POWER, align 4
  %81 = load i32, i32* %2, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @sys_cpu_to_be16(i32 %84)
  %86 = getelementptr inbounds %struct.__packed, %struct.__packed* %3, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %1, align 8
  %88 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* @TRANS_CTL_OP_HEARTBEAT, align 4
  %94 = bitcast %struct.__packed* %3 to %struct.__packed.0*
  %95 = call i32 @bt_mesh_ctl_send(%struct.bt_mesh_net_tx* %5, i32 %93, %struct.__packed.0* %94, i32 8, i32* null, i32* null, i32* null)
  br label %96

96:                                               ; preds = %83, %46
  ret void
}

declare dso_local %struct.bt_mesh_cfg_srv* @bt_mesh_cfg_get(...) #1

declare dso_local i32 @bt_mesh_net_transmit_get(...) #1

declare dso_local %struct.TYPE_5__* @bt_mesh_model_elem(i32) #1

declare dso_local i32 @bt_mesh_subnet_get(i32) #1

declare dso_local i64 @bt_mesh_relay_get(...) #1

declare dso_local i64 @bt_mesh_gatt_proxy_get(...) #1

declare dso_local i64 @bt_mesh_friend_get(...) #1

declare dso_local i64 @bt_mesh_lpn_established(...) #1

declare dso_local i32 @sys_cpu_to_be16(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @bt_mesh_ctl_send(%struct.bt_mesh_net_tx*, i32, %struct.__packed.0*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
