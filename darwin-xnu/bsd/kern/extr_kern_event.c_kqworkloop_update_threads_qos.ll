; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_update_threads_qos.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_update_threads_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqworkloop = type { i32, i32*, i32*, %struct.kqueue, %struct.kqrequest }
%struct.kqueue = type { i32 }
%struct.kqrequest = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.uthread = type { i32 }

@KQWL_BUCKET_STAYACTIVE = common dso_local global i32 0, align 4
@KQWL_STAYACTIVE_FIRED_BIT = common dso_local global i32 0, align 4
@KQR_WAKEUP = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"unknown kqwl thread qos update operation: %d\00", align 1
@FALSE = common dso_local global i64 0, align 8
@KQR_THREQUESTED = common dso_local global i32 0, align 4
@WORKQ_THREADREQ_ATTEMPT_REBIND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@BSD_KEVENT_KQWL_THADJUST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kqworkloop*, i32, i32)* @kqworkloop_update_threads_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kqworkloop_update_threads_qos(%struct.kqworkloop* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kqworkloop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kqrequest*, align 8
  %8 = alloca %struct.kqueue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.uthread*, align 8
  store %struct.kqworkloop* %0, %struct.kqworkloop** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %18 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %17, i32 0, i32 4
  store %struct.kqrequest* %18, %struct.kqrequest** %7, align 8
  %19 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %20 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %19, i32 0, i32 3
  store %struct.kqueue* %20, %struct.kqueue** %8, align 8
  %21 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %22 = call i32 @kqworkloop_owner_override(%struct.kqworkloop* %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %24 = call i32 @kq_req_held(%struct.kqworkloop* %23)
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %243 [
    i32 128, label %26
    i32 130, label %70
    i32 136, label %103
    i32 131, label %103
    i32 135, label %107
    i32 133, label %209
    i32 129, label %213
    i32 134, label %238
    i32 132, label %239
  ]

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @KQWL_BUCKET_STAYACTIVE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32, i32* @KQWL_STAYACTIVE_FIRED_BIT, align 4
  %32 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %33 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %37 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @assert(i32 %39)
  br label %41

41:                                               ; preds = %30, %26
  %42 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %43 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 1, %45
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %51 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @KQR_WAKEUP, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @assert(i32 %54)
  br label %246

56:                                               ; preds = %41
  %57 = load i32, i32* %6, align 4
  %58 = shl i32 1, %57
  %59 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %60 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* @KQR_WAKEUP, align 4
  %64 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %65 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %69 = call i32 @kqworkloop_request_fire_r2k_notification(%struct.kqworkloop* %68)
  br label %214

70:                                               ; preds = %3
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %74 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %70
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %81 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %83 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @KQWL_STAYACTIVE_FIRED_BIT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %78
  %89 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %90 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @KQR_WAKEUP, align 4
  %93 = and i32 %91, %92
  %94 = call i32 @assert(i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = shl i32 1, %95
  %97 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %98 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %214

101:                                              ; preds = %78
  br label %102

102:                                              ; preds = %101, %70
  br label %246

103:                                              ; preds = %3, %3
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %106 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %3, %103
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 %108, 135
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  br label %116

116:                                              ; preds = %110, %107
  %117 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %118 = call i32 @kqlock_held(%struct.kqworkloop* %117)
  %119 = load i32, i32* @KQWL_BUCKET_STAYACTIVE, align 4
  store i32 %119, i32* %10, align 4
  %120 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %121 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %120, i32 0, i32 6
  %122 = call i32 @TAILQ_EMPTY(i32* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %116
  %125 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %126 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %127 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %124, %116
  %129 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %130 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = call i32 @TAILQ_EMPTY(i32* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %158, label %137

137:                                              ; preds = %128
  %138 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %139 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @KQWL_STAYACTIVE_FIRED_BIT, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %137
  %145 = load i32, i32* @KQWL_STAYACTIVE_FIRED_BIT, align 4
  %146 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %147 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %151 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = shl i32 1, %152
  %154 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %155 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %161

158:                                              ; preds = %137, %128
  %159 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %160 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %159, i32 0, i32 0
  store i32 0, i32* %160, align 8
  br label %161

161:                                              ; preds = %158, %144
  %162 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %185, %161
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @KQWL_BUCKET_STAYACTIVE, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %188

168:                                              ; preds = %164
  %169 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %170 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = call i32 @TAILQ_EMPTY(i32* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %168
  %178 = load i32, i32* %10, align 4
  %179 = shl i32 1, %178
  %180 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %181 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 8
  br label %184

184:                                              ; preds = %177, %168
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %10, align 4
  br label %164

188:                                              ; preds = %164
  %189 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %190 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %188
  %194 = load i32, i32* @KQR_WAKEUP, align 4
  %195 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %196 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  %199 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %200 = call i32 @kqworkloop_request_fire_r2k_notification(%struct.kqworkloop* %199)
  br label %208

201:                                              ; preds = %188
  %202 = load i32, i32* @KQR_WAKEUP, align 4
  %203 = xor i32 %202, -1
  %204 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %205 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %206, %203
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %201, %193
  br label %214

209:                                              ; preds = %3
  %210 = load i32, i32* %6, align 4
  %211 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %212 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 4
  br label %214

213:                                              ; preds = %3
  br label %214

214:                                              ; preds = %213, %209, %208, %88, %56
  %215 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %216 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = shl i32 1, %218
  %220 = icmp sgt i32 %217, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %214
  %222 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %223 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @fls(i32 %224)
  %226 = sub nsw i32 %225, 1
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %221, %214
  %228 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %229 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %6, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %227
  %234 = load i32, i32* %6, align 4
  %235 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %236 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 4
  br label %237

237:                                              ; preds = %233, %227
  br label %246

238:                                              ; preds = %3
  br label %246

239:                                              ; preds = %3
  %240 = load i32, i32* %6, align 4
  %241 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %242 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %241, i32 0, i32 4
  store i32 %240, i32* %242, align 8
  br label %246

243:                                              ; preds = %3
  %244 = load i32, i32* %5, align 4
  %245 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %243, %239, %238, %237, %102, %49
  %247 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %248 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  store i32* %249, i32** %11, align 8
  %250 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %251 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %250, i32 0, i32 5
  %252 = load i32*, i32** %251, align 8
  store i32* %252, i32** %12, align 8
  %253 = load i64, i64* @FALSE, align 8
  store i64 %253, i64* %13, align 8
  %254 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %255 = call i32 @kqworkloop_owner_override(%struct.kqworkloop* %254)
  store i32 %255, i32* %14, align 4
  %256 = load i32*, i32** %11, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %258, label %285

258:                                              ; preds = %246
  %259 = load i32, i32* %14, align 4
  %260 = load i32, i32* %9, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %258
  br label %284

263:                                              ; preds = %258
  %264 = load i32, i32* %9, align 4
  %265 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %263
  %268 = load i32*, i32** %11, align 8
  %269 = load i32, i32* %14, align 4
  %270 = call i32 @thread_add_ipc_override(i32* %268, i32 %269)
  br label %283

271:                                              ; preds = %263
  %272 = load i32, i32* %14, align 4
  %273 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %278

275:                                              ; preds = %271
  %276 = load i32*, i32** %11, align 8
  %277 = call i32 @thread_drop_ipc_override(i32* %276)
  br label %282

278:                                              ; preds = %271
  %279 = load i32*, i32** %11, align 8
  %280 = load i32, i32* %14, align 4
  %281 = call i32 @thread_update_ipc_override(i32* %279, i32 %280)
  br label %282

282:                                              ; preds = %278, %275
  br label %283

283:                                              ; preds = %282, %267
  br label %284

284:                                              ; preds = %283, %262
  br label %285

285:                                              ; preds = %284, %246
  %286 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %287 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @KQR_THREQUESTED, align 4
  %290 = and i32 %288, %289
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %314

292:                                              ; preds = %285
  %293 = load i32*, i32** %11, align 8
  %294 = icmp eq i32* %293, null
  br i1 %294, label %295, label %313

295:                                              ; preds = %292
  %296 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %297 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @KQR_WAKEUP, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %313

302:                                              ; preds = %295
  store i32 0, i32* %15, align 4
  %303 = load i32, i32* %5, align 4
  %304 = icmp eq i32 %303, 131
  br i1 %304, label %305, label %307

305:                                              ; preds = %302
  %306 = load i32, i32* @WORKQ_THREADREQ_ATTEMPT_REBIND, align 4
  store i32 %306, i32* %15, align 4
  br label %307

307:                                              ; preds = %305, %302
  %308 = load %struct.kqueue*, %struct.kqueue** %8, align 8
  %309 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %310 = load i32, i32* %14, align 4
  %311 = load i32, i32* %15, align 4
  %312 = call i32 @kqueue_threadreq_initiate(%struct.kqueue* %308, %struct.kqrequest* %309, i32 %310, i32 %311)
  br label %313

313:                                              ; preds = %307, %295, %292
  br label %381

314:                                              ; preds = %285
  %315 = load i32*, i32** %12, align 8
  %316 = icmp ne i32* %315, null
  br i1 %316, label %317, label %363

317:                                              ; preds = %314
  %318 = load i32*, i32** %12, align 8
  %319 = call %struct.uthread* @get_bsdthread_info(i32* %318)
  store %struct.uthread* %319, %struct.uthread** %16, align 8
  %320 = load %struct.uthread*, %struct.uthread** %16, align 8
  %321 = getelementptr inbounds %struct.uthread, %struct.uthread* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %324 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %322, %325
  br i1 %326, label %327, label %362

327:                                              ; preds = %317
  %328 = load %struct.uthread*, %struct.uthread** %16, align 8
  %329 = getelementptr inbounds %struct.uthread, %struct.uthread* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %339

333:                                              ; preds = %327
  %334 = load i32*, i32** %12, align 8
  %335 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %336 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @thread_add_ipc_override(i32* %334, i32 %337)
  br label %355

339:                                              ; preds = %327
  %340 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %341 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %348

345:                                              ; preds = %339
  %346 = load i32*, i32** %12, align 8
  %347 = call i32 @thread_drop_ipc_override(i32* %346)
  br label %354

348:                                              ; preds = %339
  %349 = load i32*, i32** %12, align 8
  %350 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %351 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @thread_update_ipc_override(i32* %349, i32 %352)
  br label %354

354:                                              ; preds = %348, %345
  br label %355

355:                                              ; preds = %354, %333
  %356 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %357 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.uthread*, %struct.uthread** %16, align 8
  %360 = getelementptr inbounds %struct.uthread, %struct.uthread* %359, i32 0, i32 0
  store i32 %358, i32* %360, align 4
  %361 = load i64, i64* @TRUE, align 8
  store i64 %361, i64* %13, align 8
  br label %362

362:                                              ; preds = %355, %317
  br label %380

363:                                              ; preds = %314
  %364 = load i32, i32* %14, align 4
  %365 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %366 = icmp eq i32 %364, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %363
  br label %379

368:                                              ; preds = %363
  %369 = load i32, i32* %9, align 4
  %370 = load i32, i32* %14, align 4
  %371 = icmp ne i32 %369, %370
  br i1 %371, label %372, label %378

372:                                              ; preds = %368
  %373 = load %struct.kqueue*, %struct.kqueue** %8, align 8
  %374 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %375 = load i32, i32* %14, align 4
  %376 = call i32 @kqueue_threadreq_modify(%struct.kqueue* %373, %struct.kqrequest* %374, i32 %375)
  %377 = load i64, i64* @TRUE, align 8
  store i64 %377, i64* %13, align 8
  br label %378

378:                                              ; preds = %372, %368
  br label %379

379:                                              ; preds = %378, %367
  br label %380

380:                                              ; preds = %379, %362
  br label %381

381:                                              ; preds = %380, %313
  %382 = load i64, i64* %13, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %406

384:                                              ; preds = %381
  %385 = load i32, i32* @BSD_KEVENT_KQWL_THADJUST, align 4
  %386 = call i32 @KEV_EVTID(i32 %385)
  %387 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %388 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %391 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %390, i32 0, i32 5
  %392 = load i32*, i32** %391, align 8
  %393 = call i32 @thread_tid(i32* %392)
  %394 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %395 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %398 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 4
  %400 = shl i32 %399, 16
  %401 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %402 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = or i32 %400, %403
  %405 = call i32 @KDBG_FILTERED(i32 %386, i32 %389, i32 %393, i32 %396, i32 %404)
  br label %406

406:                                              ; preds = %384, %381
  ret void
}

declare dso_local i32 @kqworkloop_owner_override(%struct.kqworkloop*) #1

declare dso_local i32 @kq_req_held(%struct.kqworkloop*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kqworkloop_request_fire_r2k_notification(%struct.kqworkloop*) #1

declare dso_local i32 @kqlock_held(%struct.kqworkloop*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @thread_add_ipc_override(i32*, i32) #1

declare dso_local i32 @thread_drop_ipc_override(i32*) #1

declare dso_local i32 @thread_update_ipc_override(i32*, i32) #1

declare dso_local i32 @kqueue_threadreq_initiate(%struct.kqueue*, %struct.kqrequest*, i32, i32) #1

declare dso_local %struct.uthread* @get_bsdthread_info(i32*) #1

declare dso_local i32 @kqueue_threadreq_modify(%struct.kqueue*, %struct.kqrequest*, i32) #1

declare dso_local i32 @KDBG_FILTERED(i32, i32, i32, i32, i32) #1

declare dso_local i32 @KEV_EVTID(i32) #1

declare dso_local i32 @thread_tid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
