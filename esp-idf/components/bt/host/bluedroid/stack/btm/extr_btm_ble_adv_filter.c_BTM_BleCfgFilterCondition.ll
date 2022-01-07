; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_BTM_BleCfgFilterCondition.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_BTM_BleCfgFilterCondition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTM_ILLEGAL_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c" BTM_BleCfgFilterCondition action:%d, cond_type:%d, index:%d\00", align 1
@BTM_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"condition type [%d] not supported currently.\00", align 1
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@BTM_BLE_FILT_CFG = common dso_local global i32 0, align 4
@BTM_BLE_META_PF_FEAT_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BTM_BleCfgFilterCondition(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i64, i64* @BTM_ILLEGAL_VALUE, align 8
  store i64 %16, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  %21 = load i64, i64* @BTM_SUCCESS, align 8
  %22 = call i64 (...) @btm_ble_obtain_vsc_details()
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i64, i64* %14, align 8
  store i64 %25, i64* %7, align 8
  br label %100

26:                                               ; preds = %6
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %64 [
    i32 131, label %28
    i32 133, label %28
    i32 134, label %35
    i32 135, label %40
    i32 129, label %45
    i32 130, label %45
    i32 132, label %52
    i32 128, label %57
  ]

28:                                               ; preds = %26, %26
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i64 @btm_ble_update_pf_manu_data(i32 %29, i32 %30, i32* %31, i32 %32, i32 0, i32 %33)
  store i64 %34, i64* %14, align 8
  br label %67

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = call i64 @btm_ble_update_pf_local_name(i32 %36, i32 %37, i32* %38)
  store i64 %39, i64* %14, align 8
  br label %67

40:                                               ; preds = %26
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = call i64 @btm_ble_update_addr_filter(i32 %41, i32 %42, i32* %43)
  store i64 %44, i64* %14, align 8
  br label %67

45:                                               ; preds = %26, %26
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i64 @btm_ble_update_uuid_filter(i32 %46, i32 %47, i32 %48, i32* %49, i32 0, i32 %50)
  store i64 %51, i64* %14, align 8
  br label %67

52:                                               ; preds = %26
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 @btm_ble_update_srvc_data_change(i32 %53, i32 %54, i32* %55)
  store i64 %56, i64* %14, align 8
  br label %67

57:                                               ; preds = %26
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i64 @btm_ble_clear_scan_pf_filter(i32 %58, i32 %59, i32* %60, i32* %61, i32 0, i32 %62)
  store i64 %63, i64* %14, align 8
  br label %67

64:                                               ; preds = %26
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @BTM_TRACE_WARNING(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %57, %52, %45, %40, %35, %28
  %68 = load i64, i64* @BTM_CMD_STARTED, align 8
  %69 = load i64, i64* %14, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 128
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @btm_ble_condtype_to_ocf(i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @BTM_BLE_FILT_CFG, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @btm_ble_advfilt_enq_op_q(i32 %77, i32 %78, i32 %79, i32 %80, i32* %81, i32* null)
  br label %98

83:                                               ; preds = %71, %67
  %84 = load i64, i64* @BTM_CMD_STARTED, align 8
  %85 = load i64, i64* %14, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 128, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @BTM_BLE_META_PF_FEAT_SEL, align 4
  %93 = load i32, i32* @BTM_BLE_FILT_CFG, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @btm_ble_advfilt_enq_op_q(i32 %91, i32 %92, i32 %93, i32 %94, i32* %95, i32* null)
  br label %97

97:                                               ; preds = %90, %87, %83
  br label %98

98:                                               ; preds = %97, %74
  %99 = load i64, i64* %14, align 8
  store i64 %99, i64* %7, align 8
  br label %100

100:                                              ; preds = %98, %24
  %101 = load i64, i64* %7, align 8
  ret i64 %101
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i32, i32, i32) #1

declare dso_local i64 @btm_ble_obtain_vsc_details(...) #1

declare dso_local i64 @btm_ble_update_pf_manu_data(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @btm_ble_update_pf_local_name(i32, i32, i32*) #1

declare dso_local i64 @btm_ble_update_addr_filter(i32, i32, i32*) #1

declare dso_local i64 @btm_ble_update_uuid_filter(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @btm_ble_update_srvc_data_change(i32, i32, i32*) #1

declare dso_local i64 @btm_ble_clear_scan_pf_filter(i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @BTM_TRACE_WARNING(i8*, i32) #1

declare dso_local i32 @btm_ble_condtype_to_ocf(i32) #1

declare dso_local i32 @btm_ble_advfilt_enq_op_q(i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
