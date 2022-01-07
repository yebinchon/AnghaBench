; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_connected.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, i64, i64, i32, %struct.TYPE_14__, %struct.TYPE_17__, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_14__ = type { i32 (i32*, i32, i32, i32)* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_15__ = type { i64, i32, i32*, i32, i64, i32, i32, i8*, i32, i32, i64, i32, i8*, i8*, i32, i64 }
%struct.TYPE_16__ = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [100 x i8] c"Security Manager: btm_sec_connected in state: %s  handle:%d status:%d enc_mode:%d  bda:%x RName:%s\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [92 x i8] c"Security Manager: btm_sec_connected in state: %s  handle:%d status:%d enc_mode:%d  bda:%x \0A\00", align 1
@HCI_SUCCESS = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_IDLE = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_SM4_CONN_PEND = common dso_local global i32 0, align 4
@BTM_PAIR_FLAGS_WE_STARTED_DD = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_WAIT_PIN_REQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [84 x i8] c"Security Manager: btm_sec_connected: incoming connection failed without asking PIN\0A\00", align 1
@BTM_SEC_NAME_KNOWN = common dso_local global i32 0, align 4
@btm_sec_connect_after_reject_timeout = common dso_local global i64 0, align 8
@BTU_TTYPE_USER_FUNC = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_GET_REM_NAME = common dso_local global i64 0, align 8
@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@BTM_SEC_RS_NOT_PENDING = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@BT_DEVICE_TYPE_BREDR = common dso_local global i32 0, align 4
@HCI_ERR_HOST_REJECT_DEVICE = common dso_local global i32 0, align 4
@BTM_PAIR_FLAGS_REJECTED_CONNECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"Security Manager: btm_sec_connected: HCI_Conn_Comp Flags:0x%04x, sm4: 0x%x\0A\00", align 1
@BTM_PAIR_STATE_WAIT_LOCAL_PIN = common dso_local global i64 0, align 8
@HCI_ERR_CONNECTION_EXISTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"Security Manager: btm_sec_connected: Wait for incoming connection\0A\00", align 1
@BTM_SEC_OUT_AUTHENTICATE = common dso_local global i32 0, align 4
@BTM_SEC_LINK_KEY_KNOWN = common dso_local global i32 0, align 4
@BTM_SEC_LINK_KEY_AUTHED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"security_required:%x \0A\00", align 1
@BTM_LKEY_TYPE_REMOTE_UNIT = common dso_local global i64 0, align 8
@HCI_ERR_AUTH_FAILURE = common dso_local global i32 0, align 4
@HCI_ERR_KEY_MISSING = common dso_local global i32 0, align 4
@HCI_ERR_HOST_REJECT_SECURITY = common dso_local global i32 0, align 4
@HCI_ERR_PAIRING_NOT_ALLOWED = common dso_local global i32 0, align 4
@HCI_ERR_UNIT_KEY_USED = common dso_local global i32 0, align 4
@HCI_ERR_PAIRING_WITH_UNIT_KEY_NOT_SUPPORTED = common dso_local global i32 0, align 4
@HCI_ERR_ENCRY_MODE_NOT_ACCEPTABLE = common dso_local global i32 0, align 4
@HCI_ERR_REPEATED_ATTEMPTS = common dso_local global i32 0, align 4
@BTM_SEC_LE_LINK_KEY_KNOWN = common dso_local global i32 0, align 4
@HCI_ERR_CONNECTION_TOUT = common dso_local global i32 0, align 4
@HCI_ERR_LMP_RESPONSE_TIMEOUT = common dso_local global i32 0, align 4
@HCI_ERR_UNSPECIFIED = common dso_local global i32 0, align 4
@HCI_ERR_PAGE_TIMEOUT = common dso_local global i32 0, align 4
@BTM_DEVICE_TIMEOUT = common dso_local global i32 0, align 4
@BTM_ERR_PROCESSING = common dso_local global i32 0, align 4
@HCI_ROLE_SLAVE = common dso_local global i32 0, align 4
@BTM_SEC_AUTHORIZED = common dso_local global i32 0, align 4
@BTM_SEC_AUTHENTICATED = common dso_local global i32 0, align 4
@BTM_SEC_ENCRYPTED = common dso_local global i32 0, align 4
@BTM_SEC_ROLE_SWITCHED = common dso_local global i32 0, align 4
@HCI_ENCRYPT_MODE_DISABLED = common dso_local global i32 0, align 4
@BTM_SEC_MODE_LINK = common dso_local global i64 0, align 8
@BTM_LKEY_TYPE_AUTH_COMB = common dso_local global i64 0, align 8
@BTM_LKEY_TYPE_AUTH_COMB_P_256 = common dso_local global i64 0, align 8
@BTM_SEC_16_DIGIT_PIN_AUTHED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"is_originator:%d \0A\00", align 1
@BTM_CMD_STARTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_sec_connected(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.TYPE_15__* @btm_find_dev(i32* %14)
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %9, align 8
  %16 = load i8*, i8** @FALSE, align 8
  store i8* %16, i8** %11, align 8
  store i32 0, i32* %13, align 4
  %17 = call i32 (...) @btm_acl_resubmit_page()
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %19 = icmp ne %struct.TYPE_15__* %18, null
  br i1 %19, label %20, label %48

20:                                               ; preds = %4
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0), align 8
  %22 = call i32 @btm_pair_state_descr(i64 %21)
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 24
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = add nsw i32 %29, %33
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = add nsw i32 %34, %38
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, i32, i64, i32, i32, i32, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %23, i32 %24, i32 %25, i32 %43, i32 %46)
  br label %73

