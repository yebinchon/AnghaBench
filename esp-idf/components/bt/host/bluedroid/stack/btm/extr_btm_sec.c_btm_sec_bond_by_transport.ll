; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_bond_by_transport.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_bond_by_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i8*, %struct.TYPE_12__, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32, i64, i64, i32*, i32, i32, i64**, i32, i8*, i32, i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32 (...)* }

@.str = private unnamed_addr constant [62 x i8] c"btm_sec_bond_by_transport BDA: %02x:%02x:%02x:%02x:%02x:%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"btm_sec_bond_by_transport: Transport used %d\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@BTM_PAIR_STATE_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"BTM_SecBond: already busy in state: %s\0A\00", align 1
@BTM_WRONG_MODE = common dso_local global i64 0, align 8
@BTM_NO_RESOURCES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"before update sec_flags=0x%x\0A\00", align 1
@BTM_SEC_INVALID_HANDLE = common dso_local global i64 0, align 8
@BT_TRANSPORT_BR_EDR = common dso_local global i64 0, align 8
@BTM_SEC_AUTHENTICATED = common dso_local global i32 0, align 4
@BT_TRANSPORT_LE = common dso_local global i64 0, align 8
@BTM_SEC_LE_AUTHENTICATED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"BTM_SecBond -> Already Paired\0A\00", align 1
@BTM_SUCCESS = common dso_local global i64 0, align 8
@PIN_CODE_LEN = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i64 0, align 8
@BTM_PAIR_FLAGS_WE_STARTED_DD = common dso_local global i32 0, align 4
@BTM_SEC_OUT_AUTHENTICATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@BTM_SEC_LE_MASK = common dso_local global i32 0, align 4
@SMP_STARTED = common dso_local global i64 0, align 8
@BTM_PAIR_FLAGS_LE_ACTIVE = common dso_local global i32 0, align 4
@BTM_SEC_STATE_AUTHENTICATING = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_WAIT_AUTH_COMPLETE = common dso_local global i64 0, align 8
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@BTM_SEC_LINK_KEY_KNOWN = common dso_local global i32 0, align 4
@BTM_SEC_ENCRYPTED = common dso_local global i32 0, align 4
@BTM_SEC_ROLE_SWITCHED = common dso_local global i32 0, align 4
@BTM_SEC_LINK_KEY_AUTHED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"after update sec_flags=0x%x\0A\00", align 1
@BTM_COD_MAJOR_CLASS_MASK = common dso_local global i32 0, align 4
@BTM_COD_MAJOR_PERIPHERAL = common dso_local global i32 0, align 4
@BTM_COD_MINOR_KEYBOARD = common dso_local global i32 0, align 4
@HCI_PIN_TYPE_FIXED = common dso_local global i64 0, align 8
@HCI_EXT_FEATURES_PAGE_MAX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [51 x i8] c"  remote_features page[%1d] = %02x-%02x-%02x-%02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"                              %02x-%02x-%02x-%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"BTM_SecBond: Remote sm4: 0x%x  HCI Handle: 0x%04x\0A\00", align 1
@BTM_SEC_NAME_KNOWN = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_WAIT_PIN_REQ = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"sec mode: %d sm4:x%x\0A\00", align 1
@BTM_SM4_KNOWN = common dso_local global i32 0, align 4
@BTM_SEC_MODE_SP = common dso_local global i32 0, align 4
@BTM_SEC_MODE_SP_DEBUG = common dso_local global i32 0, align 4
@BTM_SEC_MODE_SC = common dso_local global i32 0, align 4
@BTM_SM4_CONN_PEND = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_GET_REM_NAME = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [33 x i8] c"State:%s sm4: 0x%x sec_state:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btm_sec_bond_by_transport(i64* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  store i64* %0, i64** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call %struct.TYPE_14__* @btm_bda_to_acl(i64* %17, i64 %18)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %16, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 4
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 5
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %25, i64 %28, i64 %31, i64 %34, i64 %37)
  %39 = load i64, i64* %8, align 8
  %40 = call i32 (i8*, i64, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 0), align 8
  %42 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %5
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 0), align 8
  %46 = call i32 @btm_pair_state_descr(i64 %45)
  %47 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i64, i64* @BTM_WRONG_MODE, align 8
  store i64 %48, i64* %6, align 8
  br label %387

49:                                               ; preds = %5
  %50 = load i64*, i64** %7, align 8
  %51 = call %struct.TYPE_13__* @btm_find_or_alloc_dev(i64* %50)
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %12, align 8
  %52 = icmp eq %struct.TYPE_13__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* @BTM_NO_RESOURCES, align 8
  store i64 %54, i64* %6, align 8
  br label %387

