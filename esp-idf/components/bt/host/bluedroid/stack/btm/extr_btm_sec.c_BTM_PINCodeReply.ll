; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_BTM_PINCodeReply.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_BTM_PINCodeReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i64, i64, i32, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 (i64, i32, i32, i32)* }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i64, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [77 x i8] c"BTM_PINCodeReply(): PairState: %s   PairFlags: 0x%02x  PinLen:%d  Result:%d\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@BTM_PAIR_STATE_WAIT_LOCAL_PIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"BTM_PINCodeReply() - Wrong State: %d\0A\00", align 1
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"BTM_PINCodeReply() - Wrong BD Addr\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"BTM_PINCodeReply() - no dev CB\0A\00", align 1
@PIN_CODE_LEN = common dso_local global i64 0, align 8
@BTM_ILLEGAL_VALUE = common dso_local global i64 0, align 8
@BTM_SUCCESS = common dso_local global i64 0, align 8
@BTM_PAIR_FLAGS_PEER_STARTED_DD = common dso_local global i32 0, align 4
@BTM_PAIR_FLAGS_WE_STARTED_DD = common dso_local global i32 0, align 4
@BTM_PAIR_FLAGS_DISC_WHEN_DONE = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_WAIT_AUTH_COMPLETE = common dso_local global i32 0, align 4
@HCI_ERR_HOST_REJECT_SECURITY = common dso_local global i32 0, align 4
@BTM_SEC_NONE = common dso_local global i32 0, align 4
@BTM_PAIR_STATE_IDLE = common dso_local global i32 0, align 4
@BTM_SEC_LINK_KEY_AUTHED = common dso_local global i32 0, align 4
@BTM_SEC_16_DIGIT_PIN_AUTHED = common dso_local global i32 0, align 4
@BTM_SEC_INVALID_HANDLE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@BTM_PAIR_FLAGS_REJECTED_CONNECT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [88 x i8] c"BTM_PINCodeReply(): waiting HCI_Connection_Complete after rejected incoming connection\0A\00", align 1
@BTM_PAIR_STATE_WAIT_PIN_REQ = common dso_local global i32 0, align 4
@BTM_SM4_CONN_PEND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [75 x i8] c"BTM_PINCodeReply(): link is connecting so wait pin code request from peer\0A\00", align 1
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@HCI_ERR_AUTH_FAILURE = common dso_local global i32 0, align 4
@HCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTM_PINCodeReply(i32 %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0), align 8
  %13 = call i32 @btm_pair_state_descr(i64 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 1), align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i64 %15, i64 %16)
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0), align 8
  %19 = load i64, i64* @BTM_PAIR_STATE_WAIT_LOCAL_PIN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0), align 8
  %23 = call i32 (i8*, ...) @BTM_TRACE_WARNING(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  br label %192

24:                                               ; preds = %5
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 8), align 8
  %27 = load i32, i32* @BD_ADDR_LEN, align 4
  %28 = call i64 @memcmp(i32 %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %192

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.TYPE_7__* @btm_find_dev(i32 %33)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %11, align 8
  %35 = icmp eq %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %192

38:                                               ; preds = %32
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @PIN_CODE_LEN, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i64*, i64** %9, align 8
  %47 = icmp eq i64* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %42, %38
  %49 = load i64, i64* @BTM_ILLEGAL_VALUE, align 8
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @BTM_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %82

54:                                               ; preds = %50
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 1), align 8
  %56 = load i32, i32* @BTM_PAIR_FLAGS_PEER_STARTED_DD, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 1), align 8
  %61 = load i32, i32* @BTM_PAIR_FLAGS_WE_STARTED_DD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 1), align 8
  %66 = load i32, i32* @BTM_PAIR_FLAGS_DISC_WHEN_DONE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64, %54
  %70 = load i32, i32* @BTM_PAIR_STATE_WAIT_AUTH_COMPLETE, align 4
  %71 = call i32 @btm_sec_change_pairing_state(i32 %70)
  %72 = load i32, i32* @HCI_ERR_HOST_REJECT_SECURITY, align 4
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 2), align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @btsnd_hcic_pin_code_neg_reply(i32 %73)
  br label %81

75:                                               ; preds = %64, %59
  %76 = load i32, i32* @BTM_SEC_NONE, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @BTM_PAIR_STATE_IDLE, align 4
  %80 = call i32 @btm_sec_change_pairing_state(i32 %79)
  br label %81

81:                                               ; preds = %75, %69
  br label %192

82:                                               ; preds = %50
  %83 = load i32*, i32** %10, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32*, i32** %10, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @BTM_SEC_COPY_TRUSTED_DEVICE(i32* %86, i32 %89)
  br label %91

91:                                               ; preds = %85, %82
  %92 = load i32, i32* @BTM_SEC_LINK_KEY_AUTHED, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load i64, i64* %8, align 8
  %98 = icmp sge i64 %97, 16
  br i1 %98, label %99, label %105