48:                                               ; preds = %4
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0), align 8
  %50 = call i32 @btm_pair_state_descr(i64 %49)
  %51 = load i64, i64* %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 24
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 16
  %62 = add nsw i32 %57, %61
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = add nsw i32 %62, %66
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = call i32 (i8*, i32, i64, i32, i32, i32, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %50, i64 %51, i32 %52, i32 %53, i32 %71)
  br label %73

73:                                               ; preds = %48, %20
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %75 = icmp ne %struct.TYPE_15__* %74, null
  br i1 %75, label %98, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @HCI_SUCCESS, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32*, i32** %5, align 8
  %82 = call %struct.TYPE_15__* @btm_sec_alloc_dev(i32* %81)
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %9, align 8
  br label %97

83:                                               ; preds = %76
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0), align 8
  %85 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 9), align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* @BD_ADDR_LEN, align 4
  %91 = call i64 @memcmp(i32 %88, i32* %89, i32 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %95 = call i32 @btm_sec_change_pairing_state(i64 %94)
  br label %96

96:                                               ; preds = %93, %87, %83
  br label %598

97:                                               ; preds = %80
  br label %189

98:                                               ; preds = %73
  %99 = load i64, i64* %6, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 8, i32 0
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 10), align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 10), align 4
  %108 = sext i32 %106 to i64
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 15
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @BTM_SM4_CONN_PEND, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %188

117:                                              ; preds = %98
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0), align 8
  %119 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %181

121:                                              ; preds = %117
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 9), align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @BD_ADDR_LEN, align 4
  %127 = call i64 @memcmp(i32 %122, i32* %125, i32 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %181

129:                                              ; preds = %121
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 1), align 8
  %131 = load i32, i32* @BTM_PAIR_FLAGS_WE_STARTED_DD, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %181

134:                                              ; preds = %129
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @HCI_SUCCESS, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %174

138:                                              ; preds = %134
  %139 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0), align 8
  %140 = load i64, i64* @BTM_PAIR_STATE_WAIT_PIN_REQ, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %174

142:                                              ; preds = %138
  %143 = call i32 (i8*, ...) @BTM_TRACE_WARNING(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0))
  %144 = load i32, i32* @BTM_SM4_CONN_PEND, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @BTM_SEC_NAME_KNOWN, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %142
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %157, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 8), align 8
  %158 = load i64, i64* @btm_sec_connect_after_reject_timeout, align 8
  %159 = inttoptr i64 %158 to i8*
  store i8* %159, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 7, i32 0), align 8
  %160 = load i32, i32* @BTU_TTYPE_USER_FUNC, align 4
  %161 = call i32 @btu_start_timer(%struct.TYPE_17__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 7), i32 %160, i32 0)
  br label %170

