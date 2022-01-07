; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_send_peer_info_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_send_peer_info_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i64 }

@L2CAP_INFO_RSP_LEN = common dso_local global i32 0, align 4
@L2CAP_EXTENDED_FEATURES_INFO_TYPE = common dso_local global i32 0, align 4
@l2cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@L2CAP_EXTFEA_ENH_RETRANS = common dso_local global i32 0, align 4
@L2CAP_EXTFEA_STREAM_MODE = common dso_local global i32 0, align 4
@L2CAP_EXTFEA_NO_CRC = common dso_local global i32 0, align 4
@L2CAP_EXTFEA_EXT_FLOW_SPEC = common dso_local global i32 0, align 4
@L2CAP_EXTFEA_FIXED_CHNLS = common dso_local global i32 0, align 4
@L2CAP_EXTFEA_EXT_WINDOW = common dso_local global i32 0, align 4
@L2CAP_EXTFEA_UCD_RECEPTION = common dso_local global i32 0, align 4
@L2CAP_EXTENDED_FEATURES_ARRAY_SIZE = common dso_local global i64 0, align 8
@L2CAP_FIXED_CHANNELS_INFO_TYPE = common dso_local global i32 0, align 4
@L2CAP_FIXED_CHNL_ARRAY_SIZE = common dso_local global i64 0, align 8
@L2CAP_CONNLESS_MTU_INFO_TYPE = common dso_local global i32 0, align 4
@L2CAP_CONNLESS_MTU_INFO_SIZE = common dso_local global i64 0, align 8
@L2CAP_CMD_INFO_RSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"L2CAP - no buffer for info_rsp\00", align 1
@L2CAP_SEND_CMD_OFFSET = common dso_local global i32 0, align 4
@HCI_DATA_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@L2CAP_PKT_OVERHEAD = common dso_local global i32 0, align 4
@L2CAP_CMD_OVERHEAD = common dso_local global i32 0, align 4
@L2CAP_INFO_RESP_RESULT_SUCCESS = common dso_local global i32 0, align 4
@BT_TRANSPORT_LE = common dso_local global i64 0, align 8
@L2CAP_BLE_EXTFEA_MASK = common dso_local global i32 0, align 4
@L2CAP_FIXED_CHNL_SIG_BIT = common dso_local global i32 0, align 4
@L2CAP_EXTFEA_SUPPORTED_MASK = common dso_local global i32 0, align 4
@L2CAP_FIXED_CHNL_CNCTLESS_BIT = common dso_local global i32 0, align 4
@L2CAP_UCD_MTU = common dso_local global i32 0, align 4
@L2CAP_INFO_RESP_RESULT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@L2CAP_FIRST_FIXED_CHNL = common dso_local global i32 0, align 4
@L2CAP_NUM_FIXED_CHNLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cu_send_peer_info_rsp(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @L2CAP_INFO_RSP_LEN, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @L2CAP_EXTENDED_FEATURES_INFO_TYPE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @l2cb, i32 0, i32 0), align 8
  %16 = load i32, i32* @L2CAP_EXTFEA_ENH_RETRANS, align 4
  %17 = load i32, i32* @L2CAP_EXTFEA_STREAM_MODE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @L2CAP_EXTFEA_NO_CRC, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @L2CAP_EXTFEA_EXT_FLOW_SPEC, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @L2CAP_EXTFEA_FIXED_CHNLS, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @L2CAP_EXTFEA_EXT_WINDOW, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @L2CAP_EXTFEA_UCD_RECEPTION, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %15, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %14
  %32 = load i64, i64* @L2CAP_EXTENDED_FEATURES_ARRAY_SIZE, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  br label %59

37:                                               ; preds = %14, %3
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @L2CAP_FIXED_CHANNELS_INFO_TYPE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i64, i64* @L2CAP_FIXED_CHNL_ARRAY_SIZE, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  br label %58

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @L2CAP_CONNLESS_MTU_INFO_TYPE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i64, i64* @L2CAP_CONNLESS_MTU_INFO_SIZE, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %51, %47
  br label %58

