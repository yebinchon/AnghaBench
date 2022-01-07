; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_link.c_l2c_link_timeout.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_link.c_l2c_link_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i64, %struct.TYPE_11__, i32 (i32)*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_13__* }

@.str = private unnamed_addr constant [68 x i8] c"L2CAP - l2c_link_timeout() link state %d first CCB %p is_bonding:%d\00", align 1
@LST_CONNECTING_WAIT_SWITCH = common dso_local global i64 0, align 8
@LST_CONNECTING = common dso_local global i64 0, align 8
@LST_CONNECT_HOLDING = common dso_local global i64 0, align 8
@LST_DISCONNECTING = common dso_local global i64 0, align 8
@L2CEVT_LP_DISCONNECT_IND = common dso_local global i32 0, align 4
@l2cb = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@TRUE = common dso_local global i64 0, align 8
@LST_CONNECTED = common dso_local global i64 0, align 8
@L2CAP_PING_RESULT_NO_RESP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"L2CAP - ping timeout\00", align 1
@HCI_ERR_PEER_USER = common dso_local global i32 0, align 4
@BTM_CMD_STORED = common dso_local global i64 0, align 8
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@L2CAP_LINK_DISCONNECT_TOUT = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i64 0, align 8
@BTM_BUSY = common dso_local global i64 0, align 8
@BT_1SEC_TIMEOUT = common dso_local global i32 0, align 4
@BTU_TTYPE_L2CAP_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2c_link_timeout(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32 (i32)**, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %11, %struct.TYPE_13__* %15, i64 %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LST_CONNECTING_WAIT_SWITCH, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %43, label %25

25:                                               ; preds = %1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LST_CONNECTING, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LST_CONNECT_HOLDING, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @LST_DISCONNECTING, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %37, %31, %25, %1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 6
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %3, align 8
  br label %50

50:                                               ; preds = %53, %43
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = icmp ne %struct.TYPE_13__* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %6, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = load i32, i32* @L2CEVT_LP_DISCONNECT_IND, align 4
  %59 = call i32 @l2c_csm_execute(%struct.TYPE_13__* %57, i32 %58, i32* null)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %3, align 8
  br label %50

61:                                               ; preds = %50
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @LST_CONNECTING, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @l2cb, i32 0, i32 0), align 8
  %69 = load i64, i64* @TRUE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @l2cb, i32 0, i32 1), align 8
  %73 = call i32 @L2CA_CancelBleConnectReq(i32 %72)
  br label %74

74:                                               ; preds = %71, %67, %61
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %76 = call i32 @l2cu_release_lcb(%struct.TYPE_12__* %75)
  br label %77

77:                                               ; preds = %74, %37
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @LST_CONNECTED, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %195

83:                                               ; preds = %77
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 5
  %86 = load i32 (i32)*, i32 (i32)** %85, align 8
  %87 = icmp ne i32 (i32)* %86, null
  br i1 %87, label %88, label %116

88:                                               ; preds = %83
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 5
  %91 = load i32 (i32)*, i32 (i32)** %90, align 8
  %92 = bitcast i32 (i32)* %91 to i32 (i32)**
  store i32 (i32)** %92, i32 (i32)*** %7, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 5
  store i32 (i32)* null, i32 (i32)** %94, align 8
  %95 = load i32 (i32)**, i32 (i32)*** %7, align 8
  %96 = load i32 (i32)*, i32 (i32)** %95, align 8
  %97 = load i32, i32* @L2CAP_PING_RESULT_NO_RESP, align 4
  %98 = call i32 %96(i32 %97)
  %99 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  store %struct.TYPE_13__* %103, %struct.TYPE_13__** %3, align 8
  br label %104

104:                                              ; preds = %107, %88
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %106 = icmp ne %struct.TYPE_13__* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  store %struct.TYPE_13__* %110, %struct.TYPE_13__** %8, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %112 = load i32, i32* @L2CEVT_LP_DISCONNECT_IND, align 4
  %113 = call i32 @l2c_csm_execute(%struct.TYPE_13__* %111, i32 %112, i32* null)
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %114, %struct.TYPE_13__** %3, align 8
  br label %104

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115, %83
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = icmp ne %struct.TYPE_13__* %120, null
  br i1 %121, label %191, label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @HCI_ERR_PEER_USER, align 4
  %127 = call i64 @btm_sec_disconnect(i32 %125, i32 %126)
  store i64 %127, i64* %5, align 8
  %128 = load i64, i64* %5, align 8
  %129 = load i64, i64* @BTM_CMD_STORED, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  store i32 65535, i32* %4, align 4
  br label %181

132:                                              ; preds = %122
  %133 = load i64, i64* %5, align 8
  %134 = load i64, i64* @BTM_CMD_STARTED, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i64, i64* @LST_DISCONNECTING, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load i32, i32* @L2CAP_LINK_DISCONNECT_TOUT, align 4
  store i32 %140, i32* %4, align 4
  br label %180

141:                                              ; preds = %132
  %142 = load i64, i64* %5, align 8
  %143 = load i64, i64* @BTM_SUCCESS, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %147 = call i32 @l2cu_process_fixed_disc_cback(%struct.TYPE_12__* %146)
  %148 = load i64, i64* @LST_DISCONNECTING, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  store i32 65535, i32* %4, align 4
  br label %179

151:                                              ; preds = %141
  %152 = load i64, i64* %5, align 8
  %153 = load i64, i64* @BTM_BUSY, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store i32 65535, i32* %4, align 4
  br label %178

156:                                              ; preds = %151
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %156
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @HCI_ERR_PEER_USER, align 4
  %166 = call i64 @btsnd_hcic_disconnect(i32 %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %161
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %170 = call i32 @l2cu_process_fixed_disc_cback(%struct.TYPE_12__* %169)
  %171 = load i64, i64* @LST_DISCONNECTING, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  %174 = load i32, i32* @L2CAP_LINK_DISCONNECT_TOUT, align 4
  store i32 %174, i32* %4, align 4
  br label %177

175:                                              ; preds = %161, %156
  %176 = load i32, i32* @BT_1SEC_TIMEOUT, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %175, %168
  br label %178

178:                                              ; preds = %177, %155
  br label %179

179:                                              ; preds = %178, %145
  br label %180

180:                                              ; preds = %179, %136
  br label %181

181:                                              ; preds = %180, %131
  %182 = load i32, i32* %4, align 4
  %183 = icmp ne i32 %182, 65535
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load i32, i32* @BTU_TTYPE_L2CAP_LINK, align 4
  %188 = load i32, i32* %4, align 4
  %189 = call i32 @btu_start_timer(i32* %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %184, %181
  br label %194

191:                                              ; preds = %116
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %193 = call i32 @l2c_link_check_send_pkts(%struct.TYPE_12__* %192, i32* null, i32* null)
  br label %194

194:                                              ; preds = %191, %190
  br label %195

195:                                              ; preds = %194, %77
  ret void
}

declare dso_local i32 @L2CAP_TRACE_EVENT(i8*, i64, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @l2c_csm_execute(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @L2CA_CancelBleConnectReq(i32) #1

declare dso_local i32 @l2cu_release_lcb(%struct.TYPE_12__*) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

declare dso_local i64 @btm_sec_disconnect(i32, i32) #1

declare dso_local i32 @l2cu_process_fixed_disc_cback(%struct.TYPE_12__*) #1

declare dso_local i64 @btsnd_hcic_disconnect(i32, i32) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i32 @l2c_link_check_send_pkts(%struct.TYPE_12__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
