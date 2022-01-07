; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_L2TPProcessInterrupts.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_L2TPProcessInterrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_51__ = type { i32, i64, i32, i32, i32*, i32, i32*, i32, i64 }
%struct.TYPE_50__ = type { i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32*, i32*, i64, i64, i32, %struct.TYPE_47__*, %struct.TYPE_49__*, i32, i64 }
%struct.TYPE_47__ = type { i64, i64 }
%struct.TYPE_49__ = type { i32* }
%struct.TYPE_53__ = type { i32, i32, i32* }
%struct.TYPE_48__ = type { i32, i32 }
%struct.TYPE_55__ = type { i32, i32 }
%struct.TYPE_54__ = type { i64*, i32 }
%struct.TYPE_52__ = type { i64, i32 }

@L2TP_TUNNEL_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"L2TP Tunnel %u/%u Timed out.\0A\00", align 1
@L2TP_HELLO_INTERVAL = common dso_local global i64 0, align 8
@L2TP_HELLO_SUPRESS_MAX_THRETHORD_NUM_SEND_QUEUE = common dso_local global i64 0, align 8
@L2TP_MESSAGE_TYPE_HELLO = common dso_local global i32 0, align 4
@L2TP_MESSAGE_TYPE_CDN = common dso_local global i32 0, align 4
@L2TP_AVP_TYPE_ASSIGNED_SESSION = common dso_local global i32 0, align 4
@L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL = common dso_local global i32 0, align 4
@L2TPV3_CISCO_AVP_SESSION_ID_LOCAL = common dso_local global i32 0, align 4
@L2TP_AVP_VENDOR_ID_CISCO = common dso_local global i32 0, align 4
@L2TP_AVP_TYPE_RESULT_CODE = common dso_local global i32 0, align 4
@L2TP_AVP_TYPE_PPP_DISCONNECT_CAUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"L2TP Session %u/%u on Tunnel %u/%u Disconnected.\0A\00", align 1
@L2TP_TUNNEL_DISCONNECT_TIMEOUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"L2TP Session %u/%u on Tunnel %u/%u Cleaned up.\0A\00", align 1
@L2TP_MESSAGE_TYPE_STOPCCN = common dso_local global i32 0, align 4
@L2TP_AVP_TYPE_ASSIGNED_TUNNEL = common dso_local global i32 0, align 4
@L2TP_AVP_TYPE_V3_TUNNEL_ID = common dso_local global i32 0, align 4
@L2TPV3_CISCO_AVP_TUNNEL_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"L2TP Tunnel %u/%u is Disconnected.\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"L2TP Tunnel %u/%u Cleaned up.\0A\00", align 1
@L2TP_PACKET_RESEND_INTERVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @L2TPProcessInterrupts(%struct.TYPE_51__* %0) #0 {
  %2 = alloca %struct.TYPE_51__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_50__*, align 8
  %7 = alloca %struct.TYPE_50__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_53__*, align 8
  %10 = alloca %struct.TYPE_50__*, align 8
  %11 = alloca %struct.TYPE_48__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_55__*, align 8
  %14 = alloca [4 x i64], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_53__*, align 8
  %20 = alloca %struct.TYPE_54__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_50__*, align 8
  %24 = alloca [4 x i64], align 16
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_53__*, align 8
  %28 = alloca %struct.TYPE_50__*, align 8
  %29 = alloca %struct.TYPE_50__*, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.TYPE_52__*, align 8
  %32 = alloca %struct.TYPE_52__*, align 8
  %33 = alloca %struct.TYPE_53__*, align 8
  store %struct.TYPE_51__* %0, %struct.TYPE_51__** %2, align 8
  store i32* null, i32** %5, align 8
  %34 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %35 = icmp eq %struct.TYPE_51__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %807

37:                                               ; preds = %1
  %38 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %38, i32 0, i32 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %37
  %43 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  store i64 0, i64* %3, align 8
  br label %50

50:                                               ; preds = %66, %47
  %51 = load i64, i64* %3, align 8
  %52 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @LIST_NUM(i32* %54)
  %56 = icmp slt i64 %51, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %3, align 8
  %62 = call i8* @LIST_DATA(i32* %60, i64 %61)
  %63 = bitcast i8* %62 to %struct.TYPE_50__*
  store %struct.TYPE_50__* %63, %struct.TYPE_50__** %6, align 8
  %64 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %65 = call i32 @DisconnectL2TPTunnel(%struct.TYPE_50__* %64)
  br label %66

66:                                               ; preds = %57
  %67 = load i64, i64* %3, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %3, align 8
  br label %50

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %42
  br label %71

71:                                               ; preds = %70, %37
  %72 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @FlushTubeFlushList(i32 %74)
  store i64 0, i64* %3, align 8
  br label %76

76:                                               ; preds = %630, %71
  %77 = load i64, i64* %3, align 8
  %78 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @LIST_NUM(i32* %80)
  %82 = icmp slt i64 %77, %81
  br i1 %82, label %83, label %633

83:                                               ; preds = %76
  %84 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %84, i32 0, i32 6
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %3, align 8
  %88 = call i8* @LIST_DATA(i32* %86, i64 %87)
  %89 = bitcast i8* %88 to %struct.TYPE_50__*
  store %struct.TYPE_50__* %89, %struct.TYPE_50__** %7, align 8
  store i32* null, i32** %8, align 8
  %90 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @L2TP_TUNNEL_TIMEOUT, align 8
  %97 = add nsw i64 %95, %96
  %98 = icmp sge i64 %92, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %83
  %100 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %105, i32 0, i32 1
  store i32 1, i32* %106, align 8
  %107 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, i32, i32, ...) @Debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %112)
  %114 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %115 = call i32 @DisconnectL2TPTunnel(%struct.TYPE_50__* %114)
  br label %116

