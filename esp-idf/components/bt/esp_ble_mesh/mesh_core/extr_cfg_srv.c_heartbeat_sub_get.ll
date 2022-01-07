; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_heartbeat_sub_get.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_heartbeat_sub_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { i32 }
%struct.bt_mesh_msg_ctx = type { i32 }
%struct.net_buf_simple = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"src 0x%04x\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*, %struct.net_buf_simple*)* @heartbeat_sub_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heartbeat_sub_get(%struct.bt_mesh_model* %0, %struct.bt_mesh_msg_ctx* %1, %struct.net_buf_simple* %2) #0 {
  %4 = alloca %struct.bt_mesh_model*, align 8
  %5 = alloca %struct.bt_mesh_msg_ctx*, align 8
  %6 = alloca %struct.net_buf_simple*, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %4, align 8
  store %struct.bt_mesh_msg_ctx* %1, %struct.bt_mesh_msg_ctx** %5, align 8
  store %struct.net_buf_simple* %2, %struct.net_buf_simple** %6, align 8
  %7 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %8 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %12 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %13 = load i32, i32* @STATUS_SUCCESS, align 4
  %14 = call i32 @hb_sub_send_status(%struct.bt_mesh_model* %11, %struct.bt_mesh_msg_ctx* %12, i32 %13)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hb_sub_send_status(%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