55:                                               ; preds = %49
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = call i32 (i8*, i64, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BTM_SEC_INVALID_HANDLE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %55
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @BT_TRANSPORT_BR_EDR, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @BTM_SEC_AUTHENTICATED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %70, %66, %55
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @BTM_SEC_INVALID_HANDLE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %77
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @BTM_SEC_LE_AUTHENTICATED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87, %70
  %95 = call i32 @BTM_TRACE_WARNING(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i64, i64* @BTM_SUCCESS, align 8
  store i64 %96, i64* %6, align 8
  br label %387

97:                                               ; preds = %87, %83, %77
  %98 = load i64*, i64** %7, align 8
  %99 = call i64 @BTM_DeleteStoredLinkKey(i64* %98, i32* null)
  %100 = load i64, i64* @BTM_SUCCESS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i64, i64* @BTM_NO_RESOURCES, align 8
  store i64 %103, i64* %6, align 8
  br label %387

104:                                              ; preds = %97
  %105 = load i64*, i64** %10, align 8
  %106 = icmp ne i64* %105, null
  br i1 %106, label %107, label %123

107:                                              ; preds = %104
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* @PIN_CODE_LEN, align 8
  %110 = icmp sle i64 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = load i64, i64* %9, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i64, i64* %9, align 8
  store i64 %115, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 7), align 8
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 10
  store i64 %116, i64* %118, align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 6), align 8
  %120 = load i64*, i64** %10, align 8
  %121 = load i64, i64* @PIN_CODE_LEN, align 8
  %122 = call i32 @memcpy(i32 %119, i64* %120, i64 %121)
  br label %123

123:                                              ; preds = %114, %111, %107, %104
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 5), align 4
  %125 = load i64*, i64** %7, align 8
  %126 = load i64, i64* @BD_ADDR_LEN, align 8
  %127 = call i32 @memcpy(i32 %124, i64* %125, i64 %126)
  %128 = load i32, i32* @BTM_PAIR_FLAGS_WE_STARTED_DD, align 4
  store i32 %128, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 4), align 8
  %129 = load i32, i32* @BTM_SEC_OUT_AUTHENTICATE, align 4
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 9
  store i32 %129, i32* %131, align 8
  %132 = load i8*, i8** @TRUE, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 8
  store i8* %132, i8** %134, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %123
  %138 = load i32*, i32** %11, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @BTM_SEC_COPY_TRUSTED_DEVICE(i32* %138, i32 %141)
  br label %143

143:                                              ; preds = %137, %123
  %144 = load i64, i64* %8, align 8
  %145 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %173

147:                                              ; preds = %143
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %149 = load i64*, i64** %7, align 8
  %150 = call i32 @btm_ble_init_pseudo_addr(%struct.TYPE_13__* %148, i64* %149)
  %151 = load i32, i32* @BTM_SEC_LE_MASK, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 8
  %157 = load i64*, i64** %7, align 8
  %158 = call i64 @SMP_Pair(i64* %157)
  %159 = load i64, i64* @SMP_STARTED, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %147
  %162 = load i32, i32* @BTM_PAIR_FLAGS_LE_ACTIVE, align 4
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 4), align 8
  %164 = or i32 %163, %162
  store i32 %164, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 4), align 8
  %165 = load i32, i32* @BTM_SEC_STATE_AUTHENTICATING, align 4
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 5
  store i32 %165, i32* %167, align 4
  %168 = load i64, i64* @BTM_PAIR_STATE_WAIT_AUTH_COMPLETE, align 8
  %169 = call i32 @btm_sec_change_pairing_state(i64 %168)
  %170 = load i64, i64* @BTM_CMD_STARTED, align 8
  store i64 %170, i64* %6, align 8
  br label %387

171:                                              ; preds = %147
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 4), align 8
  %172 = load i64, i64* @BTM_NO_RESOURCES, align 8
  store i64 %172, i64* %6, align 8
  br label %387

173:                                              ; preds = %143
  %174 = load i32, i32* @BTM_SEC_LINK_KEY_KNOWN, align 4
  %175 = load i32, i32* @BTM_SEC_AUTHENTICATED, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @BTM_SEC_ENCRYPTED, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @BTM_SEC_ROLE_SWITCHED, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @BTM_SEC_LINK_KEY_AUTHED, align 4
  %182 = or i32 %180, %181
  %183 = xor i32 %182, -1
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = call i32 (i8*, i64, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %191)
  %193 = call %struct.TYPE_15__* (...) @controller_get_interface()
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load i32 (...)*, i32 (...)** %194, align 8
  %196 = call i32 (...) %195()
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %226, label %198

198:                                              ; preds = %173
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @BTM_COD_MAJOR_CLASS_MASK, align 4
  %205 = and i32 %203, %204
  %206 = load i32, i32* @BTM_COD_MAJOR_PERIPHERAL, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %225

