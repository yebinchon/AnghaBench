; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_CancelInquiry.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_CancelInquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32, i64, i32*, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@BTM_SUCCESS = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"BTM_CancelInquiry called\0A\00", align 1
@BTM_WRONG_MODE = common dso_local global i32 0, align 4
@BTM_INQUIRY_ACTIVE_MASK = common dso_local global i32 0, align 4
@BTM_PERIODIC_INQUIRY_ACTIVE = common dso_local global i32 0, align 4
@BTM_INQUIRY_INACTIVE = common dso_local global i32 0, align 4
@BTM_INQ_INACTIVE_STATE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@BTM_BR_INQUIRY_MASK = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTM_BLE_INQUIRY_MASK = common dso_local global i32 0, align 4
@BTM_BLE_INQ_ACTIVE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_CancelInquiry() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %4, i32* %2, align 4
  store %struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0), %struct.TYPE_5__** %3, align 8
  %5 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (...) @BTM_IsDeviceUp()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @BTM_WRONG_MODE, align 4
  store i32 %9, i32* %1, align 4
  br label %80

10:                                               ; preds = %0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @BTM_INQUIRY_ACTIVE_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %78

17:                                               ; preds = %10
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BTM_PERIODIC_INQUIRY_ACTIVE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %78, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @BTM_INQUIRY_INACTIVE, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @BTM_INQ_INACTIVE_STATE, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %24
  %40 = load i64, i64* @FALSE, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %72

47:                                               ; preds = %24
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @BTM_BR_INQUIRY_MASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = call i32 (...) @btsnd_hcic_inq_cancel()
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %55
  br label %61

61:                                               ; preds = %60, %47
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @BTM_BLE_INQUIRY_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = call i32 (...) @btm_ble_stop_inquiry()
  br label %71

71:                                               ; preds = %69, %61
  br label %72

72:                                               ; preds = %71, %39
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = call i32 (...) @btm_clr_inq_result_flt()
  br label %78

78:                                               ; preds = %72, %17, %10
  %79 = load i32, i32* %2, align 4
  store i32 %79, i32* %1, align 4
  br label %80

80:                                               ; preds = %78, %8
  %81 = load i32, i32* %1, align 4
  ret i32 %81
}

declare dso_local i32 @BTM_TRACE_API(i8*) #1

declare dso_local i32 @BTM_IsDeviceUp(...) #1

declare dso_local i32 @btsnd_hcic_inq_cancel(...) #1

declare dso_local i32 @btm_ble_stop_inquiry(...) #1

declare dso_local i32 @btm_clr_inq_result_flt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
