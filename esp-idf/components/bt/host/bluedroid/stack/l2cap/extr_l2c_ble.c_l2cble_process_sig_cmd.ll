; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ble.c_l2cble_process_sig_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ble.c_l2cble_process_sig_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"L2CAP - LE - format error, pkt_len: %d  cmd_len: %d  code: %d\00", align 1
@L2CAP_CMD_REJ_NOT_UNDERSTOOD = common dso_local global i32 0, align 4
@HCI_ROLE_MASTER = common dso_local global i32 0, align 4
@BTM_BLE_CONN_INT_MIN = common dso_local global i32 0, align 4
@BTM_BLE_CONN_INT_MAX = common dso_local global i32 0, align 4
@BTM_BLE_CONN_LATENCY_MAX = common dso_local global i32 0, align 4
@BTM_BLE_CONN_SUP_TOUT_MIN = common dso_local global i32 0, align 4
@BTM_BLE_CONN_SUP_TOUT_MAX = common dso_local global i32 0, align 4
@L2CAP_CFG_UNACCEPTABLE_PARAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"slave connection parameters update failed, the parameters are out of range\00", align 1
@L2CAP_CFG_OK = common dso_local global i32 0, align 4
@L2C_BLE_NEW_CONN_PARAM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BTU_TTYPE_L2CAP_UPDA_CONN_PARAMS = common dso_local global i32 0, align 4
@HCI_SUCCESS = common dso_local global i32 0, align 4
@HCI_ERR_PARAM_OUT_OF_RANGE = common dso_local global i32 0, align 4
@L2C_BLE_UPDATE_PENDING = common dso_local global i32 0, align 4
@L2C_BLE_UPDATE_PARAM_FULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"L2CAP - LE - unknown cmd code: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cble_process_sig_cmd(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @STREAM_TO_UINT8(i32 %22, i32* %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @STREAM_TO_UINT8(i32 %25, i32* %26)
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @STREAM_TO_UINT16(i32 %28, i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ugt i32* %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i8*, i32, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %40)
  br label %202

42:                                               ; preds = %3
  %43 = load i32, i32* %8, align 4
  switch i32 %43, label %195 [
    i32 128, label %44
    i32 131, label %44
    i32 129, label %44
    i32 132, label %47
    i32 130, label %47
    i32 134, label %52
    i32 133, label %160
  ]

44:                                               ; preds = %42, %42, %42
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32* %46, i32** %5, align 8
  br label %202

47:                                               ; preds = %42, %42
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = load i32, i32* @L2CAP_CMD_REJ_NOT_UNDERSTOOD, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @l2cu_send_peer_cmd_reject(%struct.TYPE_8__* %48, i32 %49, i32 %50, i32 0, i32 0)
  br label %202

