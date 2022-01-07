; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_cli.c_hb_sub_status.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_cli.c_hb_sub_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { i32 }
%struct.bt_mesh_msg_ctx = type { i32, i32, i32 }
%struct.net_buf_simple = type { i32, i32 }
%struct.bt_mesh_cfg_hb_sub_status = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [52 x i8] c"net_idx 0x%04x app_idx 0x%04x src 0x%04x len %u: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*, %struct.net_buf_simple*)* @hb_sub_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hb_sub_status(%struct.bt_mesh_model* %0, %struct.bt_mesh_msg_ctx* %1, %struct.net_buf_simple* %2) #0 {
  %4 = alloca %struct.bt_mesh_model*, align 8
  %5 = alloca %struct.bt_mesh_msg_ctx*, align 8
  %6 = alloca %struct.net_buf_simple*, align 8
  %7 = alloca %struct.bt_mesh_cfg_hb_sub_status, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %4, align 8
  store %struct.bt_mesh_msg_ctx* %1, %struct.bt_mesh_msg_ctx** %5, align 8
  store %struct.net_buf_simple* %2, %struct.net_buf_simple** %6, align 8
  %8 = bitcast %struct.bt_mesh_cfg_hb_sub_status* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 64, i1 false)
  %9 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %19 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %22 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %25 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bt_hex(i32 %23, i32 %26)
  %28 = call i32 @BT_DBG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17, i32 %20, i32 %27)
  %29 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %30 = call i8* @net_buf_simple_pull_u8(%struct.net_buf_simple* %29)
  %31 = getelementptr inbounds %struct.bt_mesh_cfg_hb_sub_status, %struct.bt_mesh_cfg_hb_sub_status* %7, i32 0, i32 6
  store i8* %30, i8** %31, align 8
  %32 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %33 = call i8* @net_buf_simple_pull_le16(%struct.net_buf_simple* %32)
  %34 = getelementptr inbounds %struct.bt_mesh_cfg_hb_sub_status, %struct.bt_mesh_cfg_hb_sub_status* %7, i32 0, i32 5
  store i8* %33, i8** %34, align 8
  %35 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %36 = call i8* @net_buf_simple_pull_le16(%struct.net_buf_simple* %35)
  %37 = getelementptr inbounds %struct.bt_mesh_cfg_hb_sub_status, %struct.bt_mesh_cfg_hb_sub_status* %7, i32 0, i32 4
  store i8* %36, i8** %37, align 8
  %38 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %39 = call i8* @net_buf_simple_pull_u8(%struct.net_buf_simple* %38)
  %40 = getelementptr inbounds %struct.bt_mesh_cfg_hb_sub_status, %struct.bt_mesh_cfg_hb_sub_status* %7, i32 0, i32 3
  store i8* %39, i8** %40, align 8
  %41 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %42 = call i8* @net_buf_simple_pull_u8(%struct.net_buf_simple* %41)
  %43 = getelementptr inbounds %struct.bt_mesh_cfg_hb_sub_status, %struct.bt_mesh_cfg_hb_sub_status* %7, i32 0, i32 2
  store i8* %42, i8** %43, align 8
  %44 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %45 = call i8* @net_buf_simple_pull_u8(%struct.net_buf_simple* %44)
  %46 = getelementptr inbounds %struct.bt_mesh_cfg_hb_sub_status, %struct.bt_mesh_cfg_hb_sub_status* %7, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %48 = call i8* @net_buf_simple_pull_u8(%struct.net_buf_simple* %47)
  %49 = getelementptr inbounds %struct.bt_mesh_cfg_hb_sub_status, %struct.bt_mesh_cfg_hb_sub_status* %7, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %51 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %52 = call i32 @cfg_client_cancel(%struct.bt_mesh_model* %50, %struct.bt_mesh_msg_ctx* %51, %struct.bt_mesh_cfg_hb_sub_status* %7, i32 64)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @bt_hex(i32, i32) #2

declare dso_local i8* @net_buf_simple_pull_u8(%struct.net_buf_simple*) #2

declare dso_local i8* @net_buf_simple_pull_le16(%struct.net_buf_simple*) #2

declare dso_local i32 @cfg_client_cancel(%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_cfg_hb_sub_status*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
