; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_send_peer_config_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_send_peer_config_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__, i64, %struct.TYPE_13__, i64, %struct.TYPE_10__, i64, i32, i64, i32, i64, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_13__ = type { i32, i64, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i64, i64 }

@L2CAP_CFG_MTU_OPTION_LEN = common dso_local global i64 0, align 8
@L2CAP_CFG_OPTION_OVERHEAD = common dso_local global i64 0, align 8
@L2CAP_CFG_FLUSH_OPTION_LEN = common dso_local global i64 0, align 8
@L2CAP_CFG_QOS_OPTION_LEN = common dso_local global i64 0, align 8
@L2CAP_CFG_FCR_OPTION_LEN = common dso_local global i64 0, align 8
@L2CAP_CFG_EXT_FLOW_OPTION_LEN = common dso_local global i64 0, align 8
@L2CAP_CONFIG_RSP_LEN = common dso_local global i64 0, align 8
@L2CAP_CMD_CONFIG_RSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"L2CAP - no buffer for conn_req\00", align 1
@L2CAP_SEND_CMD_OFFSET = common dso_local global i32 0, align 4
@HCI_DATA_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@L2CAP_PKT_OVERHEAD = common dso_local global i32 0, align 4
@L2CAP_CMD_OVERHEAD = common dso_local global i32 0, align 4
@L2CAP_CFG_TYPE_MTU = common dso_local global i64 0, align 8
@L2CAP_CFG_TYPE_FLUSH_TOUT = common dso_local global i64 0, align 8
@L2CAP_CFG_TYPE_QOS = common dso_local global i64 0, align 8
@L2CAP_CFG_TYPE_FCR = common dso_local global i64 0, align 8
@L2CAP_CFG_TYPE_EXT_FLOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cu_send_peer_config_rsp(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 9
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i64, i64* @L2CAP_CFG_MTU_OPTION_LEN, align 8
  %14 = load i64, i64* @L2CAP_CFG_OPTION_OVERHEAD, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %16, %15
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i64, i64* @L2CAP_CFG_FLUSH_OPTION_LEN, align 8
  %25 = load i64, i64* @L2CAP_CFG_OPTION_OVERHEAD, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i64, i64* @L2CAP_CFG_QOS_OPTION_LEN, align 8
  %36 = load i64, i64* @L2CAP_CFG_OPTION_OVERHEAD, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* %6, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i64, i64* @L2CAP_CFG_FCR_OPTION_LEN, align 8
  %47 = load i64, i64* @L2CAP_CFG_OPTION_OVERHEAD, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* %6, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i64, i64* @L2CAP_CFG_EXT_FLOW_OPTION_LEN, align 8
  %58 = load i64, i64* @L2CAP_CFG_OPTION_OVERHEAD, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* %6, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %56, %51
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* @L2CAP_CONFIG_RSP_LEN, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i32, i32* @L2CAP_CMD_CONFIG_RSP, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @l2cu_build_header(i32 %65, i64 %68, i32 %69, i32 %72)
  store i32* %73, i32** %5, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %298

77:                                               ; preds = %62
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* @L2CAP_SEND_CMD_OFFSET, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* @HCI_DATA_PREAMBLE_SIZE, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* @L2CAP_PKT_OVERHEAD, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* @L2CAP_CMD_OVERHEAD, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32* %91, i32** %7, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @UINT16_TO_STREAM(i32* %92, i32 %95)
  %97 = load i32*, i32** %7, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 11
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @UINT16_TO_STREAM(i32* %97, i32 %100)
  %102 = load i32*, i32** %7, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @UINT16_TO_STREAM(i32* %102, i32 %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 9
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %77
  %112 = load i32*, i32** %7, align 8
  %113 = load i64, i64* @L2CAP_CFG_TYPE_MTU, align 8
  %114 = call i32 @UINT8_TO_STREAM(i32* %112, i64 %113)
  %115 = load i32*, i32** %7, align 8
  %116 = load i64, i64* @L2CAP_CFG_MTU_OPTION_LEN, align 8
  %117 = call i32 @UINT8_TO_STREAM(i32* %115, i64 %116)
  %118 = load i32*, i32** %7, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @UINT16_TO_STREAM(i32* %118, i32 %121)
  br label %123

123:                                              ; preds = %111, %77
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %123
  %129 = load i32*, i32** %7, align 8
  %130 = load i64, i64* @L2CAP_CFG_TYPE_FLUSH_TOUT, align 8
  %131 = call i32 @UINT8_TO_STREAM(i32* %129, i64 %130)
  %132 = load i32*, i32** %7, align 8
  %133 = load i64, i64* @L2CAP_CFG_FLUSH_OPTION_LEN, align 8
  %134 = call i32 @UINT8_TO_STREAM(i32* %132, i64 %133)
  %135 = load i32*, i32** %7, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @UINT16_TO_STREAM(i32* %135, i32 %138)
  br label %140

140:                                              ; preds = %128, %123
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %194

145:                                              ; preds = %140
  %146 = load i32*, i32** %7, align 8
  %147 = load i64, i64* @L2CAP_CFG_TYPE_QOS, align 8
  %148 = call i32 @UINT8_TO_STREAM(i32* %146, i64 %147)
  %149 = load i32*, i32** %7, align 8
  %150 = load i64, i64* @L2CAP_CFG_QOS_OPTION_LEN, align 8
  %151 = call i32 @UINT8_TO_STREAM(i32* %149, i64 %150)
  %152 = load i32*, i32** %7, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @UINT8_TO_STREAM(i32* %152, i64 %156)
  %158 = load i32*, i32** %7, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @UINT8_TO_STREAM(i32* %158, i64 %162)
  %164 = load i32*, i32** %7, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @UINT32_TO_STREAM(i32* %164, i32 %168)
  %170 = load i32*, i32** %7, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @UINT32_TO_STREAM(i32* %170, i32 %174)
  %176 = load i32*, i32** %7, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @UINT32_TO_STREAM(i32* %176, i32 %180)
  %182 = load i32*, i32** %7, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @UINT32_TO_STREAM(i32* %182, i32 %186)
  %188 = load i32*, i32** %7, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @UINT32_TO_STREAM(i32* %188, i32 %192)
  br label %194

194:                                              ; preds = %145, %140
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %244

199:                                              ; preds = %194
  %200 = load i32*, i32** %7, align 8
  %201 = load i64, i64* @L2CAP_CFG_TYPE_FCR, align 8
  %202 = call i32 @UINT8_TO_STREAM(i32* %200, i64 %201)
  %203 = load i32*, i32** %7, align 8
  %204 = load i64, i64* @L2CAP_CFG_FCR_OPTION_LEN, align 8
  %205 = call i32 @UINT8_TO_STREAM(i32* %203, i64 %204)
  %206 = load i32*, i32** %7, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @UINT8_TO_STREAM(i32* %206, i64 %210)
  %212 = load i32*, i32** %7, align 8
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @UINT8_TO_STREAM(i32* %212, i64 %216)
  %218 = load i32*, i32** %7, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @UINT8_TO_STREAM(i32* %218, i64 %222)
  %224 = load i32*, i32** %7, align 8
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @UINT16_TO_STREAM(i32* %224, i32 %229)
  %231 = load i32*, i32** %7, align 8
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @UINT16_TO_STREAM(i32* %231, i32 %236)
  %238 = load i32*, i32** %7, align 8
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @UINT16_TO_STREAM(i32* %238, i32 %242)
  br label %244

244:                                              ; preds = %199, %194
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %292

249:                                              ; preds = %244
  %250 = load i32*, i32** %7, align 8
  %251 = load i64, i64* @L2CAP_CFG_TYPE_EXT_FLOW, align 8
  %252 = call i32 @UINT8_TO_STREAM(i32* %250, i64 %251)
  %253 = load i32*, i32** %7, align 8
  %254 = load i64, i64* @L2CAP_CFG_EXT_FLOW_OPTION_LEN, align 8
  %255 = call i32 @UINT8_TO_STREAM(i32* %253, i64 %254)
  %256 = load i32*, i32** %7, align 8
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 5
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @UINT8_TO_STREAM(i32* %256, i64 %260)
  %262 = load i32*, i32** %7, align 8
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = call i32 @UINT8_TO_STREAM(i32* %262, i64 %266)
  %268 = load i32*, i32** %7, align 8
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @UINT16_TO_STREAM(i32* %268, i32 %272)
  %274 = load i32*, i32** %7, align 8
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @UINT32_TO_STREAM(i32* %274, i32 %278)
  %280 = load i32*, i32** %7, align 8
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @UINT32_TO_STREAM(i32* %280, i32 %284)
  %286 = load i32*, i32** %7, align 8
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @UINT32_TO_STREAM(i32* %286, i32 %290)
  br label %292

292:                                              ; preds = %249, %244
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load i32*, i32** %5, align 8
  %297 = call i32 @l2c_link_check_send_pkts(i32 %295, i32* null, i32* %296)
  br label %298

298:                                              ; preds = %292, %75
  ret void
}

declare dso_local i32* @l2cu_build_header(i32, i64, i32, i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i64) #1

declare dso_local i32 @UINT32_TO_STREAM(i32*, i32) #1

declare dso_local i32 @l2c_link_check_send_pkts(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