52:                                               ; preds = %42
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @STREAM_TO_UINT16(i32 %53, i32* %54)
  %56 = load i32, i32* %12, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @STREAM_TO_UINT16(i32 %56, i32* %57)
  %59 = load i32, i32* %13, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @STREAM_TO_UINT16(i32 %59, i32* %60)
  %62 = load i32, i32* %14, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @STREAM_TO_UINT16(i32 %62, i32* %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @HCI_ROLE_MASTER, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %154

70:                                               ; preds = %52
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @BTM_BLE_CONN_INT_MIN, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %112, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @BTM_BLE_CONN_INT_MAX, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %112, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @BTM_BLE_CONN_INT_MIN, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %112, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @BTM_BLE_CONN_INT_MAX, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %112, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @BTM_BLE_CONN_LATENCY_MAX, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %112, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @BTM_BLE_CONN_SUP_TOUT_MIN, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %112, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @BTM_BLE_CONN_SUP_TOUT_MAX, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %112, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %14, align 4
  %100 = mul nsw i32 %99, 10
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 1, %101
  %103 = load i32, i32* %12, align 4
  %104 = mul nsw i32 %103, 5
  %105 = ashr i32 %104, 1
  %106 = mul nsw i32 %102, %105
  %107 = icmp slt i32 %100, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %98
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %108, %98, %94, %90, %86, %82, %78, %74, %70
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %114 = load i32, i32* @L2CAP_CFG_UNACCEPTABLE_PARAMS, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @l2cu_send_peer_ble_par_rsp(%struct.TYPE_8__* %113, i32 %114, i32 %115)
  %117 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  br label %153

118:                                              ; preds = %108
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = load i32, i32* @L2CAP_CFG_OK, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @l2cu_send_peer_ble_par_rsp(%struct.TYPE_8__* %119, i32 %120, i32 %121)
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @L2C_BLE_NEW_CONN_PARAM, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %141 = call i32 @l2cble_start_conn_update(%struct.TYPE_8__* %140)
  %142 = load i32, i32* @TRUE, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %118
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %146 = call i32 @CalConnectParamTimeout(%struct.TYPE_8__* %145)
  store i32 %146, i32* %15, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 5
  %149 = load i32, i32* @BTU_TTYPE_L2CAP_UPDA_CONN_PARAMS, align 4
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @btu_start_timer(i32* %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %144, %118
  br label %153

153:                                              ; preds = %152, %112
  br label %159

154:                                              ; preds = %52
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %156 = load i32, i32* @L2CAP_CMD_REJ_NOT_UNDERSTOOD, align 4
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @l2cu_send_peer_cmd_reject(%struct.TYPE_8__* %155, i32 %156, i32 %157, i32 0, i32 0)
  br label %159

159:                                              ; preds = %154, %153
  br label %202

160:                                              ; preds = %42
  store i32 0, i32* %16, align 4
  %161 = load i32, i32* %16, align 4
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @STREAM_TO_UINT16(i32 %161, i32* %162)
  %164 = load i32, i32* %16, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load i32, i32* @HCI_SUCCESS, align 4
  br label %170

168:                                              ; preds = %160
  %169 = load i32, i32* @HCI_ERR_PARAM_OUT_OF_RANGE, align 4
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i32 [ %167, %166 ], [ %169, %168 ]
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* @HCI_SUCCESS, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %194

175:                                              ; preds = %170
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 5
  %178 = call i32 @btu_stop_timer(i32* %177)
  %179 = load i32, i32* @L2C_BLE_UPDATE_PENDING, align 4
  %180 = xor i32 %179, -1
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, %180
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* @L2C_BLE_UPDATE_PARAM_FULL, align 4
  %186 = xor i32 %185, -1
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, %186
  store i32 %190, i32* %188, align 4
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %192 = load i32, i32* %17, align 4
  %193 = call i32 @l2c_send_update_conn_params_cb(%struct.TYPE_8__* %191, i32 %192)
  br label %194

194:                                              ; preds = %175, %170
  br label %202

195:                                              ; preds = %42
  %196 = load i32, i32* %8, align 4
  %197 = call i32 (i8*, i32, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %196)
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %199 = load i32, i32* @L2CAP_CMD_REJ_NOT_UNDERSTOOD, align 4
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @l2cu_send_peer_cmd_reject(%struct.TYPE_8__* %198, i32 %199, i32 %200, i32 0, i32 0)
  br label %202

202:                                              ; preds = %37, %195, %194, %159, %47, %44
  ret void
}

declare dso_local i32 @STREAM_TO_UINT8(i32, i32*) #1

declare dso_local i32 @STREAM_TO_UINT16(i32, i32*) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i32, ...) #1

declare dso_local i32 @l2cu_send_peer_cmd_reject(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @l2cu_send_peer_ble_par_rsp(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*) #1

declare dso_local i32 @l2cble_start_conn_update(%struct.TYPE_8__*) #1

declare dso_local i32 @CalConnectParamTimeout(%struct.TYPE_8__*) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i32 @btu_stop_timer(i32*) #1

declare dso_local i32 @l2c_send_update_conn_params_cb(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
