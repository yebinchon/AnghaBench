; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blemesh/main/extr_app_mesh.c_gen_onoff_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blemesh/main/extr_app_mesh.c_gen_onoff_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { i32 }
%struct.bt_mesh_msg_ctx = type { i32 }
%struct.os_mbuf = type { i32* }

@tag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"#mesh-onoff SET\0A\00", align 1
@gen_on_off_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*, %struct.os_mbuf*)* @gen_onoff_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_onoff_set(%struct.bt_mesh_model* %0, %struct.bt_mesh_msg_ctx* %1, %struct.os_mbuf* %2) #0 {
  %4 = alloca %struct.bt_mesh_model*, align 8
  %5 = alloca %struct.bt_mesh_msg_ctx*, align 8
  %6 = alloca %struct.os_mbuf*, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %4, align 8
  store %struct.bt_mesh_msg_ctx* %1, %struct.bt_mesh_msg_ctx** %5, align 8
  store %struct.os_mbuf* %2, %struct.os_mbuf** %6, align 8
  %7 = load i32, i32* @tag, align 4
  %8 = call i32 @ESP_LOGI(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.os_mbuf*, %struct.os_mbuf** %6, align 8
  %10 = getelementptr inbounds %struct.os_mbuf, %struct.os_mbuf* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* @gen_on_off_state, align 4
  %14 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %15 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %16 = call i32 @gen_onoff_status(%struct.bt_mesh_model* %14, %struct.bt_mesh_msg_ctx* %15)
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @gen_onoff_status(%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
