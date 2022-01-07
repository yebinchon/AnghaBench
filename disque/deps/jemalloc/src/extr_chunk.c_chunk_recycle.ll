; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk.c_chunk_recycle.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk.c_chunk_recycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64 (i8*, i64, i32, i64, i32)*, i64 (i8*, i64, i64, i64, i32, i32)* }

@chunksize = common dso_local global i64 0, align 8
@config_debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, %struct.TYPE_15__*, i32*, i32*, i32, i8*, i64, i64, i32*, i32*, i32)* @chunk_recycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @chunk_recycle(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32* %2, i32* %3, i32 %4, i8* %5, i64 %6, i64 %7, i32* %8, i32* %9, i32 %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32 %4, i32* %17, align 4
  store i8* %5, i8** %18, align 8
  store i64 %6, i64* %19, align 8
  store i64 %7, i64* %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32 %10, i32* %23, align 4
  %34 = load i8*, i8** %18, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %11
  %37 = load i64, i64* %20, align 8
  %38 = load i64, i64* @chunksize, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %36, %11
  %41 = phi i1 [ true, %11 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %23, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %18, align 8
  %48 = icmp ne i8* %47, null
  br label %49

49:                                               ; preds = %46, %40
  %50 = phi i1 [ true, %40 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i64, i64* %19, align 8
  %54 = load i64, i64* %20, align 8
  %55 = add i64 %53, %54
  %56 = load i64, i64* @chunksize, align 8
  %57 = sub i64 %55, %56
  %58 = call i32 @s2u(i64 %57)
  %59 = call i64 @CHUNK_CEILING(i32 %58)
  store i64 %59, i64* %26, align 8
  %60 = load i64, i64* %26, align 8
  %61 = load i64, i64* %19, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  store i8* null, i8** %12, align 8
  br label %386

64:                                               ; preds = %49
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = call i32 @malloc_mutex_lock(i32* %66)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %70 = call i32 @chunk_hooks_assure_initialized_locked(%struct.TYPE_16__* %68, %struct.TYPE_15__* %69)
  %71 = load i8*, i8** %18, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %75 = load i8*, i8** %18, align 8
  %76 = load i64, i64* %26, align 8
  %77 = call i32 @extent_node_init(i32* %31, %struct.TYPE_16__* %74, i8* %75, i64 %76, i32 0, i32 0)
  %78 = load i32*, i32** %16, align 8
  %79 = call i32* @extent_tree_ad_search(i32* %78, i32* %31)
  store i32* %79, i32** %25, align 8
  br label %86

80:                                               ; preds = %64
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = load i32*, i32** %16, align 8
  %84 = load i64, i64* %26, align 8
  %85 = call i32* @chunk_first_best_fit(%struct.TYPE_16__* %81, i32* %82, i32* %83, i64 %84)
  store i32* %85, i32** %25, align 8
  br label %86

86:                                               ; preds = %80, %73
  %87 = load i32*, i32** %25, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %97, label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %18, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i32*, i32** %25, align 8
  %94 = call i64 @extent_node_size_get(i32* %93)
  %95 = load i64, i64* %19, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %92, %86
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = call i32 @malloc_mutex_unlock(i32* %99)
  store i8* null, i8** %12, align 8
  br label %386

101:                                              ; preds = %92, %89
  %102 = load i32*, i32** %25, align 8
  %103 = call i8* @extent_node_addr_get(i32* %102)
  %104 = ptrtoint i8* %103 to i64
  %105 = load i64, i64* %20, align 8
  %106 = call i64 @ALIGNMENT_CEILING(i64 %104, i64 %105)
  %107 = load i32*, i32** %25, align 8
  %108 = call i8* @extent_node_addr_get(i32* %107)
  %109 = ptrtoint i8* %108 to i64
  %110 = sub i64 %106, %109
  store i64 %110, i64* %27, align 8
  %111 = load i8*, i8** %18, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %101
  %114 = load i64, i64* %27, align 8
  %115 = icmp eq i64 %114, 0
  br label %116

116:                                              ; preds = %113, %101
  %117 = phi i1 [ true, %101 ], [ %115, %113 ]
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load i32*, i32** %25, align 8
  %121 = call i64 @extent_node_size_get(i32* %120)
  %122 = load i64, i64* %27, align 8
  %123 = load i64, i64* %19, align 8
  %124 = add i64 %122, %123
  %125 = icmp uge i64 %121, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load i32*, i32** %25, align 8
  %129 = call i64 @extent_node_size_get(i32* %128)
  %130 = load i64, i64* %27, align 8
  %131 = sub i64 %129, %130
  %132 = load i64, i64* %19, align 8
  %133 = sub i64 %131, %132
  store i64 %133, i64* %28, align 8
  %134 = load i32*, i32** %25, align 8
  %135 = call i8* @extent_node_addr_get(i32* %134)
  %136 = ptrtoint i8* %135 to i64
  %137 = load i64, i64* %27, align 8
  %138 = add i64 %136, %137
  %139 = inttoptr i64 %138 to i8*
  store i8* %139, i8** %24, align 8
  %140 = load i32*, i32** %25, align 8
  %141 = call i32 @extent_node_zeroed_get(i32* %140)
  store i32 %141, i32* %29, align 4
  %142 = load i32, i32* %29, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %116
  %145 = load i32*, i32** %21, align 8
  store i32 1, i32* %145, align 4
  br label %146

146:                                              ; preds = %144, %116
  %147 = load i32*, i32** %25, align 8
  %148 = call i32 @extent_node_committed_get(i32* %147)
  store i32 %148, i32* %30, align 4
  %149 = load i32, i32* %30, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i32*, i32** %22, align 8
  store i32 1, i32* %152, align 4
  br label %153

153:                                              ; preds = %151, %146
  %154 = load i64, i64* %27, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %153
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load i64 (i8*, i64, i64, i64, i32, i32)*, i64 (i8*, i64, i64, i64, i32, i32)** %158, align 8
  %160 = load i32*, i32** %25, align 8
  %161 = call i8* @extent_node_addr_get(i32* %160)
  %162 = load i32*, i32** %25, align 8
  %163 = call i64 @extent_node_size_get(i32* %162)
  %164 = load i64, i64* %27, align 8
  %165 = load i64, i64* %19, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i64 %159(i8* %161, i64 %163, i64 %164, i64 %165, i32 0, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %156
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = call i32 @malloc_mutex_unlock(i32* %173)
  store i8* null, i8** %12, align 8
  br label %386

175:                                              ; preds = %156, %153
  %176 = load i32*, i32** %15, align 8
  %177 = load i32*, i32** %25, align 8
  %178 = call i32 @extent_tree_szad_remove(i32* %176, i32* %177)
  %179 = load i32*, i32** %16, align 8
  %180 = load i32*, i32** %25, align 8
  %181 = call i32 @extent_tree_ad_remove(i32* %179, i32* %180)
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %183 = load i32*, i32** %25, align 8
  %184 = load i32, i32* %17, align 4
  %185 = call i32 @arena_chunk_cache_maybe_remove(%struct.TYPE_16__* %182, i32* %183, i32 %184)
  %186 = load i64, i64* %27, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %175
  %189 = load i32*, i32** %25, align 8
  %190 = load i64, i64* %27, align 8
  %191 = call i32 @extent_node_size_set(i32* %189, i64 %190)
  %192 = load i32*, i32** %15, align 8
  %193 = load i32*, i32** %25, align 8
  %194 = call i32 @extent_tree_szad_insert(i32* %192, i32* %193)
  %195 = load i32*, i32** %16, align 8
  %196 = load i32*, i32** %25, align 8
  %197 = call i32 @extent_tree_ad_insert(i32* %195, i32* %196)
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %199 = load i32*, i32** %25, align 8
  %200 = load i32, i32* %17, align 4
  %201 = call i32 @arena_chunk_cache_maybe_insert(%struct.TYPE_16__* %198, i32* %199, i32 %200)
  store i32* null, i32** %25, align 8
  br label %202

202:                                              ; preds = %188, %175
  %203 = load i64, i64* %28, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %293

205:                                              ; preds = %202
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 1
  %208 = load i64 (i8*, i64, i64, i64, i32, i32)*, i64 (i8*, i64, i64, i64, i32, i32)** %207, align 8
  %209 = load i8*, i8** %24, align 8
  %210 = load i64, i64* %19, align 8
  %211 = load i64, i64* %28, align 8
  %212 = add i64 %210, %211
  %213 = load i64, i64* %19, align 8
  %214 = load i64, i64* %28, align 8
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i64 %208(i8* %209, i64 %212, i64 %213, i64 %214, i32 0, i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %246

220:                                              ; preds = %205
  %221 = load i32, i32* %23, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %220
  %224 = load i32*, i32** %25, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %228 = load i32*, i32** %25, align 8
  %229 = call i32 @arena_node_dalloc(%struct.TYPE_16__* %227, i32* %228)
  br label %230

230:                                              ; preds = %226, %223, %220
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  %233 = call i32 @malloc_mutex_unlock(i32* %232)
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %236 = load i32*, i32** %15, align 8
  %237 = load i32*, i32** %16, align 8
  %238 = load i32, i32* %17, align 4
  %239 = load i8*, i8** %24, align 8
  %240 = load i64, i64* %19, align 8
  %241 = load i64, i64* %28, align 8
  %242 = add i64 %240, %241
  %243 = load i32, i32* %29, align 4
  %244 = load i32, i32* %30, align 4
  %245 = call i32 @chunk_record(%struct.TYPE_16__* %234, %struct.TYPE_15__* %235, i32* %236, i32* %237, i32 %238, i8* %239, i64 %242, i32 %243, i32 %244)
  store i8* null, i8** %12, align 8
  br label %386

246:                                              ; preds = %205
  %247 = load i32*, i32** %25, align 8
  %248 = icmp eq i32* %247, null
  br i1 %248, label %249, label %271

249:                                              ; preds = %246
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %251 = call i32* @arena_node_alloc(%struct.TYPE_16__* %250)
  store i32* %251, i32** %25, align 8
  %252 = load i32*, i32** %25, align 8
  %253 = icmp eq i32* %252, null
  br i1 %253, label %254, label %270

254:                                              ; preds = %249
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  %257 = call i32 @malloc_mutex_unlock(i32* %256)
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %260 = load i32*, i32** %15, align 8
  %261 = load i32*, i32** %16, align 8
  %262 = load i32, i32* %17, align 4
  %263 = load i8*, i8** %24, align 8
  %264 = load i64, i64* %19, align 8
  %265 = load i64, i64* %28, align 8
  %266 = add i64 %264, %265
  %267 = load i32, i32* %29, align 4
  %268 = load i32, i32* %30, align 4
  %269 = call i32 @chunk_record(%struct.TYPE_16__* %258, %struct.TYPE_15__* %259, i32* %260, i32* %261, i32 %262, i8* %263, i64 %266, i32 %267, i32 %268)
  store i8* null, i8** %12, align 8
  br label %386

270:                                              ; preds = %249
  br label %271

271:                                              ; preds = %270, %246
  %272 = load i32*, i32** %25, align 8
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %274 = load i8*, i8** %24, align 8
  %275 = ptrtoint i8* %274 to i64
  %276 = load i64, i64* %19, align 8
  %277 = add i64 %275, %276
  %278 = inttoptr i64 %277 to i8*
  %279 = load i64, i64* %28, align 8
  %280 = load i32, i32* %29, align 4
  %281 = load i32, i32* %30, align 4
  %282 = call i32 @extent_node_init(i32* %272, %struct.TYPE_16__* %273, i8* %278, i64 %279, i32 %280, i32 %281)
  %283 = load i32*, i32** %15, align 8
  %284 = load i32*, i32** %25, align 8
  %285 = call i32 @extent_tree_szad_insert(i32* %283, i32* %284)
  %286 = load i32*, i32** %16, align 8
  %287 = load i32*, i32** %25, align 8
  %288 = call i32 @extent_tree_ad_insert(i32* %286, i32* %287)
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %290 = load i32*, i32** %25, align 8
  %291 = load i32, i32* %17, align 4
  %292 = call i32 @arena_chunk_cache_maybe_insert(%struct.TYPE_16__* %289, i32* %290, i32 %291)
  store i32* null, i32** %25, align 8
  br label %293

293:                                              ; preds = %271, %202
  %294 = load i32, i32* %30, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %322, label %296

296:                                              ; preds = %293
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 0
  %299 = load i64 (i8*, i64, i32, i64, i32)*, i64 (i8*, i64, i32, i64, i32)** %298, align 8
  %300 = load i8*, i8** %24, align 8
  %301 = load i64, i64* %19, align 8
  %302 = load i64, i64* %19, align 8
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = call i64 %299(i8* %300, i64 %301, i32 0, i64 %302, i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %322

308:                                              ; preds = %296
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 0
  %311 = call i32 @malloc_mutex_unlock(i32* %310)
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %314 = load i32*, i32** %15, align 8
  %315 = load i32*, i32** %16, align 8
  %316 = load i32, i32* %17, align 4
  %317 = load i8*, i8** %24, align 8
  %318 = load i64, i64* %19, align 8
  %319 = load i32, i32* %29, align 4
  %320 = load i32, i32* %30, align 4
  %321 = call i32 @chunk_record(%struct.TYPE_16__* %312, %struct.TYPE_15__* %313, i32* %314, i32* %315, i32 %316, i8* %317, i64 %318, i32 %319, i32 %320)
  store i8* null, i8** %12, align 8
  br label %386

322:                                              ; preds = %296, %293
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 0
  %325 = call i32 @malloc_mutex_unlock(i32* %324)
  %326 = load i32, i32* %23, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %331, label %328

328:                                              ; preds = %322
  %329 = load i32*, i32** %25, align 8
  %330 = icmp ne i32* %329, null
  br label %331

331:                                              ; preds = %328, %322
  %332 = phi i1 [ true, %322 ], [ %330, %328 ]
  %333 = zext i1 %332 to i32
  %334 = call i32 @assert(i32 %333)
  %335 = load i32, i32* %23, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %344

337:                                              ; preds = %331
  %338 = load i32*, i32** %25, align 8
  %339 = icmp ne i32* %338, null
  br i1 %339, label %340, label %344

340:                                              ; preds = %337
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %342 = load i32*, i32** %25, align 8
  %343 = call i32 @arena_node_dalloc(%struct.TYPE_16__* %341, i32* %342)
  br label %344

344:                                              ; preds = %340, %337, %331
  %345 = load i32*, i32** %21, align 8
  %346 = load i32, i32* %345, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %384

348:                                              ; preds = %344
  %349 = load i32, i32* %29, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %355, label %351

351:                                              ; preds = %348
  %352 = load i8*, i8** %24, align 8
  %353 = load i64, i64* %19, align 8
  %354 = call i32 @memset(i8* %352, i32 0, i64 %353)
  br label %383

355:                                              ; preds = %348
  %356 = load i64, i64* @config_debug, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %382

358:                                              ; preds = %355
  %359 = load i8*, i8** %24, align 8
  %360 = ptrtoint i8* %359 to i64
  %361 = inttoptr i64 %360 to i64*
  store i64* %361, i64** %33, align 8
  %362 = load i8*, i8** %24, align 8
  %363 = load i64, i64* %19, align 8
  %364 = call i32 @JEMALLOC_VALGRIND_MAKE_MEM_DEFINED(i8* %362, i64 %363)
  store i64 0, i64* %32, align 8
  br label %365

365:                                              ; preds = %378, %358
  %366 = load i64, i64* %32, align 8
  %367 = load i64, i64* %19, align 8
  %368 = udiv i64 %367, 8
  %369 = icmp ult i64 %366, %368
  br i1 %369, label %370, label %381

370:                                              ; preds = %365
  %371 = load i64*, i64** %33, align 8
  %372 = load i64, i64* %32, align 8
  %373 = getelementptr inbounds i64, i64* %371, i64 %372
  %374 = load i64, i64* %373, align 8
  %375 = icmp eq i64 %374, 0
  %376 = zext i1 %375 to i32
  %377 = call i32 @assert(i32 %376)
  br label %378

378:                                              ; preds = %370
  %379 = load i64, i64* %32, align 8
  %380 = add i64 %379, 1
  store i64 %380, i64* %32, align 8
  br label %365

381:                                              ; preds = %365
  br label %382

382:                                              ; preds = %381, %355
  br label %383

383:                                              ; preds = %382, %351
  br label %384

384:                                              ; preds = %383, %344
  %385 = load i8*, i8** %24, align 8
  store i8* %385, i8** %12, align 8
  br label %386

386:                                              ; preds = %384, %308, %254, %230, %171, %97, %63
  %387 = load i8*, i8** %12, align 8
  ret i8* %387
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CHUNK_CEILING(i32) #1

declare dso_local i32 @s2u(i64) #1

declare dso_local i32 @malloc_mutex_lock(i32*) #1

declare dso_local i32 @chunk_hooks_assure_initialized_locked(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @extent_node_init(i32*, %struct.TYPE_16__*, i8*, i64, i32, i32) #1

declare dso_local i32* @extent_tree_ad_search(i32*, i32*) #1

declare dso_local i32* @chunk_first_best_fit(%struct.TYPE_16__*, i32*, i32*, i64) #1

declare dso_local i64 @extent_node_size_get(i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*) #1

declare dso_local i64 @ALIGNMENT_CEILING(i64, i64) #1

declare dso_local i8* @extent_node_addr_get(i32*) #1

declare dso_local i32 @extent_node_zeroed_get(i32*) #1

declare dso_local i32 @extent_node_committed_get(i32*) #1

declare dso_local i32 @extent_tree_szad_remove(i32*, i32*) #1

declare dso_local i32 @extent_tree_ad_remove(i32*, i32*) #1

declare dso_local i32 @arena_chunk_cache_maybe_remove(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @extent_node_size_set(i32*, i64) #1

declare dso_local i32 @extent_tree_szad_insert(i32*, i32*) #1

declare dso_local i32 @extent_tree_ad_insert(i32*, i32*) #1

declare dso_local i32 @arena_chunk_cache_maybe_insert(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @arena_node_dalloc(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @chunk_record(%struct.TYPE_16__*, %struct.TYPE_15__*, i32*, i32*, i32, i8*, i64, i32, i32) #1

declare dso_local i32* @arena_node_alloc(%struct.TYPE_16__*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @JEMALLOC_VALGRIND_MAKE_MEM_DEFINED(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
