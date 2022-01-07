; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_btm_ble_update_pf_local_name.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_btm_ble_update_pf_local_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@BTM_BLE_PF_STR_LEN_MAX = common dso_local global i32 0, align 4
@BTM_BLE_ADV_FILT_META_HDR_LENGTH = common dso_local global i32 0, align 4
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@BTM_BLE_META_PF_LOCAL_NAME = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_COND_ADD = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_COND_DELETE = common dso_local global i32 0, align 4
@HCI_BLE_ADV_FILTER_OCF = common dso_local global i32 0, align 4
@btm_ble_scan_pf_cmpl_cback = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@btm_ble_adv_filt_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [35 x i8] c"Local Name PF filter update failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_ble_update_pf_local_name(i32 %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = icmp eq %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %21

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  br label %21

21:                                               ; preds = %18, %17
  %22 = phi %struct.TYPE_5__* [ null, %17 ], [ %20, %18 ]
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %8, align 8
  %23 = load i32, i32* @BTM_BLE_PF_STR_LEN_MAX, align 4
  %24 = load i32, i32* @BTM_BLE_ADV_FILT_META_HDR_LENGTH, align 4
  %25 = add nsw i32 %23, %24
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  store i32* %28, i32** %11, align 8
  %29 = load i32, i32* @BTM_BLE_ADV_FILT_META_HDR_LENGTH, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @BTM_BLE_PF_STR_LEN_MAX, align 4
  %32 = load i32, i32* @BTM_BLE_ADV_FILT_META_HDR_LENGTH, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @memset(i32* %28, i32 0, i32 %33)
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* @BTM_BLE_META_PF_LOCAL_NAME, align 4
  %37 = call i32 @UINT8_TO_STREAM(i32* %35, i32 %36)
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @UINT8_TO_STREAM(i32* %38, i32 %39)
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @UINT8_TO_STREAM(i32* %41, i32 %42)
  %44 = load i32, i32* @BTM_BLE_SCAN_COND_ADD, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %21
  %48 = load i32, i32* @BTM_BLE_SCAN_COND_DELETE, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %47, %21
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = icmp eq %struct.TYPE_5__* null, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %93

56:                                               ; preds = %51
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BTM_BLE_PF_STR_LEN_MAX, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @BTM_BLE_PF_STR_LEN_MAX, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i32*, i32** %11, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ARRAY_TO_STREAM(i32* %67, i32 %70, i32 %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %66, %47
  %81 = load i32, i32* @HCI_BLE_ADV_FILTER_OCF, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @btm_ble_scan_pf_cmpl_cback, align 4
  %84 = call i32 @BTM_VendorSpecificCommand(i32 %81, i32 %82, i32* %28, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* @BTM_NO_RESOURCES, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = call i32 @memset(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_ble_adv_filt_cb, i32 0, i32 0), i32 0, i32 4)
  br label %91

89:                                               ; preds = %80
  %90 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %87
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %93

93:                                               ; preds = %91, %54
  %94 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #2

declare dso_local i32 @ARRAY_TO_STREAM(i32*, i32, i32) #2

declare dso_local i32 @BTM_VendorSpecificCommand(i32, i32, i32*, i32) #2

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
