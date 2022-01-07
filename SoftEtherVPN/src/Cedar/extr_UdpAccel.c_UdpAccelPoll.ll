; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_UdpAccel.c_UdpAccelPoll.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_UdpAccel.c_UdpAccelPoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i32, i64, i64, i32, i32, i64, i64, i32, i32, i32, i64, i64, i64, i64, %struct.TYPE_19__*, i32, i32, %struct.TYPE_18__, i32*, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@INFINITE = common dso_local global i32 0, align 4
@UDP_ACCELERATION_TMP_BUF_SIZE = common dso_local global i32 0, align 4
@SOCK_LATER = common dso_local global i64 0, align 8
@UDP_NAT_T_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"NAT-T: MyPort = %u\0A\00", align 1
@MAX_NUM_IGNORE_ERRORS = common dso_local global i64 0, align 8
@UDP_ACCELERATION_KEEPALIVE_INTERVAL_MAX = common dso_local global i64 0, align 8
@UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN = common dso_local global i64 0, align 8
@UDP_ACCELERATION_KEEPALIVE_INTERVAL_MAX_FAST = common dso_local global i64 0, align 8
@UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN_FAST = common dso_local global i64 0, align 8
@UDP_NAT_T_INTERVAL_INITIAL = common dso_local global i64 0, align 8
@UDP_NAT_T_INTERVAL_FAIL_MAX = common dso_local global i32 0, align 4
@UDP_NAT_T_INTERVAL_MIN = common dso_local global i32 0, align 4
@UDP_NAT_T_INTERVAL_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UdpAccelPoll(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_18__, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_18__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  store i64 0, i64* %4, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %19 = icmp eq %struct.TYPE_17__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %322

21:                                               ; preds = %1
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %5, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 20
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @Lock(i32 %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 21
  %31 = call i32 @Copy(%struct.TYPE_18__* %3, i32* %30, i32 4)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 20
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @Unlock(i32 %34)
  %36 = call i32 @IsZeroIp(%struct.TYPE_18__* %3)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %21
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 19
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 19
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @INFINITE, align 4
  %48 = call i32 @WaitThread(i32* %46, i32 %47)
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 19
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @ReleaseThread(i32* %51)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 19
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %43, %38
  br label %56

56:                                               ; preds = %55, %21
  br label %57

57:                                               ; preds = %56, %183
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 15
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* @UDP_ACCELERATION_TMP_BUF_SIZE, align 4
  %63 = call i64 @RecvFrom(%struct.TYPE_19__* %60, %struct.TYPE_18__* %6, i64* %7, i8* %61, i32 %62)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %159

66:                                               ; preds = %57
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @SOCK_LATER, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %159

70:                                               ; preds = %66
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 13
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %70
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %78, 8
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 18
  %83 = call i64 @CmpIpAddr(%struct.TYPE_18__* %82, %struct.TYPE_18__* %6)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = bitcast %struct.TYPE_18__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %92, i8 0, i64 4, i1 false)
  store i64 0, i64* %10, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 17
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32* @MemToBuf(i32 %95, i32 %98)
  store i32* %99, i32** %11, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @FreeBuf(i32* %100)
  br label %158

102:                                              ; preds = %85, %80, %75, %70
  %103 = call i32 @IsZeroIp(%struct.TYPE_18__* %3)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %142

105:                                              ; preds = %102
  %106 = call i64 @CmpIpAddr(%struct.TYPE_18__* %3, %struct.TYPE_18__* %6)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %142

108:                                              ; preds = %105
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* @UDP_NAT_T_PORT, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %142

112:                                              ; preds = %108
  %113 = load i8*, i8** %5, align 8
  %114 = load i64, i64* %8, align 8
  %115 = call i64 @RUDPParseIPAndPortStr(i8* %113, i64 %114, %struct.TYPE_18__* %12, i64* %13)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %112
  %118 = load i64, i64* %13, align 8
  %119 = icmp sge i64 %118, 1
  br i1 %119, label %120, label %140

120:                                              ; preds = %117
  %121 = load i64, i64* %13, align 8
  %122 = icmp sle i64 %121, 65535
  br i1 %122, label %123, label %140

123:                                              ; preds = %120
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %13, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %123
  %130 = load i64, i64* %13, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 3
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 4
  store i32 1, i32* %134, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 14
  store i64 0, i64* %136, align 8
  %137 = load i64, i64* %13, align 8
  %138 = call i32 @Debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %137)
  br label %139

