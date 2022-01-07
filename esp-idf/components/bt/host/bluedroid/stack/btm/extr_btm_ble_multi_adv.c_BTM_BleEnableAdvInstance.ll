; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_BTM_BleEnableAdvInstance.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_BTM_BleEnableAdvInstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i8*, i32*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@BTM_NO_RESOURCES = common dso_local global i64 0, align 8
@btm_multi_adv_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [32 x i8] c"BTM_BleEnableAdvInstance called\00", align 1
@btm_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Controller does not support Multi ADV\00", align 1
@BTM_ERR_PROCESSING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Invalid instance in BTM_BleEnableAdvInstance\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"btm_ble_enable_multi_adv being called with inst_id:%d\00", align 1
@BTM_BLE_MULTI_ADV_ENB_EVT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"BTM_BleEnableAdvInstance failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BTM_BleEnableAdvInstance(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i64, i64* @BTM_NO_RESOURCES, align 8
  store i64 %11, i64* %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_multi_adv_cb, i32 0, i32 0), align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i64 0
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %10, align 8
  %14 = call i32 (i8*, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %16 = icmp eq i64 0, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i64, i64* @BTM_ERR_PROCESSING, align 8
  store i64 %19, i64* %4, align 8
  br label %93

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %22 = icmp eq %struct.TYPE_7__* null, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i64, i64* @BTM_ERR_PROCESSING, align 8
  store i64 %25, i64* %4, align 8
  br label %93

26:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %86, %26
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (...) @BTM_BleMaxMultiAdvInstanceCount()
  %30 = sub nsw i32 %29, 1
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %91

32:                                               ; preds = %27
  %33 = load i64, i64* @FALSE, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %85

38:                                               ; preds = %32
  %39 = load i64, i64* @TRUE, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @btm_ble_multi_adv_set_params(%struct.TYPE_7__* %45, i32* %46, i32 0)
  store i64 %47, i64* %9, align 8
  br label %50

48:                                               ; preds = %38
  %49 = load i64, i64* @BTM_CMD_STARTED, align 8
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %48, %44
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i8*, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load i64, i64* @BTM_CMD_STARTED, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %50
  %59 = load i64, i64* @TRUE, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @BTM_BLE_MULTI_ADV_ENB_EVT, align 4
  %64 = call i64 @btm_ble_enable_multi_adv(i64 %59, i32 %62, i32 %63)
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* @BTM_CMD_STARTED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %67, %58
  br label %75

75:                                               ; preds = %74, %50
  %76 = load i64, i64* @BTM_CMD_STARTED, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i64, i64* @FALSE, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %75
  br label %91

85:                                               ; preds = %32
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 1
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %10, align 8
  br label %27

91:                                               ; preds = %84, %27
  %92 = load i64, i64* %9, align 8
  store i64 %92, i64* %4, align 8
  br label %93

93:                                               ; preds = %91, %23, %17
  %94 = load i64, i64* %4, align 8
  ret i64 %94
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*, ...) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

declare dso_local i32 @BTM_BleMaxMultiAdvInstanceCount(...) #1

declare dso_local i64 @btm_ble_multi_adv_set_params(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i64 @btm_ble_enable_multi_adv(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
