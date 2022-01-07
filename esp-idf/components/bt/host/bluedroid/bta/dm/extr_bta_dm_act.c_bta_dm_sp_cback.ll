; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_sp_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_sp_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i8*, i32 (i8*, %struct.TYPE_20__*)*, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_23__, %struct.TYPE_30__, %struct.TYPE_28__ }
%struct.TYPE_23__ = type { i32*, i32, i32 }
%struct.TYPE_30__ = type { i32*, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_25__, i32, %struct.TYPE_24__, %struct.TYPE_22__, %struct.TYPE_18__, %struct.TYPE_29__, %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32*, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32*, i32, i32, i32 }
%struct.TYPE_29__ = type { i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32 }

@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@BTA_DM_SP_KEY_NOTIF_EVT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"bta_dm_sp_cback: %d\00", align 1
@bta_dm_cb = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@BTM_NOT_AUTHORIZED = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"io mitm: %d oob_data:%d\00", align 1
@BTA_DM_SP_CFM_REQ_EVT = common dso_local global i8* null, align 8
@bta_dm_pinname_cback = common dso_local global i32 0, align 4
@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c" bta_dm_sp_cback() -> Failed to start Remote Name Request  \00", align 1
@BD_NAME_LEN = common dso_local global i32 0, align 4
@BTA_DM_SP_KEY_REQ_EVT = common dso_local global i8* null, align 8
@BTA_DM_SP_RMT_OOB_EVT = common dso_local global i8* null, align 8
@BTA_DM_SP_KEYPRESS_EVT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"dm status: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_19__*)* @bta_dm_sp_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bta_dm_sp_cback(i32 %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %9 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i8*, i8** @BTA_DM_SP_KEY_NOTIF_EVT, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i8*, i32, ...) @APPL_TRACE_EVENT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32 (i8*, %struct.TYPE_20__*)*, i32 (i8*, %struct.TYPE_20__*)** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 1), align 8
  %14 = icmp ne i32 (i8*, %struct.TYPE_20__*)* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @BTM_NOT_AUTHORIZED, align 4
  store i32 %16, i32* %3, align 4
  br label %454

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %448 [
    i32 135, label %19
    i32 134, label %48
    i32 137, label %66
    i32 131, label %98
    i32 132, label %98
    i32 130, label %334
    i32 129, label %351
    i32 136, label %430
    i32 133, label %431
    i32 128, label %439
  ]

19:                                               ; preds = %17
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bta_dm_co_io_req(i32 %23, i32* %26, i32* %29, i32* %32, i32 %36)
  %38 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %38, i32* %6, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, i32, ...) @APPL_TRACE_EVENT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %46)
  br label %450

48:                                               ; preds = %17
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @bta_dm_co_io_rsp(i32 %52, i32 %56, i32 %60, i32 %64)
  br label %450

66:                                               ; preds = %17
  %67 = load i8*, i8** @BTA_DM_SP_CFM_REQ_EVT, align 8
  store i8* %67, i8** %8, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 5), align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %17, %17, %66
  %99 = load i32, i32* %4, align 4
  %100 = icmp eq i32 137, %99
  br i1 %100, label %101, label %173

101:                                              ; preds = %98
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %136

109:                                              ; preds = %101
  %110 = load i8*, i8** %8, align 8
  store i8* %110, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 0), align 8
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 3), align 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @bdcpy(i32 %111, i32 %115)
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 2), align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @BTA_COPY_DEVICE_CLASS(i32 %117, i32 %121)
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @bta_dm_pinname_cback, align 4
  %128 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %129 = call i32 @BTM_ReadRemoteDeviceName(i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* @BTM_CMD_STARTED, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %109
  %133 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %133, i32* %3, align 4
  br label %454

134:                                              ; preds = %109
  %135 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %172

136:                                              ; preds = %101
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @bdcpy(i32 %139, i32 %143)
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @BTA_COPY_DEVICE_CLASS(i32 %147, i32 %151)
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = bitcast i32* %155 to i8*
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = bitcast i32* %160 to i8*
  %162 = load i32, i32* @BD_NAME_LEN, align 4
  %163 = sub nsw i32 %162, 1
  %164 = call i32 @BCM_STRNCPY_S(i8* %156, i32 4, i8* %161, i32 %163)
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* @BD_NAME_LEN, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  store i32 0, i32* %171, align 4
  br label %172

172:                                              ; preds = %136, %134
  br label %173

173:                                              ; preds = %172, %98
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 8
  store i32 %177, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 4), align 8
  %180 = load i32, i32* %4, align 4
  %181 = icmp eq i32 132, %180
  br i1 %181, label %182, label %254