116:                                              ; preds = %104, %99, %83
  %117 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %163

121:                                              ; preds = %116
  %122 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @L2TP_HELLO_INTERVAL, align 8
  %129 = add nsw i64 %127, %128
  %130 = icmp sge i64 %124, %129
  br i1 %130, label %131, label %163

131:                                              ; preds = %121
  %132 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %132, i32 0, i32 12
  %134 = load i32*, i32** %133, align 8
  %135 = call i64 @LIST_NUM(i32* %134)
  %136 = load i64, i64* @L2TP_HELLO_SUPRESS_MAX_THRETHORD_NUM_SEND_QUEUE, align 8
  %137 = icmp sle i64 %135, %136
  br i1 %137, label %138, label %162

138:                                              ; preds = %131
  %139 = load i32, i32* @L2TP_MESSAGE_TYPE_HELLO, align 4
  %140 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = call %struct.TYPE_53__* @NewL2TPControlPacket(i32 %139, i32 %142)
  store %struct.TYPE_53__* %143, %struct.TYPE_53__** %9, align 8
  %144 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %147, i32 0, i32 4
  store i64 %146, i64* %148, align 8
  %149 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %150 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %151 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %152 = call i32 @SendL2TPControlPacket(%struct.TYPE_51__* %149, %struct.TYPE_50__* %150, i32 0, %struct.TYPE_53__* %151)
  %153 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %154 = call i32 @FreeL2TPPacket(%struct.TYPE_53__* %153)
  %155 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %156 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @L2TP_HELLO_INTERVAL, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @L2TPAddInterrupt(%struct.TYPE_51__* %155, i64 %160)
  br label %162

162:                                              ; preds = %138, %131
  br label %163

163:                                              ; preds = %162, %121, %116
  store i64 0, i64* %4, align 8
  br label %164

164:                                              ; preds = %457, %163
  %165 = load i64, i64* %4, align 8
  %166 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %166, i32 0, i32 13
  %168 = load i32*, i32** %167, align 8
  %169 = call i64 @LIST_NUM(i32* %168)
  %170 = icmp slt i64 %165, %169
  br i1 %170, label %171, label %460

171:                                              ; preds = %164
  %172 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %172, i32 0, i32 13
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* %4, align 8
  %176 = call i8* @LIST_DATA(i32* %174, i64 %175)
  %177 = bitcast i8* %176 to %struct.TYPE_50__*
  store %struct.TYPE_50__* %177, %struct.TYPE_50__** %10, align 8
  %178 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %178, i32 0, i32 20
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %215

182:                                              ; preds = %171
  br label %183

183:                                              ; preds = %182, %191
  %184 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %184, i32 0, i32 19
  %186 = load i32, i32* %185, align 8
  %187 = call %struct.TYPE_48__* @TubeRecvAsync(i32 %186)
  store %struct.TYPE_48__* %187, %struct.TYPE_48__** %11, align 8
  %188 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %189 = icmp eq %struct.TYPE_48__* %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  br label %204

191:                                              ; preds = %183
  %192 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %193 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %194 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %195 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @SendL2TPDataPacket(%struct.TYPE_51__* %192, %struct.TYPE_50__* %193, %struct.TYPE_50__* %194, i32 %197, i32 %200)
  %202 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %203 = call i32 @FreeTubeData(%struct.TYPE_48__* %202)
  br label %183

204:                                              ; preds = %190
  %205 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %205, i32 0, i32 19
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @IsTubeConnected(i32 %207)
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %204
  %211 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %212 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %213 = call i32 @DisconnectL2TPSession(%struct.TYPE_50__* %211, %struct.TYPE_50__* %212)
  br label %214

214:                                              ; preds = %210, %204
  br label %215

215:                                              ; preds = %214, %171
  %216 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %274

220:                                              ; preds = %215
  %221 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %221, i32 0, i32 18
  %223 = load %struct.TYPE_49__*, %struct.TYPE_49__** %222, align 8
  %224 = icmp ne %struct.TYPE_49__* %223, null
  br i1 %224, label %225, label %273

225:                                              ; preds = %220
  %226 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %227 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %228 = call i32 @L2TPSessionManageEtherIPServer(%struct.TYPE_51__* %226, %struct.TYPE_50__* %227)
  %229 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %229, i32 0, i32 18
  %231 = load %struct.TYPE_49__*, %struct.TYPE_49__** %230, align 8
  %232 = call i32 @EtherIPProcInterrupts(%struct.TYPE_49__* %231)
  store i64 0, i64* %12, align 8
  br label %233

233:                                              ; preds = %263, %225
  %234 = load i64, i64* %12, align 8
  %235 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %235, i32 0, i32 18
  %237 = load %struct.TYPE_49__*, %struct.TYPE_49__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = call i64 @LIST_NUM(i32* %239)
  %241 = icmp slt i64 %234, %240
  br i1 %241, label %242, label %266

242:                                              ; preds = %233
  %243 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %243, i32 0, i32 18
  %245 = load %struct.TYPE_49__*, %struct.TYPE_49__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load i64, i64* %12, align 8
  %249 = call i8* @LIST_DATA(i32* %247, i64 %248)
  %250 = bitcast i8* %249 to %struct.TYPE_55__*
  store %struct.TYPE_55__* %250, %struct.TYPE_55__** %13, align 8
  %251 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %252 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %253 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %254 = load %struct.TYPE_55__*, %struct.TYPE_55__** %13, align 8
  %255 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_55__*, %struct.TYPE_55__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @SendL2TPDataPacket(%struct.TYPE_51__* %251, %struct.TYPE_50__* %252, %struct.TYPE_50__* %253, i32 %256, i32 %259)
  %261 = load %struct.TYPE_55__*, %struct.TYPE_55__** %13, align 8
  %262 = call i32 @FreeBlock(%struct.TYPE_55__* %261)
  br label %263

