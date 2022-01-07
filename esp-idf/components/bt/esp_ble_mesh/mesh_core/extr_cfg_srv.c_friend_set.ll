; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_friend_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_friend_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { %struct.bt_mesh_cfg_srv* }
%struct.bt_mesh_cfg_srv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bt_mesh_msg_ctx = type { i32, i32, i32 }
%struct.net_buf_simple = type { i32*, i32 }

@.str = private unnamed_addr constant [52 x i8] c"net_idx 0x%04x app_idx 0x%04x src 0x%04x len %u: %s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid Friend value 0x%02x\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"No Configuration Server context available\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Friend 0x%02x -> 0x%02x\00", align 1
@CONFIG_BLE_MESH_FRIEND = common dso_local global i32 0, align 4
@CONFIG_BLE_MESH_SETTINGS = common dso_local global i32 0, align 4
@BLE_MESH_FRIEND_DISABLED = common dso_local global i32 0, align 4
@BLE_MESH_KEY_ANY = common dso_local global i32 0, align 4
@BLE_MESH_FEAT_FRIEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*, %struct.net_buf_simple*)* @friend_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @friend_set(%struct.bt_mesh_model* %0, %struct.bt_mesh_msg_ctx* %1, %struct.net_buf_simple* %2) #0 {
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
  %50 = call i32 (i8*, ...) @BT_WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %118

51:                                               ; preds = %37, %3
  %52 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %53 = icmp ne %struct.bt_mesh_cfg_srv* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = call i32 (i8*, ...) @BT_WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %114

56:                                               ; preds = %51
  %57 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %58 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %61 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i32, i32, ...) @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32 %64)
  %66 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %67 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %70 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %68, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %56
  br label %114

76:                                               ; preds = %56
  %77 = load i32, i32* @CONFIG_BLE_MESH_FRIEND, align 4
  %78 = call i64 @IS_ENABLED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %76
  %81 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %82 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %87 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @CONFIG_BLE_MESH_SETTINGS, align 4
  %89 = call i64 @IS_ENABLED(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = call i32 (...) @bt_mesh_store_cfg()
  br label %93

93:                                               ; preds = %91, %80
  %94 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %95 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @BLE_MESH_FRIEND_DISABLED, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* @BLE_MESH_KEY_ANY, align 4
  %101 = call i32 @bt_mesh_friend_clear_net_idx(i32 %100)
  br label %102

102:                                              ; preds = %99, %93
  br label %103

103:                                              ; preds = %102, %76
  %104 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %105 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @BLE_MESH_FEAT_FRIEND, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = call i32 (...) @bt_mesh_heartbeat_send()
  br label %113

113:                                              ; preds = %111, %103
  br label %114

114:                                              ; preds = %113, %75, %54
  %115 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %116 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %117 = call i32 @send_friend_status(%struct.bt_mesh_model* %115, %struct.bt_mesh_msg_ctx* %116)
  br label %118

118:                                              ; preds = %114, %44
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32, ...) #1

declare dso_local i32 @bt_hex(i32*, i32) #1

declare dso_local i32 @BT_WARN(i8*, ...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @bt_mesh_store_cfg(...) #1

declare dso_local i32 @bt_mesh_friend_clear_net_idx(i32) #1

declare dso_local i32 @bt_mesh_heartbeat_send(...) #1

declare dso_local i32 @send_friend_status(%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
