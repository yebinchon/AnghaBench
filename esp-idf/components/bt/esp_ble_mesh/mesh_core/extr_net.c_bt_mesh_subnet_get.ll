; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_subnet_get.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_subnet_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.bt_mesh_subnet* }
%struct.bt_mesh_subnet = type { i64 }

@BLE_MESH_KEY_ANY = common dso_local global i64 0, align 8
@bt_mesh = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bt_mesh_subnet* @bt_mesh_subnet_get(i64 %0) #0 {
  %2 = alloca %struct.bt_mesh_subnet*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @BLE_MESH_KEY_ANY, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 8
  %10 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %9, i64 0
  store %struct.bt_mesh_subnet* %10, %struct.bt_mesh_subnet** %2, align 8
  br label %36

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %32, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 8
  %15 = call i32 @ARRAY_SIZE(%struct.bt_mesh_subnet* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %18, i64 %20
  %22 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %27, i64 %29
  store %struct.bt_mesh_subnet* %30, %struct.bt_mesh_subnet** %2, align 8
  br label %36

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %12

35:                                               ; preds = %12
  store %struct.bt_mesh_subnet* null, %struct.bt_mesh_subnet** %2, align 8
  br label %36

36:                                               ; preds = %35, %26, %8
  %37 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %2, align 8
  ret %struct.bt_mesh_subnet* %37
}

declare dso_local i32 @ARRAY_SIZE(%struct.bt_mesh_subnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