263:                                              ; preds = %242
  %264 = load i64, i64* %12, align 8
  %265 = add nsw i64 %264, 1
  store i64 %265, i64* %12, align 8
  br label %233

266:                                              ; preds = %233
  %267 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %267, i32 0, i32 18
  %269 = load %struct.TYPE_49__*, %struct.TYPE_49__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = call i32 @DeleteAll(i32* %271)
  br label %273

273:                                              ; preds = %266, %220
  br label %274

274:                                              ; preds = %273, %215
  %275 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %275, i32 0, i32 15
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %428

279:                                              ; preds = %274
  %280 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %428

284:                                              ; preds = %279
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %285 = load i32, i32* @L2TP_MESSAGE_TYPE_CDN, align 4
  %286 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  %289 = call %struct.TYPE_53__* @NewL2TPControlPacket(i32 %285, i32 %288)
  store %struct.TYPE_53__* %289, %struct.TYPE_53__** %19, align 8
  %290 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %290, i32 0, i32 17
  %292 = load %struct.TYPE_47__*, %struct.TYPE_47__** %291, align 8
  %293 = icmp ne %struct.TYPE_47__* %292, null
  br i1 %293, label %294, label %305

294:                                              ; preds = %284
  %295 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %295, i32 0, i32 17
  %297 = load %struct.TYPE_47__*, %struct.TYPE_47__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  store i64 %299, i64* %17, align 8
  %300 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %300, i32 0, i32 17
  %302 = load %struct.TYPE_47__*, %struct.TYPE_47__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %18, align 8
  br label %305

305:                                              ; preds = %294, %284
  %306 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 8
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %321

310:                                              ; preds = %305
  %311 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %312 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %311, i32 0, i32 7
  %313 = load i32, i32* %312, align 8
  %314 = call i64 @Endian16(i32 %313)
  store i64 %314, i64* %15, align 8
  %315 = load %struct.TYPE_53__*, %struct.TYPE_53__** %19, align 8
  %316 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %315, i32 0, i32 2
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* @L2TP_AVP_TYPE_ASSIGNED_SESSION, align 4
  %319 = call %struct.TYPE_50__* @NewAVP(i32 %318, i32 1, i32 0, i64* %15, i32 8)
  %320 = call i32 @Add(i32* %317, %struct.TYPE_50__* %319)
  br label %345

321:                                              ; preds = %305
  %322 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %322, i32 0, i32 7
  %324 = load i32, i32* %323, align 8
  %325 = call i64 @Endian16(i32 %324)
  store i64 %325, i64* %16, align 8
  %326 = load %struct.TYPE_53__*, %struct.TYPE_53__** %19, align 8
  %327 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %326, i32 0, i32 2
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* @L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL, align 4
  %330 = call %struct.TYPE_50__* @NewAVP(i32 %329, i32 1, i32 0, i64* %16, i32 8)
  %331 = call i32 @Add(i32* %328, %struct.TYPE_50__* %330)
  %332 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %332, i32 0, i32 14
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %344

336:                                              ; preds = %321
  %337 = load %struct.TYPE_53__*, %struct.TYPE_53__** %19, align 8
  %338 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %337, i32 0, i32 2
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* @L2TPV3_CISCO_AVP_SESSION_ID_LOCAL, align 4
  %341 = load i32, i32* @L2TP_AVP_VENDOR_ID_CISCO, align 4
  %342 = call %struct.TYPE_50__* @NewAVP(i32 %340, i32 1, i32 %341, i64* %16, i32 8)
  %343 = call i32 @Add(i32* %339, %struct.TYPE_50__* %342)
  br label %344

344:                                              ; preds = %336, %321
  br label %345

345:                                              ; preds = %344, %310
  %346 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %347 = call i32 @Zero(i64* %346, i32 32)
  %348 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 1
  store i64 3, i64* %348, align 8
  %349 = load %struct.TYPE_53__*, %struct.TYPE_53__** %19, align 8
  %350 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %349, i32 0, i32 2
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* @L2TP_AVP_TYPE_RESULT_CODE, align 4
  %353 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %354 = call %struct.TYPE_50__* @NewAVP(i32 %352, i32 1, i32 0, i64* %353, i32 32)
  %355 = call i32 @Add(i32* %351, %struct.TYPE_50__* %354)
  %356 = load i64, i64* %17, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %385

