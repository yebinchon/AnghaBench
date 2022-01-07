; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_pin_code_request.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_pin_code_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32*, i32, i32*, i32*, i64, %struct.TYPE_11__, i32, i64, %struct.TYPE_15__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 (i32*, i32*, i32, i32)* }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@btm_cb = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [53 x i8] c"btm_sec_pin_code_request()  State: %s, BDA:%04x%08x\0A\00", align 1
@BTM_PAIR_STATE_IDLE = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_WAIT_AUTH_COMPLETE = common dso_local global i64 0, align 8
@BTM_PAIR_STATE_WAIT_PIN_REQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"btm_sec_pin_code_request() rejected - state: %s\0A\00", align 1
@BTM_SM4_KNOWN = common dso_local global i32 0, align 4
@BTM_PAIR_FLAGS_PEER_STARTED_DD = common dso_local global i32 0, align 4
@HCI_PIN_TYPE_FIXED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"btm_sec_pin_code_request fixed pin replying\0A\00", align 1
@DEV_CLASS_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"btm_sec_pin_code_request bonding sending reply\0A\00", align 1
@BTM_COD_MAJOR_CLASS_MASK = common dso_local global i32 0, align 4
@BTM_COD_MAJOR_PERIPHERAL = common dso_local global i32 0, align 4
@BTM_COD_MINOR_KEYBOARD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [79 x i8] c"btm_sec_pin_code_request(): Pairing disabled:%d; PIN callback:%p, Dev Rec:%p!\0A\00", align 1
@BTM_PAIR_STATE_WAIT_LOCAL_PIN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [45 x i8] c"btm_sec_pin_code_request going for callback\0A\00", align 1
@BTM_PAIR_FLAGS_PIN_REQD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BTM_SEC_IN_MIN_16_DIGIT_PIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_sec_pin_code_request(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_14__* @btm_cb, %struct.TYPE_14__** %4, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 0), align 8
  %6 = call i32 @btm_pair_state_descr(i64 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 8
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %10, %13
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 24
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 16
  %23 = add nsw i32 %18, %22
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 8
  %28 = add nsw i32 %23, %27
  %29 = load i32*, i32** %2, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = call i32 (i8*, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %14, i32 %32)
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 0), align 8
  %35 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %83

37:                                               ; preds = %1
  %38 = load i32*, i32** %2, align 8
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 1), align 8
  %40 = load i32, i32* @BD_ADDR_LEN, align 4
  %41 = call i64 @memcmp(i32* %38, i32* %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 0), align 8
  %45 = load i64, i64* @BTM_PAIR_STATE_WAIT_AUTH_COMPLETE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 2), align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @btsnd_hcic_pin_code_neg_reply(i32* %51)
  br label %293

53:                                               ; preds = %47
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 2), align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 9
  %58 = bitcast %struct.TYPE_15__* %57 to { i64, i64 }*
  %59 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %58, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @btsnd_hcic_pin_code_req_reply(i32* %54, i32 %55, i64 %60, i64 %62)
  br label %293

64:                                               ; preds = %43, %37
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 0), align 8
  %66 = load i64, i64* @BTM_PAIR_STATE_WAIT_PIN_REQ, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = load i32*, i32** %2, align 8
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 1), align 8
  %71 = load i32, i32* @BD_ADDR_LEN, align 4
  %72 = call i64 @memcmp(i32* %69, i32* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68, %64
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 0), align 8
  %76 = call i32 @btm_pair_state_descr(i64 %75)
  %77 = sext i32 %76 to i64
  %78 = call i32 (i8*, i64, ...) @BTM_TRACE_WARNING(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @btsnd_hcic_pin_code_neg_reply(i32* %79)
  br label %293

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82, %1
  %84 = load i32*, i32** %2, align 8
  %85 = call %struct.TYPE_13__* @btm_find_or_alloc_dev(i32* %84)
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %3, align 8
  %86 = load i32, i32* @BTM_SM4_KNOWN, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 0), align 8
  %90 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %83
  %93 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 1), align 8
  %94 = load i32*, i32** %2, align 8
  %95 = load i32, i32* @BD_ADDR_LEN, align 4
  %96 = call i32 @memcpy(i32* %93, i32* %94, i32 %95)
  %97 = load i32, i32* @BTM_PAIR_FLAGS_PEER_STARTED_DD, align 4
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 7), align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @BTM_SEC_CLR_TRUSTED_DEVICE(i32 %100)
  br label %102

102:                                              ; preds = %92, %83
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %132, label %107

