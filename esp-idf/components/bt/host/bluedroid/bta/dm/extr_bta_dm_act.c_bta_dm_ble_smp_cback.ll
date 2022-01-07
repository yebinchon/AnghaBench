; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_ble_smp_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_ble_smp_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 (i32, %struct.TYPE_29__*)* }
%struct.TYPE_29__ = type { %struct.TYPE_26__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_26__ = type { i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32*, i32 }
%struct.TYPE_22__ = type { i32*, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_25__, i32, %struct.TYPE_21__ }
%struct.TYPE_27__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32 }

@BTM_SUCCESS = common dso_local global i32 0, align 4
@bta_dm_cb = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@BTM_NOT_AUTHORIZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"io mitm: %d oob_data:%d\0A\00", align 1
@BD_NAME_LEN = common dso_local global i64 0, align 8
@BTA_DM_BLE_SEC_REQ_EVT = common dso_local global i32 0, align 4
@BTA_DM_BLE_PASSKEY_NOTIF_EVT = common dso_local global i32 0, align 4
@BTA_DM_BLE_PASSKEY_REQ_EVT = common dso_local global i32 0, align 4
@BTA_DM_BLE_OOB_REQ_EVT = common dso_local global i32 0, align 4
@BTA_DM_BLE_NC_REQ_EVT = common dso_local global i32 0, align 4
@BTA_DM_BLE_KEY_EVT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BTA_DM_BLE_AUTH_CMPL_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_28__*)* @bta_dm_ble_smp_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bta_dm_ble_smp_cback(i32 %0, i32 %1, %struct.TYPE_28__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_29__, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %7, align 8
  %11 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  store i8* null, i8** %10, align 8
  %12 = load i32 (i32, %struct.TYPE_29__*)*, i32 (i32, %struct.TYPE_29__*)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @bta_dm_cb, i32 0, i32 0), align 8
  %13 = icmp ne i32 (i32, %struct.TYPE_29__*)* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @BTM_NOT_AUTHORIZED, align 4
  store i32 %15, i32* %4, align 4
  br label %258

16:                                               ; preds = %3
  %17 = call i32 @memset(%struct.TYPE_29__* %9, i32 0, i32 96)
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %254 [
    i32 134, label %19
    i32 128, label %50
    i32 132, label %82
    i32 131, label %119
    i32 129, label %128
    i32 130, label %137
    i32 133, label %163
    i32 135, label %184
  ]

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 2
  %39 = call i32 @bta_dm_co_ble_io_req(i32 %20, i32* %23, i32* %26, i32* %29, i32* %32, i32* %35, i32* %38)
  %40 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @APPL_TRACE_EVENT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %48)
  br label %256

50:                                               ; preds = %16
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @bdcpy(i32 %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = call i8* @BTM_SecReadDevName(i32 %56)
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = load i8*, i8** %10, align 8
  %66 = load i64, i64* @BD_NAME_LEN, align 8
  %67 = call i32 @BCM_STRNCPY_S(i8* %64, i32 4, i8* %65, i64 %66)
  br label %73

68:                                               ; preds = %50
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %60
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @BD_NAME_LEN, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 0, i32* %78, align 4
  %79 = load i32 (i32, %struct.TYPE_29__*)*, i32 (i32, %struct.TYPE_29__*)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @bta_dm_cb, i32 0, i32 0), align 8
  %80 = load i32, i32* @BTA_DM_BLE_SEC_REQ_EVT, align 4
  %81 = call i32 %79(i32 %80, %struct.TYPE_29__* %9)
  br label %256

82:                                               ; preds = %16
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @bdcpy(i32 %85, i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = call i8* @BTM_SecReadDevName(i32 %88)
  store i8* %89, i8** %10, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %82
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = bitcast i32* %95 to i8*
  %97 = load i8*, i8** %10, align 8
  %98 = load i64, i64* @BD_NAME_LEN, align 8
  %99 = call i32 @BCM_STRNCPY_S(i8* %96, i32 4, i8* %97, i64 %98)
  br label %105

100:                                              ; preds = %82
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %92
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @BD_NAME_LEN, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32 0, i32* %110, align 4
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32 (i32, %struct.TYPE_29__*)*, i32 (i32, %struct.TYPE_29__*)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @bta_dm_cb, i32 0, i32 0), align 8
  %117 = load i32, i32* @BTA_DM_BLE_PASSKEY_NOTIF_EVT, align 4
  %118 = call i32 %116(i32 %117, %struct.TYPE_29__* %9)
  br label %256

119:                                              ; preds = %16
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @bdcpy(i32 %122, i32 %123)
  %125 = load i32 (i32, %struct.TYPE_29__*)*, i32 (i32, %struct.TYPE_29__*)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @bta_dm_cb, i32 0, i32 0), align 8
  %126 = load i32, i32* @BTA_DM_BLE_PASSKEY_REQ_EVT, align 4
  %127 = call i32 %125(i32 %126, %struct.TYPE_29__* %9)
  br label %256

