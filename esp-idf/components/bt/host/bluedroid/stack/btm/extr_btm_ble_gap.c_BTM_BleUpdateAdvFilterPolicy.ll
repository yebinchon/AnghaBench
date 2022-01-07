; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_BleUpdateAdvFilterPolicy.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_BleUpdateAdvFilterPolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 (...)* }

@btm_cb = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@BLE_ADDR_PUBLIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"BTM_BleUpdateAdvFilterPolicy\0A\00", align 1
@BTM_BLE_CONNECTABLE = common dso_local global i32 0, align 4
@BTM_BLE_GAP_ADV_SLOW_INT = common dso_local global i64 0, align 8
@BTM_BLE_ADV_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTM_BleUpdateAdvFilterPolicy(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store %struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0, i32 0), %struct.TYPE_10__** %3, align 8
  %7 = load i32, i32* @BLE_ADDR_PUBLIC, align 4
  store i32 %7, i32* %4, align 4
  %8 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %13 = call %struct.TYPE_12__* (...) @controller_get_interface()
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32 (...)*, i32 (...)** %14, align 8
  %16 = call i32 (...) %15()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %94

19:                                               ; preds = %1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %2, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %94

25:                                               ; preds = %19
  %26 = load i64, i64* %2, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = call i32 (...) @btm_ble_stop_adv()
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BTM_BLE_CONNECTABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %25
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @btm_set_conn_mode_adv_init_addr(%struct.TYPE_10__* %37, i32 %41, i32* %4, i32* %39)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %25
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  br label %56

54:                                               ; preds = %45
  %55 = load i64, i64* @BTM_BLE_GAP_ADV_SLOW_INT, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i64 [ %53, %50 ], [ %55, %54 ]
  %58 = trunc i64 %57 to i32
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  br label %69

67:                                               ; preds = %56
  %68 = load i64, i64* @BTM_BLE_GAP_ADV_SLOW_INT, align 8
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi i64 [ %66, %63 ], [ %68, %67 ]
  %71 = trunc i64 %70 to i32
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @btsnd_hcic_ble_write_adv_params(i32 %58, i32 %71, i32 %74, i32 %77, i32 %78, i32 %86, i32 %81, i64 %84)
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @BTM_BLE_ADV_ENABLE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %69
  %92 = call i32 (...) @btm_ble_start_adv()
  br label %93

93:                                               ; preds = %91, %69
  br label %94

94:                                               ; preds = %18, %93, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BTM_TRACE_EVENT(i8*) #2

declare dso_local %struct.TYPE_12__* @controller_get_interface(...) #2

declare dso_local i32 @btm_ble_stop_adv(...) #2

declare dso_local i32 @btm_set_conn_mode_adv_init_addr(%struct.TYPE_10__*, i32, i32*, i32*) #2

declare dso_local i32 @btsnd_hcic_ble_write_adv_params(i32, i32, i32, i32, i32, i32, i32, i64) #2

declare dso_local i32 @btm_ble_start_adv(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
