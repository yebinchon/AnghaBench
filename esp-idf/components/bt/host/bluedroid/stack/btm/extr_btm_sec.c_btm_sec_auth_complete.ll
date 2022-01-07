; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_auth_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_auth_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_10__, i32, i64 }
%struct.TYPE_10__ = type { i32 (i32*, i32, i32, i32)* }
%struct.TYPE_11__ = type { i64, i32*, i32, i32, i32, i64, i32, i64, i32, i32, i32 }

@btm_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [109 x i8] c"Security Manager: auth_complete PairState: %s  handle:%u  status:%d  dev->sec_state: %u  Bda:%08x, RName:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Security Manager: auth_complete PairState: %s  handle:%u  status:%d\0A\00", align 1
@HCI_ERR_LMP_ERR_TRANS_COLLISION = common dso_local global i32 0, align 4
@HCI_ERR_DIFF_TRANSACTION_COLLISION = common dso_local global i32 0, align 4
@BTM_PAIR_FLAGS_WE_STARTED_DD = common dso_local global i32 0, align 4
@BTM_PAIR_FLAGS_DISC_WHEN_DONE = common dso_local global i32 0, align 4
@BTM_SEC_OUT_AUTHENTICATE = common dso_local global i32 0, align 4
@BTM_SM4_RETRY = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_IDLE = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@BTM_SEC_STATE_AUTHENTICATING = common dso_local global i64 0, align 8
@HCI_SUCCESS = common dso_local global i32 0, align 4
@HCI_ERR_COMMAND_DISALLOWED = common dso_local global i32 0, align 4
@BTM_SEC_AUTHENTICATED = common dso_local global i32 0, align 4
@BTM_SEC_ENCRYPTED = common dso_local global i32 0, align 4
@BTM_SEC_STATE_IDLE = common dso_local global i64 0, align 8
@HCI_ERR_PEER_USER = common dso_local global i32 0, align 4
@HCI_ERR_CONN_CAUSE_LOCAL_HOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"TRYING TO DECIDE IF CAN USE SMP_BR_CHNL\0A\00", align 1
@BTM_SEC_LE_LINK_KEY_KNOWN = common dso_local global i32 0, align 4
@BTM_SEC_LE_LINK_KEY_AUTHED = common dso_local global i32 0, align 4
@BTM_SEC_LINK_KEY_AUTHED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"link encrypted afer dedic bonding can use SMP_BR_CHNL\0A\00", align 1
@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Collision retry sm4:x%x sec_flags:0x%x\0A\00", align 1
@HCI_ERR_KEY_MISSING = common dso_local global i32 0, align 4
@BTM_SEC_LINK_KEY_KNOWN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Retry for missing key sm4:x%x sec_flags:0x%x\0A\00", align 1
@BTM_ERR_PROCESSING = common dso_local global i32 0, align 4
@HCI_ERR_AUTH_FAILURE = common dso_local global i32 0, align 4
@BTM_LKEY_TYPE_AUTH_COMB = common dso_local global i64 0, align 8
@BTM_LKEY_TYPE_AUTH_COMB_P_256 = common dso_local global i64 0, align 8
@BTM_SEC_16_DIGIT_PIN_AUTHED = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_sec_auth_complete(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 0), align 8
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.TYPE_11__* @btm_find_dev_by_handle(i32 %10)
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %7, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %53

15:                                               ; preds = %2
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 0), align 8
  %17 = call i32 @btm_pair_state_descr(i64 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 24
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = add nsw i32 %28, %34
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = add nsw i32 %35, %41
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %42, %47
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i32, i32, i32, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i64 %22, i32 %48, i32 %51)
  br label %59

53:                                               ; preds = %2
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 0), align 8
  %55 = call i32 @btm_pair_state_descr(i64 %54)
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 (i8*, i32, i32, i32, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %15
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @HCI_ERR_LMP_ERR_TRANS_COLLISION, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @HCI_ERR_DIFF_TRANSACTION_COLLISION, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @btm_sec_auth_collision(i32 %68)
  br label %416

70:                                               ; preds = %63
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 4), align 8
  %71 = call i32 (...) @btm_restore_mode()
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %73 = icmp ne %struct.TYPE_11__* %72, null
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 1), align 8
  %76 = load i32, i32* @BTM_PAIR_FLAGS_WE_STARTED_DD, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %74
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 1), align 8
  %81 = load i32, i32* @BTM_PAIR_FLAGS_DISC_WHEN_DONE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @BTM_SEC_OUT_AUTHENTICATE, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @l2cu_start_post_bond_timer(i32 %93)
  br label %95

95:                                               ; preds = %84, %79, %74, %70
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %97 = icmp ne %struct.TYPE_11__* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  br label %416

