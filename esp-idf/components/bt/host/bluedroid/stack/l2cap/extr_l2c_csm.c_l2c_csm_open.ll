; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_open.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, %struct.TYPE_25__, i32, i32, i8*, %struct.TYPE_21__*, %struct.TYPE_23__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 (i64, i32*)*, i32 (i64, i32)*, i32 (i64, i32*)*, i32 (i32)* }
%struct.TYPE_27__ = type { i8* }

@.str = private unnamed_addr constant [40 x i8] c"L2CAP - LCID: 0x%04x  st: OPEN  evt: %s\00", align 1
@L2CAP_CONNECTIONLESS_CID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed\00", align 1
@FALSE = common dso_local global i32 0, align 4
@CST_CONFIG = common dso_local global i8* null, align 8
@CFG_DONE_MASK = common dso_local global i32 0, align 4
@BTU_TTYPE_L2CAP_CHNL = common dso_local global i32 0, align 4
@L2CAP_CHNL_CFG_TIMEOUT = common dso_local global i32 0, align 4
@L2CAP_PEER_CFG_OK = common dso_local global i32 0, align 4
@L2CAP_PEER_CFG_UNACCEPTABLE = common dso_local global i32 0, align 4
@BTM_PM_MD_ACTIVE = common dso_local global i8* null, align 8
@BTM_PM_SET_ONLY_ID = common dso_local global i32 0, align 4
@CST_W4_L2CA_DISCONNECT_RSP = common dso_local global i8* null, align 8
@L2CAP_CHNL_DISCONNECT_TOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  Conf Needed\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CST_W4_L2CAP_DISCONNECT_RSP = common dso_local global i8* null, align 8
@L2CAP_FCR_ERTM_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, i64, i8*)* @l2c_csm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2c_csm_open(%struct.TYPE_26__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_27__, align 8
  %13 = alloca %struct.TYPE_27__, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @l2c_csm_get_event_name(i64 %20)
  %22 = call i32 (i8*, i64, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @L2CAP_CONNECTIONLESS_CID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @l2c_ucd_process_event(%struct.TYPE_26__* %27, i64 %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %273

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i64, i64* %5, align 8
  switch i64 %35, label %273 [
    i64 130, label %36
    i64 129, label %58
    i64 136, label %80
    i64 134, label %142
    i64 135, label %177
    i64 131, label %204
    i64 132, label %226
    i64 133, label %235
    i64 128, label %258
    i64 137, label %270
  ]

36:                                               ; preds = %34
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %42 = call i32 @l2cu_release_ccb(%struct.TYPE_26__* %41)
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %44, align 8
  %46 = icmp ne %struct.TYPE_23__* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %36
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 6
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load i32 (i64, i32)*, i32 (i64, i32)** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i32, i32* @FALSE, align 4
  %56 = call i32 %53(i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %47, %36
  br label %273

58:                                               ; preds = %34
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 3
  %64 = load i32 (i32)*, i32 (i32)** %63, align 8
  %65 = icmp ne i32 (i32)* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %58
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 6
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 3
  %72 = load i32 (i32)*, i32 (i32)** %71, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 %72(i32 %77)
  br label %79

79:                                               ; preds = %66, %58
  br label %273

80:                                               ; preds = %34
  %81 = load i8*, i8** %6, align 8
  %82 = bitcast i8* %81 to i32*
  store i32* %82, i32** %8, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 4
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %9, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %10, align 4
  %89 = load i8*, i8** @CST_CONFIG, align 8
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @CFG_DONE_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 2
  %100 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %101 = load i32, i32* @L2CAP_CHNL_CFG_TIMEOUT, align 4
  %102 = call i32 @btu_start_timer(i32* %99, i32 %100, i32 %101)
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @l2cu_process_peer_cfg_req(%struct.TYPE_26__* %103, i32* %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* @L2CAP_PEER_CFG_OK, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %80
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 6
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 2
  %114 = load i32 (i64, i32*)*, i32 (i64, i32*)** %113, align 8
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = call i32 %114(i64 %117, i32* %118)
  br label %141

120:                                              ; preds = %80
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @L2CAP_PEER_CFG_UNACCEPTABLE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %120
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 2
  %127 = call i32 @btu_stop_timer(i32* %126)
  %128 = load i8*, i8** %9, align 8
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @l2cu_send_peer_config_rsp(%struct.TYPE_26__* %134, i32* %135)
  br label %140

137:                                              ; preds = %120
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %139 = call i32 @l2cu_disconnect_chnl(%struct.TYPE_26__* %138)
  br label %140

140:                                              ; preds = %137, %124
  br label %141

141:                                              ; preds = %140, %108
  br label %273

142:                                              ; preds = %34
  %143 = bitcast %struct.TYPE_27__* %12 to i8*
  %144 = call i32 @memset(i8* %143, i32 0, i32 8)
  %145 = load i8*, i8** @BTM_PM_MD_ACTIVE, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  store i8* %145, i8** %146, align 8
  %147 = load i32, i32* @BTM_PM_SET_ONLY_ID, align 4
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 5
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @BTM_SetPowerMode(i32 %147, i32 %152, %struct.TYPE_27__* %12)
  %154 = load i8*, i8** @CST_W4_L2CA_DISCONNECT_RSP, align 8
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 4
  store i8* %154, i8** %156, align 8
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 2
  %159 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %160 = load i32, i32* @L2CAP_CHNL_DISCONNECT_TOUT, align 4
  %161 = call i32 @btu_start_timer(i32* %158, i32 %159, i32 %160)
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %164)
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 6
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = load i32 (i64, i32)*, i32 (i64, i32)** %170, align 8
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* @TRUE, align 4
  %176 = call i32 %171(i64 %174, i32 %175)
  br label %273

177:                                              ; preds = %34
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 6
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %179, align 8
  %181 = icmp ne %struct.TYPE_23__* %180, null
  br i1 %181, label %182, label %203

182:                                              ; preds = %177
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 6
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 0
  %188 = load i32 (i64, i32*)*, i32 (i64, i32*)** %187, align 8
  %189 = icmp ne i32 (i64, i32*)* %188, null
  br i1 %189, label %190, label %203

190:                                              ; preds = %182
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 6
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 0
  %196 = load i32 (i64, i32*)*, i32 (i64, i32*)** %195, align 8
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i8*, i8** %6, align 8
  %201 = bitcast i8* %200 to i32*
  %202 = call i32 %196(i64 %199, i32* %201)
  br label %203

203:                                              ; preds = %190, %182, %177
  br label %273

204:                                              ; preds = %34
  %205 = bitcast %struct.TYPE_27__* %13 to i8*
  %206 = call i32 @memset(i8* %205, i32 0, i32 8)
  %207 = load i8*, i8** @BTM_PM_MD_ACTIVE, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  store i8* %207, i8** %208, align 8
  %209 = load i32, i32* @BTM_PM_SET_ONLY_ID, align 4
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 5
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @BTM_SetPowerMode(i32 %209, i32 %214, %struct.TYPE_27__* %13)
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %217 = call i32 @l2cu_send_peer_disc_req(%struct.TYPE_26__* %216)
  %218 = load i8*, i8** @CST_W4_L2CAP_DISCONNECT_RSP, align 8
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 4
  store i8* %218, i8** %220, align 8
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 2
  %223 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %224 = load i32, i32* @L2CAP_CHNL_DISCONNECT_TOUT, align 4
  %225 = call i32 @btu_start_timer(i32* %222, i32 %223, i32 %224)
  br label %273

226:                                              ; preds = %34
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %228 = load i8*, i8** %6, align 8
  %229 = bitcast i8* %228 to i32*
  %230 = call i32 @l2c_enqueue_peer_data(%struct.TYPE_26__* %227, i32* %229)
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 5
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %232, align 8
  %234 = call i32 @l2c_link_check_send_pkts(%struct.TYPE_21__* %233, i32* null, i32* null)
  br label %273

235:                                              ; preds = %34
  %236 = load i8*, i8** @CST_CONFIG, align 8
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 4
  store i8* %236, i8** %238, align 8
  %239 = load i32, i32* @CFG_DONE_MASK, align 4
  %240 = xor i32 %239, -1
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = and i32 %243, %240
  store i32 %244, i32* %242, align 8
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %246 = load i8*, i8** %6, align 8
  %247 = bitcast i8* %246 to i32*
  %248 = call i32 @l2cu_process_our_cfg_req(%struct.TYPE_26__* %245, i32* %247)
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %250 = load i8*, i8** %6, align 8
  %251 = bitcast i8* %250 to i32*
  %252 = call i32 @l2cu_send_peer_config_req(%struct.TYPE_26__* %249, i32* %251)
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %253, i32 0, i32 2
  %255 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %256 = load i32, i32* @L2CAP_CHNL_CFG_TIMEOUT, align 4
  %257 = call i32 @btu_start_timer(i32* %254, i32 %255, i32 %256)
  br label %273

258:                                              ; preds = %34
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @L2CAP_FCR_ERTM_MODE, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %258
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %268 = call i32 @l2c_fcr_proc_tout(%struct.TYPE_26__* %267)
  br label %269

269:                                              ; preds = %266, %258
  br label %273

270:                                              ; preds = %34
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %272 = call i32 @l2c_fcr_proc_ack_tout(%struct.TYPE_26__* %271)
  br label %273

273:                                              ; preds = %32, %34, %270, %269, %235, %226, %204, %203, %142, %141, %79, %57
  ret void
}

declare dso_local i32 @L2CAP_TRACE_EVENT(i8*, i64, ...) #1

declare dso_local i32 @l2c_csm_get_event_name(i64) #1

declare dso_local i64 @l2c_ucd_process_event(%struct.TYPE_26__*, i64, i8*) #1

declare dso_local i32 @L2CAP_TRACE_API(i8*, i64) #1

declare dso_local i32 @l2cu_release_ccb(%struct.TYPE_26__*) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i32 @l2cu_process_peer_cfg_req(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @btu_stop_timer(i32*) #1

declare dso_local i32 @l2cu_send_peer_config_rsp(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @l2cu_disconnect_chnl(%struct.TYPE_26__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @BTM_SetPowerMode(i32, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @l2cu_send_peer_disc_req(%struct.TYPE_26__*) #1

declare dso_local i32 @l2c_enqueue_peer_data(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @l2c_link_check_send_pkts(%struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i32 @l2cu_process_our_cfg_req(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @l2cu_send_peer_config_req(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @l2c_fcr_proc_tout(%struct.TYPE_26__*) #1

declare dso_local i32 @l2c_fcr_proc_ack_tout(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
