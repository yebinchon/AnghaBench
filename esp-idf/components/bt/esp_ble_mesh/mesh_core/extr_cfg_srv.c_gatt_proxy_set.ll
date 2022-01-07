; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_gatt_proxy_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_gatt_proxy_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.bt_mesh_subnet* }
%struct.bt_mesh_subnet = type { i64 }
%struct.bt_mesh_model = type { %struct.bt_mesh_cfg_srv* }
%struct.bt_mesh_cfg_srv = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bt_mesh_msg_ctx = type { i32, i32, i32 }
%struct.net_buf_simple = type { i32*, i32 }

@.str = private unnamed_addr constant [52 x i8] c"net_idx 0x%04x app_idx 0x%04x src 0x%04x len %u: %s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid GATT Proxy value 0x%02x\00", align 1
@CONFIG_BLE_MESH_GATT_PROXY_SERVER = common dso_local global i32 0, align 4
@BLE_MESH_GATT_PROXY_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"No Configuration Server context available\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GATT Proxy 0x%02x -> 0x%02x\00", align 1
@CONFIG_BLE_MESH_SETTINGS = common dso_local global i32 0, align 4
@BLE_MESH_FEAT_PROXY = common dso_local global i32 0, align 4
@BLE_MESH_GATT_PROXY_DISABLED = common dso_local global i32 0, align 4
@BLE_MESH_KEY_UNUSED = common dso_local global i64 0, align 8
@bt_mesh = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*, %struct.net_buf_simple*)* @gatt_proxy_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gatt_proxy_set(%struct.bt_mesh_model* %0, %struct.bt_mesh_msg_ctx* %1, %struct.net_buf_simple* %2) #0 {
  %4 = alloca %struct.bt_mesh_model*, align 8
  %5 = alloca %struct.bt_mesh_msg_ctx*, align 8
  %6 = alloca %struct.net_buf_simple*, align 8
  %7 = alloca %struct.bt_mesh_cfg_srv*, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %4, align 8
  store %struct.bt_mesh_msg_ctx* %1, %struct.bt_mesh_msg_ctx** %5, align 8
  store %struct.net_buf_simple* %2, %struct.net_buf_simple** %6, align 8
  %8 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %9 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %8, i32 0, i32 0
  %10 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %9, align 8
  store %struct.bt_mesh_cfg_srv* %10, %struct.bt_mesh_cfg_srv** %7, align 8
  %11 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %21 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %24 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %27 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @bt_hex(i32* %25, i32 %28)
  %30 = call i32 (i8*, i32, i32, ...) @BT_DBG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %22, i32 %29)
  %31 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %32 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %3
  %38 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %39 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %46 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @BT_WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %113

51:                                               ; preds = %37, %3
  %52 = load i32, i32* @CONFIG_BLE_MESH_GATT_PROXY_SERVER, align 4
  %53 = call i64 @IS_ENABLED(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = call i64 (...) @bt_mesh_gatt_proxy_get()
  %57 = load i64, i64* @BLE_MESH_GATT_PROXY_NOT_SUPPORTED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51
  br label %109

60:                                               ; preds = %55
  %61 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %62 = icmp ne %struct.bt_mesh_cfg_srv* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = call i32 (i8*, ...) @BT_WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %109

65:                                               ; preds = %60
  %66 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %67 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %70 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, i32, i32, ...) @BT_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %73)
  %75 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %76 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %79 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %77, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %65
  br label %109

85:                                               ; preds = %65
  %86 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %87 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %92 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @CONFIG_BLE_MESH_SETTINGS, align 4
  %94 = call i64 @IS_ENABLED(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = call i32 (...) @bt_mesh_store_cfg()
  br label %98

98:                                               ; preds = %96, %85
  %99 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %100 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @BLE_MESH_FEAT_PROXY, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = call i32 (...) @bt_mesh_heartbeat_send()
  br label %108

108:                                              ; preds = %106, %98
  br label %109

109:                                              ; preds = %108, %84, %63, %59
  %110 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %111 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %112 = call i32 @send_gatt_proxy_status(%struct.bt_mesh_model* %110, %struct.bt_mesh_msg_ctx* %111)
  br label %113

113:                                              ; preds = %109, %44
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32, ...) #1

declare dso_local i32 @bt_hex(i32*, i32) #1

declare dso_local i32 @BT_WARN(i8*, ...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @bt_mesh_gatt_proxy_get(...) #1

declare dso_local i32 @bt_mesh_store_cfg(...) #1

declare dso_local i32 @bt_mesh_heartbeat_send(...) #1

declare dso_local i32 @send_gatt_proxy_status(%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
