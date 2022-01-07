; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_send_peer_config_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_send_peer_config_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__*, i32, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i64, i64, i64, %struct.TYPE_12__, i64, %struct.TYPE_11__, i64, i32, i64, i32, i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i64, i64 }

@L2CAP_ADJ_ID = common dso_local global i32 0, align 4
@L2CAP_CFG_MTU_OPTION_LEN = common dso_local global i64 0, align 8
@L2CAP_CFG_OPTION_OVERHEAD = common dso_local global i64 0, align 8
@L2CAP_CFG_FLUSH_OPTION_LEN = common dso_local global i64 0, align 8
@L2CAP_CFG_QOS_OPTION_LEN = common dso_local global i64 0, align 8
@L2CAP_CFG_FCR_OPTION_LEN = common dso_local global i64 0, align 8
@L2CAP_CFG_FCS_OPTION_LEN = common dso_local global i64 0, align 8
@L2CAP_CFG_EXT_FLOW_OPTION_LEN = common dso_local global i64 0, align 8
@L2CAP_CONFIG_REQ_LEN = common dso_local global i64 0, align 8
@L2CAP_CMD_CONFIG_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"L2CAP - no buffer for conn_req\00", align 1
@L2CAP_SEND_CMD_OFFSET = common dso_local global i32 0, align 4
@HCI_DATA_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@L2CAP_PKT_OVERHEAD = common dso_local global i32 0, align 4
@L2CAP_CMD_OVERHEAD = common dso_local global i32 0, align 4
@L2CAP_CFG_TYPE_MTU = common dso_local global i64 0, align 8
@L2CAP_CFG_TYPE_FLUSH_TOUT = common dso_local global i64 0, align 8
@L2CAP_CFG_TYPE_QOS = common dso_local global i64 0, align 8
@L2CAP_CFG_TYPE_FCR = common dso_local global i64 0, align 8
@L2CAP_CFG_TYPE_FCS = common dso_local global i64 0, align 8
@L2CAP_CFG_TYPE_EXT_FLOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cu_send_peer_config_req(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = load i32, i32* @L2CAP_ADJ_ID, align 4
  %18 = call i32 @l2cu_adj_id(%struct.TYPE_16__* %16, i32 %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 11
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load i64, i64* @L2CAP_CFG_MTU_OPTION_LEN, align 8
  %32 = load i64, i64* @L2CAP_CFG_OPTION_OVERHEAD, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %30, %2
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 9
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i64, i64* @L2CAP_CFG_FLUSH_OPTION_LEN, align 8
  %43 = load i64, i64* @L2CAP_CFG_OPTION_OVERHEAD, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %41, %36
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i64, i64* @L2CAP_CFG_QOS_OPTION_LEN, align 8
  %54 = load i64, i64* @L2CAP_CFG_OPTION_OVERHEAD, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* %6, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i64, i64* @L2CAP_CFG_FCR_OPTION_LEN, align 8
  %65 = load i64, i64* @L2CAP_CFG_OPTION_OVERHEAD, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %6, align 8
  br label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i64, i64* @L2CAP_CFG_FCS_OPTION_LEN, align 8
  %76 = load i64, i64* @L2CAP_CFG_OPTION_OVERHEAD, align 8
  %77 = add nsw i64 %75, %76
  %78 = load i64, i64* %6, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %6, align 8
  br label %80

80:                                               ; preds = %74, %69
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i64, i64* @L2CAP_CFG_EXT_FLOW_OPTION_LEN, align 8
  %87 = load i64, i64* @L2CAP_CFG_OPTION_OVERHEAD, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i64, i64* %6, align 8
  %90 = add nsw i64 %89, %88
  store i64 %90, i64* %6, align 8
  br label %91

91:                                               ; preds = %85, %80
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = load i64, i64* @L2CAP_CONFIG_REQ_LEN, align 8
  %96 = load i64, i64* %6, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i32, i32* @L2CAP_CMD_CONFIG_REQ, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i32* @l2cu_build_header(%struct.TYPE_16__* %94, i64 %97, i32 %98, i64 %101)
  store i32* %102, i32** %5, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %91
  %105 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %337

106:                                              ; preds = %91
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* @L2CAP_SEND_CMD_OFFSET, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* @HCI_DATA_PREAMBLE_SIZE, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* @L2CAP_PKT_OVERHEAD, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* @L2CAP_CMD_OVERHEAD, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32* %120, i32** %7, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @UINT16_TO_STREAM(i32* %121, i32 %124)
  %126 = load i32*, i32** %7, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 12
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @UINT16_TO_STREAM(i32* %126, i32 %129)
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 11
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %106
  %136 = load i32*, i32** %7, align 8
  %137 = load i64, i64* @L2CAP_CFG_TYPE_MTU, align 8
  %138 = call i32 @UINT8_TO_STREAM(i32* %136, i64 %137)
  %139 = load i32*, i32** %7, align 8
  %140 = load i64, i64* @L2CAP_CFG_MTU_OPTION_LEN, align 8
  %141 = call i32 @UINT8_TO_STREAM(i32* %139, i64 %140)
  %142 = load i32*, i32** %7, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 10
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @UINT16_TO_STREAM(i32* %142, i32 %145)
  br label %147

147:                                              ; preds = %135, %106
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 9
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %147
  %153 = load i32*, i32** %7, align 8
  %154 = load i64, i64* @L2CAP_CFG_TYPE_FLUSH_TOUT, align 8
  %155 = call i32 @UINT8_TO_STREAM(i32* %153, i64 %154)
  %156 = load i32*, i32** %7, align 8
  %157 = load i64, i64* @L2CAP_CFG_FLUSH_OPTION_LEN, align 8
  %158 = call i32 @UINT8_TO_STREAM(i32* %156, i64 %157)
  %159 = load i32*, i32** %7, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @UINT16_TO_STREAM(i32* %159, i32 %162)
  br label %164

164:                                              ; preds = %152, %147
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 7
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %218

169:                                              ; preds = %164
  %170 = load i32*, i32** %7, align 8
  %171 = load i64, i64* @L2CAP_CFG_TYPE_QOS, align 8
  %172 = call i32 @UINT8_TO_STREAM(i32* %170, i64 %171)
  %173 = load i32*, i32** %7, align 8
  %174 = load i64, i64* @L2CAP_CFG_QOS_OPTION_LEN, align 8
  %175 = call i32 @UINT8_TO_STREAM(i32* %173, i64 %174)
  %176 = load i32*, i32** %7, align 8
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @UINT8_TO_STREAM(i32* %176, i64 %180)
  %182 = load i32*, i32** %7, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @UINT8_TO_STREAM(i32* %182, i64 %186)
  %188 = load i32*, i32** %7, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 6
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @UINT32_TO_STREAM(i32* %188, i32 %192)
  %194 = load i32*, i32** %7, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @UINT32_TO_STREAM(i32* %194, i32 %198)
  %200 = load i32*, i32** %7, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 6
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @UINT32_TO_STREAM(i32* %200, i32 %204)
  %206 = load i32*, i32** %7, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 6
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @UINT32_TO_STREAM(i32* %206, i32 %210)
  %212 = load i32*, i32** %7, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 6
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @UINT32_TO_STREAM(i32* %212, i32 %216)
  br label %218

218:                                              ; preds = %169, %164
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %266

223:                                              ; preds = %218
  %224 = load i32*, i32** %7, align 8
  %225 = load i64, i64* @L2CAP_CFG_TYPE_FCR, align 8
  %226 = call i32 @UINT8_TO_STREAM(i32* %224, i64 %225)
  %227 = load i32*, i32** %7, align 8
  %228 = load i64, i64* @L2CAP_CFG_FCR_OPTION_LEN, align 8
  %229 = call i32 @UINT8_TO_STREAM(i32* %227, i64 %228)
  %230 = load i32*, i32** %7, align 8
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 5
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @UINT8_TO_STREAM(i32* %230, i64 %234)
  %236 = load i32*, i32** %7, align 8
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @UINT8_TO_STREAM(i32* %236, i64 %240)
  %242 = load i32*, i32** %7, align 8
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @UINT8_TO_STREAM(i32* %242, i64 %246)
  %248 = load i32*, i32** %7, align 8
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @UINT16_TO_STREAM(i32* %248, i32 %252)
  %254 = load i32*, i32** %7, align 8
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @UINT16_TO_STREAM(i32* %254, i32 %258)
  %260 = load i32*, i32** %7, align 8
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @UINT16_TO_STREAM(i32* %260, i32 %264)
  br label %266

266:                                              ; preds = %223, %218
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %266
  %272 = load i32*, i32** %7, align 8
  %273 = load i64, i64* @L2CAP_CFG_TYPE_FCS, align 8
  %274 = call i32 @UINT8_TO_STREAM(i32* %272, i64 %273)
  %275 = load i32*, i32** %7, align 8
  %276 = load i64, i64* @L2CAP_CFG_FCS_OPTION_LEN, align 8
  %277 = call i32 @UINT8_TO_STREAM(i32* %275, i64 %276)
  %278 = load i32*, i32** %7, align 8
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = call i32 @UINT8_TO_STREAM(i32* %278, i64 %281)
  br label %283

283:                                              ; preds = %271, %266
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %331

288:                                              ; preds = %283
  %289 = load i32*, i32** %7, align 8
  %290 = load i64, i64* @L2CAP_CFG_TYPE_EXT_FLOW, align 8
  %291 = call i32 @UINT8_TO_STREAM(i32* %289, i64 %290)
  %292 = load i32*, i32** %7, align 8
  %293 = load i64, i64* @L2CAP_CFG_EXT_FLOW_OPTION_LEN, align 8
  %294 = call i32 @UINT8_TO_STREAM(i32* %292, i64 %293)
  %295 = load i32*, i32** %7, align 8
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 5
  %299 = load i64, i64* %298, align 8
  %300 = call i32 @UINT8_TO_STREAM(i32* %295, i64 %299)
  %301 = load i32*, i32** %7, align 8
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 4
  %305 = load i64, i64* %304, align 8
  %306 = call i32 @UINT8_TO_STREAM(i32* %301, i64 %305)
  %307 = load i32*, i32** %7, align 8
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @UINT16_TO_STREAM(i32* %307, i32 %311)
  %313 = load i32*, i32** %7, align 8
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @UINT32_TO_STREAM(i32* %313, i32 %317)
  %319 = load i32*, i32** %7, align 8
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @UINT32_TO_STREAM(i32* %319, i32 %323)
  %325 = load i32*, i32** %7, align 8
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @UINT32_TO_STREAM(i32* %325, i32 %329)
  br label %331

331:                                              ; preds = %288, %283
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %333, align 8
  %335 = load i32*, i32** %5, align 8
  %336 = call i32 @l2c_link_check_send_pkts(%struct.TYPE_16__* %334, i32* null, i32* %335)
  br label %337

337:                                              ; preds = %331, %104
  ret void
}

declare dso_local i32 @l2cu_adj_id(%struct.TYPE_16__*, i32) #1

declare dso_local i32* @l2cu_build_header(%struct.TYPE_16__*, i64, i32, i64) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i64) #1

declare dso_local i32 @UINT32_TO_STREAM(i32*, i32) #1

declare dso_local i32 @l2c_link_check_send_pkts(%struct.TYPE_16__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
