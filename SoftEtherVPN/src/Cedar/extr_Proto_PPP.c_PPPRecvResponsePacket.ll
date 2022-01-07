; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_PPPRecvResponsePacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_PPPRecvResponsePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__*, i64, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64 }

@PPP_PACKET_RECV_TIMEOUT = common dso_local global i64 0, align 8
@PPP_PACKET_RESEND_INTERVAL = common dso_local global i64 0, align 8
@PPP_PROTOCOL_CHAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unsupported Protocol: 0x%x\0A\00", align 1
@PPP_PROTOCOL_PAP = common dso_local global i64 0, align 8
@PPP_PAP_CODE_ACK = common dso_local global i64 0, align 8
@PPP_CHAP_CODE_FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Disconnecting because PAP failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Disconnecting because CHAP failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"LP_CONTROL_TIMEOUT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @PPPRecvResponsePacket(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i64 %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_22__*, align 8
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %25 = call i64 (...) @Tick64()
  %26 = load i64, i64* @PPP_PACKET_RECV_TIMEOUT, align 8
  %27 = add nsw i64 %25, %26
  store i64 %27, i64* %14, align 8
  %28 = call i64 (...) @Tick64()
  %29 = load i64, i64* @PPP_PACKET_RESEND_INTERVAL, align 8
  %30 = add nsw i64 %28, %29
  store i64 %30, i64* %15, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %16, align 8
  store i64 0, i64* %17, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %32 = icmp eq %struct.TYPE_21__* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %6
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %35 = icmp ne %struct.TYPE_22__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = icmp eq %struct.TYPE_20__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %6
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %369

42:                                               ; preds = %36, %33
  %43 = load i64*, i64** %11, align 8
  %44 = icmp eq i64* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i64* %17, i64** %11, align 8
  br label %46

46:                                               ; preds = %45, %42
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %48 = icmp ne %struct.TYPE_22__* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i64*, i64** %11, align 8
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %53, %361
  %56 = call i64 (...) @Tick64()
  store i64 %56, i64* %18, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = call i32 @IsTubeConnected(%struct.TYPE_19__* %59)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %369

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %304
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = icmp ne %struct.TYPE_22__* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %71, align 8
  store %struct.TYPE_22__* %72, %struct.TYPE_22__** %20, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %74, align 8
  br label %78

75:                                               ; preds = %64
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %77 = call %struct.TYPE_22__* @PPPRecvPacketWithLowLayerProcessing(%struct.TYPE_21__* %76, i32 1)
  store %struct.TYPE_22__* %77, %struct.TYPE_22__** %20, align 8
  br label %78

78:                                               ; preds = %75, %69
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %80 = icmp eq %struct.TYPE_22__* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %305

82:                                               ; preds = %78
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %84 = icmp ne %struct.TYPE_22__* %83, null
  br i1 %84, label %85, label %169

85:                                               ; preds = %82
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %85
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %93, %96
  br i1 %97, label %98, label %123

