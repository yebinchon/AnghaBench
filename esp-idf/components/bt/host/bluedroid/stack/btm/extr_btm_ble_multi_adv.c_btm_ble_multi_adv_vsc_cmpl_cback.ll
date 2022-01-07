; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_btm_ble_multi_adv_vsc_cmpl_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_btm_ble_multi_adv_vsc_cmpl_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 (i32, i32, i32, i32)*, i32 }
%struct.TYPE_5__ = type { i32*, i32 }

@.str = private unnamed_addr constant [50 x i8] c"wrong length for btm_ble_multi_adv_vsc_cmpl_cback\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"op_code = %02x inst_id = %d cb_evt = %02x\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"get unexpected VSC cmpl, expect: %d get: %d\00", align 1
@btm_multi_adv_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"BTM_BLE_MULTI_ADV_ENB status = %d\00", align 1
@HCI_SUCCESS = common dso_local global i32 0, align 4
@BTM_BLE_MULTI_ADV_ENB_EVT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"BTM_BLE_MULTI_ADV_SET_PARAM status = %d\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"BTM_BLE_MULTI_ADV_WRITE_ADV_DATA status = %d\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"BTM_BLE_MULTI_ADV_WRITE_SCAN_RSP_DATA status = %d\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"BTM_BLE_MULTI_ADV_SET_RANDOM_ADDR status = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_multi_adv_vsc_cmpl_cback(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %102

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @STREAM_TO_UINT8(i32 %22, i32* %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @STREAM_TO_UINT8(i32 %25, i32* %26)
  %28 = call i32 @btm_ble_multi_adv_deq_op_q(i32* %10, i32* %6, i32* %9)
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (i8*, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36, %21
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %41)
  br label %102

43:                                               ; preds = %36
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_multi_adv_cb, i32 0, i32 0), align 8
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %47
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %8, align 8
  %49 = load i32, i32* %4, align 4
  switch i32 %49, label %81 [
    i32 132, label %50
    i32 131, label %69
    i32 129, label %72
    i32 128, label %75
    i32 130, label %78
  ]

50:                                               ; preds = %43
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i8*, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @HCI_SUCCESS, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load i32, i32* @BTM_BLE_MULTI_ADV_ENB_EVT, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i32, i32* @FALSE, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_multi_adv_cb, i32 0, i32 0), align 8
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  store i32 %61, i32* %67, align 8
  br label %68

68:                                               ; preds = %60, %56, %50
  br label %82

69:                                               ; preds = %43
  %70 = load i32, i32* %3, align 4
  %71 = call i32 (i8*, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  br label %82

72:                                               ; preds = %43
  %73 = load i32, i32* %3, align 4
  %74 = call i32 (i8*, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  br label %82

75:                                               ; preds = %43
  %76 = load i32, i32* %3, align 4
  %77 = call i32 (i8*, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  br label %82

78:                                               ; preds = %43
  %79 = load i32, i32* %3, align 4
  %80 = call i32 (i8*, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %79)
  br label %82

81:                                               ; preds = %43
  br label %82

82:                                               ; preds = %81, %78, %75, %72, %69, %68
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %87, align 8
  %89 = icmp ne i32 (i32, i32, i32, i32)* %88, null
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = call i32 %93(i32 %94, i32 %95, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %90, %85, %82
  br label %102

102:                                              ; preds = %101, %39, %19
  ret void
}

declare dso_local i32 @BTM_TRACE_ERROR(i8*, ...) #1

declare dso_local i32 @STREAM_TO_UINT8(i32, i32*) #1

declare dso_local i32 @btm_ble_multi_adv_deq_op_q(i32*, i32*, i32*) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
