; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_BTM_BleSetPrefConnParams.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_BTM_BleSetPrefConnParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [85 x i8] c"BTM_BleSetPrefConnParams min: %u  max: %u  latency: %u                      tout: %u\00", align 1
@BTM_BLE_CONN_INT_MIN = common dso_local global i32 0, align 4
@BTM_BLE_CONN_INT_MAX = common dso_local global i32 0, align 4
@BTM_BLE_CONN_SUP_TOUT_MIN = common dso_local global i32 0, align 4
@BTM_BLE_CONN_SUP_TOUT_MAX = common dso_local global i32 0, align 4
@BTM_BLE_CONN_LATENCY_MAX = common dso_local global i64 0, align 8
@BTM_BLE_CONN_PARAM_UNDEF = common dso_local global i64 0, align 8
@BTM_BLE_CONN_SLAVE_LATENCY_DEF = common dso_local global i64 0, align 8
@BTM_BLE_CONN_TIMEOUT_DEF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Unknown Device, setting rejected\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Illegal Connection Parameters\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTM_BleSetPrefConnParams(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.TYPE_5__* @btm_find_or_alloc_dev(i32 %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %15, i64 %16, i64 %17)
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @BTM_BLE_CONN_INT_MIN, align 4
  %21 = load i32, i32* @BTM_BLE_CONN_INT_MAX, align 4
  %22 = call i64 @BTM_BLE_ISVALID_PARAM(i64 %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %116

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* @BTM_BLE_CONN_INT_MIN, align 4
  %27 = load i32, i32* @BTM_BLE_CONN_INT_MAX, align 4
  %28 = call i64 @BTM_BLE_ISVALID_PARAM(i64 %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %116

30:                                               ; preds = %24
  %31 = load i64, i64* %10, align 8
  %32 = load i32, i32* @BTM_BLE_CONN_SUP_TOUT_MIN, align 4
  %33 = load i32, i32* @BTM_BLE_CONN_SUP_TOUT_MAX, align 4
  %34 = call i64 @BTM_BLE_ISVALID_PARAM(i64 %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %116

36:                                               ; preds = %30
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @BTM_BLE_CONN_LATENCY_MAX, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @BTM_BLE_CONN_PARAM_UNDEF, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %116

44:                                               ; preds = %40, %36
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = icmp ne %struct.TYPE_5__* %45, null
  br i1 %46, label %47, label %113

47:                                               ; preds = %44
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @BTM_BLE_CONN_PARAM_UNDEF, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @BTM_BLE_CONN_PARAM_UNDEF, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %112

55:                                               ; preds = %51, %47
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @BTM_BLE_CONN_PARAM_UNDEF, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  store i64 %60, i64* %63, align 8
  br label %69

64:                                               ; preds = %55
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  store i64 %65, i64* %68, align 8
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @BTM_BLE_CONN_PARAM_UNDEF, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i64 %74, i64* %77, align 8
  br label %83

78:                                               ; preds = %69
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  store i64 %79, i64* %82, align 8
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @BTM_BLE_CONN_PARAM_UNDEF, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i64 %88, i64* %91, align 8
  br label %97

92:                                               ; preds = %83
  %93 = load i64, i64* @BTM_BLE_CONN_SLAVE_LATENCY_DEF, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i64 %93, i64* %96, align 8
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* @BTM_BLE_CONN_PARAM_UNDEF, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i64, i64* %10, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i64 %102, i64* %105, align 8
  br label %111

106:                                              ; preds = %97
  %107 = load i64, i64* @BTM_BLE_CONN_TIMEOUT_DEF, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i64 %107, i64* %110, align 8
  br label %111

111:                                              ; preds = %106, %101
  br label %112

112:                                              ; preds = %111, %51
  br label %115

113:                                              ; preds = %44
  %114 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %112
  br label %118

116:                                              ; preds = %40, %30, %24, %5
  %117 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %115
  ret void
}

declare dso_local %struct.TYPE_5__* @btm_find_or_alloc_dev(i32) #1

declare dso_local i32 @BTM_TRACE_API(i8*, i64, i64, i64, i64) #1

declare dso_local i64 @BTM_BLE_ISVALID_PARAM(i64, i32, i32) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
