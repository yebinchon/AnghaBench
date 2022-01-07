; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatts_process_mtu_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatts_process_mtu_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64, i64, i32 }

@L2CAP_ATT_CID = common dso_local global i64 0, align 8
@GATT_REQ_NOT_SUPPORTED = common dso_local global i32 0, align 4
@GATT_REQ_MTU = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GATT_MTU_REQ_MIN_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"invalid MTU request PDU received.\0A\00", align 1
@GATT_INVALID_PDU = common dso_local global i32 0, align 4
@GATT_DEF_BLE_MTU_SIZE = common dso_local global i64 0, align 8
@gatt_default = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@GATT_RSP_MTU = common dso_local global i32 0, align 4
@GATT_MAX_APPS = common dso_local global i64 0, align 8
@gatt_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GATTS_REQ_TYPE_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64, i64*)* @gatts_process_mtu_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gatts_process_mtu_req(%struct.TYPE_10__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load i64*, i64** %6, align 8
  store i64* %12, i64** %8, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @L2CAP_ATT_CID, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = load i32, i32* @GATT_REQ_NOT_SUPPORTED, align 4
  %21 = load i32, i32* @GATT_REQ_MTU, align 4
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i32 @gatt_send_error_rsp(%struct.TYPE_10__* %19, i32 %20, i32 %21, i32 0, i32 %22)
  br label %105

24:                                               ; preds = %3
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @GATT_MTU_REQ_MIN_LEN, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = load i32, i32* @GATT_INVALID_PDU, align 4
  %32 = load i32, i32* @GATT_REQ_MTU, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i32 @gatt_send_error_rsp(%struct.TYPE_10__* %30, i32 %31, i32 %32, i32 0, i32 %33)
  br label %104

35:                                               ; preds = %24
  %36 = load i64, i64* %7, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = call i32 @STREAM_TO_UINT16(i64 %36, i64* %37)
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @GATT_DEF_BLE_MTU_SIZE, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i64, i64* @GATT_DEF_BLE_MTU_SIZE, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %59

46:                                               ; preds = %35
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gatt_default, i32 0, i32 0), align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gatt_default, i32 0, i32 0), align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %58

54:                                               ; preds = %46
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %42
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = load i32, i32* @GATT_RSP_MTU, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = bitcast i64* %63 to i32*
  %65 = call i32* @attp_build_sr_msg(%struct.TYPE_10__* %60, i32 %61, i32* %64)
  store i32* %65, i32** %10, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %103

67:                                               ; preds = %59
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @attp_send_sr_msg(%struct.TYPE_10__* %68, i32* %69)
  store i64 0, i64* %9, align 8
  br label %71

71:                                               ; preds = %99, %67
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @GATT_MAX_APPS, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %102

75:                                               ; preds = %71
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gatt_cb, i32 0, i32 0), align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %75
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gatt_cb, i32 0, i32 0), align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @GATT_CREATE_CONN_ID(i32 %85, i32 %90)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load i32, i32* @GATTS_REQ_TYPE_MTU, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = bitcast i64* %95 to i32*
  %97 = call i32 @gatt_sr_send_req_callback(i64 %92, i32 0, i32 %93, i32* %96)
  br label %98

98:                                               ; preds = %82, %75
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %9, align 8
  br label %71

102:                                              ; preds = %71
  br label %103

103:                                              ; preds = %102, %59
  br label %104

104:                                              ; preds = %103, %28
  br label %105

105:                                              ; preds = %104, %18
  ret void
}

declare dso_local i32 @gatt_send_error_rsp(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

declare dso_local i32 @STREAM_TO_UINT16(i64, i64*) #1

declare dso_local i32* @attp_build_sr_msg(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @attp_send_sr_msg(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @GATT_CREATE_CONN_ID(i32, i32) #1

declare dso_local i32 @gatt_sr_send_req_callback(i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
