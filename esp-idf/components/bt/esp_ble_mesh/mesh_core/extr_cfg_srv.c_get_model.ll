; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_get_model.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_get_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { i32 }
%struct.bt_mesh_elem = type { i32 }
%struct.net_buf_simple = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"ID 0x%04x addr 0x%04x\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Company 0x%04x ID 0x%04x addr 0x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bt_mesh_model* (%struct.bt_mesh_elem*, %struct.net_buf_simple*, i32*)* @get_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bt_mesh_model* @get_model(%struct.bt_mesh_elem* %0, %struct.net_buf_simple* %1, i32* %2) #0 {
  %4 = alloca %struct.bt_mesh_model*, align 8
  %5 = alloca %struct.bt_mesh_elem*, align 8
  %6 = alloca %struct.net_buf_simple*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bt_mesh_elem* %0, %struct.bt_mesh_elem** %5, align 8
  store %struct.net_buf_simple* %1, %struct.net_buf_simple** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %12 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %17 = call i32 @net_buf_simple_pull_le16(%struct.net_buf_simple* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %5, align 8
  %20 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, i32, ...) @BT_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load i32*, i32** %7, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.bt_mesh_model* @bt_mesh_model_find(%struct.bt_mesh_elem* %24, i32 %25)
  store %struct.bt_mesh_model* %26, %struct.bt_mesh_model** %4, align 8
  br label %43

27:                                               ; preds = %3
  %28 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %29 = call i32 @net_buf_simple_pull_le16(%struct.net_buf_simple* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %31 = call i32 @net_buf_simple_pull_le16(%struct.net_buf_simple* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %5, align 8
  %35 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, i32, ...) @BT_DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33, i32 %36)
  %38 = load i32*, i32** %7, align 8
  store i32 1, i32* %38, align 4
  %39 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call %struct.bt_mesh_model* @bt_mesh_model_find_vnd(%struct.bt_mesh_elem* %39, i32 %40, i32 %41)
  store %struct.bt_mesh_model* %42, %struct.bt_mesh_model** %4, align 8
  br label %43

43:                                               ; preds = %27, %15
  %44 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  ret %struct.bt_mesh_model* %44
}

declare dso_local i32 @net_buf_simple_pull_le16(%struct.net_buf_simple*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, ...) #1

declare dso_local %struct.bt_mesh_model* @bt_mesh_model_find(%struct.bt_mesh_elem*, i32) #1

declare dso_local %struct.bt_mesh_model* @bt_mesh_model_find_vnd(%struct.bt_mesh_elem*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