98:                                               ; preds = %90
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %103, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %98
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @PPP_CODE_IS_RESPONSE(i64 %113, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %110
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  store %struct.TYPE_22__* %122, %struct.TYPE_22__** %7, align 8
  br label %369

123:                                              ; preds = %110, %98, %90, %85
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %168

126:                                              ; preds = %123
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %167

131:                                              ; preds = %126
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %134, %137
  br i1 %138, label %139, label %167

139:                                              ; preds = %131
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %144, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %139
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @PPP_PROTOCOL_CHAP, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %151
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @PPP_PAP_CODE_IS_RESPONSE(i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %157
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  store %struct.TYPE_22__* %166, %struct.TYPE_22__** %7, align 8
  br label %369

167:                                              ; preds = %157, %151, %139, %131, %126
  br label %168

168:                                              ; preds = %167, %123
  br label %169

169:                                              ; preds = %168, %82
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %10, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %185, label %180

180:                                              ; preds = %174, %169
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %206

185:                                              ; preds = %180, %174
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @PPP_IS_SUPPORTED_PROTOCOL(i64 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %185
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %194 = call i32 @PPPStoreLastPacket(%struct.TYPE_21__* %192, %struct.TYPE_22__* %193)
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64*, i64** %11, align 8
  store i64 %197, i64* %198, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %369

199:                                              ; preds = %185
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %202)
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %205 = call i32 @FreePPPPacket(%struct.TYPE_22__* %204)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %369

206:                                              ; preds = %180
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %301

211:                                              ; preds = %206
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = call i64 @PPP_CODE_IS_REQUEST(i64 %214, i64 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %301

222:                                              ; preds = %211
  %223 = load i64, i64* %15, align 8
  %224 = load i64, i64* %18, align 8
  %225 = sub nsw i64 %223, %224
  store i64 %225, i64* %22, align 8
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %228 = call %struct.TYPE_22__* @PPPProcessRequestPacket(%struct.TYPE_21__* %226, %struct.TYPE_22__* %227)
  store %struct.TYPE_22__* %228, %struct.TYPE_22__** %21, align 8
  %229 = call i64 (...) @Tick64()
  %230 = load i64, i64* %22, align 8
  %231 = add nsw i64 %229, %230
  store i64 %231, i64* %15, align 8
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %233 = call i32 @FreePPPPacket(%struct.TYPE_22__* %232)
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %235 = icmp eq %struct.TYPE_22__* %234, null
  br i1 %235, label %236, label %237

236:                                              ; preds = %222
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %369

237:                                              ; preds = %222
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %240 = call i32 @PPPSendPacket(%struct.TYPE_21__* %238, %struct.TYPE_22__* %239)
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %244 = call i32 @FreePPPPacket(%struct.TYPE_22__* %243)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %369

245:                                              ; preds = %237
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @PPP_PROTOCOL_PAP, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %265

251:                                              ; preds = %245
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %251
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @PPP_PAP_CODE_ACK, align 8
  %263 = icmp ne i64 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %256
  store i32 1, i32* %23, align 4
  br label %265

265:                                              ; preds = %264, %256, %251, %245
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @PPP_PROTOCOL_CHAP, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %285

271:                                              ; preds = %265
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %271
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 2
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @PPP_CHAP_CODE_FAILURE, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %276
  store i32 1, i32* %24, align 4
  br label %285

285:                                              ; preds = %284, %276, %271, %265
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %287 = call i32 @FreePPPPacket(%struct.TYPE_22__* %286)
  %288 = load i32, i32* %23, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %285
  %291 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %292 = call i32 @SleepThread(i32 300)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %369

293:                                              ; preds = %285
  %294 = load i32, i32* %24, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %298 = call i32 @SleepThread(i32 300)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %369

299:                                              ; preds = %293
  br label %300

300:                                              ; preds = %299
  br label %304

301:                                              ; preds = %211, %206
  %302 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %303 = call i32 @FreePPPPacket(%struct.TYPE_22__* %302)
  br label %304

304:                                              ; preds = %301, %300
  br label %64

305:                                              ; preds = %81
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %307 = icmp ne %struct.TYPE_22__* %306, null
  br i1 %307, label %308, label %323

308:                                              ; preds = %305
  %309 = load i64, i64* %18, align 8
  %310 = load i64, i64* %15, align 8
  %311 = icmp sge i64 %309, %310
  br i1 %311, label %312, label %322

312:                                              ; preds = %308
  %313 = load i64, i64* %18, align 8
  %314 = load i64, i64* @PPP_PACKET_RESEND_INTERVAL, align 8
  %315 = add nsw i64 %313, %314
  store i64 %315, i64* %15, align 8
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %318 = call i32 @PPPSendPacket(%struct.TYPE_21__* %316, %struct.TYPE_22__* %317)
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %312
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %369

321:                                              ; preds = %312
  br label %322

322:                                              ; preds = %321, %308
  br label %323

323:                                              ; preds = %322, %305
  %324 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %325 = icmp eq %struct.TYPE_22__* %324, null
  br i1 %325, label %326, label %330

326:                                              ; preds = %323
  %327 = load i64, i64* %18, align 8
  %328 = load i64, i64* @PPP_PACKET_RECV_TIMEOUT, align 8
  %329 = add nsw i64 %327, %328
  store i64 %329, i64* %14, align 8
  br label %330

330:                                              ; preds = %326, %323
  %331 = load i64, i64* %18, align 8
  %332 = load i64, i64* %14, align 8
  %333 = icmp sge i64 %331, %332
  br i1 %333, label %334, label %337

334:                                              ; preds = %330
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %336 = call i32 @PPPLog(%struct.TYPE_21__* %335, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %369

337:                                              ; preds = %330
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %339 = icmp ne %struct.TYPE_22__* %338, null
  br i1 %339, label %340, label %348

340:                                              ; preds = %337
  %341 = load i64, i64* %14, align 8
  %342 = load i64, i64* %18, align 8
  %343 = sub nsw i64 %341, %342
  %344 = load i64, i64* %15, align 8
  %345 = load i64, i64* %18, align 8
  %346 = sub nsw i64 %344, %345
  %347 = call i64 @MIN(i64 %343, i64 %346)
  store i64 %347, i64* %19, align 8
  br label %352

348:                                              ; preds = %337
  %349 = load i64, i64* %14, align 8
  %350 = load i64, i64* %18, align 8
  %351 = sub nsw i64 %349, %350
  store i64 %351, i64* %19, align 8
  br label %352

352:                                              ; preds = %348, %340
  %353 = load i32, i32* %12, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %352
  %356 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %355
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %369

361:                                              ; preds = %355, %352
  %362 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %362, i32 0, i32 0
  %364 = load %struct.TYPE_19__*, %struct.TYPE_19__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = load i64, i64* %19, align 8
  %368 = call i32 @Wait(i32 %366, i64 %367)
  br label %55

369:                                              ; preds = %360, %334, %320, %296, %290, %242, %236, %199, %191, %165, %121, %62, %41
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  ret %struct.TYPE_22__* %370
}

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @IsTubeConnected(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_22__* @PPPRecvPacketWithLowLayerProcessing(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @PPP_CODE_IS_RESPONSE(i64, i64) #1

declare dso_local i64 @PPP_PAP_CODE_IS_RESPONSE(i64) #1

declare dso_local i64 @PPP_IS_SUPPORTED_PROTOCOL(i64) #1

declare dso_local i32 @PPPStoreLastPacket(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @Debug(i8*, ...) #1

declare dso_local i32 @FreePPPPacket(%struct.TYPE_22__*) #1

declare dso_local i64 @PPP_CODE_IS_REQUEST(i64, i64) #1

declare dso_local %struct.TYPE_22__* @PPPProcessRequestPacket(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @PPPSendPacket(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @SleepThread(i32) #1

declare dso_local i32 @PPPLog(%struct.TYPE_21__*, i8*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @Wait(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
