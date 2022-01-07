; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPRecvProc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPRecvProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i64, i32, i64, i64 (%struct.TYPE_24__*, %struct.TYPE_23__*)*, i32 }
%struct.TYPE_23__ = type { i64, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i64, i64, i8*, i64, i32, i64, i32 }

@g_no_rudp_server = common dso_local global i64 0, align 8
@UDP_NAT_T_PORT = common dso_local global i64 0, align 8
@RUDP_SESSION_STATUS_CONNECT_SENT = common dso_local global i64 0, align 8
@SHA1_SIZE = common dso_local global i32 0, align 4
@RUDP_QUOTA_MAX_NUM_SESSIONS = common dso_local global i64 0, align 8
@RUDP_QUOTA_MAX_NUM_SESSIONS_PER_IP = common dso_local global i64 0, align 8
@RUDP_SESSION_STATUS_ESTABLISHED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"RUDPNewSession %X %s:%u\0A\00", align 1
@RUDP_PROTOCOL_ICMP = common dso_local global i64 0, align 8
@ICMP_TYPE_INFORMATION_REQUEST = common dso_local global i64 0, align 8
@ICMP_TYPE_INFORMATION_REPLY = common dso_local global i64 0, align 8
@RUDP_PROTOCOL_DNS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RUDPRecvProc(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca [64 x i8], align 16
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %5, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %16 = icmp eq %struct.TYPE_24__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %19 = icmp eq %struct.TYPE_23__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  br label %514

21:                                               ; preds = %17
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i64, i64* @g_no_rudp_server, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %514

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30, %21
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @UDP_NAT_T_PORT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 6
  %52 = call i64 @CmpIpAddr(i32* %49, i32* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %57 = call i32 @RUDPProcess_NatT_Recv(%struct.TYPE_24__* %55, %struct.TYPE_23__* %56)
  br label %514

58:                                               ; preds = %47, %41
  br label %59

59:                                               ; preds = %58, %36, %31
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %59
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 5
  %67 = load i64 (%struct.TYPE_24__*, %struct.TYPE_23__*)*, i64 (%struct.TYPE_24__*, %struct.TYPE_23__*)** %66, align 8
  %68 = icmp ne i64 (%struct.TYPE_24__*, %struct.TYPE_23__*)* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 5
  %72 = load i64 (%struct.TYPE_24__*, %struct.TYPE_23__*)*, i64 (%struct.TYPE_24__*, %struct.TYPE_23__*)** %71, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %75 = call i64 %72(%struct.TYPE_24__* %73, %struct.TYPE_23__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %514

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %64
  br label %80

80:                                               ; preds = %79, %59
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call %struct.TYPE_25__* @RUDPSearchSession(%struct.TYPE_24__* %86, i32* %88, i32 %91, i32* %93, i64 %96)
  store %struct.TYPE_25__* %97, %struct.TYPE_25__** %5, align 8
  br label %111

98:                                               ; preds = %80
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @LIST_NUM(i32 %101)
  %103 = icmp sge i64 %102, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call %struct.TYPE_25__* @LIST_DATA(i32 %107, i64 0)
  store %struct.TYPE_25__* %108, %struct.TYPE_25__** %5, align 8
  br label %110

109:                                              ; preds = %98
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %5, align 8
  br label %110

110:                                              ; preds = %109, %104
  br label %111

111:                                              ; preds = %110, %85
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %114, 20
  br i1 %115, label %116, label %146

116:                                              ; preds = %111
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %116
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %123 = icmp ne %struct.TYPE_25__* %122, null
  br i1 %123, label %124, label %144

124:                                              ; preds = %121
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @RUDP_SESSION_STATUS_CONNECT_SENT, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %124
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 4
  %135 = call i64 @CmpIpAddr(i32* %132, i32* %134)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %137, %130
  br label %144

144:                                              ; preds = %143, %124, %121
  br label %145

145:                                              ; preds = %144, %116
  br label %514

146:                                              ; preds = %111
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %148 = icmp eq %struct.TYPE_25__* %147, null
  br i1 %148, label %149, label %198

149:                                              ; preds = %146
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %198

154:                                              ; preds = %149
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp sge i32 %157, 40
  br i1 %158, label %159, label %198

159:                                              ; preds = %154
  store i64 0, i64* %6, align 8
  br label %160

160:                                              ; preds = %194, %159
  %161 = load i64, i64* %6, align 8
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = call i64 @LIST_NUM(i32 %164)
  %166 = icmp slt i64 %161, %165
  br i1 %166, label %167, label %197

167:                                              ; preds = %160
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load i64, i64* %6, align 8
  %172 = call %struct.TYPE_25__* @LIST_DATA(i32 %170, i64 %171)
  store %struct.TYPE_25__* %172, %struct.TYPE_25__** %7, align 8
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 4
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 4
  %177 = call i64 @CmpIpAddr(i32* %174, i32* %176)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %167
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @RUDPCheckSignOfRecvPacket(%struct.TYPE_24__* %180, %struct.TYPE_25__* %181, i32 %184, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %179
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_25__* %191, %struct.TYPE_25__** %5, align 8
  br label %197

192:                                              ; preds = %179
  br label %193

193:                                              ; preds = %192, %167
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %6, align 8
  %196 = add nsw i64 %195, 1
  store i64 %196, i64* %6, align 8
  br label %160

197:                                              ; preds = %190, %160
  br label %198

198:                                              ; preds = %197, %154, %149, %146
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %200 = icmp eq %struct.TYPE_25__* %199, null
  br i1 %200, label %201, label %348

201:                                              ; preds = %198
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %347

206:                                              ; preds = %201
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = icmp slt i32 %209, 40
  br i1 %210, label %211, label %346

211:                                              ; preds = %206
  store i32 1, i32* %8, align 4
  %212 = load i32, i32* @SHA1_SIZE, align 4
  %213 = zext i32 %212 to i64
  %214 = call i8* @llvm.stacksave()
  store i8* %214, i8** %9, align 8
  %215 = alloca i32, i64 %213, align 16
  store i64 %213, i64* %10, align 8
  %216 = mul nuw i64 4, %213
  %217 = trunc i64 %216 to i32
  %218 = call i32 @Zero(i32* %215, i32 %217)
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @LIST_NUM(i32 %221)
  %223 = load i64, i64* @RUDP_QUOTA_MAX_NUM_SESSIONS, align 8
  %224 = icmp sge i64 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %211
  store i32 0, i32* %8, align 4
  br label %272

226:                                              ; preds = %211
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %226
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 4
  %235 = call i32 @RUDPIsIpInValidateList(%struct.TYPE_24__* %232, i32* %234)
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  store i32 0, i32* %8, align 4
  br label %271

238:                                              ; preds = %231, %226
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %239

239:                                              ; preds = %262, %238
  %240 = load i64, i64* %11, align 8
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = call i64 @LIST_NUM(i32 %243)
  %245 = icmp slt i64 %240, %244
  br i1 %245, label %246, label %265

246:                                              ; preds = %239
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = load i64, i64* %11, align 8
  %251 = call %struct.TYPE_25__* @LIST_DATA(i32 %249, i64 %250)
  store %struct.TYPE_25__* %251, %struct.TYPE_25__** %13, align 8
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %252, i32 0, i32 4
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 4
  %256 = call i64 @CmpIpAddr(i32* %253, i32* %255)
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %246
  %259 = load i64, i64* %12, align 8
  %260 = add nsw i64 %259, 1
  store i64 %260, i64* %12, align 8
  br label %261

261:                                              ; preds = %258, %246
  br label %262

262:                                              ; preds = %261
  %263 = load i64, i64* %11, align 8
  %264 = add nsw i64 %263, 1
  store i64 %264, i64* %11, align 8
  br label %239

265:                                              ; preds = %239
  %266 = load i64, i64* %12, align 8
  %267 = load i64, i64* @RUDP_QUOTA_MAX_NUM_SESSIONS_PER_IP, align 8
  %268 = icmp sge i64 %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  store i32 0, i32* %8, align 4
  br label %270

270:                                              ; preds = %269, %265
  br label %271

271:                                              ; preds = %270, %237
  br label %272

272:                                              ; preds = %271, %225
  %273 = load i32, i32* %8, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %344

275:                                              ; preds = %272
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 6
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %281, i32 0, i32 4
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = call %struct.TYPE_25__* @RUDPNewSession(i32 1, i32* %277, i32 %280, i32* %282, i64 %285, i32 %288)
  store %struct.TYPE_25__* %289, %struct.TYPE_25__** %5, align 8
  %290 = load i64, i64* @RUDP_SESSION_STATUS_ESTABLISHED, align 8
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %291, i32 0, i32 0
  store i64 %290, i64* %292, align 8
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %297 = call i32 @Insert(i32 %295, %struct.TYPE_25__* %296)
  %298 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %299, i32 0, i32 4
  %301 = call i32 @IPToStr(i8* %298, i32 64, i32* %300)
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %303 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = call i32 @Debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_25__* %302, i8* %303, i64 %306)
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @RUDP_PROTOCOL_ICMP, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %329

313:                                              ; preds = %275
  %314 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %314, i32 0, i32 2
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @ICMP_TYPE_INFORMATION_REQUEST, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %313
  %320 = load i64, i64* @ICMP_TYPE_INFORMATION_REPLY, align 8
  br label %325

321:                                              ; preds = %313
  %322 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  br label %325

325:                                              ; preds = %321, %319
  %326 = phi i64 [ %320, %319 ], [ %324, %321 ]
  %327 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %327, i32 0, i32 3
  store i64 %326, i64* %328, align 8
  br label %343

329:                                              ; preds = %275
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 2
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @RUDP_PROTOCOL_DNS, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %342

335:                                              ; preds = %329
  %336 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %336, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = inttoptr i64 %338 to i8*
  %340 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %340, i32 0, i32 2
  store i8* %339, i8** %341, align 8
  br label %342

342:                                              ; preds = %335, %329
  br label %343

343:                                              ; preds = %342, %325
  br label %344

344:                                              ; preds = %343, %272
  %345 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %345)
  br label %346

346:                                              ; preds = %344, %206
  br label %347

347:                                              ; preds = %346, %201
  br label %514

348:                                              ; preds = %198
  %349 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  %352 = icmp slt i32 %351, 40
  br i1 %352, label %353, label %420

353:                                              ; preds = %348
  %354 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %419

358:                                              ; preds = %353
  %359 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %359, i32 0, i32 6
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @SHA1_SIZE, align 4
  %366 = call i64 @Cmp(i32 %361, i32 %364, i32 %365)
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %368, label %417

368:                                              ; preds = %358
  %369 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %369, i32 0, i32 5
  store i64 0, i64* %370, align 8
  %371 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %371, i32 0, i32 4
  %373 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %373, i32 0, i32 4
  %375 = call i32 @Copy(i32* %372, i32* %374, i32 4)
  %376 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %377 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %379, i32 0, i32 1
  store i64 %378, i64* %380, align 8
  %381 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %381, i32 0, i32 2
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @RUDP_PROTOCOL_ICMP, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %402

386:                                              ; preds = %368
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %387, i32 0, i32 2
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @ICMP_TYPE_INFORMATION_REQUEST, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %394

392:                                              ; preds = %386
  %393 = load i64, i64* @ICMP_TYPE_INFORMATION_REPLY, align 8
  br label %398

394:                                              ; preds = %386
  %395 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  br label %398

398:                                              ; preds = %394, %392
  %399 = phi i64 [ %393, %392 ], [ %397, %394 ]
  %400 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %400, i32 0, i32 3
  store i64 %399, i64* %401, align 8
  br label %416

402:                                              ; preds = %368
  %403 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %403, i32 0, i32 2
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* @RUDP_PROTOCOL_DNS, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %408, label %415

408:                                              ; preds = %402
  %409 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %410 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %409, i32 0, i32 2
  %411 = load i64, i64* %410, align 8
  %412 = inttoptr i64 %411 to i8*
  %413 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %413, i32 0, i32 2
  store i8* %412, i8** %414, align 8
  br label %415

415:                                              ; preds = %408, %402
  br label %416

416:                                              ; preds = %415, %398
  br label %418

417:                                              ; preds = %358
  br label %418

418:                                              ; preds = %417, %416
  br label %419

419:                                              ; preds = %418, %353
  br label %513

420:                                              ; preds = %348
  %421 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %422 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %423 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %423, i32 0, i32 3
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %427 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 8
  %429 = call i64 @RUDPProcessRecvPacket(%struct.TYPE_24__* %421, %struct.TYPE_25__* %422, i32 %425, i32 %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %442, label %431

431:                                              ; preds = %420
  %432 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %433 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %434 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %434, i32 0, i32 3
  %436 = load i32, i32* %435, align 8
  %437 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 8
  %440 = call i64 @RUDPProcessBulkRecvPacket(%struct.TYPE_24__* %432, %struct.TYPE_25__* %433, i32 %436, i32 %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %512

442:                                              ; preds = %431, %420
  %443 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %444 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %446, i32 0, i32 1
  store i64 %445, i64* %447, align 8
  %448 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %449 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %448, i32 0, i32 2
  %450 = load i64, i64* %449, align 8
  %451 = load i64, i64* @RUDP_PROTOCOL_ICMP, align 8
  %452 = icmp eq i64 %450, %451
  br i1 %452, label %453, label %491

453:                                              ; preds = %442
  %454 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %455 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %474

458:                                              ; preds = %453
  %459 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %460 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %459, i32 0, i32 2
  %461 = load i64, i64* %460, align 8
  %462 = load i64, i64* @ICMP_TYPE_INFORMATION_REQUEST, align 8
  %463 = icmp eq i64 %461, %462
  br i1 %463, label %464, label %466

464:                                              ; preds = %458
  %465 = load i64, i64* @ICMP_TYPE_INFORMATION_REPLY, align 8
  br label %470

466:                                              ; preds = %458
  %467 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %467, i32 0, i32 2
  %469 = load i64, i64* %468, align 8
  br label %470

470:                                              ; preds = %466, %464
  %471 = phi i64 [ %465, %464 ], [ %469, %466 ]
  %472 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %473 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %472, i32 0, i32 3
  store i64 %471, i64* %473, align 8
  br label %490

474:                                              ; preds = %453
  %475 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %476 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %475, i32 0, i32 2
  %477 = load i64, i64* %476, align 8
  %478 = load i64, i64* @ICMP_TYPE_INFORMATION_REPLY, align 8
  %479 = icmp eq i64 %477, %478
  br i1 %479, label %480, label %482

480:                                              ; preds = %474
  %481 = load i64, i64* @ICMP_TYPE_INFORMATION_REQUEST, align 8
  br label %486

482:                                              ; preds = %474
  %483 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %483, i32 0, i32 2
  %485 = load i64, i64* %484, align 8
  br label %486

486:                                              ; preds = %482, %480
  %487 = phi i64 [ %481, %480 ], [ %485, %482 ]
  %488 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %489 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %488, i32 0, i32 3
  store i64 %487, i64* %489, align 8
  br label %490

490:                                              ; preds = %486, %470
  br label %511

491:                                              ; preds = %442
  %492 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %493 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %492, i32 0, i32 2
  %494 = load i64, i64* %493, align 8
  %495 = load i64, i64* @RUDP_PROTOCOL_DNS, align 8
  %496 = icmp eq i64 %494, %495
  br i1 %496, label %497, label %510

497:                                              ; preds = %491
  %498 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %499 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %509

502:                                              ; preds = %497
  %503 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %503, i32 0, i32 2
  %505 = load i64, i64* %504, align 8
  %506 = inttoptr i64 %505 to i8*
  %507 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %508 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %507, i32 0, i32 2
  store i8* %506, i8** %508, align 8
  br label %509

509:                                              ; preds = %502, %497
  br label %510

510:                                              ; preds = %509, %491
  br label %511

511:                                              ; preds = %510, %490
  br label %512

512:                                              ; preds = %511, %431
  br label %513

513:                                              ; preds = %512, %419
  br label %514

514:                                              ; preds = %20, %29, %54, %77, %145, %513, %347
  ret void
}

declare dso_local i64 @CmpIpAddr(i32*, i32*) #1

declare dso_local i32 @RUDPProcess_NatT_Recv(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_25__* @RUDPSearchSession(%struct.TYPE_24__*, i32*, i32, i32*, i64) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_25__* @LIST_DATA(i32, i64) #1

declare dso_local i64 @RUDPCheckSignOfRecvPacket(%struct.TYPE_24__*, %struct.TYPE_25__*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i32 @RUDPIsIpInValidateList(%struct.TYPE_24__*, i32*) #1

declare dso_local %struct.TYPE_25__* @RUDPNewSession(i32, i32*, i32, i32*, i64, i32) #1

declare dso_local i32 @Insert(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @IPToStr(i8*, i32, i32*) #1

declare dso_local i32 @Debug(i8*, %struct.TYPE_25__*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @Cmp(i32, i32, i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i64 @RUDPProcessRecvPacket(%struct.TYPE_24__*, %struct.TYPE_25__*, i32, i32) #1

declare dso_local i64 @RUDPProcessBulkRecvPacket(%struct.TYPE_24__*, %struct.TYPE_25__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
