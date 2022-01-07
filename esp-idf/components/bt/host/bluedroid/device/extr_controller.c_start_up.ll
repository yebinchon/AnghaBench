; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/device/extr_controller.c_start_up.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/device/extr_controller.c_start_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32, i32, i64, i32, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, %struct.TYPE_9__, i32, i32, i32, i32, %struct.TYPE_10__*, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 (i32*)*, i32 (i32*, i32*, i32*)*, i32 (i32*, i32*)*, i32 (i32*, %struct.TYPE_9__*)*, i32 (i32*, i32, i32)*, i32 (i32*, i64*, i32*)*, i32 (i32*, i32*)*, i32 (i32*, i64*, i64*, %struct.TYPE_10__*, i64)*, i32 (i32*, i32, i32)*, i32 (i32*, i32*)*, i32 (i32*, i32*)*, i32 (i32*, i64*, i32*, i32*, i32*)* }
%struct.TYPE_8__ = type { i32 (i32)*, i32 (i32)*, i32 (i32*)*, i32 (i32*)*, i32 (...)*, i32 (i32, i32)*, i32 (...)*, i32 (...)*, i32 (...)*, i32 (...)*, i32 (...)*, i32 (i32)*, i32 (i64)*, i32 (i32, i64)*, i32 (i32)*, i32 (...)*, i32 (...)*, i32 (...)*, i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32)*, i32 (i32)*, i32 (...)*, i32 (...)* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@controller_param = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@HCI_HOST_FLOW_CTRL_ACL_ON = common dso_local global i32 0, align 4
@HCI_HOST_FLOW_CTRL_ADV_REPORT_ON = common dso_local global i32 0, align 4
@BLE_ADV_REPORT_FLOW_CONTROL_NUM = common dso_local global i64 0, align 8
@BLE_ADV_REPORT_DISCARD_THRSHOLD = common dso_local global i64 0, align 8
@L2CAP_MTU_SIZE = common dso_local global i32 0, align 4
@SCO_HOST_BUFFER_SIZE = common dso_local global i32 0, align 4
@L2CAP_HOST_FC_ACL_BUFS = common dso_local global i32 0, align 4
@HCI_SUPPORTED_COMMANDS_ARRAY_SIZE = common dso_local global i32 0, align 4
@MAX_FEATURES_CLASSIC_PAGE_COUNT = common dso_local global i64 0, align 8
@HCI_SP_MODE_ENABLED = common dso_local global i32 0, align 4
@BTM_BLE_SIMULTANEOUS_HOST = common dso_local global i64 0, align 8
@BTM_BLE_HOST_SUPPORT = common dso_local global i32 0, align 4
@HCI_SC_MODE_ENABLED = common dso_local global i32 0, align 4
@BTM_BLE_DATA_SIZE_MAX = common dso_local global i32 0, align 4
@BTM_BLE_DATA_TX_TIME_MAX = common dso_local global i32 0, align 4
@BLE_EVENT_MASK = common dso_local global i32 0, align 4
@CLASSIC_EVENT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_up() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 22
  %6 = load i32 (...)*, i32 (...)** %5, align 8
  %7 = call i32 (...) %6()
  %8 = call i32* @AWAIT_COMMAND(i32 %7)
  store i32* %8, i32** %1, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32 (i32*)*, i32 (i32*)** %10, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 %11(i32* %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 21
  %16 = load i32 (...)*, i32 (...)** %15, align 8
  %17 = call i32 (...) %16()
  %18 = call i32* @AWAIT_COMMAND(i32 %17)
  store i32* %18, i32** %1, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 11
  %21 = load i32 (i32*, i64*, i32*, i32*, i32*)*, i32 (i32*, i64*, i32*, i32*, i32*)** %20, align 8
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 %21(i32* %22, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 0), i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 22), i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 21), i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 20))
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 20
  %26 = load i32 (i32)*, i32 (i32)** %25, align 8
  %27 = load i32, i32* @HCI_HOST_FLOW_CTRL_ACL_ON, align 4
  %28 = call i32 %26(i32 %27)
  %29 = call i32* @AWAIT_COMMAND(i32 %28)
  store i32* %29, i32** %1, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32 (i32*)*, i32 (i32*)** %31, align 8
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 %32(i32* %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 19
  %37 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %36, align 8
  %38 = load i32, i32* @HCI_HOST_FLOW_CTRL_ADV_REPORT_ON, align 4
  %39 = load i64, i64* @BLE_ADV_REPORT_FLOW_CONTROL_NUM, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* @BLE_ADV_REPORT_DISCARD_THRSHOLD, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 %37(i32 %38, i32 %40, i32 %42)
  %44 = call i32* @AWAIT_COMMAND(i32 %43)
  store i32* %44, i32** %1, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32 (i32*)*, i32 (i32*)** %46, align 8
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 %47(i32* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 18
  %52 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %51, align 8
  %53 = load i32, i32* @L2CAP_MTU_SIZE, align 4
  %54 = load i32, i32* @SCO_HOST_BUFFER_SIZE, align 4
  %55 = load i32, i32* @L2CAP_HOST_FC_ACL_BUFS, align 4
  %56 = call i32 %52(i32 %53, i32 %54, i32 %55, i32 10)
  %57 = call i32* @AWAIT_COMMAND(i32 %56)
  store i32* %57, i32** %1, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32 (i32*)*, i32 (i32*)** %59, align 8
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 %60(i32* %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 17
  %65 = load i32 (...)*, i32 (...)** %64, align 8
  %66 = call i32 (...) %65()
  %67 = call i32* @AWAIT_COMMAND(i32 %66)
  store i32* %67, i32** %1, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 10
  %70 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %69, align 8
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 %70(i32* %71, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 19))
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 16
  %75 = load i32 (...)*, i32 (...)** %74, align 8
  %76 = call i32 (...) %75()
  %77 = call i32* @AWAIT_COMMAND(i32 %76)
  store i32* %77, i32** %1, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 9
  %80 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %79, align 8
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 %80(i32* %81, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 18))
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 15
  %85 = load i32 (...)*, i32 (...)** %84, align 8
  %86 = call i32 (...) %85()
  %87 = call i32* @AWAIT_COMMAND(i32 %86)
  store i32* %87, i32** %1, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 8
  %90 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %89, align 8
  %91 = load i32*, i32** %1, align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 17), align 8
  %93 = load i32, i32* @HCI_SUPPORTED_COMMANDS_ARRAY_SIZE, align 4
  %94 = call i32 %90(i32* %91, i32 %92, i32 %93)
  store i64 0, i64* %2, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 12
  %97 = load i32 (i64)*, i32 (i64)** %96, align 8
  %98 = load i64, i64* %2, align 8
  %99 = call i32 %97(i64 %98)
  %100 = call i32* @AWAIT_COMMAND(i32 %99)
  store i32* %100, i32** %1, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 7
  %103 = load i32 (i32*, i64*, i64*, %struct.TYPE_10__*, i64)*, i32 (i32*, i64*, i64*, %struct.TYPE_10__*, i64)** %102, align 8
  %104 = load i32*, i32** %1, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 15), align 8
  %106 = load i64, i64* @MAX_FEATURES_CLASSIC_PAGE_COUNT, align 8
  %107 = call i32 %103(i32* %104, i64* %2, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 1), %struct.TYPE_10__* %105, i64 %106)
  %108 = load i64, i64* %2, align 8
  %109 = icmp eq i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load i64, i64* %2, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %2, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 15), align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @HCI_SIMPLE_PAIRING_SUPPORTED(i32 %117)
  store i32 %118, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 2), align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 2), align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 14
  %124 = load i32 (i32)*, i32 (i32)** %123, align 8
  %125 = load i32, i32* @HCI_SP_MODE_ENABLED, align 4
  %126 = call i32 %124(i32 %125)
  %127 = call i32* @AWAIT_COMMAND(i32 %126)
  store i32* %127, i32** %1, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32 (i32*)*, i32 (i32*)** %129, align 8
  %131 = load i32*, i32** %1, align 8
  %132 = call i32 %130(i32* %131)
  br label %133