162:                                              ; preds = %142
  %163 = load i64, i64* @BTM_PAIR_STATE_GET_REM_NAME, align 8
  %164 = call i32 @btm_sec_change_pairing_state(i64 %163)
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %169 = call i32 @BTM_ReadRemoteDeviceName(i32* %167, i32* null, i32 %168)
  br label %170

170:                                              ; preds = %162, %156
  %171 = load i8*, i8** @BTM_SEC_RS_NOT_PENDING, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 13
  store i8* %171, i8** %173, align 8
  br label %598

174:                                              ; preds = %138, %134
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = load i8*, i8** @TRUE, align 8
  %179 = call i32 @l2cu_update_lcb_4_bonding(i32* %177, i8* %178)
  br label %180

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180, %129, %121, %117
  %182 = load i32, i32* @BTM_SM4_CONN_PEND, align 4
  %183 = xor i32 %182, -1
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %181, %98
  br label %189

189:                                              ; preds = %188, %97
  %190 = load i32, i32* @BT_DEVICE_TYPE_BREDR, align 4
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 14
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  %195 = load i8*, i8** @BTM_SEC_RS_NOT_PENDING, align 8
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 13
  store i8* %195, i8** %197, align 8
  %198 = load i8*, i8** @BTM_SEC_RS_NOT_PENDING, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 13
  store i8* %198, i8** %200, align 8
  %201 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0), align 8
  %202 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %260

204:                                              ; preds = %189
  %205 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 9), align 8
  %206 = load i32*, i32** %5, align 8
  %207 = load i32, i32* @BD_ADDR_LEN, align 4
  %208 = call i64 @memcmp(i32 %205, i32* %206, i32 %207)
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %260

210:                                              ; preds = %204
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @HCI_ERR_HOST_REJECT_DEVICE, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %251

214:                                              ; preds = %210
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 1), align 8
  %216 = load i32, i32* @BTM_PAIR_FLAGS_REJECTED_CONNECT, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %251

219:                                              ; preds = %214
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 1), align 8
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = call i32 (i8*, ...) @BTM_TRACE_WARNING(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 %220, i32 %223)
  %225 = load i32, i32* @BTM_PAIR_FLAGS_REJECTED_CONNECT, align 4
  %226 = xor i32 %225, -1
  %227 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 1), align 8
  %228 = and i32 %227, %226
  store i32 %228, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 1), align 8
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = call i64 @BTM_SEC_IS_SM4_UNKNOWN(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %219
  %235 = load i64, i64* @BTM_PAIR_STATE_GET_REM_NAME, align 8
  %236 = call i32 @btm_sec_change_pairing_state(i64 %235)
  %237 = load i32*, i32** %5, align 8
  %238 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %239 = call i32 @BTM_ReadRemoteDeviceName(i32* %237, i32* null, i32 %238)
  br label %598

240:                                              ; preds = %219
  %241 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0), align 8
  %242 = load i64, i64* @BTM_PAIR_STATE_WAIT_LOCAL_PIN, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %250

244:                                              ; preds = %240
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %245, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 8), align 8
  %246 = load i64, i64* @btm_sec_connect_after_reject_timeout, align 8
  %247 = inttoptr i64 %246 to i8*
  store i8* %247, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 7, i32 0), align 8
  %248 = load i32, i32* @BTU_TTYPE_USER_FUNC, align 4
  %249 = call i32 @btu_start_timer(%struct.TYPE_17__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 7), i32 %248, i32 0)
  br label %250

250:                                              ; preds = %244, %240
  br label %598