358:                                              ; preds = %345
  %359 = call %struct.TYPE_54__* (...) @NewBuf()
  store %struct.TYPE_54__* %359, %struct.TYPE_54__** %20, align 8
  %360 = load i64, i64* %17, align 8
  %361 = trunc i64 %360 to i32
  %362 = call i64 @Endian16(i32 %361)
  store i64 %362, i64* %22, align 8
  %363 = load %struct.TYPE_54__*, %struct.TYPE_54__** %20, align 8
  %364 = call i32 @WriteBuf(%struct.TYPE_54__* %363, i64* %22, i32 8)
  %365 = call i64 @Endian16(i32 49185)
  store i64 %365, i64* %22, align 8
  %366 = load %struct.TYPE_54__*, %struct.TYPE_54__** %20, align 8
  %367 = call i32 @WriteBuf(%struct.TYPE_54__* %366, i64* %22, i32 8)
  %368 = load i64, i64* %18, align 8
  store i64 %368, i64* %21, align 8
  %369 = load %struct.TYPE_54__*, %struct.TYPE_54__** %20, align 8
  %370 = call i32 @WriteBuf(%struct.TYPE_54__* %369, i64* %21, i32 8)
  %371 = load %struct.TYPE_53__*, %struct.TYPE_53__** %19, align 8
  %372 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %371, i32 0, i32 2
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* @L2TP_AVP_TYPE_PPP_DISCONNECT_CAUSE, align 4
  %375 = load %struct.TYPE_54__*, %struct.TYPE_54__** %20, align 8
  %376 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %375, i32 0, i32 0
  %377 = load i64*, i64** %376, align 8
  %378 = load %struct.TYPE_54__*, %struct.TYPE_54__** %20, align 8
  %379 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = call %struct.TYPE_50__* @NewAVP(i32 %374, i32 0, i32 0, i64* %377, i32 %380)
  %382 = call i32 @Add(i32* %373, %struct.TYPE_50__* %381)
  %383 = load %struct.TYPE_54__*, %struct.TYPE_54__** %20, align 8
  %384 = call i32 @FreeBuf(%struct.TYPE_54__* %383)
  br label %385

385:                                              ; preds = %358, %345
  %386 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %387 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %388 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %389 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %388, i32 0, i32 16
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.TYPE_53__*, %struct.TYPE_53__** %19, align 8
  %392 = call i32 @SendL2TPControlPacket(%struct.TYPE_51__* %386, %struct.TYPE_50__* %387, i32 %390, %struct.TYPE_53__* %391)
  %393 = load %struct.TYPE_53__*, %struct.TYPE_53__** %19, align 8
  %394 = call i32 @FreeL2TPPacket(%struct.TYPE_53__* %393)
  %395 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %396 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %395, i32 0, i32 16
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %399 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %398, i32 0, i32 7
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %401, i32 0, i32 11
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %405 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  %407 = call i32 (i8*, i32, i32, ...) @Debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %397, i32 %400, i32 %403, i32 %406)
  %408 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %409 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %408, i32 0, i32 6
  store i32 1, i32* %409, align 4
  %410 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %411 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %410, i32 0, i32 3
  store i32 0, i32* %411, align 8
  %412 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %413 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = load i64, i64* @L2TP_TUNNEL_DISCONNECT_TIMEOUT, align 8
  %416 = add nsw i64 %414, %415
  %417 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %418 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %417, i32 0, i32 8
  store i64 %416, i64* %418, align 8
  %419 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %420 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %421 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %422 = call i32 @StopL2TPThread(%struct.TYPE_51__* %419, %struct.TYPE_50__* %420, %struct.TYPE_50__* %421)
  %423 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %424 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %425 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %424, i32 0, i32 8
  %426 = load i64, i64* %425, align 8
  %427 = call i32 @L2TPAddInterrupt(%struct.TYPE_51__* %423, i64 %426)
  br label %428

428:                                              ; preds = %385, %279, %274
  %429 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %430 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %429, i32 0, i32 6
  %431 = load i32, i32* %430, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %456

433:                                              ; preds = %428
  %434 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %435 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %434, i32 0, i32 1
  %436 = load i64, i64* %435, align 8
  %437 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %438 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %437, i32 0, i32 8
  %439 = load i64, i64* %438, align 8
  %440 = icmp sge i64 %436, %439
  br i1 %440, label %447, label %441

441:                                              ; preds = %433
  %442 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %443 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %442, i32 0, i32 12
  %444 = load i32*, i32** %443, align 8
  %445 = call i64 @LIST_NUM(i32* %444)
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %447, label %456

447:                                              ; preds = %441, %433
  %448 = load i32*, i32** %8, align 8
  %449 = icmp eq i32* %448, null
  br i1 %449, label %450, label %452

450:                                              ; preds = %447
  %451 = call i32* @NewListFast(i32* null)
  store i32* %451, i32** %8, align 8
  br label %452

452:                                              ; preds = %450, %447
  %453 = load i32*, i32** %8, align 8
  %454 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %455 = call i32 @Add(i32* %453, %struct.TYPE_50__* %454)
  br label %456

456:                                              ; preds = %452, %441, %428
  br label %457

457:                                              ; preds = %456
  %458 = load i64, i64* %4, align 8
  %459 = add nsw i64 %458, 1
  store i64 %459, i64* %4, align 8
  br label %164

460:                                              ; preds = %164
  %461 = load i32*, i32** %8, align 8
  %462 = icmp ne i32* %461, null
  br i1 %462, label %463, label %500

463:                                              ; preds = %460
  store i64 0, i64* %4, align 8
  br label %464

464:                                              ; preds = %494, %463
  %465 = load i64, i64* %4, align 8
  %466 = load i32*, i32** %8, align 8
  %467 = call i64 @LIST_NUM(i32* %466)
  %468 = icmp slt i64 %465, %467
  br i1 %468, label %469, label %497

469:                                              ; preds = %464
  %470 = load i32*, i32** %8, align 8
  %471 = load i64, i64* %4, align 8
  %472 = call i8* @LIST_DATA(i32* %470, i64 %471)
  %473 = bitcast i8* %472 to %struct.TYPE_50__*
  store %struct.TYPE_50__* %473, %struct.TYPE_50__** %23, align 8
  %474 = load %struct.TYPE_50__*, %struct.TYPE_50__** %23, align 8
  %475 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %474, i32 0, i32 16
  %476 = load i32, i32* %475, align 8
  %477 = load %struct.TYPE_50__*, %struct.TYPE_50__** %23, align 8
  %478 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %477, i32 0, i32 7
  %479 = load i32, i32* %478, align 8
  %480 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %481 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %480, i32 0, i32 11
  %482 = load i32, i32* %481, align 8
  %483 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %484 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %483, i32 0, i32 2
  %485 = load i32, i32* %484, align 4
  %486 = call i32 (i8*, i32, i32, ...) @Debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %476, i32 %479, i32 %482, i32 %485)
  %487 = load %struct.TYPE_50__*, %struct.TYPE_50__** %23, align 8
  %488 = call i32 @FreeL2TPSession(%struct.TYPE_50__* %487)
  %489 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %490 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %489, i32 0, i32 13
  %491 = load i32*, i32** %490, align 8
  %492 = load %struct.TYPE_50__*, %struct.TYPE_50__** %23, align 8
  %493 = call i32 @Delete(i32* %491, %struct.TYPE_50__* %492)
  br label %494

