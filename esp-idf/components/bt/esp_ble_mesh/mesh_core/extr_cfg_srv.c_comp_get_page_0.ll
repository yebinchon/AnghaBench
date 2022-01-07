; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_comp_get_page_0.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_comp_get_page_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_buf_simple = type { i32 }
%struct.bt_mesh_comp = type { i32, i32, i32, i32, i32* }

@CONFIG_BLE_MESH_RELAY = common dso_local global i32 0, align 4
@BLE_MESH_FEAT_RELAY = common dso_local global i32 0, align 4
@CONFIG_BLE_MESH_GATT_PROXY_SERVER = common dso_local global i32 0, align 4
@BLE_MESH_FEAT_PROXY = common dso_local global i32 0, align 4
@CONFIG_BLE_MESH_FRIEND = common dso_local global i32 0, align 4
@BLE_MESH_FEAT_FRIEND = common dso_local global i32 0, align 4
@CONFIG_BLE_MESH_LOW_POWER = common dso_local global i32 0, align 4
@BLE_MESH_FEAT_LOW_POWER = common dso_local global i32 0, align 4
@CONFIG_BLE_MESH_CRPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_buf_simple*)* @comp_get_page_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_get_page_0(%struct.net_buf_simple* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_buf_simple*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bt_mesh_comp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_buf_simple* %0, %struct.net_buf_simple** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = call %struct.bt_mesh_comp* (...) @bt_mesh_comp_get()
  store %struct.bt_mesh_comp* %8, %struct.bt_mesh_comp** %5, align 8
  %9 = load i32, i32* @CONFIG_BLE_MESH_RELAY, align 4
  %10 = call i64 @IS_ENABLED(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @BLE_MESH_FEAT_RELAY, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i32, i32* @CONFIG_BLE_MESH_GATT_PROXY_SERVER, align 4
  %18 = call i64 @IS_ENABLED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @BLE_MESH_FEAT_PROXY, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @CONFIG_BLE_MESH_FRIEND, align 4
  %26 = call i64 @IS_ENABLED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @BLE_MESH_FEAT_FRIEND, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* @CONFIG_BLE_MESH_LOW_POWER, align 4
  %34 = call i64 @IS_ENABLED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @BLE_MESH_FEAT_LOW_POWER, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.net_buf_simple*, %struct.net_buf_simple** %3, align 8
  %42 = load %struct.bt_mesh_comp*, %struct.bt_mesh_comp** %5, align 8
  %43 = getelementptr inbounds %struct.bt_mesh_comp, %struct.bt_mesh_comp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @net_buf_simple_add_le16(%struct.net_buf_simple* %41, i32 %44)
  %46 = load %struct.net_buf_simple*, %struct.net_buf_simple** %3, align 8
  %47 = load %struct.bt_mesh_comp*, %struct.bt_mesh_comp** %5, align 8
  %48 = getelementptr inbounds %struct.bt_mesh_comp, %struct.bt_mesh_comp* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @net_buf_simple_add_le16(%struct.net_buf_simple* %46, i32 %49)
  %51 = load %struct.net_buf_simple*, %struct.net_buf_simple** %3, align 8
  %52 = load %struct.bt_mesh_comp*, %struct.bt_mesh_comp** %5, align 8
  %53 = getelementptr inbounds %struct.bt_mesh_comp, %struct.bt_mesh_comp* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @net_buf_simple_add_le16(%struct.net_buf_simple* %51, i32 %54)
  %56 = load %struct.net_buf_simple*, %struct.net_buf_simple** %3, align 8
  %57 = load i32, i32* @CONFIG_BLE_MESH_CRPL, align 4
  %58 = call i32 @net_buf_simple_add_le16(%struct.net_buf_simple* %56, i32 %57)
  %59 = load %struct.net_buf_simple*, %struct.net_buf_simple** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @net_buf_simple_add_le16(%struct.net_buf_simple* %59, i32 %60)
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %85, %40
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.bt_mesh_comp*, %struct.bt_mesh_comp** %5, align 8
  %65 = getelementptr inbounds %struct.bt_mesh_comp, %struct.bt_mesh_comp* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %62
  %69 = load %struct.net_buf_simple*, %struct.net_buf_simple** %3, align 8
  %70 = load %struct.bt_mesh_comp*, %struct.bt_mesh_comp** %5, align 8
  %71 = getelementptr inbounds %struct.bt_mesh_comp, %struct.bt_mesh_comp* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @comp_add_elem(%struct.net_buf_simple* %69, i32* %75, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %89

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %62

88:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %82
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.bt_mesh_comp* @bt_mesh_comp_get(...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @net_buf_simple_add_le16(%struct.net_buf_simple*, i32) #1

declare dso_local i32 @comp_add_elem(%struct.net_buf_simple*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
