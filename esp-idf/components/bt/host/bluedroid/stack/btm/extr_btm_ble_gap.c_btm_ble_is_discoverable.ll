; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_is_discoverable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_is_discoverable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }

@btm_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@BTM_BLE_OBS_RESULT = common dso_local global i64 0, align 8
@BTM_BLE_DISCO_RESULT = common dso_local global i64 0, align 8
@BTM_BLE_CONNECT_EVT = common dso_local global i64 0, align 8
@BTM_BLE_CONNECT_DIR_EVT = common dso_local global i64 0, align 8
@BTM_BLE_SEL_CONN_RESULT = common dso_local global i64 0, align 8
@BTM_FILTER_COND_BD_ADDR = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"BD ADDR does not meet filter condition\00", align 1
@BTM_BLE_AD_TYPE_FLAG = common dso_local global i32 0, align 4
@BTM_BLE_GENERAL_INQUIRY = common dso_local global i32 0, align 4
@BTM_BLE_LIMIT_DISC_FLAG = common dso_local global i64 0, align 8
@BTM_BLE_GEN_DISC_FLAG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Find Generable Discoverable device\00", align 1
@BTM_BLE_INQ_RESULT = common dso_local global i64 0, align 8
@BTM_BLE_LIMITED_INQUIRY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Find limited discoverable device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btm_ble_is_discoverable(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store %struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 0, i32 1), %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 1, i32 1), %struct.TYPE_11__** %13, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = call i32 @UNUSED(i64* %14)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 1, i32 0), align 8
  %17 = call i64 @BTM_BLE_IS_OBS_ACTIVE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i64, i64* @BTM_BLE_OBS_RESULT, align 8
  %21 = load i64, i64* %10, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %10, align 8
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 1, i32 0), align 8
  %25 = call i64 @BTM_BLE_IS_DISCO_ACTIVE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, i64* @BTM_BLE_DISCO_RESULT, align 8
  %29 = load i64, i64* %10, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 1, i32 0), align 8
  %33 = call i64 @BTM_BLE_IS_SEL_CONN_ACTIVE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @BTM_BLE_CONNECT_EVT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @BTM_BLE_CONNECT_DIR_EVT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39, %35
  %44 = load i64, i64* @BTM_BLE_SEL_CONN_RESULT, align 8
  %45 = load i64, i64* %10, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %43, %39, %31
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BTM_FILTER_COND_BD_ADDR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BD_ADDR_LEN, align 4
  %60 = call i64 @memcmp(i32 %54, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %64 = load i64, i64* %10, align 8
  store i64 %64, i64* %4, align 8
  br label %116

65:                                               ; preds = %53, %47
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %114

70:                                               ; preds = %65
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @BTM_BLE_AD_TYPE_FLAG, align 4
  %75 = call i64* @BTM_CheckAdvData(i32 %73, i32 %74, i64* %11)
  store i64* %75, i64** %8, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %113

77:                                               ; preds = %70
  %78 = load i64*, i64** %8, align 8
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %9, align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %81 = load i32, i32* @BTM_BLE_GENERAL_INQUIRY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %77
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* @BTM_BLE_LIMIT_DISC_FLAG, align 8
  %87 = load i64, i64* @BTM_BLE_GEN_DISC_FLAG, align 8
  %88 = or i64 %86, %87
  %89 = and i64 %85, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i64, i64* @BTM_BLE_INQ_RESULT, align 8
  %94 = load i64, i64* %10, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %10, align 8
  br label %112

96:                                               ; preds = %84, %77
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %98 = load i32, i32* @BTM_BLE_LIMITED_INQUIRY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* @BTM_BLE_LIMIT_DISC_FLAG, align 8
  %104 = and i64 %102, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i64, i64* @BTM_BLE_INQ_RESULT, align 8
  %109 = load i64, i64* %10, align 8
  %110 = or i64 %109, %108
  store i64 %110, i64* %10, align 8
  br label %111

111:                                              ; preds = %106, %101, %96
  br label %112

112:                                              ; preds = %111, %91
  br label %113

113:                                              ; preds = %112, %70
  br label %114

114:                                              ; preds = %113, %65
  %115 = load i64, i64* %10, align 8
  store i64 %115, i64* %4, align 8
  br label %116

116:                                              ; preds = %114, %62
  %117 = load i64, i64* %4, align 8
  ret i64 %117
}

declare dso_local i32 @UNUSED(i64*) #1

declare dso_local i64 @BTM_BLE_IS_OBS_ACTIVE(i32) #1

declare dso_local i64 @BTM_BLE_IS_DISCO_ACTIVE(i32) #1

declare dso_local i64 @BTM_BLE_IS_SEL_CONN_ACTIVE(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*) #1

declare dso_local i64* @BTM_CheckAdvData(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
