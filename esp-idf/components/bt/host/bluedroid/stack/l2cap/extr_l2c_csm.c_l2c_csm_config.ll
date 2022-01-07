; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_config.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32 (i64, i32, i32*)* }
%struct.TYPE_48__ = type { i32, i32, i8*, %struct.TYPE_46__*, %struct.TYPE_41__*, i32, i32, %struct.TYPE_44__, %struct.TYPE_47__, %struct.TYPE_43__ }
%struct.TYPE_46__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i32 (i64, i32*)*, i32 (i32, i8*)*, i32 (i32, %struct.TYPE_37__*)*, i32 (i32, %struct.TYPE_37__*)* }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_44__ = type { i8*, i32 }
%struct.TYPE_47__ = type { %struct.TYPE_40__, i8*, i8*, i8* }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"L2CAP - LCID: 0x%04x  st: CONFIG  evt: %s\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed\00", align 1
@FALSE = common dso_local global i8* null, align 8
@L2CAP_PEER_CFG_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"L2CAP - Calling Config_Req_Cb(), CID: 0x%04x, C-bit %d\00", align 1
@L2CAP_CFG_FLAGS_MASK_CONT = common dso_local global i32 0, align 4
@L2CAP_PEER_CFG_DISCONNECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"L2CAP - incompatible configurations disconnect\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"L2CAP - incompatible configurations trying reconfig\00", align 1
@L2CAP_CFG_PENDING = common dso_local global i32 0, align 4
@OB_CFG_DONE = common dso_local global i32 0, align 4
@IB_CFG_DONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [81 x i8] c"L2CAP - Calling Disconnect_Ind_Cb(Incompatible CFG), CID: 0x%04x  No Conf Needed\00", align 1
@RECONFIG_FLAG = common dso_local global i32 0, align 4
@CST_OPEN = common dso_local global i8* null, align 8
@L2CAP_FCR_ERTM_MODE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"L2CAP - Calling Config_Rsp_Cb(), CID: 0x%04x\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"L2CAP - Calling Config_Rsp_Cb(), CID: 0x%04x, Failure: %d\00", align 1
@BTU_TTYPE_L2CAP_CHNL = common dso_local global i32 0, align 4
@L2CAP_CHNL_DISCONNECT_TOUT = common dso_local global i32 0, align 4
@CST_W4_L2CA_DISCONNECT_RSP = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [62 x i8] c"L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  Conf Needed\00", align 1
@TRUE = common dso_local global i8* null, align 8
@L2CAP_CHNL_CFG_TIMEOUT = common dso_local global i32 0, align 4
@CST_W4_L2CAP_DISCONNECT_RSP = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [42 x i8] c"L2CAP - Calling DataInd_Cb(), CID: 0x%04x\00", align 1
@L2CAP_BASE_APPL_CID = common dso_local global i64 0, align 8
@L2CAP_FIRST_FIXED_CHNL = common dso_local global i64 0, align 8
@L2CAP_LAST_FIXED_CHNL = common dso_local global i64 0, align 8
@l2cb = common dso_local global %struct.TYPE_39__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_48__*, i32, i8*)* @l2c_csm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2c_csm_config(%struct.TYPE_48__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_48__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_37__*, align 8
  %8 = alloca i32 (i32, i8*)**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_48__* %0, %struct.TYPE_48__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_37__*
  store %struct.TYPE_37__* %12, %struct.TYPE_37__** %7, align 8
  %13 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %16, i32 0, i32 1
  %18 = load i32 (i32, i8*)*, i32 (i32, i8*)** %17, align 8
  %19 = bitcast i32 (i32, i8*)* %18 to i32 (i32, i8*)**
  store i32 (i32, i8*)** %19, i32 (i32, i8*)*** %8, align 8
  %20 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @l2c_csm_get_event_name(i32 %26)
  %28 = call i32 (i8*, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %460 [
    i32 129, label %30
    i32 139, label %42
    i32 138, label %84
    i32 137, label %210
    i32 135, label %239
    i32 134, label %263
    i32 133, label %275
    i32 132, label %392
    i32 130, label %401
    i32 136, label %412
    i32 131, label %430
    i32 128, label %446
  ]

30:                                               ; preds = %3
  %31 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, i32, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %36 = call i32 @l2cu_release_ccb(%struct.TYPE_48__* %35)
  %37 = load i32 (i32, i8*)**, i32 (i32, i8*)*** %8, align 8
  %38 = load i32 (i32, i8*)*, i32 (i32, i8*)** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i8*, i8** @FALSE, align 8
  %41 = call i32 %38(i32 %39, i8* %40)
  br label %460

42:                                               ; preds = %3
  %43 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %44 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %45 = call i32 @l2cu_process_peer_cfg_req(%struct.TYPE_48__* %43, %struct.TYPE_37__* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @L2CAP_PEER_CFG_OK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @L2CAP_CFG_FLAGS_MASK_CONT, align 4
  %56 = and i32 %54, %55
  %57 = call i32 (i8*, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %56)
  %58 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_46__*, %struct.TYPE_46__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %61, i32 0, i32 3
  %63 = load i32 (i32, %struct.TYPE_37__*)*, i32 (i32, %struct.TYPE_37__*)** %62, align 8
  %64 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %68 = call i32 %63(i32 %66, %struct.TYPE_37__* %67)
  br label %83

69:                                               ; preds = %42
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @L2CAP_PEER_CFG_DISCONNECT, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = call i32 (i8*, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %76 = call i32 @l2cu_disconnect_chnl(%struct.TYPE_48__* %75)
  br label %82

77:                                               ; preds = %69
  %78 = call i32 (i8*, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %79 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %80 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %81 = call i32 @l2cu_send_peer_config_rsp(%struct.TYPE_48__* %79, %struct.TYPE_37__* %80)
  br label %82

82:                                               ; preds = %77, %73
  br label %83

83:                                               ; preds = %82, %48
  br label %460

84:                                               ; preds = %3
  %85 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %86 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %87 = call i32 @l2cu_process_peer_cfg_rsp(%struct.TYPE_48__* %85, %struct.TYPE_37__* %86)
  %88 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @L2CAP_CFG_PENDING, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %194

93:                                               ; preds = %84
  %94 = load i32, i32* @OB_CFG_DONE, align 4
  %95 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IB_CFG_DONE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %193

105:                                              ; preds = %93
  %106 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %106, i32 0, i32 9
  %108 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %111, i32 0, i32 8
  %113 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %110, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %105
  %118 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %119 = call i32 @l2cu_send_peer_disc_req(%struct.TYPE_48__* %118)
  %120 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  %124 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %125 = call i32 @l2cu_release_ccb(%struct.TYPE_48__* %124)
  %126 = load i32 (i32, i8*)**, i32 (i32, i8*)*** %8, align 8
  %127 = load i32 (i32, i8*)*, i32 (i32, i8*)** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load i8*, i8** @FALSE, align 8
  %130 = call i32 %127(i32 %128, i8* %129)
  br label %460

131:                                              ; preds = %105
  %132 = load i32, i32* @RECONFIG_FLAG, align 4
  %133 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load i8*, i8** @CST_OPEN, align 8
  %138 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %138, i32 0, i32 2
  store i8* %137, i8** %139, align 8
  %140 = call i32 (...) @l2c_link_adjust_chnl_allocation()
  %141 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %141, i32 0, i32 5
  %143 = call i32 @btu_stop_timer(i32* %142)
  %144 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %144, i32 0, i32 7
  %146 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %131
  %150 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %151 = call i32 @l2c_fcr_start_timer(%struct.TYPE_48__* %150)
  br label %152

152:                                              ; preds = %149, %131
  %153 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %153, i32 0, i32 9
  %155 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @L2CAP_FCR_ERTM_MODE, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %177

160:                                              ; preds = %152
  %161 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %161, i32 0, i32 9
  %163 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %160
  %168 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %168, i32 0, i32 9
  %170 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %167, %160
  %175 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %176 = call i32 @l2c_fcr_adj_monitor_retran_timeout(%struct.TYPE_48__* %175)
  br label %177

177:                                              ; preds = %174, %167, %152
  %178 = call i8* (...) @osi_time_get_os_boottime_ms()
  %179 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %179, i32 0, i32 7
  %181 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %180, i32 0, i32 0
  store i8* %178, i8** %181, align 8
  %182 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @fixed_queue_is_empty(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %177
  %188 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %188, i32 0, i32 4
  %190 = load %struct.TYPE_41__*, %struct.TYPE_41__** %189, align 8
  %191 = call i32 @l2c_link_check_send_pkts(%struct.TYPE_41__* %190, i32* null, i32* null)
  br label %192

192:                                              ; preds = %187, %177
  br label %193

193:                                              ; preds = %192, %93
  br label %194

194:                                              ; preds = %193, %84
  %195 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i8*, i32, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %197)
  %199 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %199, i32 0, i32 3
  %201 = load %struct.TYPE_46__*, %struct.TYPE_46__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %202, i32 0, i32 2
  %204 = load i32 (i32, %struct.TYPE_37__*)*, i32 (i32, %struct.TYPE_37__*)** %203, align 8
  %205 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %209 = call i32 %204(i32 %207, %struct.TYPE_37__* %208)
  br label %460

210:                                              ; preds = %3
  %211 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %211, i32 0, i32 5
  %213 = call i32 @btu_stop_timer(i32* %212)
  %214 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %215 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %216 = call i8* @l2c_fcr_renegotiate_chan(%struct.TYPE_48__* %214, %struct.TYPE_37__* %215)
  %217 = load i8*, i8** @FALSE, align 8
  %218 = icmp eq i8* %216, %217
  br i1 %218, label %219, label %238

219:                                              ; preds = %210
  %220 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 (i8*, i32, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i32 %222, i32 %225)
  %227 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %227, i32 0, i32 3
  %229 = load %struct.TYPE_46__*, %struct.TYPE_46__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %230, i32 0, i32 2
  %232 = load i32 (i32, %struct.TYPE_37__*)*, i32 (i32, %struct.TYPE_37__*)** %231, align 8
  %233 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %237 = call i32 %232(i32 %235, %struct.TYPE_37__* %236)
  br label %238

238:                                              ; preds = %219, %210
  br label %460

239:                                              ; preds = %3
  %240 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %240, i32 0, i32 5
  %242 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %243 = load i32, i32* @L2CAP_CHNL_DISCONNECT_TOUT, align 4
  %244 = call i32 @btu_start_timer(i32* %241, i32 %242, i32 %243)
  %245 = load i8*, i8** @CST_W4_L2CA_DISCONNECT_RSP, align 8
  %246 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %246, i32 0, i32 2
  store i8* %245, i8** %247, align 8
  %248 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (i8*, i32, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 %250)
  %252 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %252, i32 0, i32 3
  %254 = load %struct.TYPE_46__*, %struct.TYPE_46__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %255, i32 0, i32 1
  %257 = load i32 (i32, i8*)*, i32 (i32, i8*)** %256, align 8
  %258 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i8*, i8** @TRUE, align 8
  %262 = call i32 %257(i32 %260, i8* %261)
  br label %460

263:                                              ; preds = %3
  %264 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %265 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %266 = call i32 @l2cu_process_our_cfg_req(%struct.TYPE_48__* %264, %struct.TYPE_37__* %265)
  %267 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %268 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %269 = call i32 @l2cu_send_peer_config_req(%struct.TYPE_48__* %267, %struct.TYPE_37__* %268)
  %270 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %270, i32 0, i32 5
  %272 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %273 = load i32, i32* @L2CAP_CHNL_CFG_TIMEOUT, align 4
  %274 = call i32 @btu_start_timer(i32* %271, i32 %272, i32 %273)
  br label %460

275:                                              ; preds = %3
  %276 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %277 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %278 = call i32 @l2cu_process_our_cfg_rsp(%struct.TYPE_48__* %276, %struct.TYPE_37__* %277)
  %279 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @L2CAP_CFG_FLAGS_MASK_CONT, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %291, label %285

285:                                              ; preds = %275
  %286 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @L2CAP_CFG_PENDING, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %295

291:                                              ; preds = %285, %275
  %292 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %293 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %294 = call i32 @l2cu_send_peer_config_rsp(%struct.TYPE_48__* %292, %struct.TYPE_37__* %293)
  br label %460

295:                                              ; preds = %285
  %296 = load i8*, i8** @FALSE, align 8
  %297 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %297, i32 0, i32 8
  %299 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %298, i32 0, i32 3
  store i8* %296, i8** %299, align 8
  %300 = load i8*, i8** @FALSE, align 8
  %301 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %301, i32 0, i32 8
  %303 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %302, i32 0, i32 2
  store i8* %300, i8** %303, align 8
  %304 = load i8*, i8** @FALSE, align 8
  %305 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %305, i32 0, i32 8
  %307 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %306, i32 0, i32 1
  store i8* %304, i8** %307, align 8
  %308 = load i32, i32* @IB_CFG_DONE, align 4
  %309 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = or i32 %311, %308
  store i32 %312, i32* %310, align 4
  %313 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @OB_CFG_DONE, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %358

319:                                              ; preds = %295
  %320 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %320, i32 0, i32 9
  %322 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %325, i32 0, i32 8
  %327 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = icmp ne i32 %324, %329
  br i1 %330, label %331, label %345

331:                                              ; preds = %319
  %332 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %333 = call i32 @l2cu_send_peer_disc_req(%struct.TYPE_48__* %332)
  %334 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0), i32 %336)
  %338 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %339 = call i32 @l2cu_release_ccb(%struct.TYPE_48__* %338)
  %340 = load i32 (i32, i8*)**, i32 (i32, i8*)*** %8, align 8
  %341 = load i32 (i32, i8*)*, i32 (i32, i8*)** %340, align 8
  %342 = load i32, i32* %9, align 4
  %343 = load i8*, i8** @FALSE, align 8
  %344 = call i32 %341(i32 %342, i8* %343)
  br label %460

345:                                              ; preds = %319
  %346 = load i32, i32* @RECONFIG_FLAG, align 4
  %347 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = or i32 %349, %346
  store i32 %350, i32* %348, align 4
  %351 = load i8*, i8** @CST_OPEN, align 8
  %352 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %352, i32 0, i32 2
  store i8* %351, i8** %353, align 8
  %354 = call i32 (...) @l2c_link_adjust_chnl_allocation()
  %355 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %355, i32 0, i32 5
  %357 = call i32 @btu_stop_timer(i32* %356)
  br label %358

358:                                              ; preds = %345, %295
  %359 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %360 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %361 = call i32 @l2cu_send_peer_config_rsp(%struct.TYPE_48__* %359, %struct.TYPE_37__* %360)
  %362 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %362, i32 0, i32 7
  %364 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %358
  %368 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %369 = call i32 @l2c_fcr_start_timer(%struct.TYPE_48__* %368)
  br label %370

370:                                              ; preds = %367, %358
  %371 = call i8* (...) @osi_time_get_os_boottime_ms()
  %372 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %372, i32 0, i32 7
  %374 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %373, i32 0, i32 0
  store i8* %371, i8** %374, align 8
  %375 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %375, i32 0, i32 2
  %377 = load i8*, i8** %376, align 8
  %378 = load i8*, i8** @CST_OPEN, align 8
  %379 = icmp eq i8* %377, %378
  br i1 %379, label %380, label %391

380:                                              ; preds = %370
  %381 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %381, i32 0, i32 6
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @fixed_queue_is_empty(i32 %383)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %391, label %386

386:                                              ; preds = %380
  %387 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %387, i32 0, i32 4
  %389 = load %struct.TYPE_41__*, %struct.TYPE_41__** %388, align 8
  %390 = call i32 @l2c_link_check_send_pkts(%struct.TYPE_41__* %389, i32* null, i32* null)
  br label %391

391:                                              ; preds = %386, %380, %370
  br label %460

392:                                              ; preds = %3
  %393 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %394 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %395 = call i32 @l2cu_send_peer_config_rsp(%struct.TYPE_48__* %393, %struct.TYPE_37__* %394)
  %396 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %396, i32 0, i32 5
  %398 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %399 = load i32, i32* @L2CAP_CHNL_CFG_TIMEOUT, align 4
  %400 = call i32 @btu_start_timer(i32* %397, i32 %398, i32 %399)
  br label %460

401:                                              ; preds = %3
  %402 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %403 = call i32 @l2cu_send_peer_disc_req(%struct.TYPE_48__* %402)
  %404 = load i8*, i8** @CST_W4_L2CAP_DISCONNECT_RSP, align 8
  %405 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %406 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %405, i32 0, i32 2
  store i8* %404, i8** %406, align 8
  %407 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %407, i32 0, i32 5
  %409 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %410 = load i32, i32* @L2CAP_CHNL_DISCONNECT_TOUT, align 4
  %411 = call i32 @btu_start_timer(i32* %408, i32 %409, i32 %410)
  br label %460

412:                                              ; preds = %3
  %413 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = call i32 (i8*, i32, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %415)
  %417 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %418 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %417, i32 0, i32 3
  %419 = load %struct.TYPE_46__*, %struct.TYPE_46__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %420, i32 0, i32 0
  %422 = load i32 (i64, i32*)*, i32 (i64, i32*)** %421, align 8
  %423 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = sext i32 %425 to i64
  %427 = load i8*, i8** %6, align 8
  %428 = bitcast i8* %427 to i32*
  %429 = call i32 %422(i64 %426, i32* %428)
  br label %460

430:                                              ; preds = %3
  %431 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* @OB_CFG_DONE, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %442

437:                                              ; preds = %430
  %438 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %439 = load i8*, i8** %6, align 8
  %440 = bitcast i8* %439 to i32*
  %441 = call i32 @l2c_enqueue_peer_data(%struct.TYPE_48__* %438, i32* %440)
  br label %445

442:                                              ; preds = %430
  %443 = load i8*, i8** %6, align 8
  %444 = call i32 @osi_free(i8* %443)
  br label %445

445:                                              ; preds = %442, %437
  br label %460

446:                                              ; preds = %3
  %447 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %448 = call i32 @l2cu_send_peer_disc_req(%struct.TYPE_48__* %447)
  %449 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = call i32 (i8*, i32, ...) @L2CAP_TRACE_API(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %451)
  %453 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %454 = call i32 @l2cu_release_ccb(%struct.TYPE_48__* %453)
  %455 = load i32 (i32, i8*)**, i32 (i32, i8*)*** %8, align 8
  %456 = load i32 (i32, i8*)*, i32 (i32, i8*)** %455, align 8
  %457 = load i32, i32* %9, align 4
  %458 = load i8*, i8** @FALSE, align 8
  %459 = call i32 %456(i32 %457, i8* %458)
  br label %460

460:                                              ; preds = %3, %446, %445, %412, %401, %392, %391, %331, %291, %263, %239, %238, %194, %117, %83, %30
  ret void
}

declare dso_local i32 @L2CAP_TRACE_EVENT(i8*, ...) #1

declare dso_local i32 @l2c_csm_get_event_name(i32) #1

declare dso_local i32 @L2CAP_TRACE_API(i8*, i32, ...) #1

declare dso_local i32 @l2cu_release_ccb(%struct.TYPE_48__*) #1

declare dso_local i32 @l2cu_process_peer_cfg_req(%struct.TYPE_48__*, %struct.TYPE_37__*) #1

declare dso_local i32 @l2cu_disconnect_chnl(%struct.TYPE_48__*) #1

declare dso_local i32 @l2cu_send_peer_config_rsp(%struct.TYPE_48__*, %struct.TYPE_37__*) #1

declare dso_local i32 @l2cu_process_peer_cfg_rsp(%struct.TYPE_48__*, %struct.TYPE_37__*) #1

declare dso_local i32 @l2cu_send_peer_disc_req(%struct.TYPE_48__*) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i32) #1

declare dso_local i32 @l2c_link_adjust_chnl_allocation(...) #1

declare dso_local i32 @btu_stop_timer(i32*) #1

declare dso_local i32 @l2c_fcr_start_timer(%struct.TYPE_48__*) #1

declare dso_local i32 @l2c_fcr_adj_monitor_retran_timeout(%struct.TYPE_48__*) #1

declare dso_local i8* @osi_time_get_os_boottime_ms(...) #1

declare dso_local i32 @fixed_queue_is_empty(i32) #1

declare dso_local i32 @l2c_link_check_send_pkts(%struct.TYPE_41__*, i32*, i32*) #1

declare dso_local i8* @l2c_fcr_renegotiate_chan(%struct.TYPE_48__*, %struct.TYPE_37__*) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i32 @l2cu_process_our_cfg_req(%struct.TYPE_48__*, %struct.TYPE_37__*) #1

declare dso_local i32 @l2cu_send_peer_config_req(%struct.TYPE_48__*, %struct.TYPE_37__*) #1

declare dso_local i32 @l2cu_process_our_cfg_rsp(%struct.TYPE_48__*, %struct.TYPE_37__*) #1

declare dso_local i32 @l2c_enqueue_peer_data(%struct.TYPE_48__*, i32*) #1

declare dso_local i32 @osi_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
