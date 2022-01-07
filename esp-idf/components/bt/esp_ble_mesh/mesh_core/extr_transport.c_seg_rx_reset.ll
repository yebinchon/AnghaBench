; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_seg_rx_reset.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_seg_rx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seg_rx = type { i64, i32, i32, i8*, i8*, i32*, i32, i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"rx %p\00", align 1
@CONFIG_BLE_MESH_FRIEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Clearing incomplete buffers from Friend queue\00", align 1
@BLE_MESH_ADDR_UNASSIGNED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seg_rx*, i32)* @seg_rx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seg_rx_reset(%struct.seg_rx* %0, i32 %1) #0 {
  %3 = alloca %struct.seg_rx*, align 8
  %4 = alloca i32, align 4
  store %struct.seg_rx* %0, %struct.seg_rx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.seg_rx*, %struct.seg_rx** %3, align 8
  %6 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.seg_rx* %5)
  %7 = load %struct.seg_rx*, %struct.seg_rx** %3, align 8
  %8 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %7, i32 0, i32 8
  %9 = call i32 @k_delayed_work_cancel(i32* %8)
  %10 = load i32, i32* @CONFIG_BLE_MESH_FRIEND, align 4
  %11 = call i64 @IS_ENABLED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %2
  %14 = load %struct.seg_rx*, %struct.seg_rx** %3, align 8
  %15 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %13
  %19 = load %struct.seg_rx*, %struct.seg_rx** %3, align 8
  %20 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.seg_rx*, %struct.seg_rx** %3, align 8
  %23 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @BLOCK_COMPLETE(i32 %24)
  %26 = icmp ne i64 %21, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %18
  %28 = call i32 @BT_WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.seg_rx*, %struct.seg_rx** %3, align 8
  %30 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.seg_rx*, %struct.seg_rx** %3, align 8
  %33 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %32, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.seg_rx*, %struct.seg_rx** %3, align 8
  %36 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.seg_rx*, %struct.seg_rx** %3, align 8
  %39 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %38, i32 0, i32 1
  %40 = call i32 @bt_mesh_friend_clear_incomplete(i32* %31, i8* %34, i8* %37, i32* %39)
  br label %41

41:                                               ; preds = %27, %18, %13, %2
  %42 = load %struct.seg_rx*, %struct.seg_rx** %3, align 8
  %43 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %42, i32 0, i32 2
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.seg_rx*, %struct.seg_rx** %3, align 8
  %48 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %47, i32 0, i32 1
  store i32 0, i32* %48, align 8
  %49 = load %struct.seg_rx*, %struct.seg_rx** %3, align 8
  %50 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %49, i32 0, i32 5
  store i32* null, i32** %50, align 8
  %51 = load i8*, i8** @BLE_MESH_ADDR_UNASSIGNED, align 8
  %52 = load %struct.seg_rx*, %struct.seg_rx** %3, align 8
  %53 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @BLE_MESH_ADDR_UNASSIGNED, align 8
  %55 = load %struct.seg_rx*, %struct.seg_rx** %3, align 8
  %56 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %46, %41
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.seg_rx*) #1

declare dso_local i32 @k_delayed_work_cancel(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @BLOCK_COMPLETE(i32) #1

declare dso_local i32 @BT_WARN(i8*) #1

declare dso_local i32 @bt_mesh_friend_clear_incomplete(i32*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