133:                                              ; preds = %121, %0
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 15), align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @HCI_LE_SPT_SUPPORTED(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %164

140:                                              ; preds = %133
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 15), align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @HCI_SIMUL_LE_BREDR_SUPPORTED(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = load i64, i64* @BTM_BLE_SIMULTANEOUS_HOST, align 8
  br label %150

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149, %147
  %151 = phi i64 [ %148, %147 ], [ 0, %149 ]
  store i64 %151, i64* %3, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 13
  %154 = load i32 (i32, i64)*, i32 (i32, i64)** %153, align 8
  %155 = load i32, i32* @BTM_BLE_HOST_SUPPORT, align 4
  %156 = load i64, i64* %3, align 8
  %157 = call i32 %154(i32 %155, i64 %156)
  %158 = call i32* @AWAIT_COMMAND(i32 %157)
  store i32* %158, i32** %1, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32 (i32*)*, i32 (i32*)** %160, align 8
  %162 = load i32*, i32** %1, align 8
  %163 = call i32 %161(i32* %162)
  br label %164

164:                                              ; preds = %150, %133
  br label %165

165:                                              ; preds = %175, %164
  %166 = load i64, i64* %2, align 8
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 1), align 8
  %168 = icmp sle i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = load i64, i64* %2, align 8
  %171 = load i64, i64* @MAX_FEATURES_CLASSIC_PAGE_COUNT, align 8
  %172 = icmp slt i64 %170, %171
  br label %173