494:                                              ; preds = %469
  %495 = load i64, i64* %4, align 8
  %496 = add nsw i64 %495, 1
  store i64 %496, i64* %4, align 8
  br label %464

497:                                              ; preds = %464
  %498 = load i32*, i32** %8, align 8
  %499 = call i32 @ReleaseList(i32* %498)
  br label %500

500:                                              ; preds = %497, %460
  %501 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %502 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %501, i32 0, i32 15
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %505, label %595

505:                                              ; preds = %500
  %506 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %507 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %506, i32 0, i32 6
  %508 = load i32, i32* %507, align 4
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %595

510:                                              ; preds = %505
  %511 = load i32, i32* @L2TP_MESSAGE_TYPE_STOPCCN, align 4
  %512 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %513 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %512, i32 0, i32 5
  %514 = load i32, i32* %513, align 8
  %515 = call %struct.TYPE_53__* @NewL2TPControlPacket(i32 %511, i32 %514)
  store %struct.TYPE_53__* %515, %struct.TYPE_53__** %27, align 8
  %516 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %517 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %516, i32 0, i32 5
  %518 = load i32, i32* %517, align 8
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %531

520:                                              ; preds = %510
  %521 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %522 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %521, i32 0, i32 2
  %523 = load i32, i32* %522, align 4
  %524 = call i64 @Endian16(i32 %523)
  store i64 %524, i64* %25, align 8
  %525 = load %struct.TYPE_53__*, %struct.TYPE_53__** %27, align 8
  %526 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %525, i32 0, i32 2
  %527 = load i32*, i32** %526, align 8
  %528 = load i32, i32* @L2TP_AVP_TYPE_ASSIGNED_TUNNEL, align 4
  %529 = call %struct.TYPE_50__* @NewAVP(i32 %528, i32 1, i32 0, i64* %25, i32 8)
  %530 = call i32 @Add(i32* %527, %struct.TYPE_50__* %529)
  br label %555

531:                                              ; preds = %510
  %532 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %533 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %532, i32 0, i32 2
  %534 = load i32, i32* %533, align 4
  %535 = call i64 @Endian32(i32 %534)
  store i64 %535, i64* %26, align 8
  %536 = load %struct.TYPE_53__*, %struct.TYPE_53__** %27, align 8
  %537 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %536, i32 0, i32 2
  %538 = load i32*, i32** %537, align 8
  %539 = load i32, i32* @L2TP_AVP_TYPE_V3_TUNNEL_ID, align 4
  %540 = call %struct.TYPE_50__* @NewAVP(i32 %539, i32 1, i32 0, i64* %26, i32 8)
  %541 = call i32 @Add(i32* %538, %struct.TYPE_50__* %540)
  %542 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %543 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %542, i32 0, i32 14
  %544 = load i64, i64* %543, align 8
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %554

546:                                              ; preds = %531
  %547 = load %struct.TYPE_53__*, %struct.TYPE_53__** %27, align 8
  %548 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %547, i32 0, i32 2
  %549 = load i32*, i32** %548, align 8
  %550 = load i32, i32* @L2TPV3_CISCO_AVP_TUNNEL_ID, align 4
  %551 = load i32, i32* @L2TP_AVP_VENDOR_ID_CISCO, align 4
  %552 = call %struct.TYPE_50__* @NewAVP(i32 %550, i32 1, i32 %551, i64* %26, i32 8)
  %553 = call i32 @Add(i32* %549, %struct.TYPE_50__* %552)
  br label %554

554:                                              ; preds = %546, %531
  br label %555

555:                                              ; preds = %554, %520
  %556 = getelementptr inbounds [4 x i64], [4 x i64]* %24, i64 0, i64 0
  %557 = call i32 @Zero(i64* %556, i32 32)
  %558 = getelementptr inbounds [4 x i64], [4 x i64]* %24, i64 0, i64 1
  store i64 6, i64* %558, align 8
  %559 = load %struct.TYPE_53__*, %struct.TYPE_53__** %27, align 8
  %560 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %559, i32 0, i32 2
  %561 = load i32*, i32** %560, align 8
  %562 = load i32, i32* @L2TP_AVP_TYPE_RESULT_CODE, align 4
  %563 = getelementptr inbounds [4 x i64], [4 x i64]* %24, i64 0, i64 0
  %564 = call %struct.TYPE_50__* @NewAVP(i32 %562, i32 1, i32 0, i64* %563, i32 32)
  %565 = call i32 @Add(i32* %561, %struct.TYPE_50__* %564)
  %566 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %567 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %568 = load %struct.TYPE_53__*, %struct.TYPE_53__** %27, align 8
  %569 = call i32 @SendL2TPControlPacket(%struct.TYPE_51__* %566, %struct.TYPE_50__* %567, i32 0, %struct.TYPE_53__* %568)
  %570 = load %struct.TYPE_53__*, %struct.TYPE_53__** %27, align 8
  %571 = call i32 @FreeL2TPPacket(%struct.TYPE_53__* %570)
  %572 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %573 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %572, i32 0, i32 11
  %574 = load i32, i32* %573, align 8
  %575 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %576 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %575, i32 0, i32 2
  %577 = load i32, i32* %576, align 4
  %578 = call i32 (i8*, i32, i32, ...) @Debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %574, i32 %577)
  %579 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %580 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %579, i32 0, i32 6
  store i32 1, i32* %580, align 4
  %581 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %582 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %581, i32 0, i32 3
  store i32 0, i32* %582, align 8
  %583 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %584 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %583, i32 0, i32 1
  %585 = load i64, i64* %584, align 8
  %586 = load i64, i64* @L2TP_TUNNEL_DISCONNECT_TIMEOUT, align 8
  %587 = add nsw i64 %585, %586
  %588 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %589 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %588, i32 0, i32 8
  store i64 %587, i64* %589, align 8
  %590 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %591 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %592 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %591, i32 0, i32 8
  %593 = load i64, i64* %592, align 8
  %594 = call i32 @L2TPAddInterrupt(%struct.TYPE_51__* %590, i64 %593)
  br label %595

