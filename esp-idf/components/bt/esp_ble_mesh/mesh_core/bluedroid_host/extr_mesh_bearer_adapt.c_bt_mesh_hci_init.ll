; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/bluedroid_host/extr_mesh_bearer_adapt.c_bt_mesh_hci_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/bluedroid_host/extr_mesh_bearer_adapt.c_bt_mesh_hci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32* (...)*, %struct.TYPE_11__* (...)*, %struct.TYPE_12__* (...)* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32* }

@bt_mesh_dev = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@BLE_MESH_HCI_VERSION_5_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt_mesh_hci_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call %struct.TYPE_13__* (...) @controller_get_interface()
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_12__* (...)*, %struct.TYPE_12__* (...)** %6, align 8
  %8 = call %struct.TYPE_12__* (...) %7()
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %0
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bt_mesh_dev, i32 0, i32 6), align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @memcpy(i32 %16, i32* %17, i32 8)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bt_mesh_dev, i32 0, i32 0, i32 1), align 4
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @memcpy(i32 %19, i32* %20, i32 8)
  br label %22

22:                                               ; preds = %13, %0
  %23 = call %struct.TYPE_13__* (...) @controller_get_interface()
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__* (...)*, %struct.TYPE_11__* (...)** %24, align 8
  %26 = call %struct.TYPE_11__* (...) %25()
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bt_mesh_dev, i32 0, i32 5), align 8
  %29 = call %struct.TYPE_13__* (...) @controller_get_interface()
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__* (...)*, %struct.TYPE_11__* (...)** %30, align 8
  %32 = call %struct.TYPE_11__* (...) %31()
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bt_mesh_dev, i32 0, i32 4), align 4
  %35 = call %struct.TYPE_13__* (...) @controller_get_interface()
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_11__* (...)*, %struct.TYPE_11__* (...)** %36, align 8
  %38 = call %struct.TYPE_11__* (...) %37()
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bt_mesh_dev, i32 0, i32 3), align 8
  %41 = call %struct.TYPE_13__* (...) @controller_get_interface()
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_11__* (...)*, %struct.TYPE_11__* (...)** %42, align 8
  %44 = call %struct.TYPE_11__* (...) %43()
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bt_mesh_dev, i32 0, i32 2), align 4
  %47 = call %struct.TYPE_13__* (...) @controller_get_interface()
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_11__* (...)*, %struct.TYPE_11__* (...)** %48, align 8
  %50 = call %struct.TYPE_11__* (...) %49()
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bt_mesh_dev, i32 0, i32 1), align 8
  %53 = call %struct.TYPE_13__* (...) @controller_get_interface()
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32* (...)*, i32* (...)** %54, align 8
  %56 = call i32* (...) %55()
  store i32* %56, i32** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @STREAM_TO_UINT32(i32 %57, i32* %58)
  %60 = load i32, i32* %4, align 4
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @STREAM_TO_UINT32(i32 %60, i32* %61)
  %63 = load i32, i32* %4, align 4
  %64 = shl i32 %63, 32
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bt_mesh_dev, i32 0, i32 0, i32 0), align 8
  ret void
}

declare dso_local %struct.TYPE_13__* @controller_get_interface(...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @STREAM_TO_UINT32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