107:                                              ; preds = %102
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 10
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @HCI_PIN_TYPE_FIXED, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %107
  %115 = call i32 (i8*, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i64, i64* @BTM_PAIR_STATE_WAIT_AUTH_COMPLETE, align 8
  %117 = call i32 @btm_sec_change_pairing_state(i64 %116)
  %118 = load i32*, i32** %2, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 10
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 10
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = bitcast %struct.TYPE_15__* %125 to { i64, i64 }*
  %127 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 4
  %129 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %126, i32 0, i32 1
  %130 = load i64, i64* %129, align 4
  %131 = call i32 @btsnd_hcic_pin_code_req_reply(i32* %118, i32 %122, i64 %128, i64 %130)
  br label %293

132:                                              ; preds = %107, %102
  %133 = load i32*, i32** %2, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* @BD_ADDR_LEN, align 4
  %138 = call i64 @memcmp(i32* %133, i32* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %170, label %140

140:                                              ; preds = %132
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %161, label %147

147:                                              ; preds = %140
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %147
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %154, %147, %140
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 4
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* @DEV_CLASS_LEN, align 4
  %169 = call i32 @memcpy(i32* %164, i32* %167, i32 %168)
  br label %170

170:                                              ; preds = %161, %154, %132
  %171 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 5), align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %188

173:                                              ; preds = %170
  %174 = call i32 (i8*, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %175 = load i32*, i32** %2, align 8
  %176 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 5), align 8
  %177 = trunc i64 %176 to i32
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 9
  %180 = bitcast %struct.TYPE_15__* %179 to { i64, i64 }*
  %181 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %180, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @btsnd_hcic_pin_code_req_reply(i32* %175, i32 %177, i64 %182, i64 %184)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 5), align 8
  %186 = load i64, i64* @BTM_PAIR_STATE_WAIT_AUTH_COMPLETE, align 8
  %187 = call i32 @btm_sec_change_pairing_state(i64 %186)
  br label %292

188:                                              ; preds = %170
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 8
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %223, label %193

193:                                              ; preds = %188
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 6
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %196, align 8
  %198 = icmp eq i32 (i32*, i32*, i32, i32)* %197, null
  br i1 %198, label %223, label %199

199:                                              ; preds = %193
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %235, label %204

204:                                              ; preds = %199
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @BTM_COD_MAJOR_CLASS_MASK, align 4
  %211 = and i32 %209, %210
  %212 = load i32, i32* @BTM_COD_MAJOR_PERIPHERAL, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %235

214:                                              ; preds = %204
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @BTM_COD_MINOR_KEYBOARD, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %235

223:                                              ; preds = %214, %193, %188
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 8
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 6
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %229, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %232 = call i32 (i8*, i64, ...) @BTM_TRACE_WARNING(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i64 %226, i32 (i32*, i32*, i32, i32)* %230, %struct.TYPE_13__* %231)
  %233 = load i32*, i32** %2, align 8
  %234 = call i32 @btsnd_hcic_pin_code_neg_reply(i32* %233)
  br label %291

235:                                              ; preds = %214, %204, %199
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 2), align 8
  %236 = load i64, i64* @BTM_PAIR_STATE_WAIT_LOCAL_PIN, align 8
  %237 = call i32 @btm_sec_change_pairing_state(i64 %236)
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 3
  %240 = load i32*, i32** %239, align 8
  %241 = load i32*, i32** %2, align 8
  %242 = load i32, i32* @BD_ADDR_LEN, align 4
  %243 = call i32 @memcpy(i32* %240, i32* %241, i32 %242)
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 4
  %246 = load i32*, i32** %245, align 8
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* @DEV_CLASS_LEN, align 4
  %251 = call i32 @memcpy(i32* %246, i32* %249, i32 %250)
  %252 = call i32 (i8*, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %253 = load i32, i32* @BTM_PAIR_FLAGS_PIN_REQD, align 4
  %254 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 7), align 8
  %255 = or i32 %254, %253
  store i32 %255, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 7), align 8
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 6
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %258, align 8
  %260 = icmp ne i32 (i32*, i32*, i32, i32)* %259, null
  br i1 %260, label %261, label %290

261:                                              ; preds = %235
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 6
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 0
  %265 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %264, align 8
  %266 = load i32*, i32** %2, align 8
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %274, align 8
  %276 = icmp eq %struct.TYPE_12__* %275, null
  br i1 %276, label %277, label %279

277:                                              ; preds = %261
  %278 = load i32, i32* @FALSE, align 4
  br label %287

279:                                              ; preds = %261
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @BTM_SEC_IN_MIN_16_DIGIT_PIN, align 4
  %286 = and i32 %284, %285
  br label %287

287:                                              ; preds = %279, %277
  %288 = phi i32 [ %278, %277 ], [ %286, %279 ]
  %289 = call i32 %265(i32* %266, i32* %269, i32 %272, i32 %288)
  br label %290

290:                                              ; preds = %287, %235
  br label %291

291:                                              ; preds = %290, %223
  br label %292

292:                                              ; preds = %291, %173
  br label %293

293:                                              ; preds = %292, %114, %74, %53, %50
  ret void
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*, ...) #1

declare dso_local i32 @btm_pair_state_descr(i64) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @btsnd_hcic_pin_code_neg_reply(i32*) #1

declare dso_local i32 @btsnd_hcic_pin_code_req_reply(i32*, i32, i64, i64) #1

declare dso_local i32 @BTM_TRACE_WARNING(i8*, i64, ...) #1

declare dso_local %struct.TYPE_13__* @btm_find_or_alloc_dev(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @BTM_SEC_CLR_TRUSTED_DEVICE(i32) #1

declare dso_local i32 @btm_sec_change_pairing_state(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