595:                                              ; preds = %555, %505, %500
  %596 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %597 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %596, i32 0, i32 6
  %598 = load i32, i32* %597, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %629

600:                                              ; preds = %595
  %601 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %602 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %601, i32 0, i32 12
  %603 = load i32*, i32** %602, align 8
  %604 = call i64 @LIST_NUM(i32* %603)
  %605 = icmp eq i64 %604, 0
  br i1 %605, label %606, label %612

606:                                              ; preds = %600
  %607 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %608 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %607, i32 0, i32 13
  %609 = load i32*, i32** %608, align 8
  %610 = call i64 @LIST_NUM(i32* %609)
  %611 = icmp eq i64 %610, 0
  br i1 %611, label %620, label %612

612:                                              ; preds = %606, %600
  %613 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %614 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %613, i32 0, i32 1
  %615 = load i64, i64* %614, align 8
  %616 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %617 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %616, i32 0, i32 8
  %618 = load i64, i64* %617, align 8
  %619 = icmp sge i64 %615, %618
  br i1 %619, label %620, label %629

620:                                              ; preds = %612, %606
  %621 = load i32*, i32** %5, align 8
  %622 = icmp eq i32* %621, null
  br i1 %622, label %623, label %625

623:                                              ; preds = %620
  %624 = call i32* @NewListFast(i32* null)
  store i32* %624, i32** %5, align 8
  br label %625

625:                                              ; preds = %623, %620
  %626 = load i32*, i32** %5, align 8
  %627 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %628 = call i32 @Add(i32* %626, %struct.TYPE_50__* %627)
  br label %629

629:                                              ; preds = %625, %612, %595
  br label %630

630:                                              ; preds = %629
  %631 = load i64, i64* %3, align 8
  %632 = add nsw i64 %631, 1
  store i64 %632, i64* %3, align 8
  br label %76

633:                                              ; preds = %76
  %634 = load i32*, i32** %5, align 8
  %635 = icmp ne i32* %634, null
  br i1 %635, label %636, label %667

636:                                              ; preds = %633
  store i64 0, i64* %3, align 8
  br label %637

637:                                              ; preds = %661, %636
  %638 = load i64, i64* %3, align 8
  %639 = load i32*, i32** %5, align 8
  %640 = call i64 @LIST_NUM(i32* %639)
  %641 = icmp slt i64 %638, %640
  br i1 %641, label %642, label %664

642:                                              ; preds = %637
  %643 = load i32*, i32** %5, align 8
  %644 = load i64, i64* %3, align 8
  %645 = call i8* @LIST_DATA(i32* %643, i64 %644)
  %646 = bitcast i8* %645 to %struct.TYPE_50__*
  store %struct.TYPE_50__* %646, %struct.TYPE_50__** %28, align 8
  %647 = load %struct.TYPE_50__*, %struct.TYPE_50__** %28, align 8
  %648 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %647, i32 0, i32 11
  %649 = load i32, i32* %648, align 8
  %650 = load %struct.TYPE_50__*, %struct.TYPE_50__** %28, align 8
  %651 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %650, i32 0, i32 2
  %652 = load i32, i32* %651, align 4
  %653 = call i32 (i8*, i32, i32, ...) @Debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %649, i32 %652)
  %654 = load %struct.TYPE_50__*, %struct.TYPE_50__** %28, align 8
  %655 = call i32 @FreeL2TPTunnel(%struct.TYPE_50__* %654)
  %656 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %657 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %656, i32 0, i32 6
  %658 = load i32*, i32** %657, align 8
  %659 = load %struct.TYPE_50__*, %struct.TYPE_50__** %28, align 8
  %660 = call i32 @Delete(i32* %658, %struct.TYPE_50__* %659)
  br label %661

661:                                              ; preds = %642
  %662 = load i64, i64* %3, align 8
  %663 = add nsw i64 %662, 1
  store i64 %663, i64* %3, align 8
  br label %637

664:                                              ; preds = %637
  %665 = load i32*, i32** %5, align 8
  %666 = call i32 @ReleaseList(i32* %665)
  br label %667

667:                                              ; preds = %664, %633
  store i64 0, i64* %3, align 8
  br label %668

668:                                              ; preds = %769, %667
  %669 = load i64, i64* %3, align 8
  %670 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %671 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %670, i32 0, i32 6
  %672 = load i32*, i32** %671, align 8
  %673 = call i64 @LIST_NUM(i32* %672)
  %674 = icmp slt i64 %669, %673
  br i1 %674, label %675, label %772

