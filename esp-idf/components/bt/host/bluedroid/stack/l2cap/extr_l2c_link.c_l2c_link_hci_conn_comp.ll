; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_link.c_l2c_link_hci_conn_comp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_link.c_l2c_link_hci_conn_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__, i64, i32, i32, i64, i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32*, i32* }

@BTM_BLI_PAGE_DONE_EVT = common dso_local global i32 0, align 4
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"L2CAP got conn_comp for unknown BD_ADDR\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@LST_CONNECTING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"L2CAP got conn_comp in bad state: %d  status: 0x%d\0A\00", align 1
@HCI_SUCCESS = common dso_local global i64 0, align 8
@LST_CONNECTED = common dso_local global i64 0, align 8
@L2CAP_EXTENDED_FEATURES_INFO_TYPE = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@L2CEVT_LP_CONNECT_CFM = common dso_local global i32 0, align 4
@BTU_TTYPE_L2CAP_LINK = common dso_local global i32 0, align 4
@L2CAP_ECHO_RSP_TOUT = common dso_local global i32 0, align 4
@L2CAP_LINK_STARTUP_TOUT = common dso_local global i32 0, align 4
@HCI_ERR_MAX_NUM_OF_CONNECTIONS = common dso_local global i64 0, align 8
@LST_CONNECT_HOLDING = common dso_local global i64 0, align 8
@HCI_INVALID_HANDLE = common dso_local global i32 0, align 4
@LST_DISCONNECTING = common dso_local global i64 0, align 8
@L2CEVT_LP_CONNECT_CFM_NEG = common dso_local global i32 0, align 4
@HCI_ERR_CONNECTION_EXISTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2c_link_hci_conn_comp(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %11, align 8
  %13 = load i32, i32* @BTM_BLI_PAGE_DONE_EVT, align 4
  %14 = call i32 @btm_acl_update_busy_level(i32 %13)
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @BD_ADDR_LEN, align 4
  %21 = call i32 @memcpy(i32 %18, i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %25 = call %struct.TYPE_17__* @l2cu_find_lcb_by_bd_addr(i32 %23, i32 %24)
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %9, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %27 = icmp ne %struct.TYPE_17__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %4, align 4
  br label %224

31:                                               ; preds = %3
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LST_CONNECTING, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %41)
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @HCI_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @l2c_link_hci_disc_comp(i32 %49, i64 %50)
  br label %52

52:                                               ; preds = %46, %37
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %4, align 4
  br label %224

54:                                               ; preds = %31
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @HCI_SUCCESS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %160

62:                                               ; preds = %54
  %63 = load i64, i64* @LST_CONNECTED, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %67 = load i32, i32* @L2CAP_EXTENDED_FEATURES_INFO_TYPE, align 4
  %68 = call i32 @l2cu_send_peer_info_req(%struct.TYPE_17__* %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = call %struct.TYPE_20__* @btm_find_dev(i32 %69)
  store %struct.TYPE_20__* %70, %struct.TYPE_20__** %11, align 8
  %71 = icmp ne %struct.TYPE_20__* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %86 = call i32 @btm_acl_created(i32 %74, i32* %77, i32* %80, i32 %81, i32 %84, i32 %85)
  br label %96

87:                                               ; preds = %62
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %95 = call i32 @btm_acl_created(i32 %89, i32* null, i32* null, i32 %90, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %87, %72
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0), align 4
  %100 = call i32 @BTM_SetLinkSuperTout(i32 %98, i32 %99)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %96
  %106 = load i32, i32* %6, align 4
  %107 = call i64 @l2cu_start_post_bond_timer(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %4, align 4
  br label %224

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %96
  %113 = load i32, i32* @FALSE, align 4
  %114 = call i32 @l2c_process_held_packets(i32 %113)
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 4
  %117 = call i32 @btu_stop_timer(i32* %116)
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  store %struct.TYPE_19__* %121, %struct.TYPE_19__** %10, align 8
  br label %122

122:                                              ; preds = %129, %112
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %124 = icmp ne %struct.TYPE_19__* %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %127 = load i32, i32* @L2CEVT_LP_CONNECT_CFM, align 4
  %128 = call i32 @l2c_csm_execute(%struct.TYPE_19__* %126, i32 %127, %struct.TYPE_18__* %8)
  br label %129

129:                                              ; preds = %125
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %131, align 8
  store %struct.TYPE_19__* %132, %struct.TYPE_19__** %10, align 8
  br label %122

133:                                              ; preds = %122
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %133
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %140 = call i32 @l2cu_send_peer_echo_req(%struct.TYPE_17__* %139, i32* null, i32 0)
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 4
  %143 = load i32, i32* @BTU_TTYPE_L2CAP_LINK, align 4
  %144 = load i32, i32* @L2CAP_ECHO_RSP_TOUT, align 4
  %145 = call i32 @btu_start_timer(i32* %142, i32 %143, i32 %144)
  br label %159

146:                                              ; preds = %133
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %149, align 8
  %151 = icmp ne %struct.TYPE_19__* %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 4
  %155 = load i32, i32* @BTU_TTYPE_L2CAP_LINK, align 4
  %156 = load i32, i32* @L2CAP_LINK_STARTUP_TOUT, align 4
  %157 = call i32 @btu_start_timer(i32* %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %152, %146
  br label %159

159:                                              ; preds = %158, %138
  br label %222

160:                                              ; preds = %54
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @HCI_ERR_MAX_NUM_OF_CONNECTIONS, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %160
  %166 = call i64 (...) @l2cu_lcb_disconnecting()
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %165
  %169 = load i64, i64* @LST_CONNECT_HOLDING, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  %172 = load i32, i32* @HCI_INVALID_HANDLE, align 4
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 8
  br label %221

175:                                              ; preds = %165, %160
  %176 = load i64, i64* @LST_DISCONNECTING, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %181, align 8
  store %struct.TYPE_19__* %182, %struct.TYPE_19__** %10, align 8
  br label %183

183:                                              ; preds = %186, %175
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %185 = icmp ne %struct.TYPE_19__* %184, null
  br i1 %185, label %186, label %194

186:                                              ; preds = %183
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %188, align 8
  store %struct.TYPE_19__* %189, %struct.TYPE_19__** %12, align 8
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %191 = load i32, i32* @L2CEVT_LP_CONNECT_CFM_NEG, align 4
  %192 = call i32 @l2c_csm_execute(%struct.TYPE_19__* %190, i32 %191, %struct.TYPE_18__* %8)
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %193, %struct.TYPE_19__** %10, align 8
  br label %183

194:                                              ; preds = %183
  %195 = load i64, i64* %5, align 8
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 2
  store i64 %195, i64* %197, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %200, align 8
  %202 = icmp eq %struct.TYPE_19__* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %194
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %205 = call i32 @l2cu_release_lcb(%struct.TYPE_17__* %204)
  br label %220

206:                                              ; preds = %194
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @HCI_ERR_CONNECTION_EXISTS, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load i64, i64* @LST_CONNECTING, align 8
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  store i64 %212, i64* %214, align 8
  br label %219

215:                                              ; preds = %206
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %217 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %218 = call i32 @l2cu_create_conn(%struct.TYPE_17__* %216, i32 %217)
  br label %219

219:                                              ; preds = %215, %211
  br label %220

220:                                              ; preds = %219, %203
  br label %221

221:                                              ; preds = %220, %168
  br label %222

222:                                              ; preds = %221, %159
  %223 = load i32, i32* @TRUE, align 4
  store i32 %223, i32* %4, align 4
  br label %224

224:                                              ; preds = %222, %109, %52, %28
  %225 = load i32, i32* %4, align 4
  ret i32 %225
}

declare dso_local i32 @btm_acl_update_busy_level(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_17__* @l2cu_find_lcb_by_bd_addr(i32, i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*, i64, i64) #1

declare dso_local i32 @l2c_link_hci_disc_comp(i32, i64) #1

declare dso_local i32 @l2cu_send_peer_info_req(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_20__* @btm_find_dev(i32) #1

declare dso_local i32 @btm_acl_created(i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @BTM_SetLinkSuperTout(i32, i32) #1

declare dso_local i64 @l2cu_start_post_bond_timer(i32) #1

declare dso_local i32 @l2c_process_held_packets(i32) #1

declare dso_local i32 @btu_stop_timer(i32*) #1

declare dso_local i32 @l2c_csm_execute(%struct.TYPE_19__*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @l2cu_send_peer_echo_req(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i64 @l2cu_lcb_disconnecting(...) #1

declare dso_local i32 @l2cu_release_lcb(%struct.TYPE_17__*) #1

declare dso_local i32 @l2cu_create_conn(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
