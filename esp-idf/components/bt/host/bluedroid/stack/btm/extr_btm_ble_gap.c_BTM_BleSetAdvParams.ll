; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_BleSetAdvParams.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_BleSetAdvParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 (...)* }

@btm_cb = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@BTM_SUCCESS = common dso_local global i32 0, align 4
@BLE_ADDR_PUBLIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"BTM_BleSetAdvParams\00", align 1
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@BTM_BLE_ADV_INT_MIN = common dso_local global i32 0, align 4
@BTM_BLE_ADV_INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"update params for an active adv\0A\00", align 1
@BTM_BLE_ADV_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_BleSetAdvParams(i8* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1), %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 0), %struct.TYPE_12__** %11, align 8
  %17 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %17, i32* %12, align 4
  %18 = bitcast %struct.TYPE_13__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = load i32, i32* @BLE_ADDR_PUBLIC, align 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %15, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %16, align 8
  %26 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = call %struct.TYPE_14__* (...) @controller_get_interface()
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32 (...)*, i32 (...)** %28, align 8
  %30 = call i32 (...) %29()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %33, i32* %5, align 4
  br label %101

34:                                               ; preds = %4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @BTM_BLE_ADV_INT_MIN, align 4
  %37 = load i32, i32* @BTM_BLE_ADV_INT_MAX, align 4
  %38 = call i32 @BTM_BLE_ISVALID_PARAM(i8* %35, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @BTM_BLE_ADV_INT_MIN, align 4
  %43 = load i32, i32* @BTM_BLE_ADV_INT_MAX, align 4
  %44 = call i32 @BTM_BLE_ISVALID_PARAM(i8* %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40, %34
  %47 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %47, i32* %5, align 4
  br label %101

48:                                               ; preds = %40
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %48
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 6
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @memcpy(i32* %62, i32* %63, i32 4)
  br label %65

65:                                               ; preds = %60, %48
  %66 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %67 = call i32 (...) @btm_ble_stop_adv()
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @btm_set_conn_mode_adv_init_addr(%struct.TYPE_12__* %68, i32 %70, i32* %14, i32* %15)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 5
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @btsnd_hcic_ble_write_adv_params(i8* %76, i8* %79, i32 %82, i32 %83, i32 %84, i32 %92, i32 %87, i32 %90)
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* @BTM_BLE_ADV_ENABLE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %65
  %98 = call i32 (...) @btm_ble_start_adv()
  br label %99

99:                                               ; preds = %97, %65
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %46, %32
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BTM_TRACE_EVENT(i8*) #2

declare dso_local %struct.TYPE_14__* @controller_get_interface(...) #2

declare dso_local i32 @BTM_BLE_ISVALID_PARAM(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @btm_ble_stop_adv(...) #2

declare dso_local i32 @btm_set_conn_mode_adv_init_addr(%struct.TYPE_12__*, i32, i32*, i32*) #2

declare dso_local i32 @btsnd_hcic_ble_write_adv_params(i8*, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @btm_ble_start_adv(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
