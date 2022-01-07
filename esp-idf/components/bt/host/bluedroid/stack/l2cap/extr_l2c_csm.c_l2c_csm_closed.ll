; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_closed.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_17__*, %struct.TYPE_16__*, i8*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 (i64, i32)*, i32 (i64, i32)* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i8* }

@.str = private unnamed_addr constant [56 x i8] c"L2CAP - LCID: 0x%04x  st: CLOSED  evt: %s p_rcb == NULL\00", align 1
@L2CAP_CONNECTIONLESS_CID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"L2CAP - LCID: 0x%04x  st: CLOSED  evt: %s\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed\00", align 1
@FALSE = common dso_local global i32 0, align 4
@CST_ORIG_W4_SEC_COMP = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@l2c_link_sec_comp = common dso_local global i32 0, align 4
@HCI_ERR_CONNECTION_EXISTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"L2CAP - Calling ConnectCfm_Cb(), CID: 0x%04x  Status: %d\00", align 1
@BTM_PM_MD_ACTIVE = common dso_local global i8* null, align 8
@BTM_PM_SET_ONLY_ID = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@CST_W4_L2CAP_CONNECT_RSP = common dso_local global i8* null, align 8
@L2CAP_CONN_NO_LINK = common dso_local global i32 0, align 4
@BTU_TTYPE_L2CAP_CHNL = common dso_local global i32 0, align 4
@L2CAP_CHNL_CONNECT_TOUT = common dso_local global i32 0, align 4
@L2CAP_CONN_TIMEOUT = common dso_local global i32 0, align 4
@L2CAP_CONN_SECURITY_BLOCK = common dso_local global i32 0, align 4
@CST_TERM_W4_SEC_COMP = common dso_local global i8* null, align 8
@L2CAP_CONN_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i64, i8*)* @l2c_csm_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2c_csm_closed(%struct.TYPE_19__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32 (i64, i32)**, align 8
  %10 = alloca i32 (i64, i32)**, align 8
  %11 = alloca %struct.TYPE_20__, align 8
  %12 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %7, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %21 = icmp eq %struct.TYPE_16__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @l2c_csm_get_event_name(i64 %26)
  %28 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %27)
  br label %279