173:                                              ; preds = %169, %165
  %174 = phi i1 [ false, %165 ], [ %172, %169 ]
  br i1 %174, label %175, label %191

175:                                              ; preds = %173
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 12
  %178 = load i32 (i64)*, i32 (i64)** %177, align 8
  %179 = load i64, i64* %2, align 8
  %180 = call i32 %178(i64 %179)
  %181 = call i32* @AWAIT_COMMAND(i32 %180)
  store i32* %181, i32** %1, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 7
  %184 = load i32 (i32*, i64*, i64*, %struct.TYPE_10__*, i64)*, i32 (i32*, i64*, i64*, %struct.TYPE_10__*, i64)** %183, align 8
  %185 = load i32*, i32** %1, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 15), align 8
  %187 = load i64, i64* @MAX_FEATURES_CLASSIC_PAGE_COUNT, align 8
  %188 = call i32 %184(i32* %185, i64* %2, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 1), %struct.TYPE_10__* %186, i64 %187)
  %189 = load i64, i64* %2, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %2, align 8
  br label %165

191:                                              ; preds = %173
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 15), align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i64 2
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @HCI_SC_CTRLR_SUPPORTED(i32 %195)
  store i64 %196, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 16), align 8
  %197 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 16), align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %211

199:                                              ; preds = %191
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 11
  %202 = load i32 (i32)*, i32 (i32)** %201, align 8
  %203 = load i32, i32* @HCI_SC_MODE_ENABLED, align 4
  %204 = call i32 %202(i32 %203)
  %205 = call i32* @AWAIT_COMMAND(i32 %204)
  store i32* %205, i32** %1, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32 (i32*)*, i32 (i32*)** %207, align 8
  %209 = load i32*, i32** %1, align 8
  %210 = call i32 %208(i32* %209)
  br label %211

211:                                              ; preds = %199, %191
  %212 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 1), align 8
  %213 = icmp sge i64 %212, 1
  br i1 %213, label %214, label %221

214:                                              ; preds = %211
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 15), align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i64 1
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i64 @HCI_LE_HOST_SUPPORTED(i32 %218)
  %220 = icmp ne i64 %219, 0
  br label %221

221:                                              ; preds = %214, %211
  %222 = phi i1 [ false, %211 ], [ %220, %214 ]
  %223 = zext i1 %222 to i32
  store i32 %223, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 3), align 4
  %224 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 3), align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %325

226:                                              ; preds = %221
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 10
  %229 = load i32 (...)*, i32 (...)** %228, align 8
  %230 = call i32 (...) %229()
  %231 = call i32* @AWAIT_COMMAND(i32 %230)
  store i32* %231, i32** %1, align 8
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 6
  %234 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %233, align 8
  %235 = load i32*, i32** %1, align 8
  %236 = call i32 %234(i32* %235, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 14))
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 9
  %239 = load i32 (...)*, i32 (...)** %238, align 8
  %240 = call i32 (...) %239()
  %241 = call i32* @AWAIT_COMMAND(i32 %240)
  store i32* %241, i32** %1, align 8
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 5
  %244 = load i32 (i32*, i64*, i32*)*, i32 (i32*, i64*, i32*)** %243, align 8
  %245 = load i32*, i32** %1, align 8
  %246 = call i32 %244(i32* %245, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 4), i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 13))
  %247 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 4), align 8
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %226
  %250 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 0), align 8
  store i64 %250, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 4), align 8
  br label %251

251:                                              ; preds = %249, %226
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 8
  %254 = load i32 (...)*, i32 (...)** %253, align 8
  %255 = call i32 (...) %254()
  %256 = call i32* @AWAIT_COMMAND(i32 %255)
  store i32* %256, i32** %1, align 8
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 4
  %259 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %258, align 8
  %260 = load i32*, i32** %1, align 8
  %261 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 12), align 8
  %262 = call i32 %259(i32* %260, i32 %261, i32 4)
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 7
  %265 = load i32 (...)*, i32 (...)** %264, align 8
  %266 = call i32 (...) %265()
  %267 = call i32* @AWAIT_COMMAND(i32 %266)
  store i32* %267, i32** %1, align 8
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 3
  %270 = load i32 (i32*, %struct.TYPE_9__*)*, i32 (i32*, %struct.TYPE_9__*)** %269, align 8
  %271 = load i32*, i32** %1, align 8
  %272 = call i32 %270(i32* %271, %struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 10))
  %273 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 10, i32 0), align 8
  %274 = call i64 @HCI_LE_ENHANCED_PRIVACY_SUPPORTED(i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %287

276:                                              ; preds = %251
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 6
  %279 = load i32 (...)*, i32 (...)** %278, align 8
  %280 = call i32 (...) %279()
  %281 = call i32* @AWAIT_COMMAND(i32 %280)
  store i32* %281, i32** %1, align 8
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 2
  %284 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %283, align 8
  %285 = load i32*, i32** %1, align 8
  %286 = call i32 %284(i32* %285, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 11))
  br label %287

