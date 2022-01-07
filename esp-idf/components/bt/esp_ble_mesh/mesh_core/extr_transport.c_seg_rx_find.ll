; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_seg_rx_find.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_seg_rx_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seg_rx = type { i64, i64, i64, i64 }
%struct.bt_mesh_net_rx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@seg_rx = common dso_local global %struct.seg_rx* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Duplicate SDU from src 0x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.seg_rx* (%struct.bt_mesh_net_rx*, i64*)* @seg_rx_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.seg_rx* @seg_rx_find(%struct.bt_mesh_net_rx* %0, i64* %1) #0 {
  %3 = alloca %struct.seg_rx*, align 8
  %4 = alloca %struct.bt_mesh_net_rx*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.seg_rx*, align 8
  store %struct.bt_mesh_net_rx* %0, %struct.bt_mesh_net_rx** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %59, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.seg_rx*, %struct.seg_rx** @seg_rx, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.seg_rx* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %62

13:                                               ; preds = %8
  %14 = load %struct.seg_rx*, %struct.seg_rx** @seg_rx, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %14, i64 %16
  store %struct.seg_rx* %17, %struct.seg_rx** %7, align 8
  %18 = load %struct.seg_rx*, %struct.seg_rx** %7, align 8
  %19 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %4, align 8
  %22 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %20, %24
  br i1 %25, label %35, label %26

26:                                               ; preds = %13
  %27 = load %struct.seg_rx*, %struct.seg_rx** %7, align 8
  %28 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %4, align 8
  %31 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26, %13
  br label %59

36:                                               ; preds = %26
  %37 = load %struct.seg_rx*, %struct.seg_rx** %7, align 8
  %38 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %5, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load %struct.seg_rx*, %struct.seg_rx** %7, align 8
  store %struct.seg_rx* %44, %struct.seg_rx** %3, align 8
  br label %63

45:                                               ; preds = %36
  %46 = load %struct.seg_rx*, %struct.seg_rx** %7, align 8
  %47 = getelementptr inbounds %struct.seg_rx, %struct.seg_rx* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %4, align 8
  %52 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @BT_WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = load %struct.seg_rx*, %struct.seg_rx** %7, align 8
  %57 = call i32 @seg_rx_reset(%struct.seg_rx* %56, i32 1)
  store %struct.seg_rx* null, %struct.seg_rx** %3, align 8
  br label %63

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %35
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %8

62:                                               ; preds = %8
  store %struct.seg_rx* null, %struct.seg_rx** %3, align 8
  br label %63

63:                                               ; preds = %62, %50, %43
  %64 = load %struct.seg_rx*, %struct.seg_rx** %3, align 8
  ret %struct.seg_rx* %64
}

declare dso_local i32 @ARRAY_SIZE(%struct.seg_rx*) #1

declare dso_local i32 @BT_WARN(i8*, i64) #1

declare dso_local i32 @seg_rx_reset(%struct.seg_rx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
