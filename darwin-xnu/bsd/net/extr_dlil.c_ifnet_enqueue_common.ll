; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_enqueue_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_enqueue_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i64, i32, i32, i32, i32, i8*, i8* }
%struct.mbuf = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.timespec = type { i32 }

@IFEF_TXSTART = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@PKTF_TS_VALID = common dso_local global i32 0, align 4
@PKTF_FLOW_ID = common dso_local global i32 0, align 4
@FLOWSRC_INPCB = common dso_local global i32 0, align 4
@PKTF_SO_BACKGROUND = common dso_local global i32 0, align 4
@_net_uptime = common dso_local global i8* null, align 8
@PKTF_SO_REALTIME = common dso_local global i32 0, align 4
@IFEF_ENQUEUE_MULTI = common dso_local global i32 0, align 4
@IFEF_DELAY_START = common dso_local global i32 0, align 4
@ifnet_delay_start_disabled = common dso_local global i32 0, align 4
@EQFULL = common dso_local global i32 0, align 4
@EQSUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i8*, i32, i64, i64*)* @ifnet_enqueue_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifnet_enqueue_common(%struct.ifnet* %0, i8* %1, i32 %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.timespec, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  store i8** null, i8*** %11, align 8
  store i8** null, i8*** %12, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.mbuf*
  store %struct.mbuf* %19, %struct.mbuf** %13, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFEF_TXSTART, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %120 [
    i32 128, label %27
  ]

27:                                               ; preds = %5
  %28 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @M_PKTHDR, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PKTF_TS_VALID, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %27
  %48 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47, %27
  %54 = call i32 @nanouptime(%struct.timespec* %14)
  %55 = call i32 @net_timernsec(%struct.timespec* %14, i64* %15)
  %56 = load i64, i64* %15, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i64 %56, i64* %59, align 8
  br label %60

60:                                               ; preds = %53, %47
  %61 = load i32, i32* @PKTF_TS_VALID, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %64 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %62
  store i32 %67, i32* %65, align 8
  %68 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %69 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PKTF_FLOW_ID, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %119

75:                                               ; preds = %60
  %76 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %77 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @FLOWSRC_INPCB, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %119

82:                                               ; preds = %75
  %83 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %84 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @PKTF_SO_BACKGROUND, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %82
  %91 = load i8*, i8** @_net_uptime, align 8
  %92 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %93 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %92, i32 0, i32 8
  store i8* %91, i8** %93, align 8
  %94 = load i8**, i8*** %11, align 8
  %95 = icmp ne i8** %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i8*, i8** @_net_uptime, align 8
  %98 = load i8**, i8*** %11, align 8
  store volatile i8* %97, i8** %98, align 8
  br label %99

99:                                               ; preds = %96, %90
  br label %100

100:                                              ; preds = %99, %82
  %101 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %102 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @PKTF_SO_REALTIME, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %100
  %109 = load i8*, i8** @_net_uptime, align 8
  %110 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %111 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %110, i32 0, i32 7
  store i8* %109, i8** %111, align 8
  %112 = load i8**, i8*** %12, align 8
  %113 = icmp ne i8** %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i8*, i8** @_net_uptime, align 8
  %116 = load i8**, i8*** %12, align 8
  store volatile i8* %115, i8** %116, align 8
  br label %117

117:                                              ; preds = %114, %108
  br label %118

118:                                              ; preds = %117, %100
  br label %119

119:                                              ; preds = %118, %75, %60
  br label %122

120:                                              ; preds = %5
  %121 = call i32 @VERIFY(i32 0)
  br label %122

122:                                              ; preds = %120, %119
  %123 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %124 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IFEF_ENQUEUE_MULTI, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %248

129:                                              ; preds = %122
  %130 = load i64, i64* %15, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = call i32 @nanouptime(%struct.timespec* %14)
  %134 = call i32 @net_timernsec(%struct.timespec* %14, i64* %15)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %137 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 %138, 1
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %17, align 8
  %141 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %142 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %143, 0
  br i1 %144, label %145, label %233

145:                                              ; preds = %135
  %146 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %147 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %17, align 8
  %150 = add nsw i64 %148, %149
  %151 = load i64, i64* %15, align 8
  %152 = icmp sgt i64 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %145
  %154 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %155 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 8
  br label %232

158:                                              ; preds = %145
  %159 = load i64, i64* %15, align 8
  %160 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %161 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %159, %162
  %164 = icmp sge i64 %163, 200000000
  br i1 %164, label %165, label %189

165:                                              ; preds = %158
  %166 = load i64, i64* %15, align 8
  %167 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %168 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %167, i32 0, i32 2
  store i64 %166, i64* %168, align 8
  %169 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %170 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %169, i32 0, i32 3
  store i32 1, i32* %170, align 8
  %171 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %172 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %171, i32 0, i32 4
  store i32 0, i32* %172, align 4
  %173 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %174 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @IFEF_DELAY_START, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %165
  %180 = load i32, i32* @IFEF_DELAY_START, align 4
  %181 = xor i32 %180, -1
  %182 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %183 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = and i32 %184, %181
  store i32 %185, i32* %183, align 8
  %186 = load i32, i32* @ifnet_delay_start_disabled, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* @ifnet_delay_start_disabled, align 4
  br label %188

188:                                              ; preds = %179, %165
  br label %231

189:                                              ; preds = %158
  %190 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %191 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %194 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = icmp sge i32 %192, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %189
  %198 = load i32, i32* @IFEF_DELAY_START, align 4
  %199 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %200 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %204 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %203, i32 0, i32 4
  store i32 0, i32* %204, align 4
  br label %225

205:                                              ; preds = %189
  %206 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %207 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = icmp sge i32 %208, 10
  br i1 %209, label %210, label %219

210:                                              ; preds = %205
  %211 = load i32, i32* @IFEF_DELAY_START, align 4
  %212 = xor i32 %211, -1
  %213 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %214 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = and i32 %215, %212
  store i32 %216, i32* %214, align 8
  %217 = load i32, i32* @ifnet_delay_start_disabled, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* @ifnet_delay_start_disabled, align 4
  br label %224

219:                                              ; preds = %205
  %220 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %221 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 4
  br label %224

224:                                              ; preds = %219, %210
  br label %225

225:                                              ; preds = %224, %197
  %226 = load i64, i64* %15, align 8
  %227 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %228 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %227, i32 0, i32 2
  store i64 %226, i64* %228, align 8
  %229 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %230 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %229, i32 0, i32 3
  store i32 1, i32* %230, align 8
  br label %231

231:                                              ; preds = %225, %188
  br label %232

232:                                              ; preds = %231, %153
  br label %247

233:                                              ; preds = %135
  %234 = load i64, i64* %15, align 8
  %235 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %236 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %235, i32 0, i32 2
  store i64 %234, i64* %236, align 8
  %237 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %238 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %237, i32 0, i32 3
  store i32 1, i32* %238, align 8
  %239 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %240 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %239, i32 0, i32 4
  store i32 0, i32* %240, align 4
  %241 = load i32, i32* @IFEF_DELAY_START, align 4
  %242 = xor i32 %241, -1
  %243 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %244 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = and i32 %245, %242
  store i32 %246, i32* %244, align 8
  br label %247

247:                                              ; preds = %233, %232
  br label %255

248:                                              ; preds = %122
  %249 = load i32, i32* @IFEF_DELAY_START, align 4
  %250 = xor i32 %249, -1
  %251 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %252 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = and i32 %253, %250
  store i32 %254, i32* %252, align 8
  br label %255

255:                                              ; preds = %248, %247
  %256 = load i32, i32* %8, align 4
  switch i32 %256, label %263 [
    i32 128, label %257
  ]

257:                                              ; preds = %255
  %258 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %259 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %258, i32 0, i32 6
  %260 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %261 = load i64*, i64** %10, align 8
  %262 = call i32 @ifclassq_enqueue(i32* %259, %struct.mbuf* %260, i32 128, i64* %261)
  store i32 %262, i32* %16, align 4
  store %struct.mbuf* null, %struct.mbuf** %13, align 8
  br label %264

263:                                              ; preds = %255
  br label %264

264:                                              ; preds = %263, %257
  %265 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %266 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @IFEF_ENQUEUE_MULTI, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %288, label %271

271:                                              ; preds = %264
  %272 = load i32, i32* %16, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = load i64, i64* %9, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %285, label %277

277:                                              ; preds = %274, %271
  %278 = load i32, i32* %16, align 4
  %279 = load i32, i32* @EQFULL, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %285, label %281

281:                                              ; preds = %277
  %282 = load i32, i32* %16, align 4
  %283 = load i32, i32* @EQSUSPENDED, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %288

285:                                              ; preds = %281, %277, %274
  %286 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %287 = call i32 @ifnet_start(%struct.ifnet* %286)
  br label %288

288:                                              ; preds = %285, %281, %264
  %289 = load i32, i32* %16, align 4
  ret i32 %289
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @nanouptime(%struct.timespec*) #1

declare dso_local i32 @net_timernsec(%struct.timespec*, i64*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @ifclassq_enqueue(i32*, %struct.mbuf*, i32, i64*) #1

declare dso_local i32 @ifnet_start(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
