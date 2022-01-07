; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_synch.c__sleep.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_synch.c__sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.uthread = type { i8*, i32 (i32)*, i32, i32, i32, i32*, i32* }

@PDROP = common dso_local global i32 0, align 4
@PSPIN = common dso_local global i32 0, align 4
@PRIMASK = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@THREAD_ABORTSAFE = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@THREAD_CONTINUE_NULL = common dso_local global i64 0, align 8
@LCK_SLEEP_UNLOCK = common dso_local global i32 0, align 4
@LCK_SLEEP_DEFAULT = common dso_local global i32 0, align 4
@LCK_SLEEP_SPIN = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@_sleep_continue = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i32 0, align 4
@UT_CANCELDISABLE = common dso_local global i32 0, align 4
@UT_CANCEL = common dso_local global i32 0, align 4
@UT_CANCELED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32 (i32)*, i32*)* @_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sleep(i32* %0, i32 %1, i8* %2, i32 %3, i32 (i32)* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (i32)*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.proc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.uthread*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 (i32)* %4, i32 (i32)** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = call i32 (...) @current_thread()
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @PDROP, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @PSPIN, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call %struct.uthread* @get_bsdthread_info(i32 %30)
  store %struct.uthread* %31, %struct.uthread** %15, align 8
  %32 = call %struct.proc* (...) @current_proc()
  store %struct.proc* %32, %struct.proc** %13, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @PRIMASK, align 4
  %35 = and i32 %33, %34
  %36 = load %struct.proc*, %struct.proc** %13, align 8
  %37 = getelementptr inbounds %struct.proc, %struct.proc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.proc*, %struct.proc** %13, align 8
  %39 = getelementptr inbounds %struct.proc, %struct.proc* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %6
  %43 = load %struct.proc*, %struct.proc** %13, align 8
  %44 = getelementptr inbounds %struct.proc, %struct.proc* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @OSIncrementAtomicLong(i32* %47)
  br label %49

49:                                               ; preds = %42, %6
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @PCATCH, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @THREAD_ABORTSAFE, align 4
  store i32 %55, i32* %17, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @THREAD_UNINT, align 4
  store i32 %57, i32* %17, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.uthread*, %struct.uthread** %15, align 8
  %61 = getelementptr inbounds %struct.uthread, %struct.uthread* %60, i32 0, i32 5
  store i32* %59, i32** %61, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i8*, i8** %9, align 8
  br label %67

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i8* [ %65, %64 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %66 ]
  %69 = load %struct.uthread*, %struct.uthread** %15, align 8
  %70 = getelementptr inbounds %struct.uthread, %struct.uthread* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %112

73:                                               ; preds = %67
  %74 = load i32*, i32** %7, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %112

76:                                               ; preds = %73
  %77 = load i32 (i32)*, i32 (i32)** %11, align 8
  %78 = ptrtoint i32 (i32)* %77 to i64
  %79 = load i64, i64* @THREAD_CONTINUE_NULL, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %112

81:                                               ; preds = %76
  %82 = load i32, i32* %18, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @LCK_SLEEP_UNLOCK, align 4
  store i32 %85, i32* %22, align 4
  br label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @LCK_SLEEP_DEFAULT, align 4
  store i32 %87, i32* %22, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = load i32, i32* %19, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* @LCK_SLEEP_SPIN, align 4
  %93 = load i32, i32* %22, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %22, align 4
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %22, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @lck_mtx_sleep_deadline(i32* %99, i32 %100, i32* %101, i32 %102, i32 %103)
  store i32 %104, i32* %20, align 4
  br label %111

105:                                              ; preds = %95
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %22, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %17, align 4
  %110 = call i32 @lck_mtx_sleep(i32* %106, i32 %107, i32* %108, i32 %109)
  store i32 %110, i32* %20, align 4
  br label %111

111:                                              ; preds = %105, %98
  br label %249

112:                                              ; preds = %76, %73, %67
  %113 = load i32*, i32** %7, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @assert_wait_deadline(i32* %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %115, %112
  %121 = load i32*, i32** %12, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32*, i32** %12, align 8
  %125 = call i32 @lck_mtx_unlock(i32* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* @THREAD_ABORTSAFE, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %206

130:                                              ; preds = %126
  %131 = load %struct.proc*, %struct.proc** %13, align 8
  %132 = load %struct.uthread*, %struct.uthread** %15, align 8
  %133 = call i64 @SHOULDissignal(%struct.proc* %131, %struct.uthread* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %177

135:                                              ; preds = %130
  %136 = load %struct.proc*, %struct.proc** %13, align 8
  %137 = call i32 @CURSIG(%struct.proc* %136)
  store i32 %137, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %176

139:                                              ; preds = %135
  %140 = load i32, i32* %14, align 4
  %141 = call i64 @clear_wait(i32 %140, i32 130)
  %142 = load i64, i64* @KERN_FAILURE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %207

145:                                              ; preds = %139
  %146 = load %struct.proc*, %struct.proc** %13, align 8
  %147 = getelementptr inbounds %struct.proc, %struct.proc* %146, i32 0, i32 1
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @sigmask(i32 %151)
  %153 = and i32 %150, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %145
  %156 = load i32, i32* @EINTR, align 4
  store i32 %156, i32* %21, align 4
  br label %159

157:                                              ; preds = %145
  %158 = load i32, i32* @ERESTART, align 4
  store i32 %158, i32* %21, align 4
  br label %159

159:                                              ; preds = %157, %155
  %160 = load i32*, i32** %12, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %175

162:                                              ; preds = %159
  %163 = load i32, i32* %18, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %175, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %19, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32*, i32** %12, align 8
  %170 = call i32 @lck_mtx_lock_spin(i32* %169)
  br label %174

171:                                              ; preds = %165
  %172 = load i32*, i32** %12, align 8
  %173 = call i32 @lck_mtx_lock(i32* %172)
  br label %174

174:                                              ; preds = %171, %168
  br label %175

175:                                              ; preds = %174, %162, %159
  br label %321

176:                                              ; preds = %135
  br label %177

177:                                              ; preds = %176, %130
  %178 = load i32, i32* %14, align 4
  %179 = call i64 @thread_should_abort(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %205

181:                                              ; preds = %177
  %182 = load i32, i32* %14, align 4
  %183 = call i64 @clear_wait(i32 %182, i32 130)
  %184 = load i64, i64* @KERN_FAILURE, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %207

187:                                              ; preds = %181
  %188 = load i32, i32* @EINTR, align 4
  store i32 %188, i32* %21, align 4
  %189 = load i32*, i32** %12, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %204

191:                                              ; preds = %187
  %192 = load i32, i32* %18, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %204, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %19, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i32*, i32** %12, align 8
  %199 = call i32 @lck_mtx_lock_spin(i32* %198)
  br label %203

200:                                              ; preds = %194
  %201 = load i32*, i32** %12, align 8
  %202 = call i32 @lck_mtx_lock(i32* %201)
  br label %203

203:                                              ; preds = %200, %197
  br label %204

204:                                              ; preds = %203, %191, %187
  br label %321

205:                                              ; preds = %177
  br label %206

206:                                              ; preds = %205, %126
  br label %207

207:                                              ; preds = %206, %186, %144
  %208 = load i32 (i32)*, i32 (i32)** %11, align 8
  %209 = ptrtoint i32 (i32)* %208 to i64
  %210 = load i64, i64* @THREAD_CONTINUE_NULL, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %230

212:                                              ; preds = %207
  %213 = load i32 (i32)*, i32 (i32)** %11, align 8
  %214 = load %struct.uthread*, %struct.uthread** %15, align 8
  %215 = getelementptr inbounds %struct.uthread, %struct.uthread* %214, i32 0, i32 1
  store i32 (i32)* %213, i32 (i32)** %215, align 8
  %216 = load i32, i32* %8, align 4
  %217 = load %struct.uthread*, %struct.uthread** %15, align 8
  %218 = getelementptr inbounds %struct.uthread, %struct.uthread* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i32 1, i32 0
  %223 = load %struct.uthread*, %struct.uthread** %15, align 8
  %224 = getelementptr inbounds %struct.uthread, %struct.uthread* %223, i32 0, i32 3
  store i32 %222, i32* %224, align 4
  %225 = load i32*, i32** %12, align 8
  %226 = load %struct.uthread*, %struct.uthread** %15, align 8
  %227 = getelementptr inbounds %struct.uthread, %struct.uthread* %226, i32 0, i32 6
  store i32* %225, i32** %227, align 8
  %228 = load i64, i64* @_sleep_continue, align 8
  %229 = call i32 @thread_block(i64 %228)
  br label %230

230:                                              ; preds = %212, %207
  %231 = load i64, i64* @THREAD_CONTINUE_NULL, align 8
  %232 = call i32 @thread_block(i64 %231)
  store i32 %232, i32* %20, align 4
  %233 = load i32*, i32** %12, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %248

235:                                              ; preds = %230
  %236 = load i32, i32* %18, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %248, label %238

238:                                              ; preds = %235
  %239 = load i32, i32* %19, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load i32*, i32** %12, align 8
  %243 = call i32 @lck_mtx_lock_spin(i32* %242)
  br label %247

244:                                              ; preds = %238
  %245 = load i32*, i32** %12, align 8
  %246 = call i32 @lck_mtx_lock(i32* %245)
  br label %247

247:                                              ; preds = %244, %241
  br label %248

248:                                              ; preds = %247, %235, %230
  br label %249

249:                                              ; preds = %248, %111
  %250 = load i32, i32* %20, align 4
  switch i32 %250, label %320 [
    i32 128, label %251
    i32 131, label %253
    i32 129, label %253
    i32 130, label %259
  ]

251:                                              ; preds = %249
  %252 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %252, i32* %21, align 4
  br label %320

253:                                              ; preds = %249, %249
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* @THREAD_ABORTSAFE, align 4
  %256 = icmp ne i32 %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %253
  br label %320

258:                                              ; preds = %253
  br label %259

259:                                              ; preds = %249, %258
  %260 = load i32, i32* %17, align 4
  %261 = load i32, i32* @THREAD_ABORTSAFE, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %317

263:                                              ; preds = %259
  %264 = load i32, i32* %14, align 4
  %265 = call i64 @thread_should_abort(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %263
  %268 = load i32, i32* @EINTR, align 4
  store i32 %268, i32* %21, align 4
  br label %316

269:                                              ; preds = %263
  %270 = load %struct.proc*, %struct.proc** %13, align 8
  %271 = load %struct.uthread*, %struct.uthread** %15, align 8
  %272 = call i64 @SHOULDissignal(%struct.proc* %270, %struct.uthread* %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %300

274:                                              ; preds = %269
  %275 = load %struct.proc*, %struct.proc** %13, align 8
  %276 = call i32 @CURSIG(%struct.proc* %275)
  store i32 %276, i32* %16, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %293

278:                                              ; preds = %274
  %279 = load %struct.proc*, %struct.proc** %13, align 8
  %280 = getelementptr inbounds %struct.proc, %struct.proc* %279, i32 0, i32 1
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %16, align 4
  %285 = call i32 @sigmask(i32 %284)
  %286 = and i32 %283, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %278
  %289 = load i32, i32* @EINTR, align 4
  store i32 %289, i32* %21, align 4
  br label %292

290:                                              ; preds = %278
  %291 = load i32, i32* @ERESTART, align 4
  store i32 %291, i32* %21, align 4
  br label %292

292:                                              ; preds = %290, %288
  br label %293

293:                                              ; preds = %292, %274
  %294 = load i32, i32* %14, align 4
  %295 = call i64 @thread_should_abort(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %293
  %298 = load i32, i32* @EINTR, align 4
  store i32 %298, i32* %21, align 4
  br label %299

299:                                              ; preds = %297, %293
  br label %315

300:                                              ; preds = %269
  %301 = load %struct.uthread*, %struct.uthread** %15, align 8
  %302 = getelementptr inbounds %struct.uthread, %struct.uthread* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @UT_CANCELDISABLE, align 4
  %305 = load i32, i32* @UT_CANCEL, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* @UT_CANCELED, align 4
  %308 = or i32 %306, %307
  %309 = and i32 %303, %308
  %310 = load i32, i32* @UT_CANCEL, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %314

312:                                              ; preds = %300
  %313 = load i32, i32* @EINTR, align 4
  store i32 %313, i32* %21, align 4
  br label %314

314:                                              ; preds = %312, %300
  br label %315

315:                                              ; preds = %314, %299
  br label %316

316:                                              ; preds = %315, %267
  br label %319

317:                                              ; preds = %259
  %318 = load i32, i32* @EINTR, align 4
  store i32 %318, i32* %21, align 4
  br label %319

319:                                              ; preds = %317, %316
  br label %320

320:                                              ; preds = %249, %319, %257, %251
  br label %321

321:                                              ; preds = %320, %204, %175
  %322 = load i32, i32* %21, align 4
  %323 = load i32, i32* @EINTR, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %329, label %325

325:                                              ; preds = %321
  %326 = load i32, i32* %21, align 4
  %327 = load i32, i32* @ERESTART, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %332

329:                                              ; preds = %325, %321
  %330 = load i32, i32* %14, align 4
  %331 = call i32 @act_set_astbsd(i32 %330)
  br label %332

332:                                              ; preds = %329, %325
  %333 = load %struct.uthread*, %struct.uthread** %15, align 8
  %334 = getelementptr inbounds %struct.uthread, %struct.uthread* %333, i32 0, i32 5
  store i32* null, i32** %334, align 8
  %335 = load %struct.uthread*, %struct.uthread** %15, align 8
  %336 = getelementptr inbounds %struct.uthread, %struct.uthread* %335, i32 0, i32 0
  store i8* null, i8** %336, align 8
  %337 = load i32, i32* %21, align 4
  ret i32 %337
}

declare dso_local i32 @current_thread(...) #1

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local %struct.proc* @current_proc(...) #1

declare dso_local i32 @OSIncrementAtomicLong(i32*) #1

declare dso_local i32 @lck_mtx_sleep_deadline(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @lck_mtx_sleep(i32*, i32, i32*, i32) #1

declare dso_local i32 @assert_wait_deadline(i32*, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i64 @SHOULDissignal(%struct.proc*, %struct.uthread*) #1

declare dso_local i32 @CURSIG(%struct.proc*) #1

declare dso_local i64 @clear_wait(i32, i32) #1

declare dso_local i32 @sigmask(i32) #1

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i64 @thread_should_abort(i32) #1

declare dso_local i32 @thread_block(i64) #1

declare dso_local i32 @act_set_astbsd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
