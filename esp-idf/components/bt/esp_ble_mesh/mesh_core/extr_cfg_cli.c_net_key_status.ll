; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_cli.c_net_key_status.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_cli.c_net_key_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { i32 }
%struct.bt_mesh_msg_ctx = type { i32, i32, i32 }
%struct.net_buf_simple = type { i32, i32 }
%struct.bt_mesh_cfg_netkey_status = type { i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"net_idx 0x%04x app_idx 0x%04x src 0x%04x len %u: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*, %struct.net_buf_simple*)* @net_key_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_key_status(%struct.bt_mesh_model* %0, %struct.bt_mesh_msg_ctx* %1, %struct.net_buf_simple* %2) #0 {
  %4 = alloca %struct.bt_mesh_model*, align 8
  %5 = alloca %struct.bt_mesh_msg_ctx*, align 8
  %6 = alloca %struct.net_buf_simple*, align 8
  %7 = alloca %struct.bt_mesh_cfg_netkey_status, align 4
  %8 = alloca i32, align 4
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %4, align 8
  store %struct.bt_mesh_msg_ctx* %1, %struct.bt_mesh_msg_ctx** %5, align 8
  store %struct.net_buf_simple* %2, %struct.net_buf_simple** %6, align 8
  %9 = bitcast %struct.bt_mesh_cfg_netkey_status* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 12, i1 false)
  %10 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %20 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %23 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %26 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bt_hex(i32 %24, i32 %27)
  %29 = call i32 @BT_DBG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %21, i32 %28)
  %30 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %31 = call i32 @net_buf_simple_pull_u8(%struct.net_buf_simple* %30)
  %32 = getelementptr inbounds %struct.bt_mesh_cfg_netkey_status, %struct.bt_mesh_cfg_netkey_status* %7, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %34 = getelementptr inbounds %struct.bt_mesh_cfg_netkey_status, %struct.bt_mesh_cfg_netkey_status* %7, i32 0, i32 0
  %35 = call i32 @key_idx_unpack(%struct.net_buf_simple* %33, i32* %34, i32* %8)
  %36 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %37 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %38 = call i32 @cfg_client_cancel(%struct.bt_mesh_model* %36, %struct.bt_mesh_msg_ctx* %37, %struct.bt_mesh_cfg_netkey_status* %7, i32 12)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @bt_hex(i32, i32) #2

declare dso_local i32 @net_buf_simple_pull_u8(%struct.net_buf_simple*) #2

declare dso_local i32 @key_idx_unpack(%struct.net_buf_simple*, i32*, i32*) #2

declare dso_local i32 @cfg_client_cancel(%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_cfg_netkey_status*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