251:                                              ; preds = %214, %210
  %252 = load i32, i32* %7, align 4
  %253 = load i32, i32* @HCI_ERR_CONNECTION_EXISTS, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %251
  %256 = call i32 (i8*, ...) @BTM_TRACE_WARNING(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  br label %598

257:                                              ; preds = %251
  br label %258

258:                                              ; preds = %257
  %259 = load i8*, i8** @TRUE, align 8
  store i8* %259, i8** %11, align 8
  br label %260

260:                                              ; preds = %258, %204, %189
  %261 = call i32 (...) @btm_restore_mode()
  %262 = load i32, i32* %7, align 4
  %263 = load i32, i32* @HCI_SUCCESS, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %404

265:                                              ; preds = %260
  %266 = load i8*, i8** %11, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %307

268:                                              ; preds = %265
  %269 = load i32, i32* @BTM_SEC_OUT_AUTHENTICATE, align 4
  %270 = xor i32 %269, -1
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 11
  %273 = load i32, i32* %272, align 8
  %274 = and i32 %273, %270
  store i32 %274, i32* %272, align 8
  %275 = load i32, i32* @BTM_SEC_LINK_KEY_KNOWN, align 4
  %276 = load i32, i32* @BTM_SEC_LINK_KEY_AUTHED, align 4
  %277 = or i32 %275, %276
  %278 = load i32, i32* %13, align 4
  %279 = shl i32 %277, %278
  %280 = xor i32 %279, -1
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 8
  %284 = and i32 %283, %280
  store i32 %284, i32* %282, align 8
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 11
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %287)
  %289 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %290 = call i32 @btm_sec_change_pairing_state(i64 %289)
  %291 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 6, i32 0), align 8
  %292 = icmp ne i32 (i32*, i32, i32, i32)* %291, null
  br i1 %292, label %293, label %306

293:                                              ; preds = %268
  %294 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 6, i32 0), align 8
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 2
  %297 = load i32*, i32** %296, align 8
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 9
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 8
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* %7, align 4
  %305 = call i32 %294(i32* %297, i32 %300, i32 %303, i32 %304)
  br label %306

306:                                              ; preds = %293, %268
  br label %377

307:                                              ; preds = %265
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 4
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @BTM_LKEY_TYPE_REMOTE_UNIT, align 8
  %312 = icmp sle i64 %310, %311
  br i1 %312, label %313, label %376

313:                                              ; preds = %307
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* @HCI_ERR_AUTH_FAILURE, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %345, label %317

317:                                              ; preds = %313
  %318 = load i32, i32* %7, align 4
  %319 = load i32, i32* @HCI_ERR_KEY_MISSING, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %345, label %321

321:                                              ; preds = %317
  %322 = load i32, i32* %7, align 4
  %323 = load i32, i32* @HCI_ERR_HOST_REJECT_SECURITY, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %345, label %325

325:                                              ; preds = %321
  %326 = load i32, i32* %7, align 4
  %327 = load i32, i32* @HCI_ERR_PAIRING_NOT_ALLOWED, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %345, label %329

329:                                              ; preds = %325
  %330 = load i32, i32* %7, align 4
  %331 = load i32, i32* @HCI_ERR_UNIT_KEY_USED, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %345, label %333

333:                                              ; preds = %329
  %334 = load i32, i32* %7, align 4
  %335 = load i32, i32* @HCI_ERR_PAIRING_WITH_UNIT_KEY_NOT_SUPPORTED, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %345, label %337

337:                                              ; preds = %333
  %338 = load i32, i32* %7, align 4
  %339 = load i32, i32* @HCI_ERR_ENCRY_MODE_NOT_ACCEPTABLE, align 4
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %345, label %341

341:                                              ; preds = %337
  %342 = load i32, i32* %7, align 4
  %343 = load i32, i32* @HCI_ERR_REPEATED_ATTEMPTS, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %376

345:                                              ; preds = %341, %337, %333, %329, %325, %321, %317, %313
  %346 = load i32, i32* @BTM_SEC_OUT_AUTHENTICATE, align 4
  %347 = xor i32 %346, -1
  %348 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 11
  %350 = load i32, i32* %349, align 8
  %351 = and i32 %350, %347
  store i32 %351, i32* %349, align 8
  %352 = load i32, i32* @BTM_SEC_LE_LINK_KEY_KNOWN, align 4
  %353 = load i32, i32* %13, align 4
  %354 = shl i32 %352, %353
  %355 = xor i32 %354, -1
  %356 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %357 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 8
  %359 = and i32 %358, %355
  store i32 %359, i32* %357, align 8
  %360 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 6, i32 0), align 8
  %361 = icmp ne i32 (i32*, i32, i32, i32)* %360, null
  br i1 %361, label %362, label %375

362:                                              ; preds = %345
  %363 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 6, i32 0), align 8
  %364 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %365 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %364, i32 0, i32 2
  %366 = load i32*, i32** %365, align 8
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 9
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 8
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* %7, align 4
  %374 = call i32 %363(i32* %366, i32 %369, i32 %372, i32 %373)
  br label %375

375:                                              ; preds = %362, %345
  br label %376

