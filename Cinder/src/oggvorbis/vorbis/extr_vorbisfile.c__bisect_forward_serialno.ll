; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__bisect_forward_serialno.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__bisect_forward_serialno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64*, i64*, i64*, i64*, i32*, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@CHUNKSIZE = common dso_local global i64 0, align 8
@OV_EREAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64, i64, i64, i64, i32, i64*, i32, i64)* @_bisect_forward_serialno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bisect_forward_serialno(%struct.TYPE_10__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i64* %6, i32 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i64* %6, i64** %17, align 8
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  %35 = load i64, i64* %13, align 8
  store i64 %35, i64* %21, align 8
  %36 = load i64, i64* %14, align 8
  store i64 %36, i64* %22, align 8
  %37 = load i64, i64* %14, align 8
  store i64 %37, i64* %23, align 8
  store i64 -1, i64* %24, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %28, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i64*, i64** %17, align 8
  %44 = load i32, i32* %18, align 4
  %45 = call i64 @_lookup_serialno(i32 %42, i64* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %185

47:                                               ; preds = %9
  br label %48

48:                                               ; preds = %52, %47
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %28, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32, i32* %28, align 4
  store i32 %53, i32* %16, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %55 = load i64*, i64** %17, align 8
  %56 = load i32, i32* %18, align 4
  %57 = call i8* @_get_prev_page_serial(%struct.TYPE_10__* %54, i64* %55, i32 %56, i32* %16, i64* %15)
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %48

61:                                               ; preds = %48
  %62 = load i64, i64* %19, align 8
  %63 = add nsw i64 %62, 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = call i32 @_ogg_free(i64* %73)
  br label %75

75:                                               ; preds = %70, %61
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i64*, i64** %77, align 8
  %79 = icmp ne i64* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  %83 = load i64*, i64** %82, align 8
  %84 = call i32 @_ogg_free(i64* %83)
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 4
  %88 = load i64*, i64** %87, align 8
  %89 = icmp ne i64* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  %93 = load i64*, i64** %92, align 8
  %94 = call i32 @_ogg_free(i64* %93)
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  %100 = mul i64 %99, 8
  %101 = trunc i64 %100 to i32
  %102 = call i8* @_ogg_malloc(i32 %101)
  %103 = bitcast i8* %102 to i64*
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  store i64* %103, i64** %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 7
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = mul i64 %111, 4
  %113 = trunc i64 %112 to i32
  %114 = call i8* @_ogg_realloc(i32* %108, i32 %113)
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 7
  store i32* %115, i32** %117, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = mul i64 %123, 4
  %125 = trunc i64 %124 to i32
  %126 = call i8* @_ogg_realloc(i32* %120, i32 %125)
  %127 = bitcast i8* %126 to i32*
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 6
  store i32* %127, i32** %129, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = mul i64 %132, 8
  %134 = trunc i64 %133 to i32
  %135 = call i8* @_ogg_malloc(i32 %134)
  %136 = bitcast i8* %135 to i64*
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 3
  store i64* %136, i64** %138, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = mul i64 %141, 8
  %143 = trunc i64 %142 to i32
  %144 = call i8* @_ogg_malloc(i32 %143)
  %145 = bitcast i8* %144 to i64*
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 4
  store i64* %145, i64** %147, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = mul nsw i64 %150, 2
  %152 = mul i64 %151, 8
  %153 = trunc i64 %152 to i32
  %154 = call i8* @_ogg_malloc(i32 %153)
  %155 = bitcast i8* %154 to i64*
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 5
  store i64* %155, i64** %157, align 8
  %158 = load i64, i64* %14, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  %161 = load i64*, i64** %160, align 8
  %162 = load i64, i64* %19, align 8
  %163 = add nsw i64 %162, 1
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  store i64 %158, i64* %164, align 8
  %165 = load i64, i64* %12, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 2
  %168 = load i64*, i64** %167, align 8
  %169 = load i64, i64* %19, align 8
  %170 = getelementptr inbounds i64, i64* %168, i64 %169
  store i64 %165, i64* %170, align 8
  %171 = load i64, i64* %15, align 8
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %95
  br label %176

174:                                              ; preds = %95
  %175 = load i64, i64* %15, align 8
  br label %176

176:                                              ; preds = %174, %173
  %177 = phi i64 [ 0, %173 ], [ %175, %174 ]
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 5
  %180 = load i64*, i64** %179, align 8
  %181 = load i64, i64* %19, align 8
  %182 = mul nsw i64 %181, 2
  %183 = add nsw i64 %182, 1
  %184 = getelementptr inbounds i64, i64* %180, i64 %183
  store i64 %177, i64* %184, align 8
  br label %407

185:                                              ; preds = %9
  store i64* null, i64** %29, align 8
  store i32 0, i32* %30, align 4
  br label %186

186:                                              ; preds = %247, %185
  %187 = load i64, i64* %13, align 8
  %188 = load i64, i64* %22, align 8
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %190, label %248

190:                                              ; preds = %186
  %191 = load i64, i64* %22, align 8
  %192 = load i64, i64* %13, align 8
  %193 = sub nsw i64 %191, %192
  %194 = load i64, i64* @CHUNKSIZE, align 8
  %195 = icmp slt i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = load i64, i64* %13, align 8
  store i64 %197, i64* %33, align 8
  br label %203

198:                                              ; preds = %190
  %199 = load i64, i64* %13, align 8
  %200 = load i64, i64* %22, align 8
  %201 = add nsw i64 %199, %200
  %202 = sdiv i64 %201, 2
  store i64 %202, i64* %33, align 8
  br label %203

203:                                              ; preds = %198, %196
  %204 = load i64, i64* %33, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %204, %207
  br i1 %208, label %209, label %219

209:                                              ; preds = %203
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %211 = load i64, i64* %33, align 8
  %212 = call i64 @_seek_helper(%struct.TYPE_10__* %210, i64 %211)
  store i64 %212, i64* %26, align 8
  %213 = load i64, i64* %26, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load i64, i64* %26, align 8
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %10, align 4
  br label %408

218:                                              ; preds = %209
  br label %219

219:                                              ; preds = %218, %203
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %221 = call i64 @_get_next_page(%struct.TYPE_10__* %220, i32* %25, i32 -1)
  store i64 %221, i64* %27, align 8
  %222 = load i64, i64* %27, align 8
  %223 = load i64, i64* @OV_EREAD, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %219
  %226 = load i64, i64* @OV_EREAD, align 8
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %10, align 4
  br label %408

228:                                              ; preds = %219
  %229 = load i64, i64* %27, align 8
  %230 = icmp slt i64 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %228
  %232 = load i64*, i64** %17, align 8
  %233 = load i32, i32* %18, align 4
  %234 = call i32 @_lookup_page_serialno(i32* %25, i64* %232, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %243, label %236

236:                                              ; preds = %231, %228
  %237 = load i64, i64* %33, align 8
  store i64 %237, i64* %22, align 8
  %238 = load i64, i64* %27, align 8
  %239 = icmp sge i64 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = load i64, i64* %27, align 8
  store i64 %241, i64* %23, align 8
  br label %242

242:                                              ; preds = %240, %236
  br label %247

243:                                              ; preds = %231
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %13, align 8
  br label %247

247:                                              ; preds = %243, %242
  br label %186

248:                                              ; preds = %186
  %249 = load i32, i32* %28, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %34, align 4
  %251 = load i64, i64* %23, align 8
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  store i64 %251, i64* %253, align 8
  br label %254

254:                                              ; preds = %258, %248
  %255 = load i32, i32* %34, align 4
  %256 = load i32, i32* %28, align 4
  %257 = icmp ne i32 %255, %256
  br i1 %257, label %258, label %267

258:                                              ; preds = %254
  %259 = load i32, i32* %28, align 4
  store i32 %259, i32* %34, align 4
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %261 = load i64*, i64** %17, align 8
  %262 = load i32, i32* %18, align 4
  %263 = call i8* @_get_prev_page_serial(%struct.TYPE_10__* %260, i64* %261, i32 %262, i32* %34, i64* %24)
  %264 = ptrtoint i8* %263 to i64
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 0
  store i64 %264, i64* %266, align 8
  br label %254

267:                                              ; preds = %254
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* %23, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %273, label %283

273:                                              ; preds = %267
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %275 = load i64, i64* %23, align 8
  %276 = call i64 @_seek_helper(%struct.TYPE_10__* %274, i64 %275)
  store i64 %276, i64* %26, align 8
  %277 = load i64, i64* %26, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %273
  %280 = load i64, i64* %26, align 8
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %10, align 4
  br label %408

282:                                              ; preds = %273
  br label %283

283:                                              ; preds = %282, %267
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %285 = call i64 @_fetch_headers(%struct.TYPE_10__* %284, i32* %31, i32* %32, i64** %29, i32* %30, i32* null)
  store i64 %285, i64* %26, align 8
  %286 = load i64, i64* %26, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %283
  %289 = load i64, i64* %26, align 8
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %10, align 4
  br label %408

291:                                              ; preds = %283
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  store i32 %295, i32* %28, align 4
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  store i64 %298, i64* %21, align 8
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %300 = call i64 @_initial_pcmoffset(%struct.TYPE_10__* %299, i32* %31)
  store i64 %300, i64* %20, align 8
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %302 = load i64, i64* %23, align 8
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* %14, align 8
  %307 = load i64, i64* %15, align 8
  %308 = load i32, i32* %16, align 4
  %309 = load i64*, i64** %29, align 8
  %310 = load i32, i32* %30, align 4
  %311 = load i64, i64* %19, align 8
  %312 = add nsw i64 %311, 1
  %313 = call i32 @_bisect_forward_serialno(%struct.TYPE_10__* %301, i64 %302, i64 %305, i64 %306, i64 %307, i32 %308, i64* %309, i32 %310, i64 %312)
  %314 = sext i32 %313 to i64
  store i64 %314, i64* %26, align 8
  %315 = load i64, i64* %26, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %291
  %318 = load i64, i64* %26, align 8
  %319 = trunc i64 %318 to i32
  store i32 %319, i32* %10, align 4
  br label %408

320:                                              ; preds = %291
  %321 = load i64*, i64** %29, align 8
  %322 = icmp ne i64* %321, null
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load i64*, i64** %29, align 8
  %325 = call i32 @_ogg_free(i64* %324)
  br label %326

326:                                              ; preds = %323, %320
  %327 = load i64, i64* %23, align 8
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 2
  %330 = load i64*, i64** %329, align 8
  %331 = load i64, i64* %19, align 8
  %332 = add nsw i64 %331, 1
  %333 = getelementptr inbounds i64, i64* %330, i64 %332
  store i64 %327, i64* %333, align 8
  %334 = load i32, i32* %28, align 4
  %335 = sext i32 %334 to i64
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 3
  %338 = load i64*, i64** %337, align 8
  %339 = load i64, i64* %19, align 8
  %340 = add nsw i64 %339, 1
  %341 = getelementptr inbounds i64, i64* %338, i64 %340
  store i64 %335, i64* %341, align 8
  %342 = load i64, i64* %21, align 8
  %343 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i32 0, i32 4
  %345 = load i64*, i64** %344, align 8
  %346 = load i64, i64* %19, align 8
  %347 = add nsw i64 %346, 1
  %348 = getelementptr inbounds i64, i64* %345, i64 %347
  store i64 %342, i64* %348, align 8
  %349 = load i32, i32* %31, align 4
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 7
  %352 = load i32*, i32** %351, align 8
  %353 = load i64, i64* %19, align 8
  %354 = add nsw i64 %353, 1
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  store i32 %349, i32* %355, align 4
  %356 = load i32, i32* %32, align 4
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 6
  %359 = load i32*, i32** %358, align 8
  %360 = load i64, i64* %19, align 8
  %361 = add nsw i64 %360, 1
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  store i32 %356, i32* %362, align 4
  %363 = load i64, i64* %24, align 8
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i32 0, i32 5
  %366 = load i64*, i64** %365, align 8
  %367 = load i64, i64* %19, align 8
  %368 = mul nsw i64 %367, 2
  %369 = add nsw i64 %368, 1
  %370 = getelementptr inbounds i64, i64* %366, i64 %369
  store i64 %363, i64* %370, align 8
  %371 = load i64, i64* %20, align 8
  %372 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 5
  %374 = load i64*, i64** %373, align 8
  %375 = load i64, i64* %19, align 8
  %376 = mul nsw i64 %375, 2
  %377 = add nsw i64 %376, 2
  %378 = getelementptr inbounds i64, i64* %374, i64 %377
  store i64 %371, i64* %378, align 8
  %379 = load i64, i64* %20, align 8
  %380 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %381 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i32 0, i32 5
  %382 = load i64*, i64** %381, align 8
  %383 = load i64, i64* %19, align 8
  %384 = mul nsw i64 %383, 2
  %385 = add nsw i64 %384, 3
  %386 = getelementptr inbounds i64, i64* %382, i64 %385
  %387 = load i64, i64* %386, align 8
  %388 = sub nsw i64 %387, %379
  store i64 %388, i64* %386, align 8
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 5
  %391 = load i64*, i64** %390, align 8
  %392 = load i64, i64* %19, align 8
  %393 = mul nsw i64 %392, 2
  %394 = add nsw i64 %393, 3
  %395 = getelementptr inbounds i64, i64* %391, i64 %394
  %396 = load i64, i64* %395, align 8
  %397 = icmp slt i64 %396, 0
  br i1 %397, label %398, label %406

398:                                              ; preds = %326
  %399 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 5
  %401 = load i64*, i64** %400, align 8
  %402 = load i64, i64* %19, align 8
  %403 = mul nsw i64 %402, 2
  %404 = add nsw i64 %403, 3
  %405 = getelementptr inbounds i64, i64* %401, i64 %404
  store i64 0, i64* %405, align 8
  br label %406

406:                                              ; preds = %398, %326
  br label %407

407:                                              ; preds = %406, %176
  store i32 0, i32* %10, align 4
  br label %408

408:                                              ; preds = %407, %317, %288, %279, %225, %215
  %409 = load i32, i32* %10, align 4
  ret i32 %409
}

declare dso_local i64 @_lookup_serialno(i32, i64*, i32) #1

declare dso_local i8* @_get_prev_page_serial(%struct.TYPE_10__*, i64*, i32, i32*, i64*) #1

declare dso_local i32 @_ogg_free(i64*) #1

declare dso_local i8* @_ogg_malloc(i32) #1

declare dso_local i8* @_ogg_realloc(i32*, i32) #1

declare dso_local i64 @_seek_helper(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @_get_next_page(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @_lookup_page_serialno(i32*, i64*, i32) #1

declare dso_local i64 @_fetch_headers(%struct.TYPE_10__*, i32*, i32*, i64**, i32*, i32*) #1

declare dso_local i64 @_initial_pcmoffset(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
