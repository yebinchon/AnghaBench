; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_batchscan_filter_track_adv_vse_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_batchscan_filter_track_adv_vse_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 (i32)* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_11__*)*, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_9__, i8*, i8*, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [66 x i8] c"btm_ble_batchscan_filter_track_adv_vse_cback called with event:%x\00", align 1
@HCI_VSE_SUBCODE_BLE_THRESHOLD_SUB_EVT = common dso_local global i64 0, align 8
@ble_batchscan_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@HCI_VSE_SUBCODE_BLE_TRACKING_SUB_EVT = common dso_local global i64 0, align 8
@ble_advtrack_cb = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@BTM_VSC_CHIP_CAPABILITY_L_VERSION = common dso_local global i64 0, align 8
@ADV_INFO_PRESENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"track_adv_vse_cback called: %d, %d, %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_batchscan_filter_track_adv_vse_cback(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = call i32 @STREAM_TO_UINT8(i64 %8, i64* %9)
  %11 = load i64, i64* %6, align 8
  %12 = call i32 (i8*, i64, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i64, i64* @HCI_VSE_SUBCODE_BLE_THRESHOLD_SUB_EVT, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ble_batchscan_cb, i32 0, i32 1), align 8
  %18 = icmp ne i32 (i32)* null, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ble_batchscan_cb, i32 0, i32 1), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ble_batchscan_cb, i32 0, i32 0), align 8
  %22 = call i32 %20(i32 %21)
  br label %149

23:                                               ; preds = %16, %2
  %24 = load i64, i64* @HCI_VSE_SUBCODE_BLE_TRACKING_SUB_EVT, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %149

27:                                               ; preds = %23
  %28 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ble_advtrack_cb, i32 0, i32 0), align 8
  %29 = icmp ne i32 (%struct.TYPE_11__*)* null, %28
  br i1 %29, label %30, label %149

30:                                               ; preds = %27
  %31 = load i64, i64* %3, align 8
  %32 = icmp slt i64 %31, 10
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %149

34:                                               ; preds = %30
  %35 = call i32 @memset(%struct.TYPE_11__* %5, i32 0, i32 104)
  %36 = call i32 @BTM_BleGetVendorCapabilities(%struct.TYPE_10__* %7)
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ble_advtrack_cb, i32 0, i32 1), align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 12
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BTM_VSC_CHIP_CAPABILITY_L_VERSION, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %121

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %4, align 8
  %47 = call i32 @STREAM_TO_UINT8(i64 %45, i64* %46)
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %4, align 8
  %51 = call i32 @STREAM_TO_UINT8(i64 %49, i64* %50)
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %4, align 8
  %55 = call i32 @STREAM_TO_UINT8(i64 %53, i64* %54)
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i64*, i64** %4, align 8
  %60 = call i32 @STREAM_TO_BDADDR(i32 %58, i64* %59)
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %4, align 8
  %64 = call i32 @STREAM_TO_UINT8(i64 %62, i64* %63)
  %65 = load i64, i64* @ADV_INFO_PRESENT, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %65, %67
  br i1 %68, label %69, label %120

69:                                               ; preds = %43
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %4, align 8
  %73 = call i32 @STREAM_TO_UINT8(i64 %71, i64* %72)
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %4, align 8
  %77 = call i32 @STREAM_TO_UINT8(i64 %75, i64* %76)
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 11
  %79 = load i32, i32* %78, align 8
  %80 = load i64*, i64** %4, align 8
  %81 = call i32 @STREAM_TO_UINT16(i32 %79, i64* %80)
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = call i32 @STREAM_TO_UINT8(i64 %83, i64* %84)
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %69
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = call i8* @osi_malloc(i64 %91)
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 10
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 10
  %95 = load i8*, i8** %94, align 8
  %96 = load i64*, i64** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @memcpy(i8* %95, i64* %96, i64 %98)
  br label %100

100:                                              ; preds = %89, %69
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %4, align 8
  %104 = call i32 @STREAM_TO_UINT8(i64 %102, i64* %103)
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = call i8* @osi_malloc(i64 %110)
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 9
  store i8* %111, i8** %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 9
  %114 = load i8*, i8** %113, align 8
  %115 = load i64*, i64** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @memcpy(i8* %114, i64* %115, i64 %117)
  br label %119

119:                                              ; preds = %108, %100
  br label %120

120:                                              ; preds = %119, %43
  br label %139

121:                                              ; preds = %34
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %4, align 8
  %125 = call i32 @STREAM_TO_UINT8(i64 %123, i64* %124)
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %4, align 8
  %129 = call i32 @STREAM_TO_UINT8(i64 %127, i64* %128)
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i64*, i64** %4, align 8
  %134 = call i32 @STREAM_TO_BDADDR(i32 %132, i64* %133)
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** %4, align 8
  %138 = call i32 @STREAM_TO_UINT8(i64 %136, i64* %137)
  br label %139

139:                                              ; preds = %121, %120
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 (i8*, i64, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %141, i64 %143, i64 %145)
  %147 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ble_advtrack_cb, i32 0, i32 0), align 8
  %148 = call i32 %147(%struct.TYPE_11__* %5)
  br label %149

149:                                              ; preds = %19, %33, %139, %27, %23
  ret void
}

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #1

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i64, ...) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @BTM_BleGetVendorCapabilities(%struct.TYPE_10__*) #1

declare dso_local i32 @STREAM_TO_BDADDR(i32, i64*) #1

declare dso_local i32 @STREAM_TO_UINT16(i32, i64*) #1

declare dso_local i8* @osi_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