29:                                               ; preds = %3
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @L2CAP_CONNECTIONLESS_CID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @l2c_ucd_process_event(%struct.TYPE_19__* %34, i64 %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %279

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %29
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32 (i64, i32)*, i32 (i64, i32)** %46, align 8
  %48 = bitcast i32 (i64, i32)* %47 to i32 (i64, i32)**
  store i32 (i64, i32)** %48, i32 (i64, i32)*** %9, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32 (i64, i32)*, i32 (i64, i32)** %53, align 8
  %55 = bitcast i32 (i64, i32)* %54 to i32 (i64, i32)**
  store i32 (i64, i32)** %55, i32 (i64, i32)*** %10, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i64 @l2c_csm_get_event_name(i64 %59)
  %61 = call i32 (i8*, i64, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %58, i64 %60)
  %62 = load i64, i64* %5, align 8
  switch i64 %62, label %279 [
    i64 131, label %63
    i64 133, label %75
    i64 132, label %97
    i64 136, label %129
    i64 130, label %166
    i64 129, label %202
    i64 138, label %215
    i64 128, label %260
    i64 137, label %273
    i64 135, label %273
    i64 134, label %276
  ]

63:                                               ; preds = %41
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, i64, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = call i32 @l2cu_release_ccb(%struct.TYPE_19__* %68)
  %70 = load i32 (i64, i32)**, i32 (i64, i32)*** %9, align 8
  %71 = load i32 (i64, i32)*, i32 (i64, i32)** %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i32, i32* @FALSE, align 4
  %74 = call i32 %71(i64 %72, i32 %73)
  br label %279

75:                                               ; preds = %41
  %76 = load i8*, i8** @CST_ORIG_W4_SEC_COMP, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @TRUE, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %96 = call i32 @btm_sec_l2cap_access_req(i32 %83, i32 %88, i32 %93, i32 %94, i32* @l2c_link_sec_comp, %struct.TYPE_19__* %95)
  br label %279

97:                                               ; preds = %41
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @HCI_ERR_CONNECTION_EXISTS, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %97
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @btm_acl_notif_conn_collision(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %128, label %111

111:                                              ; preds = %103, %97
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, i64, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %114, i32 %117)
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %120 = call i32 @l2cu_release_ccb(%struct.TYPE_19__* %119)
  %121 = load i32 (i64, i32)**, i32 (i64, i32)*** %10, align 8
  %122 = load i32 (i64, i32)*, i32 (i64, i32)** %121, align 8
  %123 = load i64, i64* %8, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 %122(i64 %123, i32 %126)
  br label %128

128:                                              ; preds = %111, %103
  br label %279

129:                                              ; preds = %41
  %130 = bitcast %struct.TYPE_20__* %11 to i8*
  %131 = call i32 @memset(i8* %130, i32 0, i32 8)
  %132 = load i8*, i8** @BTM_PM_MD_ACTIVE, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i8* %132, i8** %133, align 8
  %134 = load i32, i32* @BTM_PM_SET_ONLY_ID, align 4
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @BTM_SetPowerMode(i32 %134, i32 %139, %struct.TYPE_20__* %11)
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @TRUE, align 4
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %158 = call i32 @btm_sec_l2cap_access_req(i32 %145, i32 %150, i32 %155, i32 %156, i32* @l2c_link_sec_comp, %struct.TYPE_19__* %157)
  %159 = load i32, i32* @BTM_CMD_STARTED, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %129
  %162 = load i8*, i8** @CST_ORIG_W4_SEC_COMP, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 3
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %161, %129
  br label %279

166:                                              ; preds = %41
  %167 = load i8*, i8** @CST_W4_L2CAP_CONNECT_RSP, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 3
  store i8* %167, i8** %169, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %201, label %176

176:                                              ; preds = %166
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %178 = call i32 @l2c_fcr_chk_chan_modes(%struct.TYPE_19__* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %192, label %180

180:                                              ; preds = %176
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %182 = call i32 @l2cu_release_ccb(%struct.TYPE_19__* %181)
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = load i32 (i64, i32)*, i32 (i64, i32)** %187, align 8
  %189 = load i64, i64* %8, align 8
  %190 = load i32, i32* @L2CAP_CONN_NO_LINK, align 4
  %191 = call i32 %188(i64 %189, i32 %190)
  br label %200

192:                                              ; preds = %176
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %194 = call i32 @l2cu_send_peer_connect_req(%struct.TYPE_19__* %193)
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 4
  %197 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %198 = load i32, i32* @L2CAP_CHNL_CONNECT_TOUT, align 4
  %199 = call i32 @btu_start_timer(i32* %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %192, %180
  br label %201

201:                                              ; preds = %200, %166
  br label %279

202:                                              ; preds = %41
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i32, i32* @L2CAP_CONN_TIMEOUT, align 4
  %207 = call i32 (i8*, i64, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %205, i32 %206)
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %209 = call i32 @l2cu_release_ccb(%struct.TYPE_19__* %208)
  %210 = load i32 (i64, i32)**, i32 (i64, i32)*** %10, align 8
  %211 = load i32 (i64, i32)*, i32 (i64, i32)** %210, align 8
  %212 = load i64, i64* %8, align 8
  %213 = load i32, i32* @L2CAP_CONN_SECURITY_BLOCK, align 4
  %214 = call i32 %211(i64 %212, i32 %213)
  br label %279

215:                                              ; preds = %41
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 2
  %220 = call i32 @btu_stop_timer(i32* %219)
  %221 = bitcast %struct.TYPE_20__* %12 to i8*
  %222 = call i32 @memset(i8* %221, i32 0, i32 8)
  %223 = load i8*, i8** @BTM_PM_MD_ACTIVE, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store i8* %223, i8** %224, align 8
  %225 = load i32, i32* @BTM_PM_SET_ONLY_ID, align 4
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @BTM_SetPowerMode(i32 %225, i32 %230, %struct.TYPE_20__* %12)
  %232 = load i8*, i8** @CST_TERM_W4_SEC_COMP, align 8
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 3
  store i8* %232, i8** %234, align 8
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @FALSE, align 4
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %252 = call i32 @btm_sec_l2cap_access_req(i32 %239, i32 %244, i32 %249, i32 %250, i32* @l2c_link_sec_comp, %struct.TYPE_19__* %251)
  %253 = load i32, i32* @BTM_CMD_STARTED, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %215
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %257 = load i32, i32* @L2CAP_CONN_PENDING, align 4
  %258 = call i32 @l2cu_send_peer_connect_rsp(%struct.TYPE_19__* %256, i32 %257, i32 0)
  br label %259

259:                                              ; preds = %255, %215
  br label %279

260:                                              ; preds = %41
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i32, i32* @L2CAP_CONN_TIMEOUT, align 4
  %265 = call i32 (i8*, i64, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %263, i32 %264)
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %267 = call i32 @l2cu_release_ccb(%struct.TYPE_19__* %266)
  %268 = load i32 (i64, i32)**, i32 (i64, i32)*** %10, align 8
  %269 = load i32 (i64, i32)*, i32 (i64, i32)** %268, align 8
  %270 = load i64, i64* %8, align 8
  %271 = load i32, i32* @L2CAP_CONN_TIMEOUT, align 4
  %272 = call i32 %269(i64 %270, i32 %271)
  br label %279

273:                                              ; preds = %41, %41
  %274 = load i8*, i8** %6, align 8
  %275 = call i32 @osi_free(i8* %274)
  br label %279

276:                                              ; preds = %41
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %278 = call i32 @l2cu_release_ccb(%struct.TYPE_19__* %277)
  br label %279

279:                                              ; preds = %22, %39, %41, %276, %273, %260, %259, %202, %201, %165, %128, %75, %63
  ret void
}

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*, i64, i64) #1

declare dso_local i64 @l2c_csm_get_event_name(i64) #1

declare dso_local i64 @l2c_ucd_process_event(%struct.TYPE_19__*, i64, i8*) #1

declare dso_local i32 @L2CAP_TRACE_EVENT(i8*, i64, ...) #1

declare dso_local i32 @L2CAP_TRACE_API(i8*, i64, ...) #1

declare dso_local i32 @l2cu_release_ccb(%struct.TYPE_19__*) #1

declare dso_local i32 @btm_sec_l2cap_access_req(i32, i32, i32, i32, i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @btm_acl_notif_conn_collision(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @BTM_SetPowerMode(i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @l2c_fcr_chk_chan_modes(%struct.TYPE_19__*) #1

declare dso_local i32 @l2cu_send_peer_connect_req(%struct.TYPE_19__*) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i32 @btu_stop_timer(i32*) #1

declare dso_local i32 @l2cu_send_peer_connect_rsp(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @osi_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
