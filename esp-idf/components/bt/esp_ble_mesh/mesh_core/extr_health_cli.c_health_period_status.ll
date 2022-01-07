; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_health_cli.c_health_period_status.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_health_cli.c_health_period_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { i32 }
%struct.bt_mesh_msg_ctx = type { i32, i32, i32 }
%struct.net_buf_simple = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"net_idx 0x%04x app_idx 0x%04x src 0x%04x len %u: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*, %struct.net_buf_simple*)* @health_period_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @health_period_status(%struct.bt_mesh_model* %0, %struct.bt_mesh_msg_ctx* %1, %struct.net_buf_simple* %2) #0 {
  %4 = alloca %struct.bt_mesh_model*, align 8
  %5 = alloca %struct.bt_mesh_msg_ctx*, align 8
  %6 = alloca %struct.net_buf_simple*, align 8
  %7 = alloca i32, align 4
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %4, align 8
  store %struct.bt_mesh_msg_ctx* %1, %struct.bt_mesh_msg_ctx** %5, align 8
  store %struct.net_buf_simple* %2, %struct.net_buf_simple** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %9 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %18 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %21 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %24 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bt_hex(i32 %22, i32 %25)
  %27 = call i32 @BT_DBG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16, i32 %19, i32 %26)
  %28 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %29 = call i32 @net_buf_simple_pull_u8(%struct.net_buf_simple* %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %31 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %32 = call i32 @health_client_cancel(%struct.bt_mesh_model* %30, %struct.bt_mesh_msg_ctx* %31, i32* %7, i32 4)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bt_hex(i32, i32) #1

declare dso_local i32 @net_buf_simple_pull_u8(%struct.net_buf_simple*) #1

declare dso_local i32 @health_client_cancel(%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