675:                                              ; preds = %668
  %676 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %677 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %676, i32 0, i32 6
  %678 = load i32*, i32** %677, align 8
  %679 = load i64, i64* %3, align 8
  %680 = call i8* @LIST_DATA(i32* %678, i64 %679)
  %681 = bitcast i8* %680 to %struct.TYPE_50__*
  store %struct.TYPE_50__* %681, %struct.TYPE_50__** %29, align 8
  %682 = load %struct.TYPE_50__*, %struct.TYPE_50__** %29, align 8
  %683 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %682, i32 0, i32 12
  %684 = load i32*, i32** %683, align 8
  %685 = call i64 @LIST_NUM(i32* %684)
  %686 = icmp sge i64 %685, 1
  br i1 %686, label %687, label %731

687:                                              ; preds = %675
  store i64 0, i64* %30, align 8
  br label %688

688:                                              ; preds = %727, %687
  %689 = load i64, i64* %30, align 8
  %690 = load %struct.TYPE_50__*, %struct.TYPE_50__** %29, align 8
  %691 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %690, i32 0, i32 12
  %692 = load i32*, i32** %691, align 8
  %693 = call i64 @LIST_NUM(i32* %692)
  %694 = icmp slt i64 %689, %693
  br i1 %694, label %695, label %730

695:                                              ; preds = %688
  %696 = load %struct.TYPE_50__*, %struct.TYPE_50__** %29, align 8
  %697 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %696, i32 0, i32 12
  %698 = load i32*, i32** %697, align 8
  %699 = load i64, i64* %30, align 8
  %700 = call i8* @LIST_DATA(i32* %698, i64 %699)
  %701 = bitcast i8* %700 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %701, %struct.TYPE_52__** %31, align 8
  %702 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %703 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %702, i32 0, i32 1
  %704 = load i64, i64* %703, align 8
  %705 = load %struct.TYPE_52__*, %struct.TYPE_52__** %31, align 8
  %706 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %705, i32 0, i32 0
  %707 = load i64, i64* %706, align 8
  %708 = icmp sge i64 %704, %707
  br i1 %708, label %709, label %726

709:                                              ; preds = %695
  %710 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %711 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %710, i32 0, i32 1
  %712 = load i64, i64* %711, align 8
  %713 = load i64, i64* @L2TP_PACKET_RESEND_INTERVAL, align 8
  %714 = add nsw i64 %712, %713
  %715 = load %struct.TYPE_52__*, %struct.TYPE_52__** %31, align 8
  %716 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %715, i32 0, i32 0
  store i64 %714, i64* %716, align 8
  %717 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %718 = load %struct.TYPE_52__*, %struct.TYPE_52__** %31, align 8
  %719 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %718, i32 0, i32 0
  %720 = load i64, i64* %719, align 8
  %721 = call i32 @L2TPAddInterrupt(%struct.TYPE_51__* %717, i64 %720)
  %722 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %723 = load %struct.TYPE_50__*, %struct.TYPE_50__** %29, align 8
  %724 = load %struct.TYPE_52__*, %struct.TYPE_52__** %31, align 8
  %725 = call i32 @SendL2TPControlPacketMain(%struct.TYPE_51__* %722, %struct.TYPE_50__* %723, %struct.TYPE_52__* %724)
  br label %726

726:                                              ; preds = %709, %695
  br label %727

727:                                              ; preds = %726
  %728 = load i64, i64* %30, align 8
  %729 = add nsw i64 %728, 1
  store i64 %729, i64* %30, align 8
  br label %688

730:                                              ; preds = %688
  br label %766

731:                                              ; preds = %675
  %732 = load %struct.TYPE_50__*, %struct.TYPE_50__** %29, align 8
  %733 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %732, i32 0, i32 9
  %734 = load i32, i32* %733, align 8
  %735 = icmp ne i32 %734, 0
  br i1 %735, label %736, label %765

736:                                              ; preds = %731
  %737 = call %struct.TYPE_52__* @ZeroMalloc(i32 16)
  store %struct.TYPE_52__* %737, %struct.TYPE_52__** %32, align 8
  %738 = load %struct.TYPE_50__*, %struct.TYPE_50__** %29, align 8
  %739 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %738, i32 0, i32 5
  %740 = load i32, i32* %739, align 8
  %741 = call %struct.TYPE_53__* @NewL2TPControlPacket(i32 0, i32 %740)
  store %struct.TYPE_53__* %741, %struct.TYPE_53__** %33, align 8
  %742 = load %struct.TYPE_50__*, %struct.TYPE_50__** %29, align 8
  %743 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %742, i32 0, i32 11
  %744 = load i32, i32* %743, align 8
  %745 = load %struct.TYPE_53__*, %struct.TYPE_53__** %33, align 8
  %746 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %745, i32 0, i32 1
  store i32 %744, i32* %746, align 4
  %747 = load %struct.TYPE_50__*, %struct.TYPE_50__** %29, align 8
  %748 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %747, i32 0, i32 10
  %749 = load i32, i32* %748, align 4
  %750 = load %struct.TYPE_53__*, %struct.TYPE_53__** %33, align 8
  %751 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %750, i32 0, i32 0
  store i32 %749, i32* %751, align 8
  %752 = load %struct.TYPE_53__*, %struct.TYPE_53__** %33, align 8
  %753 = load %struct.TYPE_50__*, %struct.TYPE_50__** %29, align 8
  %754 = call i32 @BuildL2TPPacketData(%struct.TYPE_53__* %752, %struct.TYPE_50__* %753)
  %755 = load %struct.TYPE_52__*, %struct.TYPE_52__** %32, align 8
  %756 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %755, i32 0, i32 1
  store i32 %754, i32* %756, align 8
  %757 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %758 = load %struct.TYPE_50__*, %struct.TYPE_50__** %29, align 8
  %759 = load %struct.TYPE_52__*, %struct.TYPE_52__** %32, align 8
  %760 = call i32 @SendL2TPControlPacketMain(%struct.TYPE_51__* %757, %struct.TYPE_50__* %758, %struct.TYPE_52__* %759)
  %761 = load %struct.TYPE_52__*, %struct.TYPE_52__** %32, align 8
  %762 = call i32 @FreeL2TPQueue(%struct.TYPE_52__* %761)
  %763 = load %struct.TYPE_53__*, %struct.TYPE_53__** %33, align 8
  %764 = call i32 @FreeL2TPPacket(%struct.TYPE_53__* %763)
  br label %765

