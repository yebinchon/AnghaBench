; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_proc_sp_req_evt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_proc_sp_req_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { i64 (i32, %struct.TYPE_14__*)* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32*, i32*, i64, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i32, i32 }

@BTM_ERR_PROCESSING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"btm_proc_sp_req_evt() BDA: %08x%04x event: 0x%x, State: %s\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@BTM_PAIR_STATE_IDLE = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@DEV_CLASS_LEN = common dso_local global i32 0, align 4
@BTM_MAX_REM_BD_NAME_LEN = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_WAIT_NUMERIC_CONFIRM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@BTM_IO_CAP_IO = common dso_local global i32 0, align 4
@BTM_AUTH_SP_YES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [78 x i8] c"btm_proc_sp_req_evt()  just_works:%d, io loc:%d, rmt:%d, auth loc:%d, rmt:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"BTM_SP_KEY_NOTIF_EVT:  passkey: %u\0A\00", align 1
@BTM_PAIR_STATE_WAIT_AUTH_COMPLETE = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_KEY_ENTRY = common dso_local global i32 0, align 4
@BTM_NOT_AUTHORIZED = common dso_local global i64 0, align 8
@BTM_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"calling BTM_ConfirmReqReply with status: %d\0A\00", align 1
@HCI_ERR_HOST_REJECT_SECURITY = common dso_local global i32 0, align 4
@HCI_ERR_AUTH_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_proc_sp_req_evt(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i64, i64* @BTM_ERR_PROCESSING, align 8
  store i64 %9, i64* %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @STREAM_TO_BDADDR(i32* %13, i32* %14)
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 24
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 16
  %24 = add nsw i32 %19, %23
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 8
  %29 = add nsw i32 %24, %28
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 8
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 5
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = load i32, i32* %3, align 4
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 0), align 8
  %44 = call i32 @btm_pair_state_descr(i64 %43)
  %45 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %41, i32 %42, i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = call %struct.TYPE_15__* @btm_find_dev(i32* %46)
  store %struct.TYPE_15__* %47, %struct.TYPE_15__** %8, align 8
  %48 = icmp ne %struct.TYPE_15__* %47, null
  br i1 %48, label %49, label %209

49:                                               ; preds = %2
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 0), align 8
  %51 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %209

53:                                               ; preds = %49
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 4), align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @BD_ADDR_LEN, align 4
  %57 = call i64 @memcmp(i32 %54, i32* %55, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %209

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BD_ADDR_LEN, align 4
  %67 = call i32 @memcpy(i32* %62, i32 %65, i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DEV_CLASS_LEN, align 4
  %75 = call i32 @memcpy(i32* %70, i32 %73, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 8
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = load i32, i32* @BTM_MAX_REM_BD_NAME_LEN, align 4
  %85 = call i32 @BCM_STRNCPY_S(i8* %79, i32 8, i8* %83, i32 %84)
  %86 = load i32, i32* %3, align 4
  switch i32 %86, label %167 [
    i32 130, label %87
    i32 129, label %152
    i32 128, label %164
  ]

87:                                               ; preds = %59
  %88 = load i32, i32* @BTM_PAIR_STATE_WAIT_NUMERIC_CONFIRM, align 4
  %89 = call i32 @btm_sec_change_pairing_state(i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @STREAM_TO_UINT32(i64 %92, i32* %93)
  %95 = load i64, i64* @TRUE, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 3
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @BTM_IO_CAP_IO, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %87
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 3, i32 1), align 4
  %105 = load i32, i32* @BTM_IO_CAP_IO, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %103
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @BTM_AUTH_SP_YES, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 3, i32 0), align 8
  %116 = load i32, i32* @BTM_AUTH_SP_YES, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114, %107
  %120 = load i64, i64* @FALSE, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 3
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %119, %114, %103, %87
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 3, i32 1), align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 3, i32 0), align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i8*, i64, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i64 %126, i32 %127, i32 %130, i32 %131, i32 %134)
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 3, i32 0), align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 3, i32 1), align 4
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 7
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 6
  store i32 %149, i32* %151, align 8
  br label %167

152:                                              ; preds = %59
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i32*, i32** %4, align 8
  %157 = call i32 @STREAM_TO_UINT32(i64 %155, i32* %156)
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i32 (i8*, i64, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %160)
  %162 = load i32, i32* @BTM_PAIR_STATE_WAIT_AUTH_COMPLETE, align 4
  %163 = call i32 @btm_sec_change_pairing_state(i32 %162)
  br label %167

164:                                              ; preds = %59
  %165 = load i32, i32* @BTM_PAIR_STATE_KEY_ENTRY, align 4
  %166 = call i32 @btm_sec_change_pairing_state(i32 %165)
  br label %167