208:                                              ; preds = %198
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 3
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 2
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @BTM_COD_MINOR_KEYBOARD, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %208
  %218 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 3, i32 0), align 8
  %219 = load i64, i64* @HCI_PIN_TYPE_FIXED, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = load i8*, i8** @TRUE, align 8
  store i8* %222, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 2), align 8
  %223 = load i64, i64* @HCI_PIN_TYPE_FIXED, align 8
  %224 = call i32 @btsnd_hcic_write_pin_type(i64 %223)
  br label %225

225:                                              ; preds = %221, %217, %208, %198
  br label %226

226:                                              ; preds = %225, %173
  store i64 0, i64* %15, align 8
  br label %227

227:                                              ; preds = %267, %226
  %228 = load i64, i64* %15, align 8
  %229 = load i64, i64* @HCI_EXT_FEATURES_PAGE_MAX, align 8
  %230 = icmp sle i64 %228, %229
  br i1 %230, label %231, label %270

231:                                              ; preds = %227
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 6
  %234 = load i64**, i64*** %233, align 8
  %235 = load i64, i64* %15, align 8
  %236 = getelementptr inbounds i64*, i64** %234, i64 %235
  %237 = load i64*, i64** %236, align 8
  store i64* %237, i64** %14, align 8
  %238 = load i64, i64* %15, align 8
  %239 = trunc i64 %238 to i32
  %240 = load i64*, i64** %14, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64*, i64** %14, align 8
  %244 = getelementptr inbounds i64, i64* %243, i64 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64*, i64** %14, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 2
  %248 = load i64, i64* %247, align 8
  %249 = load i64*, i64** %14, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 3
  %251 = load i64, i64* %250, align 8
  %252 = call i32 (i8*, i32, i64, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %239, i64 %242, i64 %245, i64 %248, i64 %251)
  %253 = load i64*, i64** %14, align 8
  %254 = getelementptr inbounds i64, i64* %253, i64 4
  %255 = load i64, i64* %254, align 8
  %256 = trunc i64 %255 to i32
  %257 = load i64*, i64** %14, align 8
  %258 = getelementptr inbounds i64, i64* %257, i64 5
  %259 = load i64, i64* %258, align 8
  %260 = load i64*, i64** %14, align 8
  %261 = getelementptr inbounds i64, i64* %260, i64 6
  %262 = load i64, i64* %261, align 8
  %263 = load i64*, i64** %14, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 7
  %265 = load i64, i64* %264, align 8
  %266 = call i32 (i8*, i32, i64, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %256, i64 %259, i64 %262, i64 %265)
  br label %267

267:                                              ; preds = %231
  %268 = load i64, i64* %15, align 8
  %269 = add nsw i64 %268, 1
  store i64 %269, i64* %15, align 8
  br label %227

270:                                              ; preds = %227
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = call i32 (i8*, i32, i64, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %273, i64 %276)
  %278 = load i32, i32* @BTM_SEC_NAME_KNOWN, align 4
  %279 = xor i32 %278, -1
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = and i32 %282, %279
  store i32 %283, i32* %281, align 8
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %285 = icmp ne %struct.TYPE_14__* %284, null
  br i1 %285, label %286, label %305

286:                                              ; preds = %270
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @BTM_SEC_INVALID_HANDLE, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %305

292:                                              ; preds = %286
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %294 = call i32 @btm_sec_start_authentication(%struct.TYPE_13__* %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %298, label %296

296:                                              ; preds = %292
  %297 = load i64, i64* @BTM_NO_RESOURCES, align 8
  store i64 %297, i64* %6, align 8
  br label %387

298:                                              ; preds = %292
  %299 = load i64, i64* @BTM_PAIR_STATE_WAIT_PIN_REQ, align 8
  %300 = call i32 @btm_sec_change_pairing_state(i64 %299)
  %301 = load i64*, i64** %7, align 8
  %302 = load i8*, i8** @TRUE, align 8
  %303 = call i32 @l2cu_update_lcb_4_bonding(i64* %301, i8* %302)
  %304 = load i64, i64* @BTM_CMD_STARTED, align 8
  store i64 %304, i64* %6, align 8
  br label %387

305:                                              ; preds = %286, %270
  %306 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 1), align 8
  %307 = sext i32 %306 to i64
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 8
  %311 = call i32 (i8*, i64, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i64 %307, i32 %310)
  %312 = call %struct.TYPE_15__* (...) @controller_get_interface()
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 0
  %314 = load i32 (...)*, i32 (...)** %313, align 8
  %315 = call i32 (...) %314()
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %305
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @BTM_SM4_KNOWN, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %330