376:                                              ; preds = %375, %341, %307
  br label %377

377:                                              ; preds = %376, %306
  %378 = load i32, i32* %7, align 4
  %379 = load i32, i32* @HCI_ERR_CONNECTION_TOUT, align 4
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %393, label %381

381:                                              ; preds = %377
  %382 = load i32, i32* %7, align 4
  %383 = load i32, i32* @HCI_ERR_LMP_RESPONSE_TIMEOUT, align 4
  %384 = icmp eq i32 %382, %383
  br i1 %384, label %393, label %385

385:                                              ; preds = %381
  %386 = load i32, i32* %7, align 4
  %387 = load i32, i32* @HCI_ERR_UNSPECIFIED, align 4
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %393, label %389

389:                                              ; preds = %385
  %390 = load i32, i32* %7, align 4
  %391 = load i32, i32* @HCI_ERR_PAGE_TIMEOUT, align 4
  %392 = icmp eq i32 %390, %391
  br i1 %392, label %393, label %398

393:                                              ; preds = %389, %385, %381, %377
  %394 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %395 = load i32, i32* @BTM_DEVICE_TIMEOUT, align 4
  %396 = load i8*, i8** @FALSE, align 8
  %397 = call i32 @btm_sec_dev_rec_cback_event(%struct.TYPE_15__* %394, i32 %395, i8* %396)
  br label %403

398:                                              ; preds = %389
  %399 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %400 = load i32, i32* @BTM_ERR_PROCESSING, align 4
  %401 = load i8*, i8** @FALSE, align 8
  %402 = call i32 @btm_sec_dev_rec_cback_event(%struct.TYPE_15__* %399, i32 %400, i8* %401)
  br label %403

403:                                              ; preds = %398, %393
  br label %598

404:                                              ; preds = %260
  %405 = load i8*, i8** %11, align 8
  %406 = icmp ne i8* %405, null
  br i1 %406, label %407, label %470

407:                                              ; preds = %404
  %408 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %409 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @BTM_SEC_LINK_KEY_KNOWN, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %470

414:                                              ; preds = %407
  %415 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 12
  %417 = load i8*, i8** %416, align 8
  %418 = icmp ne i8* %417, null
  br i1 %418, label %419, label %425

419:                                              ; preds = %414
  %420 = load i8*, i8** @FALSE, align 8
  %421 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %422 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %421, i32 0, i32 12
  store i8* %420, i8** %422, align 8
  %423 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %424 = call i32 @btm_send_link_key_notif(%struct.TYPE_15__* %423)
  br label %425

425:                                              ; preds = %419, %414
  %426 = load i32, i32* @BTM_SEC_OUT_AUTHENTICATE, align 4
  %427 = xor i32 %426, -1
  %428 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %429 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %428, i32 0, i32 11
  %430 = load i32, i32* %429, align 8
  %431 = and i32 %430, %427
  store i32 %431, i32* %429, align 8
  %432 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 1), align 8
  %433 = load i32, i32* @BTM_PAIR_FLAGS_WE_STARTED_DD, align 4
  %434 = and i32 %432, %433
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %439

436:                                              ; preds = %425
  %437 = load i8*, i8** @TRUE, align 8
  %438 = ptrtoint i8* %437 to i32
  store i32 %438, i32* %10, align 4
  br label %442

439:                                              ; preds = %425
  %440 = load i8*, i8** @FALSE, align 8
  %441 = ptrtoint i8* %440 to i32
  store i32 %441, i32* %10, align 4
  br label %442

442:                                              ; preds = %439, %436
  %443 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 6, i32 0), align 8
  %444 = icmp ne i32 (i32*, i32, i32, i32)* %443, null
  br i1 %444, label %445, label %458

445:                                              ; preds = %442
  %446 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 6, i32 0), align 8
  %447 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %448 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %447, i32 0, i32 2
  %449 = load i32*, i32** %448, align 8
  %450 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %451 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %450, i32 0, i32 9
  %452 = load i32, i32* %451, align 4
  %453 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %454 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %453, i32 0, i32 8
  %455 = load i32, i32* %454, align 8
  %456 = load i32, i32* @HCI_SUCCESS, align 4
  %457 = call i32 %446(i32* %449, i32 %452, i32 %455, i32 %456)
  br label %458