139:                                              ; preds = %129, %123
  br label %140

140:                                              ; preds = %139, %120, %117
  br label %141

141:                                              ; preds = %140, %112
  br label %157

142:                                              ; preds = %108, %105, %102
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* %7, align 8
  %147 = call i32* @UdpAccelProcessRecvPacket(%struct.TYPE_17__* %143, i8* %144, i64 %145, %struct.TYPE_18__* %6, i64 %146)
  store i32* %147, i32** %14, align 8
  %148 = load i32*, i32** %14, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %142
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 16
  %153 = load i32, i32* %152, align 8
  %154 = load i32*, i32** %14, align 8
  %155 = call i32 @InsertQueue(i32 %153, i32* %154)
  br label %156

156:                                              ; preds = %150, %142
  br label %157

157:                                              ; preds = %156, %141
  br label %158

158:                                              ; preds = %157, %91
  br label %183

159:                                              ; preds = %66, %57
  %160 = load i64, i64* %8, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %181

162:                                              ; preds = %159
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 15
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %162
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 5
  store i32 1, i32* %171, align 4
  br label %184

172:                                              ; preds = %162
  %173 = load i64, i64* %4, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %4, align 8
  %175 = load i64, i64* @MAX_NUM_IGNORE_ERRORS, align 8
  %176 = icmp sge i64 %173, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 5
  store i32 1, i32* %179, align 4
  br label %184

180:                                              ; preds = %172
  br label %182

181:                                              ; preds = %159
  br label %184

182:                                              ; preds = %180
  br label %183

183:                                              ; preds = %182, %158
  br label %57

184:                                              ; preds = %181, %177, %169
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %202, label %189

189:                                              ; preds = %184
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 7
  %195 = load i64, i64* %194, align 8
  %196 = icmp sle i64 %192, %195
  br i1 %196, label %202, label %197

197:                                              ; preds = %189
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %242

202:                                              ; preds = %197, %189, %184
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 8
  store i32 0, i32* %204, align 8
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %206 = call i32 @UdpAccelIsSendReady(%struct.TYPE_17__* %205, i32 0)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %241

208:                                              ; preds = %202
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 9
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %208
  %214 = call i64 (...) @rand()
  %215 = load i64, i64* @UDP_ACCELERATION_KEEPALIVE_INTERVAL_MAX, align 8
  %216 = load i64, i64* @UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN, align 8
  %217 = sub nsw i64 %215, %216
  %218 = srem i64 %214, %217
  %219 = load i64, i64* @UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN, align 8
  %220 = add nsw i64 %218, %219
  store i64 %220, i64* %15, align 8
  br label %229

221:                                              ; preds = %208
  %222 = call i64 (...) @rand()
  %223 = load i64, i64* @UDP_ACCELERATION_KEEPALIVE_INTERVAL_MAX_FAST, align 8
  %224 = load i64, i64* @UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN_FAST, align 8
  %225 = sub nsw i64 %223, %224
  %226 = srem i64 %222, %225
  %227 = load i64, i64* @UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN_FAST, align 8
  %228 = add nsw i64 %226, %227
  store i64 %228, i64* %15, align 8
  br label %229

229:                                              ; preds = %221, %213
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 7
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* %15, align 8
  %234 = inttoptr i64 %233 to i8*
  %235 = getelementptr i8, i8* %234, i64 %232
  %236 = ptrtoint i8* %235 to i64
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 6
  store i64 %236, i64* %238, align 8
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %240 = call i32 @UdpAccelSend(%struct.TYPE_17__* %239, i32* null, i32 0, i32 0, i32 1000, i32 0)
  br label %241