99:                                               ; preds = %91
  %100 = load i32, i32* @BTM_SEC_16_DIGIT_PIN_AUTHED, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %99, %91
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 1), align 8
  %107 = load i32, i32* @BTM_PAIR_FLAGS_WE_STARTED_DD, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %184

110:                                              ; preds = %105
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @BTM_SEC_INVALID_HANDLE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %184

116:                                              ; preds = %110
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 3), align 8
  %118 = load i64, i64* @FALSE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %184

120:                                              ; preds = %116
  %121 = load i64, i64* %8, align 8
  store i64 %121, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 6), align 8
  %122 = load i64, i64* %8, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 6
  store i64 %122, i64* %124, align 8
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 5), align 8
  %126 = load i64*, i64** %9, align 8
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @memcpy(i32 %125, i64* %126, i64 %127)
  %129 = load i64, i64* @TRUE, align 8
  store i64 %129, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 3), align 8
  %130 = load i64, i64* @TRUE, align 8
  %131 = call i32 @btsnd_hcic_write_auth_enable(i64 %130)
  store i32 255, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 2), align 4
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 1), align 8
  %133 = load i32, i32* @BTM_PAIR_FLAGS_REJECTED_CONNECT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %120
  %137 = call i32 (i8*, ...) @BTM_TRACE_WARNING(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.4, i64 0, i64 0))
  %138 = load i32, i32* @BTM_PAIR_STATE_WAIT_PIN_REQ, align 4
  %139 = call i32 @btm_sec_change_pairing_state(i32 %138)
  br label %183

140:                                              ; preds = %120
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @BTM_SM4_CONN_PEND, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = call i32 (i8*, ...) @BTM_TRACE_WARNING(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0))
  %149 = load i32, i32* @BTM_PAIR_STATE_WAIT_PIN_REQ, align 4
  %150 = call i32 @btm_sec_change_pairing_state(i32 %149)
  br label %182

151:                                              ; preds = %140
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %153 = call i64 @btm_sec_dd_create_conn(%struct.TYPE_7__* %152)
  %154 = load i64, i64* @BTM_CMD_STARTED, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %181

156:                                              ; preds = %151
  %157 = load i32, i32* @BTM_PAIR_STATE_IDLE, align 4
  %158 = call i32 @btm_sec_change_pairing_state(i32 %157)
  %159 = load i32, i32* @BTM_SEC_LINK_KEY_AUTHED, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, %160
  store i32 %164, i32* %162, align 8
  %165 = load i32 (i64, i32, i32, i32)*, i32 (i64, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 7, i32 0), align 8
  %166 = icmp ne i32 (i64, i32, i32, i32)* %165, null
  br i1 %166, label %167, label %180

167:                                              ; preds = %156
  %168 = load i32 (i64, i32, i32, i32)*, i32 (i64, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 7, i32 0), align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @HCI_ERR_AUTH_FAILURE, align 4
  %179 = call i32 %168(i64 %171, i32 %174, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %167, %156
  br label %181

181:                                              ; preds = %180, %151
  br label %182

182:                                              ; preds = %181, %147
  br label %183

183:                                              ; preds = %182, %136
  br label %192

184:                                              ; preds = %116, %110, %105
  %185 = load i32, i32* @BTM_PAIR_STATE_WAIT_AUTH_COMPLETE, align 4
  %186 = call i32 @btm_sec_change_pairing_state(i32 %185)
  %187 = load i32, i32* @HCI_SUCCESS, align 4
  store i32 %187, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 2), align 4
  %188 = load i32, i32* %6, align 4
  %189 = load i64, i64* %8, align 8
  %190 = load i64*, i64** %9, align 8
  %191 = call i32 @btsnd_hcic_pin_code_req_reply(i32 %188, i64 %189, i64* %190)
  br label %192

192:                                              ; preds = %184, %183, %81, %36, %30, %21
  ret void
}

declare dso_local i32 @BTM_TRACE_API(i8*, i32, i32, i64, i64) #1

declare dso_local i32 @btm_pair_state_descr(i64) #1

declare dso_local i32 @BTM_TRACE_WARNING(i8*, ...) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

declare dso_local %struct.TYPE_7__* @btm_find_dev(i32) #1

declare dso_local i32 @btm_sec_change_pairing_state(i32) #1

declare dso_local i32 @btsnd_hcic_pin_code_neg_reply(i32) #1

declare dso_local i32 @BTM_SEC_COPY_TRUSTED_DEVICE(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

declare dso_local i32 @btsnd_hcic_write_auth_enable(i64) #1

declare dso_local i64 @btm_sec_dd_create_conn(%struct.TYPE_7__*) #1

declare dso_local i32 @btsnd_hcic_pin_code_req_reply(i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
