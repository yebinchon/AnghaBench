; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blemesh/main/extr_app_mesh.c_gen_level_status.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blemesh/main/extr_app_mesh.c_gen_level_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { i32 }
%struct.bt_mesh_msg_ctx = type { i32 }
%struct.os_mbuf = type { i32 }

@tag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"#mesh-level STATUS\0A\00", align 1
@gen_level_state = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"#mesh-level STATUS: send status failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*)* @gen_level_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_level_status(%struct.bt_mesh_model* %0, %struct.bt_mesh_msg_ctx* %1) #0 {
  %3 = alloca %struct.bt_mesh_model*, align 8
  %4 = alloca %struct.bt_mesh_msg_ctx*, align 8
  %5 = alloca %struct.os_mbuf*, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %3, align 8
  store %struct.bt_mesh_msg_ctx* %1, %struct.bt_mesh_msg_ctx** %4, align 8
  %6 = call %struct.os_mbuf* @NET_BUF_SIMPLE(i32 4)
  store %struct.os_mbuf* %6, %struct.os_mbuf** %5, align 8
  %7 = load i32, i32* @tag, align 4
  %8 = call i32 @ESP_LOGI(i32 %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.os_mbuf*, %struct.os_mbuf** %5, align 8
  %10 = call i32 @BT_MESH_MODEL_OP_2(i32 130, i32 8)
  %11 = call i32 @bt_mesh_model_msg_init(%struct.os_mbuf* %9, i32 %10)
  %12 = load %struct.os_mbuf*, %struct.os_mbuf** %5, align 8
  %13 = load i32, i32* @gen_level_state, align 4
  %14 = call i32 @net_buf_simple_add_le16(%struct.os_mbuf* %12, i32 %13)
  %15 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %3, align 8
  %16 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %4, align 8
  %17 = load %struct.os_mbuf*, %struct.os_mbuf** %5, align 8
  %18 = call i64 @bt_mesh_model_send(%struct.bt_mesh_model* %15, %struct.bt_mesh_msg_ctx* %16, %struct.os_mbuf* %17, i32* null, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @tag, align 4
  %22 = call i32 @ESP_LOGI(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.os_mbuf*, %struct.os_mbuf** %5, align 8
  %25 = call i32 @os_mbuf_free_chain(%struct.os_mbuf* %24)
  ret void
}

declare dso_local %struct.os_mbuf* @NET_BUF_SIMPLE(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @bt_mesh_model_msg_init(%struct.os_mbuf*, i32) #1

declare dso_local i32 @BT_MESH_MODEL_OP_2(i32, i32) #1

declare dso_local i32 @net_buf_simple_add_le16(%struct.os_mbuf*, i32) #1

declare dso_local i64 @bt_mesh_model_send(%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*, %struct.os_mbuf*, i32*, i32*) #1

declare dso_local i32 @os_mbuf_free_chain(%struct.os_mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
