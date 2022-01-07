; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_cache_adv_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_cache_adv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64*, i64* }
%struct.TYPE_7__ = type { i64, i64 }

@btm_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@BTM_BLE_SCAN_RSP_EVT = common dso_local global i64 0, align 8
@BTM_BLE_CACHE_ADV_DATA_MAX = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_cache_adv_data(i64* %0, %struct.TYPE_7__* %1, i64 %2, i64* %3, i64 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 %4, i64* %10, align 8
  store %struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 0, i32 0), %struct.TYPE_8__** %11, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @BTM_BLE_SCAN_RSP_EVT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %5
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @BTM_BLE_CACHE_ADV_DATA_MAX, align 8
  %24 = call i32 @memset(i64* %22, i32 0, i64 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %17, %5
  %30 = load i64*, i64** %6, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @BD_ADDR_LEN, align 8
  %35 = call i64 @memcmp(i64* %30, i64* %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %29
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = load i64*, i64** %6, align 8
  %44 = load i64, i64* @BD_ADDR_LEN, align 8
  %45 = call i32 @memcpy(i64* %42, i64* %43, i64 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @BTM_BLE_CACHE_ADV_DATA_MAX, align 8
  %50 = call i32 @memset(i64* %48, i32 0, i64 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %37, %29
  %56 = load i64, i64* %8, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %107

58:                                               ; preds = %55
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  store i64* %65, i64** %12, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i64*, i64** %9, align 8
  %68 = call i32 @STREAM_TO_UINT8(i64 %66, i64* %67)
  br label %69

69:                                               ; preds = %83, %58
  %70 = load i64, i64* %13, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %13, align 8
  %77 = add i64 %75, %76
  %78 = add i64 %77, 1
  %79 = load i64, i64* @BTM_BLE_CACHE_ADV_DATA_MAX, align 8
  %80 = icmp ule i64 %78, %79
  br label %81

81:                                               ; preds = %72, %69
  %82 = phi i1 [ false, %69 ], [ %80, %72 ]
  br i1 %82, label %83, label %106

83:                                               ; preds = %81
  %84 = load i64*, i64** %12, align 8
  %85 = load i64*, i64** %9, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 -1
  %87 = load i64, i64* %13, align 8
  %88 = add nsw i64 %87, 1
  %89 = call i32 @memcpy(i64* %84, i64* %86, i64 %88)
  %90 = load i64, i64* %13, align 8
  %91 = add nsw i64 %90, 1
  %92 = load i64*, i64** %12, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 %91
  store i64* %93, i64** %12, align 8
  %94 = load i64, i64* %13, align 8
  %95 = add nsw i64 %94, 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, %95
  store i64 %99, i64* %97, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load i64*, i64** %9, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 %100
  store i64* %102, i64** %9, align 8
  %103 = load i64, i64* %13, align 8
  %104 = load i64*, i64** %9, align 8
  %105 = call i32 @STREAM_TO_UINT8(i64 %103, i64* %104)
  br label %69

106:                                              ; preds = %81
  br label %107

107:                                              ; preds = %106, %55
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* @BTM_BLE_SCAN_RSP_EVT, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  br label %127

117:                                              ; preds = %107
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sub i64 %120, %123
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %117, %111
  ret void
}

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i64 @memcmp(i64*, i64*, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