99:                                               ; preds = %95
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* @BTM_SM4_RETRY, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 0), align 8
  %110 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %99
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 1), align 8
  %114 = load i32, i32* @BTM_PAIR_FLAGS_WE_STARTED_DD, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 3), align 8
  %122 = load i32, i32* @BD_ADDR_LEN, align 4
  %123 = call i64 @memcmp(i32* %120, i32 %121, i32 %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i64, i64* @TRUE, align 8
  store i64 %126, i64* %8, align 8
  br label %127

127:                                              ; preds = %125, %117, %112, %99
  %128 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 0), align 8
  %129 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %127
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 3), align 8
  %136 = load i32, i32* @BD_ADDR_LEN, align 4
  %137 = call i64 @memcmp(i32* %134, i32 %135, i32 %136)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %141 = call i32 @btm_sec_change_pairing_state(i64 %140)
  br label %142

142:                                              ; preds = %139, %131, %127
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @BTM_SEC_STATE_AUTHENTICATING, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %173

148:                                              ; preds = %142
  %149 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 2, i32 0), align 8
  %150 = icmp ne i32 (i32*, i32, i32, i32)* %149, null
  br i1 %150, label %151, label %172

151:                                              ; preds = %148
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @HCI_SUCCESS, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %151
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %155
  %160 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 2, i32 0), align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 10
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 9
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %4, align 4
  %171 = call i32 %160(i32* %163, i32 %166, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %159, %155, %151, %148
  br label %416

173:                                              ; preds = %142
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @HCI_ERR_COMMAND_DISALLOWED, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %173
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @BTM_SEC_AUTHENTICATED, align 4
  %182 = load i32, i32* @BTM_SEC_ENCRYPTED, align 4
  %183 = or i32 %181, %182
  %184 = and i32 %180, %183
  %185 = load i32, i32* @BTM_SEC_AUTHENTICATED, align 4
  %186 = load i32, i32* @BTM_SEC_ENCRYPTED, align 4
  %187 = or i32 %185, %186
  %188 = icmp eq i32 %184, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %177
  %190 = load i32, i32* @HCI_SUCCESS, align 4
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %189, %177, %173
  %192 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 2, i32 0), align 8
  %193 = icmp ne i32 (i32*, i32, i32, i32)* %192, null
  br i1 %193, label %194, label %212

194:                                              ; preds = %191
  %195 = load i64, i64* %6, align 8
  %196 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %211