167:                                              ; preds = %59, %164, %152, %123
  %168 = load i64 (i32, %struct.TYPE_14__*)*, i64 (i32, %struct.TYPE_14__*)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 2, i32 0), align 8
  %169 = icmp ne i64 (i32, %struct.TYPE_14__*)* %168, null
  br i1 %169, label %170, label %179

170:                                              ; preds = %167
  %171 = load i64 (i32, %struct.TYPE_14__*)*, i64 (i32, %struct.TYPE_14__*)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 2, i32 0), align 8
  %172 = load i32, i32* %3, align 4
  %173 = call i64 %171(i32 %172, %struct.TYPE_14__* %6)
  store i64 %173, i64* %5, align 8
  %174 = load i64, i64* %5, align 8
  %175 = load i64, i64* @BTM_NOT_AUTHORIZED, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  br label %235

178:                                              ; preds = %170
  br label %191

179:                                              ; preds = %167
  %180 = load i32, i32* %3, align 4
  %181 = icmp eq i32 %180, 130
  br i1 %181, label %182, label %190

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @TRUE, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = load i64, i64* @BTM_SUCCESS, align 8
  store i64 %189, i64* %5, align 8
  br label %190

190:                                              ; preds = %188, %182, %179
  br label %191

191:                                              ; preds = %190, %178
  %192 = load i32, i32* %3, align 4
  %193 = icmp eq i32 %192, 130
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load i64, i64* %5, align 8
  %196 = call i32 (i8*, i64, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %195)
  %197 = load i64, i64* %5, align 8
  %198 = load i32*, i32** %7, align 8
  %199 = call i32 @BTM_ConfirmReqReply(i64 %197, i32* %198)
  br label %208

200:                                              ; preds = %191
  %201 = load i32, i32* %3, align 4
  %202 = icmp eq i32 %201, 128
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load i64, i64* %5, align 8
  %205 = load i32*, i32** %7, align 8
  %206 = call i32 @BTM_PasskeyReqReply(i64 %204, i32* %205, i32 0)
  br label %207

207:                                              ; preds = %203, %200
  br label %208

208:                                              ; preds = %207, %194
  br label %235

209:                                              ; preds = %53, %49, %2
  %210 = load i32, i32* @HCI_ERR_HOST_REJECT_SECURITY, align 4
  store i32 %210, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 1), align 8
  %211 = load i32, i32* %3, align 4
  %212 = icmp eq i32 130, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = load i32*, i32** %7, align 8
  %215 = load i64, i64* @FALSE, align 8
  %216 = call i32 @btsnd_hcic_user_conf_reply(i32* %214, i64 %215)
  br label %235

217:                                              ; preds = %209
  %218 = load i32, i32* %3, align 4
  %219 = icmp eq i32 129, %218
  br i1 %219, label %220, label %231

220:                                              ; preds = %217
  %221 = load i32*, i32** %7, align 8
  %222 = call %struct.TYPE_15__* @btm_find_dev(i32* %221)
  store %struct.TYPE_15__* %222, %struct.TYPE_15__** %8, align 8
  %223 = icmp ne %struct.TYPE_15__* null, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %220
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @HCI_ERR_AUTH_FAILURE, align 4
  %229 = call i32 @btm_sec_disconnect(i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %224, %220
  br label %234

231:                                              ; preds = %217
  %232 = load i32*, i32** %7, align 8
  %233 = call i32 @btsnd_hcic_user_passkey_neg_reply(i32* %232)
  br label %234

234:                                              ; preds = %231, %230
  br label %235

235:                                              ; preds = %177, %208, %234, %213
  ret void
}

declare dso_local i32 @STREAM_TO_BDADDR(i32*, i32*) #1

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @btm_pair_state_descr(i64) #1

declare dso_local %struct.TYPE_15__* @btm_find_dev(i32*) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @BCM_STRNCPY_S(i8*, i32, i8*, i32) #1

declare dso_local i32 @btm_sec_change_pairing_state(i32) #1

declare dso_local i32 @STREAM_TO_UINT32(i64, i32*) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i64, ...) #1

declare dso_local i32 @BTM_ConfirmReqReply(i64, i32*) #1

declare dso_local i32 @BTM_PasskeyReqReply(i64, i32*, i32) #1

declare dso_local i32 @btsnd_hcic_user_conf_reply(i32*, i64) #1

declare dso_local i32 @btm_sec_disconnect(i32, i32) #1

declare dso_local i32 @btsnd_hcic_user_passkey_neg_reply(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
