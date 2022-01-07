; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_processor.c_processor_set_things.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_processor.c_processor_set_things.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32 }

@PROCESSOR_SET_NULL = common dso_local global i32* null, align 8
@pset0 = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@tasks_threads_lock = common dso_local global i32 0, align 4
@PSET_THING_THREAD = common dso_local global i32 0, align 4
@threads_count = common dso_local global i32 0, align 4
@tasks_count = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@threads = common dso_local global i32 0, align 4
@tasks = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@kernel_task = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @processor_set_things(i32* %0, i8** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_10__**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** @PROCESSOR_SET_NULL, align 8
  %27 = icmp eq i32* %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, @pset0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %4
  %32 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %32, i32* %5, align 4
  br label %305

33:                                               ; preds = %28
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store %struct.TYPE_10__** null, %struct.TYPE_10__*** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store %struct.TYPE_9__** null, %struct.TYPE_9__*** %17, align 8
  store i32 0, i32* %18, align 4
  br label %34

34:                                               ; preds = %127, %33
  %35 = call i32 @lck_mtx_lock(i32* @tasks_threads_lock)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @PSET_THING_THREAD, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @threads_count, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %20, align 4
  br label %49

44:                                               ; preds = %34
  %45 = load i32, i32* @tasks_count, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %19, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %128

58:                                               ; preds = %53, %49
  %59 = call i32 @lck_mtx_unlock(i32* @tasks_threads_lock)
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %58
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %68 = bitcast %struct.TYPE_10__** %67 to i8*
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @kfree(i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %63
  %72 = load i32, i32* %16, align 4
  %73 = icmp sgt i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i8* @kalloc(i32 %77)
  %79 = bitcast i8* %78 to %struct.TYPE_10__**
  store %struct.TYPE_10__** %79, %struct.TYPE_10__*** %13, align 8
  %80 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %81 = icmp eq %struct.TYPE_10__** %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %71
  %83 = load i32, i32* %19, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %17, align 8
  %87 = bitcast %struct.TYPE_9__** %86 to i8*
  %88 = load i32, i32* %19, align 4
  %89 = call i32 @kfree(i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %82
  %91 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %91, i32* %5, align 4
  br label %305

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92, %58
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %19, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %127

97:                                               ; preds = %93
  %98 = load i32, i32* %19, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %17, align 8
  %102 = bitcast %struct.TYPE_9__** %101 to i8*
  %103 = load i32, i32* %19, align 4
  %104 = call i32 @kfree(i8* %102, i32 %103)
  br label %105

105:                                              ; preds = %100, %97
  %106 = load i32, i32* %20, align 4
  %107 = icmp sgt i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load i32, i32* %20, align 4
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %19, align 4
  %112 = call i8* @kalloc(i32 %111)
  %113 = bitcast i8* %112 to %struct.TYPE_9__**
  store %struct.TYPE_9__** %113, %struct.TYPE_9__*** %17, align 8
  %114 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %17, align 8
  %115 = icmp eq %struct.TYPE_9__** %114, null
  br i1 %115, label %116, label %126

116:                                              ; preds = %105
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %121 = bitcast %struct.TYPE_10__** %120 to i8*
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @kfree(i8* %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %116
  %125 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %125, i32* %5, align 4
  br label %305

126:                                              ; preds = %105
  br label %127

127:                                              ; preds = %126, %93
  br label %34

128:                                              ; preds = %57
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @PSET_THING_THREAD, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %156

132:                                              ; preds = %128
  %133 = call i64 @queue_first(i32* @threads)
  %134 = inttoptr i64 %133 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %134, %struct.TYPE_9__** %12, align 8
  br label %135

135:                                              ; preds = %150, %132
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %137 = ptrtoint %struct.TYPE_9__* %136 to i32
  %138 = call i32 @queue_end(i32* @threads, i32 %137)
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  br i1 %140, label %141, label %155

141:                                              ; preds = %135
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %143 = call i32 @thread_reference_internal(%struct.TYPE_9__* %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %145 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %17, align 8
  %146 = load i32, i32* %18, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %18, align 4
  %148 = zext i32 %146 to i64
  %149 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %145, i64 %148
  store %struct.TYPE_9__* %144, %struct.TYPE_9__** %149, align 8
  br label %150

150:                                              ; preds = %141
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = call i64 @queue_next(i32* %152)
  %154 = inttoptr i64 %153 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %154, %struct.TYPE_9__** %12, align 8
  br label %135

155:                                              ; preds = %135
  br label %180

156:                                              ; preds = %128
  %157 = call i64 @queue_first(i32* @tasks)
  %158 = inttoptr i64 %157 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %158, %struct.TYPE_10__** %11, align 8
  br label %159

159:                                              ; preds = %174, %156
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %161 = ptrtoint %struct.TYPE_10__* %160 to i32
  %162 = call i32 @queue_end(i32* @tasks, i32 %161)
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  br i1 %164, label %165, label %179

165:                                              ; preds = %159
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %167 = call i32 @task_reference_internal(%struct.TYPE_10__* %166)
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %169 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %170 = load i32, i32* %14, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %14, align 4
  %172 = zext i32 %170 to i64
  %173 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %169, i64 %172
  store %struct.TYPE_10__* %168, %struct.TYPE_10__** %173, align 8
  br label %174

174:                                              ; preds = %165
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = call i64 @queue_next(i32* %176)
  %178 = inttoptr i64 %177 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %178, %struct.TYPE_10__** %11, align 8
  br label %159

179:                                              ; preds = %159
  br label %180

180:                                              ; preds = %179, %155
  %181 = call i32 @lck_mtx_unlock(i32* @tasks_threads_lock)
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @PSET_THING_THREAD, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %212

185:                                              ; preds = %180
  %186 = load i32, i32* %18, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %204

188:                                              ; preds = %185
  %189 = load i32, i32* %15, align 4
  %190 = icmp eq i32 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load i32, i32* %19, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %188
  %196 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %17, align 8
  %197 = bitcast %struct.TYPE_9__** %196 to i8*
  %198 = load i32, i32* %19, align 4
  %199 = call i32 @kfree(i8* %197, i32 %198)
  br label %200

200:                                              ; preds = %195, %188
  %201 = load i8**, i8*** %7, align 8
  store i8* null, i8** %201, align 8
  %202 = load i32*, i32** %8, align 8
  store i32 0, i32* %202, align 4
  %203 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %203, i32* %5, align 4
  br label %305

204:                                              ; preds = %185
  %205 = load i32, i32* %18, align 4
  %206 = zext i32 %205 to i64
  %207 = mul i64 %206, 8
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %24, align 4
  %209 = load i32, i32* %19, align 4
  store i32 %209, i32* %23, align 4
  %210 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %17, align 8
  %211 = bitcast %struct.TYPE_9__** %210 to i8*
  store i8* %211, i8** %21, align 8
  br label %239

212:                                              ; preds = %180
  %213 = load i32, i32* %14, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %231

215:                                              ; preds = %212
  %216 = load i32, i32* %19, align 4
  %217 = icmp eq i32 %216, 0
  %218 = zext i1 %217 to i32
  %219 = call i32 @assert(i32 %218)
  %220 = load i32, i32* %15, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %215
  %223 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %224 = bitcast %struct.TYPE_10__** %223 to i8*
  %225 = load i32, i32* %15, align 4
  %226 = call i32 @kfree(i8* %224, i32 %225)
  br label %227

227:                                              ; preds = %222, %215
  %228 = load i8**, i8*** %7, align 8
  store i8* null, i8** %228, align 8
  %229 = load i32*, i32** %8, align 8
  store i32 0, i32* %229, align 4
  %230 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %230, i32* %5, align 4
  br label %305

231:                                              ; preds = %212
  %232 = load i32, i32* %14, align 4
  %233 = zext i32 %232 to i64
  %234 = mul i64 %233, 8
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %24, align 4
  %236 = load i32, i32* %15, align 4
  store i32 %236, i32* %23, align 4
  %237 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %238 = bitcast %struct.TYPE_10__** %237 to i8*
  store i8* %238, i8** %21, align 8
  br label %239

239:                                              ; preds = %231, %204
  %240 = load i32, i32* %24, align 4
  %241 = load i32, i32* %23, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %294

243:                                              ; preds = %239
  %244 = load i32, i32* %24, align 4
  %245 = call i8* @kalloc(i32 %244)
  store i8* %245, i8** %22, align 8
  %246 = load i8*, i8** %22, align 8
  %247 = icmp eq i8* %246, null
  br i1 %247, label %248, label %284

248:                                              ; preds = %243
  store i32 0, i32* %10, align 4
  br label %249

249:                                              ; preds = %272, %248
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* %14, align 4
  %252 = icmp ult i32 %250, %251
  br i1 %252, label %253, label %275

253:                                              ; preds = %249
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* @PSET_THING_THREAD, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %264

257:                                              ; preds = %253
  %258 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %17, align 8
  %259 = load i32, i32* %10, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %258, i64 %260
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %261, align 8
  %263 = call i32 @thread_deallocate(%struct.TYPE_9__* %262)
  br label %271

264:                                              ; preds = %253
  %265 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %266 = load i32, i32* %10, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %265, i64 %267
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %268, align 8
  %270 = call i32 @task_deallocate(%struct.TYPE_10__* %269)
  br label %271

271:                                              ; preds = %264, %257
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %10, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %10, align 4
  br label %249

275:                                              ; preds = %249
  %276 = load i32, i32* %23, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %275
  %279 = load i8*, i8** %21, align 8
  %280 = load i32, i32* %23, align 4
  %281 = call i32 @kfree(i8* %279, i32 %280)
  br label %282

282:                                              ; preds = %278, %275
  %283 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %283, i32* %5, align 4
  br label %305

284:                                              ; preds = %243
  %285 = load i8*, i8** %21, align 8
  %286 = load i8*, i8** %22, align 8
  %287 = load i32, i32* %24, align 4
  %288 = call i32 @bcopy(i8* %285, i8* %286, i32 %287)
  %289 = load i8*, i8** %21, align 8
  %290 = load i32, i32* %23, align 4
  %291 = call i32 @kfree(i8* %289, i32 %290)
  %292 = load i8*, i8** %22, align 8
  store i8* %292, i8** %21, align 8
  %293 = load i32, i32* %24, align 4
  store i32 %293, i32* %23, align 4
  br label %294

294:                                              ; preds = %284, %239
  %295 = load i8*, i8** %21, align 8
  %296 = bitcast i8* %295 to i8**
  %297 = bitcast i8** %296 to i8*
  %298 = load i8**, i8*** %7, align 8
  store i8* %297, i8** %298, align 8
  %299 = load i32, i32* %23, align 4
  %300 = zext i32 %299 to i64
  %301 = udiv i64 %300, 8
  %302 = trunc i64 %301 to i32
  %303 = load i32*, i32** %8, align 8
  store i32 %302, i32* %303, align 4
  %304 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %304, i32* %5, align 4
  br label %305

305:                                              ; preds = %294, %282, %227, %200, %124, %90, %31
  %306 = load i32, i32* %5, align 4
  ret i32 %306
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @kfree(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @kalloc(i32) #1

declare dso_local i64 @queue_first(i32*) #1

declare dso_local i32 @queue_end(i32*, i32) #1

declare dso_local i32 @thread_reference_internal(%struct.TYPE_9__*) #1

declare dso_local i64 @queue_next(i32*) #1

declare dso_local i32 @task_reference_internal(%struct.TYPE_10__*) #1

declare dso_local i32 @thread_deallocate(%struct.TYPE_9__*) #1

declare dso_local i32 @task_deallocate(%struct.TYPE_10__*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
