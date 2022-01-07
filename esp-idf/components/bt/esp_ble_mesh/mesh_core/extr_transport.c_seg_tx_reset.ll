; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_seg_tx_reset.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_seg_tx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.seg_tx = type { i32, i32, i32, %struct.TYPE_3__**, i32, i32*, i32*, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@BLE_MESH_ADDR_UNASSIGNED = common dso_local global i32 0, align 4
@bt_mesh = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@BLE_MESH_IVU_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Proceding with pending IV Update\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seg_tx*)* @seg_tx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seg_tx_reset(%struct.seg_tx* %0) #0 {
  %2 = alloca %struct.seg_tx*, align 8
  %3 = alloca i32, align 4
  store %struct.seg_tx* %0, %struct.seg_tx** %2, align 8
  %4 = load %struct.seg_tx*, %struct.seg_tx** %2, align 8
  %5 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %4, i32 0, i32 8
  %6 = call i32 @k_delayed_work_cancel(i32* %5)
  %7 = load %struct.seg_tx*, %struct.seg_tx** %2, align 8
  %8 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %7, i32 0, i32 7
  store i32* null, i32** %8, align 8
  %9 = load %struct.seg_tx*, %struct.seg_tx** %2, align 8
  %10 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %9, i32 0, i32 6
  store i32* null, i32** %10, align 8
  %11 = load %struct.seg_tx*, %struct.seg_tx** %2, align 8
  %12 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.seg_tx*, %struct.seg_tx** %2, align 8
  %14 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %13, i32 0, i32 5
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* @BLE_MESH_ADDR_UNASSIGNED, align 4
  %16 = load %struct.seg_tx*, %struct.seg_tx** %2, align 8
  %17 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.seg_tx*, %struct.seg_tx** %2, align 8
  %19 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %93

23:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %75, %23
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.seg_tx*, %struct.seg_tx** %2, align 8
  %27 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %25, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %24
  %31 = load %struct.seg_tx*, %struct.seg_tx** %2, align 8
  %32 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %75

40:                                               ; preds = %30
  %41 = load %struct.seg_tx*, %struct.seg_tx** %2, align 8
  %42 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %43, i64 %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %60

51:                                               ; preds = %40
  %52 = load %struct.seg_tx*, %struct.seg_tx** %2, align 8
  %53 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %54, i64 %56
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %51, %40
  %61 = load %struct.seg_tx*, %struct.seg_tx** %2, align 8
  %62 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %63, i64 %65
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = call i32 @net_buf_unref(%struct.TYPE_3__* %67)
  %69 = load %struct.seg_tx*, %struct.seg_tx** %2, align 8
  %70 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %69, i32 0, i32 3
  %71 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %71, i64 %73
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %74, align 8
  br label %75

75:                                               ; preds = %60, %39
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %24

78:                                               ; preds = %24
  %79 = load %struct.seg_tx*, %struct.seg_tx** %2, align 8
  %80 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bt_mesh, i32 0, i32 1), align 4
  %82 = load i32, i32* @BLE_MESH_IVU_PENDING, align 4
  %83 = call i64 @bt_mesh_atomic_test_and_clear_bit(i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %78
  %86 = call i32 @BT_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bt_mesh, i32 0, i32 0), align 4
  %88 = call i64 @bt_mesh_net_iv_update(i32 %87, i32 0)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 @bt_mesh_net_sec_update(i32* null)
  br label %92

92:                                               ; preds = %90, %85
  br label %93

93:                                               ; preds = %22, %92, %78
  ret void
}

declare dso_local i32 @k_delayed_work_cancel(i32*) #1

declare dso_local i32 @net_buf_unref(%struct.TYPE_3__*) #1

declare dso_local i64 @bt_mesh_atomic_test_and_clear_bit(i32, i32) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i64 @bt_mesh_net_iv_update(i32, i32) #1

declare dso_local i32 @bt_mesh_net_sec_update(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