287:                                              ; preds = %276, %251
  %288 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 10, i32 0), align 8
  %289 = call i64 @HCI_LE_DATA_LEN_EXT_SUPPORTED(i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %314

291:                                              ; preds = %287
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 5
  %294 = load i32 (i32, i32)*, i32 (i32, i32)** %293, align 8
  %295 = load i32, i32* @BTM_BLE_DATA_SIZE_MAX, align 4
  %296 = load i32, i32* @BTM_BLE_DATA_TX_TIME_MAX, align 4
  %297 = call i32 %294(i32 %295, i32 %296)
  %298 = call i32* @AWAIT_COMMAND(i32 %297)
  store i32* %298, i32** %1, align 8
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 0
  %301 = load i32 (i32*)*, i32 (i32*)** %300, align 8
  %302 = load i32*, i32** %1, align 8
  %303 = call i32 %301(i32* %302)
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 4
  %306 = load i32 (...)*, i32 (...)** %305, align 8
  %307 = call i32 (...) %306()
  %308 = call i32* @AWAIT_COMMAND(i32 %307)
  store i32* %308, i32** %1, align 8
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 1
  %311 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %310, align 8
  %312 = load i32*, i32** %1, align 8
  %313 = call i32 %311(i32* %312, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 9), i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 8))
  br label %314

314:                                              ; preds = %291, %287
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 3
  %317 = load i32 (i32*)*, i32 (i32*)** %316, align 8
  %318 = call i32 %317(i32* @BLE_EVENT_MASK)
  %319 = call i32* @AWAIT_COMMAND(i32 %318)
  store i32* %319, i32** %1, align 8
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 0
  %322 = load i32 (i32*)*, i32 (i32*)** %321, align 8
  %323 = load i32*, i32** %1, align 8
  %324 = call i32 %322(i32* %323)
  br label %325

325:                                              ; preds = %314, %221
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 2
  %328 = load i32 (i32*)*, i32 (i32*)** %327, align 8
  %329 = call i32 %328(i32* @CLASSIC_EVENT_MASK)
  %330 = call i32* @AWAIT_COMMAND(i32 %329)
  store i32* %330, i32** %1, align 8
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 0
  %333 = load i32 (i32*)*, i32 (i32*)** %332, align 8
  %334 = load i32*, i32** %1, align 8
  %335 = call i32 %333(i32* %334)
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 1
  %338 = load i32 (i32)*, i32 (i32)** %337, align 8
  %339 = call i32 %338(i32 1)
  %340 = call i32* @AWAIT_COMMAND(i32 %339)
  store i32* %340, i32** %1, align 8
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 0
  %343 = load i32 (i32*)*, i32 (i32*)** %342, align 8
  %344 = load i32*, i32** %1, align 8
  %345 = call i32 %343(i32* %344)
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 7), align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 0
  %348 = load i32 (i32)*, i32 (i32)** %347, align 8
  %349 = call i32 %348(i32 1)
  %350 = call i32* @AWAIT_COMMAND(i32 %349)
  store i32* %350, i32** %1, align 8
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 6), align 8
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 0
  %353 = load i32 (i32*)*, i32 (i32*)** %352, align 8
  %354 = load i32*, i32** %1, align 8
  %355 = call i32 %353(i32* %354)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @controller_param, i32 0, i32 5), align 8
  ret void
}

declare dso_local i32* @AWAIT_COMMAND(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @HCI_SIMPLE_PAIRING_SUPPORTED(i32) #1

declare dso_local i64 @HCI_LE_SPT_SUPPORTED(i32) #1

declare dso_local i64 @HCI_SIMUL_LE_BREDR_SUPPORTED(i32) #1

declare dso_local i64 @HCI_SC_CTRLR_SUPPORTED(i32) #1

declare dso_local i64 @HCI_LE_HOST_SUPPORTED(i32) #1

declare dso_local i64 @HCI_LE_ENHANCED_PRIVACY_SUPPORTED(i32) #1

declare dso_local i64 @HCI_LE_DATA_LEN_EXT_SUPPORTED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
