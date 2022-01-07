; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_btm_ble_cs_update_pf_counter.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_btm_ble_cs_update_pf_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64* }

@BTM_BLE_PF_TYPE_ALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"unknown PF filter condition type %d\00", align 1
@BTM_BLE_INVALID_COUNTER = common dso_local global i64 0, align 8
@BTM_BLE_PF_ADDR_FILTER = common dso_local global i64 0, align 8
@BTM_BLE_PF_MANU_DATA = common dso_local global i64 0, align 8
@BTM_BLE_PF_LOCAL_NAME = common dso_local global i64 0, align 8
@BTM_BLE_PF_SRVC_DATA_PATTERN = common dso_local global i64 0, align 8
@BTM_BLE_SCAN_COND_ADD = common dso_local global i64 0, align 8
@BTM_BLE_SCAN_COND_CLEAR = common dso_local global i64 0, align 8
@BTM_BLE_SCAN_COND_DELETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"counter = %d, maxfilt = %d, num_avbl=%d\00", align 1
@cmn_ble_adv_vsc_cb = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"no matching filter counter found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btm_ble_cs_update_pf_counter(i64 %0, i64 %1, %struct.TYPE_10__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  store i64* null, i64** %11, align 8
  %12 = call i32 (...) @btm_ble_obtain_vsc_details()
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @BTM_BLE_PF_TYPE_ALL, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* @BTM_BLE_INVALID_COUNTER, align 8
  store i64 %19, i64* %5, align 8
  br label %111

20:                                               ; preds = %4
  %21 = load i64, i64* @BTM_BLE_PF_ADDR_FILTER, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* @BTM_BLE_PF_MANU_DATA, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @BTM_BLE_PF_LOCAL_NAME, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* @BTM_BLE_PF_SRVC_DATA_PATTERN, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %28, %24, %20
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  br label %37

37:                                               ; preds = %36, %32
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = call %struct.TYPE_9__* @btm_ble_find_addr_filter_counter(%struct.TYPE_10__* %38)
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %10, align 8
  %40 = icmp eq %struct.TYPE_9__* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i64, i64* @BTM_BLE_SCAN_COND_ADD, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_9__* @btm_ble_alloc_addr_filter_counter(i32 %48)
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %10, align 8
  br label %50

50:                                               ; preds = %45, %41, %37
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %52 = icmp ne %struct.TYPE_9__* null, %51
  br i1 %52, label %53, label %107

53:                                               ; preds = %50
  %54 = load i64, i64* @BTM_BLE_PF_TYPE_ALL, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i64, i64* @BTM_BLE_SCAN_COND_CLEAR, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %57, %53
  %62 = load i64, i64* @BTM_BLE_PF_ADDR_FILTER, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load i64, i64* @BTM_BLE_SCAN_COND_DELETE, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* @BTM_BLE_SCAN_COND_CLEAR, align 8
  %71 = load i64, i64* %6, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69, %65, %57
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @btm_ble_dealloc_addr_filter_counter(%struct.TYPE_10__* %74, i64 %75)
  br label %106

77:                                               ; preds = %69, %61
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @BTM_BLE_PF_TYPE_ALL, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %77
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  store i64* %84, i64** %11, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load i64*, i64** %11, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  br label %93

93:                                               ; preds = %87, %81
  %94 = load i64*, i64** %11, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cmn_ble_adv_vsc_cb, i32 0, i32 0), align 4
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %97, i32 %98, i64 %99)
  %101 = load i64*, i64** %11, align 8
  %102 = load i64, i64* %7, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %5, align 8
  br label %111

105:                                              ; preds = %77
  br label %106

106:                                              ; preds = %105, %73
  br label %109

107:                                              ; preds = %50
  %108 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %106
  %110 = load i64, i64* @BTM_BLE_INVALID_COUNTER, align 8
  store i64 %110, i64* %5, align 8
  br label %111

111:                                              ; preds = %109, %93, %16
  %112 = load i64, i64* %5, align 8
  ret i64 %112
}

declare dso_local i32 @btm_ble_obtain_vsc_details(...) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*, ...) #1

declare dso_local %struct.TYPE_9__* @btm_ble_find_addr_filter_counter(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @btm_ble_alloc_addr_filter_counter(i32) #1

declare dso_local i32 @btm_ble_dealloc_addr_filter_counter(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