58:                                               ; preds = %57, %41
  br label %59

59:                                               ; preds = %58, %31
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @L2CAP_CMD_INFO_RSP, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32* @l2cu_build_header(%struct.TYPE_8__* %60, i32 %61, i32 %62, i32 %63)
  store i32* %64, i32** %7, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %162

68:                                               ; preds = %59
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* @L2CAP_SEND_CMD_OFFSET, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* @HCI_DATA_PREAMBLE_SIZE, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* @L2CAP_PKT_OVERHEAD, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* @L2CAP_CMD_OVERHEAD, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32* %82, i32** %8, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @UINT16_TO_STREAM(i32* %83, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @L2CAP_EXTENDED_FEATURES_INFO_TYPE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %68
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @l2cb, i32 0, i32 0), align 8
  %91 = load i32, i32* @L2CAP_EXTFEA_ENH_RETRANS, align 4
  %92 = load i32, i32* @L2CAP_EXTFEA_STREAM_MODE, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @L2CAP_EXTFEA_UCD_RECEPTION, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %90, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %89
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* @L2CAP_INFO_RESP_RESULT_SUCCESS, align 4
  %101 = call i32 @UINT16_TO_STREAM(i32* %99, i32 %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %98
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* @L2CAP_BLE_EXTFEA_MASK, align 4
  %110 = call i32 @UINT32_TO_STREAM(i32* %108, i32 %109)
  br label %115

111:                                              ; preds = %98
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @l2cb, i32 0, i32 0), align 8
  %114 = call i32 @UINT32_TO_STREAM(i32* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %107
  br label %158

116:                                              ; preds = %89, %68
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @L2CAP_FIXED_CHANNELS_INFO_TYPE, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %141

120:                                              ; preds = %116
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* @L2CAP_INFO_RESP_RESULT_SUCCESS, align 4
  %123 = call i32 @UINT16_TO_STREAM(i32* %121, i32 %122)
  %124 = load i32*, i32** %8, align 8
  %125 = load i64, i64* @L2CAP_FIXED_CHNL_ARRAY_SIZE, align 8
  %126 = call i32 @memset(i32* %124, i32 0, i64 %125)
  %127 = load i32, i32* @L2CAP_FIXED_CHNL_SIG_BIT, align 4
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @L2CAP_EXTFEA_SUPPORTED_MASK, align 4
  %131 = load i32, i32* @L2CAP_EXTFEA_UCD_RECEPTION, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %120
  %135 = load i32, i32* @L2CAP_FIXED_CHNL_CNCTLESS_BIT, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %134, %120
  br label %157

141:                                              ; preds = %116
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @L2CAP_CONNLESS_MTU_INFO_TYPE, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %141
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* @L2CAP_INFO_RESP_RESULT_SUCCESS, align 4
  %148 = call i32 @UINT16_TO_STREAM(i32* %146, i32 %147)
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* @L2CAP_UCD_MTU, align 4
  %151 = call i32 @UINT16_TO_STREAM(i32* %149, i32 %150)
  br label %156

152:                                              ; preds = %141
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* @L2CAP_INFO_RESP_RESULT_NOT_SUPPORTED, align 4
  %155 = call i32 @UINT16_TO_STREAM(i32* %153, i32 %154)
  br label %156

156:                                              ; preds = %152, %145
  br label %157

157:                                              ; preds = %156, %140
  br label %158

158:                                              ; preds = %157, %115
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %160 = load i32*, i32** %7, align 8
  %161 = call i32 @l2c_link_check_send_pkts(%struct.TYPE_8__* %159, i32* null, i32* %160)
  br label %162

162:                                              ; preds = %158, %66
  ret void
}

declare dso_local i32* @l2cu_build_header(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @UINT32_TO_STREAM(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @l2c_link_check_send_pkts(%struct.TYPE_8__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
