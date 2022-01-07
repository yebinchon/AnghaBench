; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_adv.c_bt_mesh_adv_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_adv.c_bt_mesh_adv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLE_MESH_QUEUE_SIZE = common dso_local global i32 0, align 4
@xBleMeshQueue = common dso_local global i32 0, align 4
@adv_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"BLE_Mesh_ADV_Task\00", align 1
@configMAX_PRIORITIES = common dso_local global i64 0, align 8
@ADV_TASK_CORE = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i32 0, align 4
@BLE_MESH_QUEUE_SET_SIZE = common dso_local global i32 0, align 4
@BLE_MESH_RELAY_QUEUE_SIZE = common dso_local global i32 0, align 4
@xBleMeshQueueSet = common dso_local global i32 0, align 4
@xBleMeshRelayQueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt_mesh_adv_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @BLE_MESH_QUEUE_SIZE, align 4
  %3 = call i32 @xQueueCreate(i32 %2, i32 4)
  store i32 %3, i32* @xBleMeshQueue, align 4
  %4 = load i32, i32* @xBleMeshQueue, align 4
  %5 = call i32 @configASSERT(i32 %4)
  %6 = load i32, i32* @adv_thread, align 4
  %7 = load i64, i64* @configMAX_PRIORITIES, align 8
  %8 = sub nsw i64 %7, 7
  %9 = load i32, i32* @ADV_TASK_CORE, align 4
  %10 = call i32 @xTaskCreatePinnedToCore(i32 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 3072, i32* null, i64 %8, i32* null, i32 %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @pdTRUE, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @configASSERT(i32 %14)
  ret void
}

declare dso_local i32 @xQueueCreate(i32, i32) #1

declare dso_local i32 @configASSERT(i32) #1

declare dso_local i32 @xTaskCreatePinnedToCore(i32, i8*, i32, i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