323:                                              ; preds = %317, %305
  %324 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %325 = call i64 @btm_sec_check_prefetch_pin(%struct.TYPE_13__* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %323
  %328 = load i64, i64* @BTM_CMD_STARTED, align 8
  store i64 %328, i64* %6, align 8
  br label %387

329:                                              ; preds = %323
  br label %330

330:                                              ; preds = %329, %317
  %331 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 1), align 8
  %332 = load i32, i32* @BTM_SEC_MODE_SP, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %342, label %334

334:                                              ; preds = %330
  %335 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 1), align 8
  %336 = load i32, i32* @BTM_SEC_MODE_SP_DEBUG, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %342, label %338

338:                                              ; preds = %334
  %339 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 1), align 8
  %340 = load i32, i32* @BTM_SEC_MODE_SC, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %376

342:                                              ; preds = %338, %334, %330
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 8
  %346 = call i64 @BTM_SEC_IS_SM4_UNKNOWN(i32 %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %376

348:                                              ; preds = %342
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @BTM_SM4_CONN_PEND, align 4
  %353 = and i32 %351, %352
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %348
  %356 = load i64, i64* @BTM_PAIR_STATE_GET_REM_NAME, align 8
  %357 = call i32 @btm_sec_change_pairing_state(i64 %356)
  %358 = load i64*, i64** %7, align 8
  %359 = load i64, i64* @BT_TRANSPORT_BR_EDR, align 8
  %360 = call i32 @BTM_ReadRemoteDeviceName(i64* %358, i32* null, i64 %359)
  br label %364

361:                                              ; preds = %348
  %362 = load i64, i64* @BTM_PAIR_STATE_WAIT_PIN_REQ, align 8
  %363 = call i32 @btm_sec_change_pairing_state(i64 %362)
  br label %364

364:                                              ; preds = %361, %355
  %365 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 0), align 8
  %366 = call i32 @btm_pair_state_descr(i64 %365)
  %367 = sext i32 %366 to i64
  %368 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %369 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %368, i32 0, i32 4
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 5
  %373 = load i32, i32* %372, align 4
  %374 = call i32 (i8*, i64, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i64 %367, i32 %370, i32 %373)
  %375 = load i64, i64* @BTM_CMD_STARTED, align 8
  store i64 %375, i64* %6, align 8
  br label %387

376:                                              ; preds = %342, %338
  %377 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %378 = call i64 @btm_sec_dd_create_conn(%struct.TYPE_13__* %377)
  store i64 %378, i64* %13, align 8
  %379 = load i64, i64* %13, align 8
  %380 = load i64, i64* @BTM_CMD_STARTED, align 8
  %381 = icmp ne i64 %379, %380
  br i1 %381, label %382, label %385

382:                                              ; preds = %376
  %383 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %384 = call i32 @btm_sec_change_pairing_state(i64 %383)
  br label %385

385:                                              ; preds = %382, %376
  %386 = load i64, i64* %13, align 8
  store i64 %386, i64* %6, align 8
  br label %387

387:                                              ; preds = %385, %364, %327, %298, %296, %171, %161, %102, %94, %53, %44
  %388 = load i64, i64* %6, align 8
  ret i64 %388
}

declare dso_local %struct.TYPE_14__* @btm_bda_to_acl(i64*, i64) #1

declare dso_local i32 @BTM_TRACE_API(i8*, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i64, ...) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*, i32) #1

declare dso_local i32 @btm_pair_state_descr(i64) #1

declare dso_local %struct.TYPE_13__* @btm_find_or_alloc_dev(i64*) #1

declare dso_local i32 @BTM_TRACE_WARNING(i8*) #1

declare dso_local i64 @BTM_DeleteStoredLinkKey(i64*, i32*) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

declare dso_local i32 @BTM_SEC_COPY_TRUSTED_DEVICE(i32*, i32) #1

declare dso_local i32 @btm_ble_init_pseudo_addr(%struct.TYPE_13__*, i64*) #1

declare dso_local i64 @SMP_Pair(i64*) #1

declare dso_local i32 @btm_sec_change_pairing_state(i64) #1

declare dso_local %struct.TYPE_15__* @controller_get_interface(...) #1

declare dso_local i32 @btsnd_hcic_write_pin_type(i64) #1

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i32, i64, ...) #1

declare dso_local i32 @btm_sec_start_authentication(%struct.TYPE_13__*) #1

declare dso_local i32 @l2cu_update_lcb_4_bonding(i64*, i8*) #1

declare dso_local i64 @btm_sec_check_prefetch_pin(%struct.TYPE_13__*) #1

declare dso_local i64 @BTM_SEC_IS_SM4_UNKNOWN(i32) #1

declare dso_local i32 @BTM_ReadRemoteDeviceName(i64*, i32*, i64) #1

declare dso_local i64 @btm_sec_dd_create_conn(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