765:                                              ; preds = %736, %731
  br label %766

766:                                              ; preds = %765, %730
  %767 = load %struct.TYPE_50__*, %struct.TYPE_50__** %29, align 8
  %768 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %767, i32 0, i32 9
  store i32 0, i32* %768, align 8
  br label %769

769:                                              ; preds = %766
  %770 = load i64, i64* %3, align 8
  %771 = add nsw i64 %770, 1
  store i64 %771, i64* %3, align 8
  br label %668

772:                                              ; preds = %668
  %773 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %774 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %773, i32 0, i32 0
  %775 = load i32, i32* %774, align 8
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %797

777:                                              ; preds = %772
  %778 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %779 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %778, i32 0, i32 6
  %780 = load i32*, i32** %779, align 8
  %781 = call i64 @LIST_NUM(i32* %780)
  %782 = icmp eq i64 %781, 0
  br i1 %782, label %783, label %796

783:                                              ; preds = %777
  %784 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %785 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %784, i32 0, i32 2
  %786 = load i32, i32* %785, align 8
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %788, label %795

788:                                              ; preds = %783
  %789 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %790 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %789, i32 0, i32 2
  store i32 1, i32* %790, align 8
  %791 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %792 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %791, i32 0, i32 5
  %793 = load i32, i32* %792, align 8
  %794 = call i32 @Set(i32 %793)
  br label %795

795:                                              ; preds = %788, %783
  br label %796

796:                                              ; preds = %795, %777
  br label %797

797:                                              ; preds = %796, %772
  %798 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %799 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %798, i32 0, i32 4
  %800 = load i32*, i32** %799, align 8
  %801 = icmp eq i32* %800, null
  br i1 %801, label %802, label %807

802:                                              ; preds = %797
  %803 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %804 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %803, i32 0, i32 3
  %805 = load i32, i32* %804, align 4
  %806 = call i32 @MaintainThreadList(i32 %805)
  br label %807

807:                                              ; preds = %36, %802, %797
  ret void
}

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i8* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @DisconnectL2TPTunnel(%struct.TYPE_50__*) #1

declare dso_local i32 @FlushTubeFlushList(i32) #1

declare dso_local i32 @Debug(i8*, i32, i32, ...) #1

declare dso_local %struct.TYPE_53__* @NewL2TPControlPacket(i32, i32) #1

declare dso_local i32 @SendL2TPControlPacket(%struct.TYPE_51__*, %struct.TYPE_50__*, i32, %struct.TYPE_53__*) #1

declare dso_local i32 @FreeL2TPPacket(%struct.TYPE_53__*) #1

declare dso_local i32 @L2TPAddInterrupt(%struct.TYPE_51__*, i64) #1

declare dso_local %struct.TYPE_48__* @TubeRecvAsync(i32) #1

declare dso_local i32 @SendL2TPDataPacket(%struct.TYPE_51__*, %struct.TYPE_50__*, %struct.TYPE_50__*, i32, i32) #1

declare dso_local i32 @FreeTubeData(%struct.TYPE_48__*) #1

declare dso_local i32 @IsTubeConnected(i32) #1

declare dso_local i32 @DisconnectL2TPSession(%struct.TYPE_50__*, %struct.TYPE_50__*) #1

declare dso_local i32 @L2TPSessionManageEtherIPServer(%struct.TYPE_51__*, %struct.TYPE_50__*) #1

declare dso_local i32 @EtherIPProcInterrupts(%struct.TYPE_49__*) #1

declare dso_local i32 @FreeBlock(%struct.TYPE_55__*) #1

declare dso_local i32 @DeleteAll(i32*) #1

declare dso_local i64 @Endian16(i32) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_50__*) #1

declare dso_local %struct.TYPE_50__* @NewAVP(i32, i32, i32, i64*, i32) #1

declare dso_local i32 @Zero(i64*, i32) #1

declare dso_local %struct.TYPE_54__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_54__*, i64*, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_54__*) #1

declare dso_local i32 @StopL2TPThread(%struct.TYPE_51__*, %struct.TYPE_50__*, %struct.TYPE_50__*) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @FreeL2TPSession(%struct.TYPE_50__*) #1

declare dso_local i32 @Delete(i32*, %struct.TYPE_50__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i64 @Endian32(i32) #1

declare dso_local i32 @FreeL2TPTunnel(%struct.TYPE_50__*) #1

declare dso_local i32 @SendL2TPControlPacketMain(%struct.TYPE_51__*, %struct.TYPE_50__*, %struct.TYPE_52__*) #1

declare dso_local %struct.TYPE_52__* @ZeroMalloc(i32) #1

declare dso_local i32 @BuildL2TPPacketData(%struct.TYPE_53__*, %struct.TYPE_50__*) #1

declare dso_local i32 @FreeL2TPQueue(%struct.TYPE_52__*) #1

declare dso_local i32 @Set(i32) #1

declare dso_local i32 @MaintainThreadList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
