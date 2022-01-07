; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blemesh/main/extr_app_mesh.c_gen_delta_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blemesh/main/extr_app_mesh.c_gen_delta_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { i32 }
%struct.bt_mesh_msg_ctx = type { i32 }
%struct.os_mbuf = type { i32 }

@tag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"#mesh-level DELTA-SET: delta_level=%d\0A\00", align 1
@gen_level_state = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"#mesh-level: level=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*, %struct.os_mbuf*)* @gen_delta_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_delta_set(%struct.bt_mesh_model* %0, %struct.bt_mesh_msg_ctx* %1, %struct.os_mbuf* %2) #0 {
  %4 = alloca %struct.bt_mesh_model*, align 8
  %5 = alloca %struct.bt_mesh_msg_ctx*, align 8
  %6 = alloca %struct.os_mbuf*, align 8
  %7 = alloca i64, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %4, align 8
  store %struct.bt_mesh_msg_ctx* %1, %struct.bt_mesh_msg_ctx** %5, align 8
  store %struct.os_mbuf* %2, %struct.os_mbuf** %6, align 8
  %8 = load %struct.os_mbuf*, %struct.os_mbuf** %6, align 8
  %9 = call i64 @net_buf_simple_pull_le16(%struct.os_mbuf* %8)
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* @tag, align 4
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @ESP_LOGI(i32 %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %14 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %15 = call i32 @gen_level_status(%struct.bt_mesh_model* %13, %struct.bt_mesh_msg_ctx* %14)
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @gen_level_state, align 8
  %18 = add nsw i64 %17, %16
  store i64 %18, i64* @gen_level_state, align 8
  %19 = load i32, i32* @tag, align 4
  %20 = load i64, i64* @gen_level_state, align 8
  %21 = call i32 @ESP_LOGI(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  ret void
}

declare dso_local i64 @net_buf_simple_pull_le16(%struct.os_mbuf*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i64) #1

declare dso_local i32 @gen_level_status(%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