458:                                              ; preds = %445, %442
  %459 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %460 = call i32 @btm_sec_change_pairing_state(i64 %459)
  %461 = load i32, i32* %10, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %469

463:                                              ; preds = %458
  %464 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %465 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %464, i32 0, i32 2
  %466 = load i32*, i32** %465, align 8
  %467 = load i8*, i8** @TRUE, align 8
  %468 = call i32 @l2cu_update_lcb_4_bonding(i32* %466, i8* %467)
  br label %469

469:                                              ; preds = %463, %458
  br label %598

470:                                              ; preds = %407, %404
  %471 = load i64, i64* %6, align 8
  %472 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %473 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %472, i32 0, i32 10
  store i64 %471, i64* %473, align 8
  %474 = load i32*, i32** %5, align 8
  %475 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %476 = call %struct.TYPE_16__* @btm_bda_to_acl(i32* %474, i32 %475)
  store %struct.TYPE_16__* %476, %struct.TYPE_16__** %12, align 8
  %477 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %478 = icmp ne %struct.TYPE_16__* %477, null
  br i1 %478, label %479, label %491

479:                                              ; preds = %470
  %480 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %481 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 5), align 8
  %482 = call i32 @btm_set_packet_types(%struct.TYPE_16__* %480, i32 %481)
  %483 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 4), align 8
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %490

485:                                              ; preds = %479
  %486 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %487 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 4
  %489 = call i32 @BTM_SetLinkPolicy(i32 %488, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 4))
  br label %490

490:                                              ; preds = %485, %479
  br label %491

491:                                              ; preds = %490, %470
  %492 = load i32*, i32** %5, align 8
  %493 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %494 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %493, i32 0, i32 9
  %495 = load i32, i32* %494, align 4
  %496 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %497 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %496, i32 0, i32 8
  %498 = load i32, i32* %497, align 8
  %499 = load i64, i64* %6, align 8
  %500 = load i32, i32* @HCI_ROLE_SLAVE, align 4
  %501 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %502 = call i32 @btm_acl_created(i32* %492, i32 %495, i32 %498, i64 %499, i32 %500, i32 %501)
  %503 = load i32, i32* @BTM_SEC_AUTHORIZED, align 4
  %504 = load i32, i32* @BTM_SEC_AUTHENTICATED, align 4
  %505 = or i32 %503, %504
  %506 = load i32, i32* @BTM_SEC_ENCRYPTED, align 4
  %507 = or i32 %505, %506
  %508 = load i32, i32* @BTM_SEC_ROLE_SWITCHED, align 4
  %509 = or i32 %507, %508
  %510 = load i32, i32* %13, align 4
  %511 = shl i32 %509, %510
  %512 = xor i32 %511, -1
  %513 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %514 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %513, i32 0, i32 3
  %515 = load i32, i32* %514, align 8
  %516 = and i32 %515, %512
  store i32 %516, i32* %514, align 8
  %517 = load i32, i32* %8, align 4
  %518 = load i32, i32* @HCI_ENCRYPT_MODE_DISABLED, align 4
  %519 = icmp ne i32 %517, %518
  br i1 %519, label %520, label %530

520:                                              ; preds = %491
  %521 = load i32, i32* @BTM_SEC_AUTHENTICATED, align 4
  %522 = load i32, i32* @BTM_SEC_ENCRYPTED, align 4
  %523 = or i32 %521, %522
  %524 = load i32, i32* %13, align 4
  %525 = shl i32 %523, %524
  %526 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %527 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %526, i32 0, i32 3
  %528 = load i32, i32* %527, align 8
  %529 = or i32 %528, %525
  store i32 %529, i32* %527, align 8
  br label %530

530:                                              ; preds = %520, %491
  %531 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 3), align 8
  %532 = load i64, i64* @BTM_SEC_MODE_LINK, align 8
  %533 = icmp eq i64 %531, %532
  br i1 %533, label %534, label %542

534:                                              ; preds = %530
  %535 = load i32, i32* @BTM_SEC_AUTHENTICATED, align 4
  %536 = load i32, i32* %13, align 4
  %537 = shl i32 %535, %536
  %538 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %539 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %538, i32 0, i32 3
  %540 = load i32, i32* %539, align 8
  %541 = or i32 %540, %537
  store i32 %541, i32* %539, align 8
  br label %542