128:                                              ; preds = %16
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @bdcpy(i32 %131, i32 %132)
  %134 = load i32 (i32, %struct.TYPE_29__*)*, i32 (i32, %struct.TYPE_29__*)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @bta_dm_cb, i32 0, i32 0), align 8
  %135 = load i32, i32* @BTA_DM_BLE_OOB_REQ_EVT, align 4
  %136 = call i32 %134(i32 %135, %struct.TYPE_29__* %9)
  br label %256

137:                                              ; preds = %16
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @bdcpy(i32 %140, i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = bitcast i32* %145 to i8*
  %147 = call i8* (...) @bta_dm_get_remname()
  %148 = load i64, i64* @BD_NAME_LEN, align 8
  %149 = call i32 @BCM_STRNCPY_S(i8* %146, i32 4, i8* %147, i64 %148)
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @BD_NAME_LEN, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32 0, i32* %154, align 4
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load i32 (i32, %struct.TYPE_29__*)*, i32 (i32, %struct.TYPE_29__*)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @bta_dm_cb, i32 0, i32 0), align 8
  %161 = load i32, i32* @BTA_DM_BLE_NC_REQ_EVT, align 4
  %162 = call i32 %160(i32 %161, %struct.TYPE_29__* %9)
  br label %256

163:                                              ; preds = %16
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @bdcpy(i32 %166, i32 %167)
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load i32 (i32, %struct.TYPE_29__*)*, i32 (i32, %struct.TYPE_29__*)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @bta_dm_cb, i32 0, i32 0), align 8
  %182 = load i32, i32* @BTA_DM_BLE_KEY_EVT, align 4
  %183 = call i32 %181(i32 %182, %struct.TYPE_29__* %9)
  br label %256

184:                                              ; preds = %16
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @bdcpy(i32 %187, i32 %188)
  %190 = load i32, i32* %6, align 4
  %191 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 4
  %195 = call i32 @BTM_ReadDevInfo(i32 %190, i32* %192, i32* %194)
  %196 = load i32, i32* %6, align 4
  %197 = call i8* @BTM_SecReadDevName(i32 %196)
  store i8* %197, i8** %10, align 8
  %198 = load i8*, i8** %10, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %208

200:                                              ; preds = %184
  %201 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = bitcast i32* %203 to i8*
  %205 = load i8*, i8** %10, align 8
  %206 = load i64, i64* @BD_NAME_LEN, align 8
  %207 = call i32 @BCM_STRNCPY_S(i8* %204, i32 4, i8* %205, i64 %206)
  br label %213

208:                                              ; preds = %184
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 3
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  store i32 0, i32* %212, align 4
  br label %213

213:                                              ; preds = %208, %200
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %213
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @BTA_DM_AUTH_CONVERT_SMP_CODE(i32 %223)
  %225 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 8
  %227 = load i32, i32* %6, align 4
  %228 = call i32 @bta_dm_remove_sec_dev_entry(i32 %227)
  br label %240

229:                                              ; preds = %213
  %230 = load i32, i32* @TRUE, align 4
  %231 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 4
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %229
  br label %239

239:                                              ; preds = %238, %229
  br label %240

240:                                              ; preds = %239, %219
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load i32 (i32, %struct.TYPE_29__*)*, i32 (i32, %struct.TYPE_29__*)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @bta_dm_cb, i32 0, i32 0), align 8
  %248 = icmp ne i32 (i32, %struct.TYPE_29__*)* %247, null
  br i1 %248, label %249, label %253

249:                                              ; preds = %240
  %250 = load i32 (i32, %struct.TYPE_29__*)*, i32 (i32, %struct.TYPE_29__*)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @bta_dm_cb, i32 0, i32 0), align 8
  %251 = load i32, i32* @BTA_DM_BLE_AUTH_CMPL_EVT, align 4
  %252 = call i32 %250(i32 %251, %struct.TYPE_29__* %9)
  br label %253

253:                                              ; preds = %249, %240
  br label %256

254:                                              ; preds = %16
  %255 = load i32, i32* @BTM_NOT_AUTHORIZED, align 4
  store i32 %255, i32* %8, align 4
  br label %256

256:                                              ; preds = %254, %253, %163, %137, %128, %119, %105, %73, %19
  %257 = load i32, i32* %8, align 4
  store i32 %257, i32* %4, align 4
  br label %258

258:                                              ; preds = %256, %14
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local i32 @memset(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @bta_dm_co_ble_io_req(i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @APPL_TRACE_EVENT(i8*, i32, i32) #1

declare dso_local i32 @bdcpy(i32, i32) #1

declare dso_local i8* @BTM_SecReadDevName(i32) #1

declare dso_local i32 @BCM_STRNCPY_S(i8*, i32, i8*, i64) #1

declare dso_local i8* @bta_dm_get_remname(...) #1

declare dso_local i32 @BTM_ReadDevInfo(i32, i32*, i32*) #1

declare dso_local i32 @BTA_DM_AUTH_CONVERT_SMP_CODE(i32) #1

declare dso_local i32 @bta_dm_remove_sec_dev_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