182:                                              ; preds = %173
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %217

190:                                              ; preds = %182
  %191 = load i8*, i8** %8, align 8
  store i8* %191, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 0), align 8
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 3), align 4
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @bdcpy(i32 %192, i32 %196)
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 2), align 8
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @BTA_COPY_DEVICE_CLASS(i32 %198, i32 %202)
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @bta_dm_pinname_cback, align 4
  %209 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %210 = call i32 @BTM_ReadRemoteDeviceName(i32 %207, i32 %208, i32 %209)
  %211 = load i32, i32* @BTM_CMD_STARTED, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %190
  %214 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %214, i32* %3, align 4
  br label %454

215:                                              ; preds = %190
  %216 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %253

217:                                              ; preds = %182
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @bdcpy(i32 %220, i32 %224)
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @BTA_COPY_DEVICE_CLASS(i32 %228, i32 %232)
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = bitcast i32* %236 to i8*
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = bitcast i32* %241 to i8*
  %243 = load i32, i32* @BD_NAME_LEN, align 4
  %244 = sub nsw i32 %243, 1
  %245 = call i32 @BCM_STRNCPY_S(i8* %237, i32 4, i8* %242, i32 %244)
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* @BD_NAME_LEN, align 4
  %250 = sub nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %248, i64 %251
  store i32 0, i32* %252, align 4
  br label %253

253:                                              ; preds = %217, %215
  br label %254

254:                                              ; preds = %253, %173
  %255 = load i32, i32* %4, align 4
  %256 = icmp eq i32 131, %255
  br i1 %256, label %257, label %330

257:                                              ; preds = %254
  %258 = load i8*, i8** @BTA_DM_SP_KEY_REQ_EVT, align 8
  store i8* %258, i8** %8, align 8
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %293

266:                                              ; preds = %257
  %267 = load i8*, i8** %8, align 8
  store i8* %267, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 0), align 8
  %268 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 3), align 4
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 4
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @bdcpy(i32 %268, i32 %272)
  %274 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 2), align 8
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @BTA_COPY_DEVICE_CLASS(i32 %274, i32 %278)
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 4
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @bta_dm_pinname_cback, align 4
  %285 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %286 = call i32 @BTM_ReadRemoteDeviceName(i32 %283, i32 %284, i32 %285)
  %287 = load i32, i32* @BTM_CMD_STARTED, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %291

289:                                              ; preds = %266
  %290 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %290, i32* %3, align 4
  br label %454

291:                                              ; preds = %266
  %292 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %329

293:                                              ; preds = %257
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 4
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @bdcpy(i32 %296, i32 %300)
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 4
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @BTA_COPY_DEVICE_CLASS(i32 %304, i32 %308)
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = bitcast i32* %312 to i8*
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %314, i32 0, i32 4
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = bitcast i32* %317 to i8*
  %319 = load i32, i32* @BD_NAME_LEN, align 4
  %320 = sub nsw i32 %319, 1
  %321 = call i32 @BCM_STRNCPY_S(i8* %313, i32 4, i8* %318, i32 %320)
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %322, i32 0, i32 0
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* @BD_NAME_LEN, align 4
  %326 = sub nsw i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %324, i64 %327
  store i32 0, i32* %328, align 4
  br label %329

329:                                              ; preds = %293, %291
  br label %330

330:                                              ; preds = %329, %254
  %331 = load i32 (i8*, %struct.TYPE_20__*)*, i32 (i8*, %struct.TYPE_20__*)** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 1), align 8
  %332 = load i8*, i8** %8, align 8
  %333 = call i32 %331(i8* %332, %struct.TYPE_20__* %7)
  br label %450

334:                                              ; preds = %17
  %335 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* @BTM_SUCCESS, align 4
  %340 = icmp eq i32 %338, %339
  %341 = zext i1 %340 to i32
  %342 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %346, i32 0, i32 3
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @bta_dm_co_loc_oob(i32 %341, i32 %345, i32 %349)
  br label %450

351:                                              ; preds = %17
  %352 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %352, i32 0, i32 2
  %354 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %353, i32 0, i32 1
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 0
  %357 = load i32, i32* %356, align 4
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %386

