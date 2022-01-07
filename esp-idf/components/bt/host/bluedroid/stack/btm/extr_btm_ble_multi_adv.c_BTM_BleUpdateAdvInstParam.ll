; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_BTM_BleUpdateAdvInstParam.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_BTM_BleUpdateAdvInstParam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@btm_multi_adv_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [49 x i8] c"BTM_BleUpdateAdvInstParam called with inst_id:%d\00", align 1
@btm_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Controller does not support Multi ADV\00", align 1
@BTM_ERR_PROCESSING = common dso_local global i32 0, align 4
@BTM_BLE_MULTI_ADV_DEFAULT_STD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"adv instance %d is not active\00", align 1
@BTM_WRONG_MODE = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@BTM_BLE_MULTI_ADV_PARAM_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_BleUpdateAdvInstParam(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_multi_adv_cb, i32 0, i32 0), align 8
  %10 = load i32, i32* %4, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i64 %12
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %17 = icmp eq i64 0, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @BTM_ERR_PROCESSING, align 4
  store i32 %20, i32* %3, align 4
  br label %60

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (...) @BTM_BleMaxMultiAdvInstanceCount()
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @BTM_BLE_MULTI_ADV_DEFAULT_STD, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load i64, i64* @FALSE, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @BTM_WRONG_MODE, align 4
  store i32 %41, i32* %3, align 4
  br label %60

42:                                               ; preds = %32
  %43 = load i64, i64* @FALSE, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @btm_ble_enable_multi_adv(i64 %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %42
  %47 = load i64, i64* @BTM_CMD_STARTED, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i64 @btm_ble_multi_adv_set_params(%struct.TYPE_7__* %48, i32* %49, i32 0)
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i64, i64* @TRUE, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @BTM_BLE_MULTI_ADV_PARAM_EVT, align 4
  %56 = call i32 @btm_ble_enable_multi_adv(i64 %53, i32 %54, i32 %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %52, %46
  br label %58

58:                                               ; preds = %57, %29, %25, %21
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %38, %18
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i32) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

declare dso_local i32 @BTM_BleMaxMultiAdvInstanceCount(...) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @btm_ble_enable_multi_adv(i64, i32, i32) #1

declare dso_local i64 @btm_ble_multi_adv_set_params(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