198:                                              ; preds = %194
  %199 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 2, i32 0), align 8
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 10
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 9
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %4, align 4
  %210 = call i32 %199(i32* %202, i32 %205, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %198, %194
  br label %212

212:                                              ; preds = %211, %191
  %213 = load i64, i64* @BTM_SEC_STATE_IDLE, align 8
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  store i64 %213, i64* %215, align 8
  %216 = load i64, i64* %8, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %293

218:                                              ; preds = %212
  %219 = load i32, i32* @BTM_SEC_OUT_AUTHENTICATE, align 4
  %220 = xor i32 %219, -1
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 8
  %223 = load i32, i32* %222, align 8
  %224 = and i32 %223, %220
  store i32 %224, i32* %222, align 8
  %225 = load i32, i32* %4, align 4
  %226 = load i32, i32* @HCI_SUCCESS, align 4
  %227 = icmp ne i32 %225, %226
  br i1 %227, label %228, label %244

228:                                              ; preds = %218
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* @HCI_ERR_PEER_USER, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %243

232:                                              ; preds = %228
  %233 = load i32, i32* %4, align 4
  %234 = load i32, i32* @HCI_ERR_CONN_CAUSE_LOCAL_HOST, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %243

236:                                              ; preds = %232
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %238 = load i32, i32* @HCI_ERR_PEER_USER, align 4
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @btm_sec_send_hci_disconnect(%struct.TYPE_11__* %237, i32 %238, i32 %241)
  br label %243

243:                                              ; preds = %236, %232, %228
  br label %292

244:                                              ; preds = %218
  %245 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 7
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %287

250:                                              ; preds = %244
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %252 = call i64 @btm_sec_use_smp_br_chnl(%struct.TYPE_11__* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %287

254:                                              ; preds = %250
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @BTM_SEC_LE_LINK_KEY_KNOWN, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %275

261:                                              ; preds = %254
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @BTM_SEC_LE_LINK_KEY_AUTHED, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %287, label %268

268:                                              ; preds = %261
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @BTM_SEC_LINK_KEY_AUTHED, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %287

275:                                              ; preds = %268, %254
  %276 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %278 = call i64 @btm_sec_is_master(%struct.TYPE_11__* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %275
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %285 = call i32 @BTM_SetEncryption(i32* %283, i32 %284, i32* null, i32* null)
  br label %286

286:                                              ; preds = %280, %275
  br label %287

287:                                              ; preds = %286, %268, %261, %250, %244
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @l2cu_start_post_bond_timer(i32 %290)
  br label %292

292:                                              ; preds = %287, %243
  br label %416

293:                                              ; preds = %212
  %294 = load i32, i32* %4, align 4
  %295 = load i32, i32* @HCI_SUCCESS, align 4
  %296 = icmp ne i32 %294, %295
  br i1 %296, label %297, label %377

297:                                              ; preds = %293
  %298 = load i32, i32* %5, align 4
  %299 = load i32, i32* @BTM_SM4_RETRY, align 4
  %300 = and i32 %298, %299
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %360

302:                                              ; preds = %297
  %303 = load i32, i32* %4, align 4
  %304 = load i32, i32* @HCI_ERR_LMP_ERR_TRANS_COLLISION, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %319

306:                                              ; preds = %302
  %307 = load i32, i32* @BTM_SM4_RETRY, align 4
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = or i32 %310, %307
  store i32 %311, i32* %309, align 8
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %314, i32 %317)
  br label %349

319:                                              ; preds = %302
  %320 = load i32, i32* @HCI_ERR_KEY_MISSING, align 4
  %321 = load i32, i32* %4, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %348

323:                                              ; preds = %319
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = call i64 @BTM_SEC_IS_SM4(i32 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %348

329:                                              ; preds = %323
  %330 = load i32, i32* @BTM_SM4_RETRY, align 4
  %331 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = or i32 %333, %330
  store i32 %334, i32* %332, align 8
  %335 = load i32, i32* @BTM_SEC_LINK_KEY_KNOWN, align 4
  %336 = xor i32 %335, -1
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 4
  %340 = and i32 %339, %336
  store i32 %340, i32* %338, align 4
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  %347 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %343, i32 %346)
  br label %348

348:                                              ; preds = %329, %323, %319
  br label %349

349:                                              ; preds = %348, %306
  %350 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @BTM_SM4_RETRY, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %349
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %358 = call i32 @btm_sec_execute_procedure(%struct.TYPE_11__* %357)
  br label %416

359:                                              ; preds = %349
  br label %360

360:                                              ; preds = %359, %297
  %361 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %362 = load i32, i32* @BTM_ERR_PROCESSING, align 4
  %363 = load i64, i64* @FALSE, align 8
  %364 = call i32 @btm_sec_dev_rec_cback_event(%struct.TYPE_11__* %361, i32 %362, i64 %363)
  %365 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 1), align 8
  %366 = load i32, i32* @BTM_PAIR_FLAGS_DISC_WHEN_DONE, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %376

369:                                              ; preds = %360
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %371 = load i32, i32* @HCI_ERR_AUTH_FAILURE, align 4
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 6
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @btm_sec_send_hci_disconnect(%struct.TYPE_11__* %370, i32 %371, i32 %374)
  br label %376

376:                                              ; preds = %369, %360
  br label %416

377:                                              ; preds = %293
  %378 = load i32, i32* @BTM_SEC_AUTHENTICATED, align 4
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 4
  %382 = or i32 %381, %378
  store i32 %382, i32* %380, align 4
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 4
  %385 = load i32, i32* %384, align 8
  %386 = icmp sge i32 %385, 16
  br i1 %386, label %399, label %387

387:                                              ; preds = %377
  %388 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 0, i32 5
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @BTM_LKEY_TYPE_AUTH_COMB, align 8
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %399, label %393

393:                                              ; preds = %387
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 5
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* @BTM_LKEY_TYPE_AUTH_COMB_P_256, align 8
  %398 = icmp eq i64 %396, %397
  br i1 %398, label %399, label %405

399:                                              ; preds = %393, %387, %377
  %400 = load i32, i32* @BTM_SEC_16_DIGIT_PIN_AUTHED, align 4
  %401 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 4
  %404 = or i32 %403, %400
  store i32 %404, i32* %402, align 4
  br label %405

405:                                              ; preds = %399, %393
  %406 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %407 = call i32 @btm_sec_execute_procedure(%struct.TYPE_11__* %406)
  store i32 %407, i32* %4, align 4
  %408 = load i32, i32* %4, align 4
  %409 = load i32, i32* @BTM_CMD_STARTED, align 4
  %410 = icmp ne i32 %408, %409
  br i1 %410, label %411, label %416

411:                                              ; preds = %405
  %412 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %413 = load i32, i32* %4, align 4
  %414 = load i64, i64* @FALSE, align 8
  %415 = call i32 @btm_sec_dev_rec_cback_event(%struct.TYPE_11__* %412, i32 %413, i64 %414)
  br label %416

416:                                              ; preds = %67, %98, %172, %292, %356, %376, %411, %405
  ret void
}

declare dso_local %struct.TYPE_11__* @btm_find_dev_by_handle(i32) #1

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @btm_pair_state_descr(i64) #1

declare dso_local i32 @btm_sec_auth_collision(i32) #1

declare dso_local i32 @btm_restore_mode(...) #1

declare dso_local i32 @l2cu_start_post_bond_timer(i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @btm_sec_change_pairing_state(i64) #1

declare dso_local i32 @btm_sec_send_hci_disconnect(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, ...) #1

declare dso_local i64 @btm_sec_use_smp_br_chnl(%struct.TYPE_11__*) #1

declare dso_local i64 @btm_sec_is_master(%struct.TYPE_11__*) #1

declare dso_local i32 @BTM_SetEncryption(i32*, i32, i32*, i32*) #1

declare dso_local i64 @BTM_SEC_IS_SM4(i32) #1

declare dso_local i32 @btm_sec_execute_procedure(%struct.TYPE_11__*) #1

declare dso_local i32 @btm_sec_dev_rec_cback_event(%struct.TYPE_11__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