359:                                              ; preds = %351
  %360 = load i8*, i8** @BTA_DM_SP_RMT_OOB_EVT, align 8
  store i8* %360, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 0), align 8
  %361 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 3), align 4
  %362 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %362, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = call i32 @bdcpy(i32 %361, i32 %365)
  %367 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 2), align 8
  %368 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = call i32 @BTA_COPY_DEVICE_CLASS(i32 %367, i32 %371)
  %373 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* @bta_dm_pinname_cback, align 4
  %378 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %379 = call i32 @BTM_ReadRemoteDeviceName(i32 %376, i32 %377, i32 %378)
  %380 = load i32, i32* @BTM_CMD_STARTED, align 4
  %381 = icmp eq i32 %379, %380
  br i1 %381, label %382, label %384

382:                                              ; preds = %359
  %383 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %383, i32* %3, align 4
  br label %454

384:                                              ; preds = %359
  %385 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %386

386:                                              ; preds = %384, %351
  %387 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = call i32 @bdcpy(i32 %389, i32 %393)
  %395 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @BTA_COPY_DEVICE_CLASS(i32 %397, i32 %401)
  %403 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %403, i32 0, i32 0
  %405 = load i32*, i32** %404, align 8
  %406 = bitcast i32* %405 to i8*
  %407 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %407, i32 0, i32 2
  %409 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %408, i32 0, i32 1
  %410 = load i32*, i32** %409, align 8
  %411 = bitcast i32* %410 to i8*
  %412 = load i32, i32* @BD_NAME_LEN, align 4
  %413 = sub nsw i32 %412, 1
  %414 = call i32 @BCM_STRNCPY_S(i8* %406, i32 4, i8* %411, i32 %413)
  %415 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %415, i32 0, i32 0
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* @BD_NAME_LEN, align 4
  %419 = sub nsw i32 %418, 1
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %417, i64 %420
  store i32 0, i32* %421, align 4
  %422 = load i32 (i8*, %struct.TYPE_20__*)*, i32 (i8*, %struct.TYPE_20__*)** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 1), align 8
  %423 = load i8*, i8** @BTA_DM_SP_RMT_OOB_EVT, align 8
  %424 = call i32 %422(i8* %423, %struct.TYPE_20__* %7)
  %425 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %425, i32 0, i32 2
  %427 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = call i32 @bta_dm_co_rmt_oob(i32 %428)
  br label %450

430:                                              ; preds = %17
  br label %450

431:                                              ; preds = %17
  %432 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %433 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %433, i32 0, i32 1
  %435 = call i32 @memcpy(i32* %432, i32* %434, i32 4)
  %436 = load i32 (i8*, %struct.TYPE_20__*)*, i32 (i8*, %struct.TYPE_20__*)** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bta_dm_cb, i32 0, i32 1), align 8
  %437 = load i8*, i8** @BTA_DM_SP_KEYPRESS_EVT, align 8
  %438 = call i32 %436(i8* %437, %struct.TYPE_20__* %7)
  br label %450

439:                                              ; preds = %17
  %440 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %445 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %445, i32 0, i32 0
  %447 = call i32 @bta_dm_co_lk_upgrade(i32 %443, i32* %446)
  br label %450

448:                                              ; preds = %17
  %449 = load i32, i32* @BTM_NOT_AUTHORIZED, align 4
  store i32 %449, i32* %6, align 4
  br label %450

450:                                              ; preds = %448, %439, %431, %430, %386, %334, %330, %48, %19
  %451 = load i32, i32* %6, align 4
  %452 = call i32 (i8*, i32, ...) @APPL_TRACE_EVENT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %451)
  %453 = load i32, i32* %6, align 4
  store i32 %453, i32* %3, align 4
  br label %454

454:                                              ; preds = %450, %382, %289, %213, %132, %15
  %455 = load i32, i32* %3, align 4
  ret i32 %455
}

declare dso_local i32 @APPL_TRACE_EVENT(i8*, i32, ...) #1

declare dso_local i32 @bta_dm_co_io_req(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @bta_dm_co_io_rsp(i32, i32, i32, i32) #1

declare dso_local i32 @bdcpy(i32, i32) #1

declare dso_local i32 @BTA_COPY_DEVICE_CLASS(i32, i32) #1

declare dso_local i32 @BTM_ReadRemoteDeviceName(i32, i32, i32) #1

declare dso_local i32 @APPL_TRACE_WARNING(i8*) #1

declare dso_local i32 @BCM_STRNCPY_S(i8*, i32, i8*, i32) #1

declare dso_local i32 @bta_dm_co_loc_oob(i32, i32, i32) #1

declare dso_local i32 @bta_dm_co_rmt_oob(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bta_dm_co_lk_upgrade(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
