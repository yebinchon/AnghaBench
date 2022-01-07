; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_get_kq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_get_kq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.filedesc* }
%struct.filedesc = type { %struct.kqueue* }
%struct.kqueue = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fileproc = type { i32 }
%struct.kqworkloop = type { i32, i64 }

@KEVENT_FLAG_WORKLOOP = common dso_local global i32 0, align 4
@KEVENT_FLAG_DYNAMIC_KQUEUE = common dso_local global i32 0, align 4
@KEVENT_FLAG_DYNAMIC_KQ_MUST_NOT_EXIST = common dso_local global i32 0, align 4
@KEVENT_FLAG_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@KQ_DYNAMIC = common dso_local global i32 0, align 4
@KEVENT_FLAG_DYNAMIC_KQ_MUST_EXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KQUEUE_MIGHT_BE_LAST_REF = common dso_local global i32 0, align 4
@KEVENT_FLAG_WORKQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, i64, %struct.TYPE_3__*, i32, %struct.fileproc**, i32*, %struct.kqueue**)* @kevent_get_kq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kevent_get_kq(%struct.proc* %0, i64 %1, %struct.TYPE_3__* %2, i32 %3, %struct.fileproc** %4, i32* %5, %struct.kqueue** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fileproc**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.kqueue**, align 8
  %16 = alloca %struct.filedesc*, align 8
  %17 = alloca %struct.fileproc*, align 8
  %18 = alloca %struct.kqueue*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.kqueue*, align 8
  %23 = alloca %struct.kqworkloop*, align 8
  %24 = alloca %struct.kqueue*, align 8
  store %struct.proc* %0, %struct.proc** %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.fileproc** %4, %struct.fileproc*** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.kqueue** %6, %struct.kqueue*** %15, align 8
  %25 = load %struct.proc*, %struct.proc** %9, align 8
  %26 = getelementptr inbounds %struct.proc, %struct.proc* %25, i32 0, i32 0
  %27 = load %struct.filedesc*, %struct.filedesc** %26, align 8
  store %struct.filedesc* %27, %struct.filedesc** %16, align 8
  store %struct.fileproc* null, %struct.fileproc** %17, align 8
  store %struct.kqueue* null, %struct.kqueue** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %28 = call i32 (...) @current_thread()
  store i32 %28, i32* %21, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %7
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @KEVENT_FLAG_WORKLOOP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %31, %7
  %37 = phi i1 [ true, %7 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @KEVENT_FLAG_DYNAMIC_KQUEUE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %221

44:                                               ; preds = %36
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @KEVENT_FLAG_WORKLOOP, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %50 = icmp ne %struct.TYPE_3__* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @KEVENT_FLAG_DYNAMIC_KQ_MUST_NOT_EXIST, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %51, %44
  %57 = phi i1 [ true, %44 ], [ %55, %51 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* %21, align 4
  %61 = call %struct.kqueue* @kevent_get_bound_kqworkloop(i32 %60)
  store %struct.kqueue* %61, %struct.kqueue** %18, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp eq i64 %62, -1
  br i1 %63, label %64, label %86

64:                                               ; preds = %56
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @KEVENT_FLAG_KERNEL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @KEVENT_FLAG_WORKLOOP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load i32, i32* %21, align 4
  %76 = call i32 @is_workqueue_thread(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct.kqueue*, %struct.kqueue** %18, align 8
  %80 = icmp ne %struct.kqueue* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %78, %74
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %8, align 4
  br label %310

83:                                               ; preds = %78
  %84 = load %struct.kqueue*, %struct.kqueue** %18, align 8
  %85 = call i32 @kqueue_retain(%struct.kqueue* %84)
  br label %302

86:                                               ; preds = %69, %64, %56
  %87 = load i64, i64* %10, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* %10, align 8
  %91 = icmp eq i64 %90, -1
  br i1 %91, label %92, label %94

92:                                               ; preds = %89, %86
  %93 = load i32, i32* @EINVAL, align 4
  store i32 %93, i32* %8, align 4
  br label %310

94:                                               ; preds = %89
  %95 = load %struct.kqueue*, %struct.kqueue** %18, align 8
  %96 = icmp ne %struct.kqueue* %95, null
  br i1 %96, label %97, label %120

97:                                               ; preds = %94
  %98 = load %struct.kqueue*, %struct.kqueue** %18, align 8
  %99 = bitcast %struct.kqueue* %98 to %struct.kqworkloop*
  %100 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %97
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @KEVENT_FLAG_DYNAMIC_KQ_MUST_NOT_EXIST, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @EEXIST, align 4
  store i32 %110, i32* %8, align 4
  br label %310

111:                                              ; preds = %104
  %112 = load %struct.kqueue*, %struct.kqueue** %18, align 8
  %113 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @KQ_DYNAMIC, align 4
  %116 = and i32 %114, %115
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.kqueue*, %struct.kqueue** %18, align 8
  %119 = call i32 @kqueue_retain(%struct.kqueue* %118)
  br label %302

120:                                              ; preds = %97, %94
  %121 = load %struct.proc*, %struct.proc** %9, align 8
  %122 = call i32 @kqhash_lock(%struct.proc* %121)
  %123 = load %struct.proc*, %struct.proc** %9, align 8
  %124 = load i64, i64* %10, align 8
  %125 = call %struct.kqueue* @kqueue_hash_lookup(%struct.proc* %123, i64 %124)
  store %struct.kqueue* %125, %struct.kqueue** %18, align 8
  %126 = load %struct.kqueue*, %struct.kqueue** %18, align 8
  %127 = icmp eq %struct.kqueue* %126, null
  br i1 %127, label %128, label %200

128:                                              ; preds = %120
  %129 = load %struct.proc*, %struct.proc** %9, align 8
  %130 = call i32 @kqhash_unlock(%struct.proc* %129)
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @KEVENT_FLAG_DYNAMIC_KQ_MUST_EXIST, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* @ENOENT, align 4
  store i32 %136, i32* %8, align 4
  br label %310

137:                                              ; preds = %128
  %138 = load %struct.proc*, %struct.proc** %9, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call %struct.kqueue* @kqueue_alloc(%struct.proc* %138, i32 %139)
  store %struct.kqueue* %140, %struct.kqueue** %22, align 8
  %141 = load %struct.kqueue*, %struct.kqueue** %22, align 8
  %142 = icmp ne %struct.kqueue* %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %137
  %144 = load i32, i32* @ENOMEM, align 4
  store i32 %144, i32* %8, align 4
  br label %310

145:                                              ; preds = %137
  %146 = load %struct.proc*, %struct.proc** %9, align 8
  %147 = call i32 @kqhash_lock(%struct.proc* %146)
  %148 = load %struct.proc*, %struct.proc** %9, align 8
  %149 = call i32 @kqueue_hash_init_if_needed(%struct.proc* %148)
  %150 = load %struct.proc*, %struct.proc** %9, align 8
  %151 = load i64, i64* %10, align 8
  %152 = call %struct.kqueue* @kqueue_hash_lookup(%struct.proc* %150, i64 %151)
  store %struct.kqueue* %152, %struct.kqueue** %18, align 8
  %153 = load %struct.kqueue*, %struct.kqueue** %18, align 8
  %154 = icmp eq %struct.kqueue* %153, null
  br i1 %154, label %155, label %174

155:                                              ; preds = %145
  %156 = load %struct.kqueue*, %struct.kqueue** %22, align 8
  store %struct.kqueue* %156, %struct.kqueue** %18, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %158 = icmp ne %struct.TYPE_3__* %157, null
  br i1 %158, label %159, label %167

159:                                              ; preds = %155
  %160 = load %struct.kqueue*, %struct.kqueue** %18, align 8
  %161 = bitcast %struct.kqueue* %160 to %struct.kqworkloop*
  store %struct.kqworkloop* %161, %struct.kqworkloop** %23, align 8
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.kqworkloop*, %struct.kqworkloop** %23, align 8
  %166 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %159, %155
  %168 = load %struct.proc*, %struct.proc** %9, align 8
  %169 = load i64, i64* %10, align 8
  %170 = load %struct.kqueue*, %struct.kqueue** %18, align 8
  %171 = call i32 @kqueue_hash_insert(%struct.proc* %168, i64 %169, %struct.kqueue* %170)
  %172 = load %struct.proc*, %struct.proc** %9, align 8
  %173 = call i32 @kqhash_unlock(%struct.proc* %172)
  br label %199

174:                                              ; preds = %145
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* @KEVENT_FLAG_DYNAMIC_KQ_MUST_NOT_EXIST, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %174
  %180 = load %struct.proc*, %struct.proc** %9, align 8
  %181 = call i32 @kqhash_unlock(%struct.proc* %180)
  %182 = load %struct.kqueue*, %struct.kqueue** %22, align 8
  %183 = load i32, i32* @KQUEUE_MIGHT_BE_LAST_REF, align 4
  %184 = call i32 @kqueue_release(%struct.kqueue* %182, i32 %183)
  %185 = load %struct.kqueue*, %struct.kqueue** %22, align 8
  %186 = call i32 @kqueue_dealloc(%struct.kqueue* %185)
  %187 = load i32, i32* @EEXIST, align 4
  store i32 %187, i32* %8, align 4
  br label %310

188:                                              ; preds = %174
  %189 = load %struct.kqueue*, %struct.kqueue** %18, align 8
  %190 = call i32 @kqueue_retain(%struct.kqueue* %189)
  %191 = load %struct.proc*, %struct.proc** %9, align 8
  %192 = call i32 @kqhash_unlock(%struct.proc* %191)
  %193 = load %struct.kqueue*, %struct.kqueue** %22, align 8
  %194 = load i32, i32* @KQUEUE_MIGHT_BE_LAST_REF, align 4
  %195 = call i32 @kqueue_release(%struct.kqueue* %193, i32 %194)
  %196 = load %struct.kqueue*, %struct.kqueue** %22, align 8
  %197 = call i32 @kqueue_dealloc(%struct.kqueue* %196)
  br label %198

198:                                              ; preds = %188
  br label %199

199:                                              ; preds = %198, %167
  br label %220

200:                                              ; preds = %120
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* @KEVENT_FLAG_DYNAMIC_KQ_MUST_NOT_EXIST, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load %struct.proc*, %struct.proc** %9, align 8
  %207 = call i32 @kqhash_unlock(%struct.proc* %206)
  %208 = load i32, i32* @EEXIST, align 4
  store i32 %208, i32* %8, align 4
  br label %310

209:                                              ; preds = %200
  %210 = load %struct.kqueue*, %struct.kqueue** %18, align 8
  %211 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @KQ_DYNAMIC, align 4
  %214 = and i32 %212, %213
  %215 = call i32 @assert(i32 %214)
  %216 = load %struct.kqueue*, %struct.kqueue** %18, align 8
  %217 = call i32 @kqueue_retain(%struct.kqueue* %216)
  %218 = load %struct.proc*, %struct.proc** %9, align 8
  %219 = call i32 @kqhash_unlock(%struct.proc* %218)
  br label %220

220:                                              ; preds = %209, %199
  br label %286

221:                                              ; preds = %36
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* @KEVENT_FLAG_WORKQ, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %275

226:                                              ; preds = %221
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* @KEVENT_FLAG_KERNEL, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %226
  %232 = load %struct.filedesc*, %struct.filedesc** %16, align 8
  %233 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %232, i32 0, i32 0
  %234 = load %struct.kqueue*, %struct.kqueue** %233, align 8
  %235 = icmp ne %struct.kqueue* %234, null
  %236 = zext i1 %235 to i32
  %237 = call i32 @assert(i32 %236)
  br label %238

238:                                              ; preds = %231, %226
  %239 = load %struct.filedesc*, %struct.filedesc** %16, align 8
  %240 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %239, i32 0, i32 0
  %241 = load %struct.kqueue*, %struct.kqueue** %240, align 8
  store %struct.kqueue* %241, %struct.kqueue** %18, align 8
  %242 = load %struct.kqueue*, %struct.kqueue** %18, align 8
  %243 = icmp eq %struct.kqueue* %242, null
  br i1 %243, label %244, label %274

244:                                              ; preds = %238
  %245 = load %struct.proc*, %struct.proc** %9, align 8
  %246 = load i32, i32* @KEVENT_FLAG_WORKQ, align 4
  %247 = call %struct.kqueue* @kqueue_alloc(%struct.proc* %245, i32 %246)
  store %struct.kqueue* %247, %struct.kqueue** %24, align 8
  %248 = load %struct.kqueue*, %struct.kqueue** %24, align 8
  %249 = icmp eq %struct.kqueue* %248, null
  br i1 %249, label %250, label %252

250:                                              ; preds = %244
  %251 = load i32, i32* @ENOMEM, align 4
  store i32 %251, i32* %8, align 4
  br label %310

252:                                              ; preds = %244
  %253 = load %struct.proc*, %struct.proc** %9, align 8
  %254 = call i32 @knhash_lock(%struct.proc* %253)
  %255 = load %struct.filedesc*, %struct.filedesc** %16, align 8
  %256 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %255, i32 0, i32 0
  %257 = load %struct.kqueue*, %struct.kqueue** %256, align 8
  %258 = icmp eq %struct.kqueue* %257, null
  br i1 %258, label %259, label %265

259:                                              ; preds = %252
  %260 = load %struct.kqueue*, %struct.kqueue** %24, align 8
  %261 = load %struct.filedesc*, %struct.filedesc** %16, align 8
  %262 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %261, i32 0, i32 0
  store %struct.kqueue* %260, %struct.kqueue** %262, align 8
  store %struct.kqueue* %260, %struct.kqueue** %18, align 8
  %263 = load %struct.proc*, %struct.proc** %9, align 8
  %264 = call i32 @knhash_unlock(%struct.proc* %263)
  br label %273

265:                                              ; preds = %252
  %266 = load %struct.proc*, %struct.proc** %9, align 8
  %267 = call i32 @knhash_unlock(%struct.proc* %266)
  %268 = load %struct.filedesc*, %struct.filedesc** %16, align 8
  %269 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %268, i32 0, i32 0
  %270 = load %struct.kqueue*, %struct.kqueue** %269, align 8
  store %struct.kqueue* %270, %struct.kqueue** %18, align 8
  %271 = load %struct.kqueue*, %struct.kqueue** %24, align 8
  %272 = call i32 @kqueue_dealloc(%struct.kqueue* %271)
  br label %273

273:                                              ; preds = %265, %259
  br label %274

274:                                              ; preds = %273, %238
  br label %285

275:                                              ; preds = %221
  %276 = load i64, i64* %10, align 8
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %19, align 4
  %278 = load %struct.proc*, %struct.proc** %9, align 8
  %279 = load i32, i32* %19, align 4
  %280 = call i32 @fp_getfkq(%struct.proc* %278, i32 %279, %struct.fileproc** %17, %struct.kqueue** %18)
  store i32 %280, i32* %20, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %275
  %283 = load i32, i32* %20, align 4
  store i32 %283, i32* %8, align 4
  br label %310

284:                                              ; preds = %275
  br label %285

285:                                              ; preds = %284, %274
  br label %286

286:                                              ; preds = %285, %220
  %287 = load %struct.kqueue*, %struct.kqueue** %18, align 8
  %288 = load i32, i32* %12, align 4
  %289 = call i32 @kevent_set_kq_mode(%struct.kqueue* %287, i32 %288)
  store i32 %289, i32* %20, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %301

291:                                              ; preds = %286
  %292 = load %struct.fileproc*, %struct.fileproc** %17, align 8
  %293 = icmp ne %struct.fileproc* %292, null
  br i1 %293, label %294, label %299

294:                                              ; preds = %291
  %295 = load %struct.proc*, %struct.proc** %9, align 8
  %296 = load i32, i32* %19, align 4
  %297 = load %struct.fileproc*, %struct.fileproc** %17, align 8
  %298 = call i32 @fp_drop(%struct.proc* %295, i32 %296, %struct.fileproc* %297, i32 0)
  br label %299

299:                                              ; preds = %294, %291
  %300 = load i32, i32* %20, align 4
  store i32 %300, i32* %8, align 4
  br label %310

301:                                              ; preds = %286
  br label %302

302:                                              ; preds = %301, %111, %83
  %303 = load %struct.fileproc*, %struct.fileproc** %17, align 8
  %304 = load %struct.fileproc**, %struct.fileproc*** %13, align 8
  store %struct.fileproc* %303, %struct.fileproc** %304, align 8
  %305 = load i32, i32* %19, align 4
  %306 = load i32*, i32** %14, align 8
  store i32 %305, i32* %306, align 4
  %307 = load %struct.kqueue*, %struct.kqueue** %18, align 8
  %308 = load %struct.kqueue**, %struct.kqueue*** %15, align 8
  store %struct.kqueue* %307, %struct.kqueue** %308, align 8
  %309 = load i32, i32* %20, align 4
  store i32 %309, i32* %8, align 4
  br label %310

310:                                              ; preds = %302, %299, %282, %250, %205, %179, %143, %135, %109, %92, %81
  %311 = load i32, i32* %8, align 4
  ret i32 %311
}

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.kqueue* @kevent_get_bound_kqworkloop(i32) #1

declare dso_local i32 @is_workqueue_thread(i32) #1

declare dso_local i32 @kqueue_retain(%struct.kqueue*) #1

declare dso_local i32 @kqhash_lock(%struct.proc*) #1

declare dso_local %struct.kqueue* @kqueue_hash_lookup(%struct.proc*, i64) #1

declare dso_local i32 @kqhash_unlock(%struct.proc*) #1

declare dso_local %struct.kqueue* @kqueue_alloc(%struct.proc*, i32) #1

declare dso_local i32 @kqueue_hash_init_if_needed(%struct.proc*) #1

declare dso_local i32 @kqueue_hash_insert(%struct.proc*, i64, %struct.kqueue*) #1

declare dso_local i32 @kqueue_release(%struct.kqueue*, i32) #1

declare dso_local i32 @kqueue_dealloc(%struct.kqueue*) #1

declare dso_local i32 @knhash_lock(%struct.proc*) #1

declare dso_local i32 @knhash_unlock(%struct.proc*) #1

declare dso_local i32 @fp_getfkq(%struct.proc*, i32, %struct.fileproc**, %struct.kqueue**) #1

declare dso_local i32 @kevent_set_kq_mode(%struct.kqueue*, i32) #1

declare dso_local i32 @fp_drop(%struct.proc*, i32, %struct.fileproc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
