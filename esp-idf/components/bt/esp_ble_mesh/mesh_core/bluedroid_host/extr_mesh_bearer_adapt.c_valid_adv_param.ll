; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/bluedroid_host/extr_mesh_bearer_adapt.c_valid_adv_param.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/bluedroid_host/extr_mesh_bearer_adapt.c_valid_adv_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.bt_mesh_adv_param = type { i32, i32, i32 }

@BLE_MESH_ADV_OPT_CONNECTABLE = common dso_local global i32 0, align 4
@BLE_MESH_HCI_VERSION_5_0 = common dso_local global i64 0, align 8
@bt_mesh_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_mesh_adv_param*)* @valid_adv_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_adv_param(%struct.bt_mesh_adv_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bt_mesh_adv_param*, align 8
  store %struct.bt_mesh_adv_param* %0, %struct.bt_mesh_adv_param** %3, align 8
  %4 = load %struct.bt_mesh_adv_param*, %struct.bt_mesh_adv_param** %3, align 8
  %5 = getelementptr inbounds %struct.bt_mesh_adv_param, %struct.bt_mesh_adv_param* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @BLE_MESH_ADV_OPT_CONNECTABLE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %1
  %12 = load %struct.bt_mesh_adv_param*, %struct.bt_mesh_adv_param** %3, align 8
  %13 = getelementptr inbounds %struct.bt_mesh_adv_param, %struct.bt_mesh_adv_param* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bt_mesh_adv_param*, %struct.bt_mesh_adv_param** %3, align 8
  %16 = getelementptr inbounds %struct.bt_mesh_adv_param, %struct.bt_mesh_adv_param* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %11
  %20 = load %struct.bt_mesh_adv_param*, %struct.bt_mesh_adv_param** %3, align 8
  %21 = getelementptr inbounds %struct.bt_mesh_adv_param, %struct.bt_mesh_adv_param* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.bt_mesh_adv_param*, %struct.bt_mesh_adv_param** %3, align 8
  %26 = getelementptr inbounds %struct.bt_mesh_adv_param, %struct.bt_mesh_adv_param* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 16384
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %19, %11
  store i32 0, i32* %2, align 4
  br label %31

30:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