542:                                              ; preds = %534, %530
  %543 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %544 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %543, i32 0, i32 5
  %545 = load i32, i32* %544, align 8
  %546 = icmp sge i32 %545, 16
  br i1 %546, label %559, label %547

547:                                              ; preds = %542
  %548 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %549 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %548, i32 0, i32 4
  %550 = load i64, i64* %549, align 8
  %551 = load i64, i64* @BTM_LKEY_TYPE_AUTH_COMB, align 8
  %552 = icmp eq i64 %550, %551
  br i1 %552, label %559, label %553

553:                                              ; preds = %547
  %554 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %555 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %554, i32 0, i32 4
  %556 = load i64, i64* %555, align 8
  %557 = load i64, i64* @BTM_LKEY_TYPE_AUTH_COMB_P_256, align 8
  %558 = icmp eq i64 %556, %557
  br i1 %558, label %559, label %567

559:                                              ; preds = %553, %547, %542
  %560 = load i32, i32* @BTM_SEC_16_DIGIT_PIN_AUTHED, align 4
  %561 = load i32, i32* %13, align 4
  %562 = shl i32 %560, %561
  %563 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %564 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %563, i32 0, i32 3
  %565 = load i32, i32* %564, align 8
  %566 = or i32 %565, %562
  store i32 %566, i32* %564, align 8
  br label %567

567:                                              ; preds = %559, %553
  %568 = load i8*, i8** @FALSE, align 8
  %569 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %570 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %569, i32 0, i32 7
  store i8* %568, i8** %570, align 8
  %571 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %572 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %571, i32 0, i32 6
  %573 = load i32, i32* %572, align 4
  %574 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %573)
  %575 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %576 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %575, i32 0, i32 3
  %577 = load i32, i32* %576, align 8
  %578 = load i32, i32* @BTM_SEC_NAME_KNOWN, align 4
  %579 = and i32 %577, %578
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %586

581:                                              ; preds = %567
  %582 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %583 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %582, i32 0, i32 6
  %584 = load i32, i32* %583, align 4
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %597

586:                                              ; preds = %581, %567
  %587 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %588 = call i32 @btm_sec_execute_procedure(%struct.TYPE_15__* %587)
  store i32 %588, i32* %10, align 4
  %589 = load i32, i32* @BTM_CMD_STARTED, align 4
  %590 = icmp ne i32 %588, %589
  br i1 %590, label %591, label %596

591:                                              ; preds = %586
  %592 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %593 = load i32, i32* %10, align 4
  %594 = load i8*, i8** @FALSE, align 8
  %595 = call i32 @btm_sec_dev_rec_cback_event(%struct.TYPE_15__* %592, i32 %593, i8* %594)
  br label %596

596:                                              ; preds = %591, %586
  br label %597

597:                                              ; preds = %596, %581
  br label %598

598:                                              ; preds = %597, %469, %403, %255, %250, %234, %170, %96
  ret void
}

declare dso_local %struct.TYPE_15__* @btm_find_dev(i32*) #1

declare dso_local i32 @btm_acl_resubmit_page(...) #1

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i32, i64, i32, i32, i32, ...) #1

declare dso_local i32 @btm_pair_state_descr(i64) #1

declare dso_local %struct.TYPE_15__* @btm_sec_alloc_dev(i32*) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @btm_sec_change_pairing_state(i64) #1

declare dso_local i32 @BTM_TRACE_WARNING(i8*, ...) #1

declare dso_local i32 @btu_start_timer(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @BTM_ReadRemoteDeviceName(i32*, i32*, i32) #1

declare dso_local i32 @l2cu_update_lcb_4_bonding(i32*, i8*) #1

declare dso_local i64 @BTM_SEC_IS_SM4_UNKNOWN(i32) #1

declare dso_local i32 @btm_restore_mode(...) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @btm_sec_dev_rec_cback_event(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @btm_send_link_key_notif(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @btm_bda_to_acl(i32*, i32) #1

declare dso_local i32 @btm_set_packet_types(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @BTM_SetLinkPolicy(i32, i64*) #1

declare dso_local i32 @btm_acl_created(i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @btm_sec_execute_procedure(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