241:                                              ; preds = %229, %202
  br label %242

242:                                              ; preds = %241, %197
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 10
  %245 = load i32, i32* %244, align 8
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %310

247:                                              ; preds = %242
  %248 = call i32 @IsZeroIp(%struct.TYPE_18__* %3)
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %309

250:                                              ; preds = %247
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %252 = call i32 @UdpAccelIsSendReady(%struct.TYPE_17__* %251, i32 1)
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %303

254:                                              ; preds = %250
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 11
  %257 = load i64, i64* %256, align 8
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %267, label %259

259:                                              ; preds = %254
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 11
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 7
  %265 = load i64, i64* %264, align 8
  %266 = icmp sle i64 %262, %265
  br i1 %266, label %267, label %302

267:                                              ; preds = %259, %254
  store i8 66, i8* %17, align 1
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 14
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %270, 1
  store i64 %271, i64* %269, align 8
  %272 = load i64, i64* @UDP_NAT_T_INTERVAL_INITIAL, align 8
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 14
  %275 = load i64, i64* %274, align 8
  %276 = load i32, i32* @UDP_NAT_T_INTERVAL_FAIL_MAX, align 4
  %277 = call i64 @MIN(i64 %275, i32 %276)
  %278 = mul nsw i64 %272, %277
  store i64 %278, i64* %16, align 8
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %267
  %284 = load i32, i32* @UDP_NAT_T_INTERVAL_MIN, align 4
  %285 = load i32, i32* @UDP_NAT_T_INTERVAL_MAX, align 4
  %286 = call i64 @GenRandInterval(i32 %284, i32 %285)
  store i64 %286, i64* %16, align 8
  br label %287

287:                                              ; preds = %283, %267
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 7
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* %16, align 8
  %292 = inttoptr i64 %291 to i8*
  %293 = getelementptr i8, i8* %292, i64 %290
  %294 = ptrtoint i8* %293 to i64
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 11
  store i64 %294, i64* %296, align 8
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 15
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %298, align 8
  %300 = load i64, i64* @UDP_NAT_T_PORT, align 8
  %301 = call i32 @SendTo(%struct.TYPE_19__* %299, %struct.TYPE_18__* %3, i64 %300, i8* %17, i32 1)
  br label %302

302:                                              ; preds = %287, %259
  br label %308

303:                                              ; preds = %250
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 11
  store i64 0, i64* %305, align 8
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 14
  store i64 0, i64* %307, align 8
  br label %308

308:                                              ; preds = %303, %302
  br label %309

309:                                              ; preds = %308, %247
  br label %322

310:                                              ; preds = %242
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 13
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %320, label %315

315:                                              ; preds = %310
  %316 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 12
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %315, %310
  br label %321

321:                                              ; preds = %320, %315
  br label %322

322:                                              ; preds = %20, %321, %309
  ret void
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Copy(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @IsZeroIp(%struct.TYPE_18__*) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i64 @RecvFrom(%struct.TYPE_19__*, %struct.TYPE_18__*, i64*, i8*, i32) #1

declare dso_local i64 @CmpIpAddr(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @MemToBuf(i32, i32) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i64 @RUDPParseIPAndPortStr(i8*, i64, %struct.TYPE_18__*, i64*) #1

declare dso_local i32 @Debug(i8*, i64) #1

declare dso_local i32* @UdpAccelProcessRecvPacket(%struct.TYPE_17__*, i8*, i64, %struct.TYPE_18__*, i64) #1

declare dso_local i32 @InsertQueue(i32, i32*) #1

declare dso_local i32 @UdpAccelIsSendReady(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @rand(...) #1

declare dso_local i32 @UdpAccelSend(%struct.TYPE_17__*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i64 @GenRandInterval(i32, i32) #1

declare dso_local i32 @SendTo(%struct.TYPE_19__*, %struct.TYPE_18__*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
