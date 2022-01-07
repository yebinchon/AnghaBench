; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_vorbisfile.c__bisect_forward_serialno.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_vorbisfile.c__bisect_forward_serialno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32*, i32*, i32*, i32*, i32, i32*, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@CHUNKSIZE = common dso_local global i64 0, align 8
@OV_EREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i32, i32*, i32, i64)* @_bisect_forward_serialno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bisect_forward_serialno(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %22, align 4
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %23, align 4
  store i32 -1, i32* %24, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %28, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32*, i32** %17, align 8
  %44 = load i32, i32* %18, align 4
  %45 = call i64 @_lookup_serialno(i32 %42, i32* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %184

47:                                               ; preds = %9
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %53, %47
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %28, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32, i32* %28, align 4
  store i32 %54, i32* %16, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32*, i32** %17, align 8
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @_get_prev_page_serial(%struct.TYPE_10__* %55, i32 %56, i32* %57, i32 %58, i32* %16, i32* %15)
  store i32 %59, i32* %13, align 4
  br label %49

60:                                               ; preds = %49
  %61 = load i64, i64* %19, align 8
  %62 = add nsw i64 %61, 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @_ogg_free(i32* %72)
  br label %74

74:                                               ; preds = %69, %60
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @_ogg_free(i32* %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @_ogg_free(i32* %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  %99 = mul i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = call i8* @_ogg_malloc(i32 %100)
  %102 = bitcast i8* %101 to i32*
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  store i32* %102, i32** %104, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 7
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = mul i64 %110, 4
  %112 = trunc i64 %111 to i32
  %113 = call i8* @_ogg_realloc(i32* %107, i32 %112)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 7
  store i32* %114, i32** %116, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = mul i64 %122, 4
  %124 = trunc i64 %123 to i32
  %125 = call i8* @_ogg_realloc(i32* %119, i32 %124)
  %126 = bitcast i8* %125 to i32*
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 6
  store i32* %126, i32** %128, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = mul i64 %131, 4
  %133 = trunc i64 %132 to i32
  %134 = call i8* @_ogg_malloc(i32 %133)
  %135 = bitcast i8* %134 to i32*
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  store i32* %135, i32** %137, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = mul i64 %140, 4
  %142 = trunc i64 %141 to i32
  %143 = call i8* @_ogg_malloc(i32 %142)
  %144 = bitcast i8* %143 to i32*
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 3
  store i32* %144, i32** %146, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = mul nsw i64 %149, 2
  %151 = mul i64 %150, 4
  %152 = trunc i64 %151 to i32
  %153 = call i8* @_ogg_malloc(i32 %152)
  %154 = bitcast i8* %153 to i32*
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 4
  store i32* %154, i32** %156, align 8
  %157 = load i32, i32* %14, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* %19, align 8
  %162 = add nsw i64 %161, 1
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %157, i32* %163, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* %19, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32 %164, i32* %169, align 4
  %170 = load i32, i32* %15, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %94
  br label %175

173:                                              ; preds = %94
  %174 = load i32, i32* %15, align 4
  br label %175

175:                                              ; preds = %173, %172
  %176 = phi i32 [ 0, %172 ], [ %174, %173 ]
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* %19, align 8
  %181 = mul nsw i64 %180, 2
  %182 = add nsw i64 %181, 1
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  store i32 %176, i32* %183, align 4
  br label %382

184:                                              ; preds = %9
  store i32* null, i32** %29, align 8
  store i32 0, i32* %30, align 4
  %185 = load i32, i32* %28, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %33, align 4
  br label %187

187:                                              ; preds = %240, %184
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %22, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %241

191:                                              ; preds = %187
  %192 = load i32, i32* %22, align 4
  %193 = load i32, i32* %13, align 4
  %194 = sub nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* @CHUNKSIZE, align 8
  %197 = icmp slt i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %191
  %199 = load i32, i32* %13, align 4
  store i32 %199, i32* %34, align 4
  br label %205

200:                                              ; preds = %191
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* %22, align 4
  %203 = add nsw i32 %201, %202
  %204 = sdiv i32 %203, 2
  store i32 %204, i32* %34, align 4
  br label %205

205:                                              ; preds = %200, %198
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %207 = load i32, i32* %34, align 4
  %208 = call i32 @_seek_helper(%struct.TYPE_10__* %206, i32 %207)
  store i32 %208, i32* %26, align 4
  %209 = load i32, i32* %26, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %205
  %212 = load i32, i32* %26, align 4
  store i32 %212, i32* %10, align 4
  br label %383

213:                                              ; preds = %205
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %215 = call i32 @_get_next_page(%struct.TYPE_10__* %214, i32* %25, i32 -1)
  store i32 %215, i32* %27, align 4
  %216 = load i32, i32* %27, align 4
  %217 = load i32, i32* @OV_EREAD, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %213
  %220 = load i32, i32* @OV_EREAD, align 4
  store i32 %220, i32* %10, align 4
  br label %383

221:                                              ; preds = %213
  %222 = load i32, i32* %27, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %221
  %225 = load i32*, i32** %17, align 8
  %226 = load i32, i32* %18, align 4
  %227 = call i32 @_lookup_page_serialno(i32* %25, i32* %225, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %236, label %229

229:                                              ; preds = %224, %221
  %230 = load i32, i32* %34, align 4
  store i32 %230, i32* %22, align 4
  %231 = load i32, i32* %27, align 4
  %232 = icmp sge i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = load i32, i32* %27, align 4
  store i32 %234, i32* %23, align 4
  br label %235

235:                                              ; preds = %233, %229
  br label %240

236:                                              ; preds = %224
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  store i32 %239, i32* %13, align 4
  br label %240

240:                                              ; preds = %236, %235
  br label %187

241:                                              ; preds = %187
  %242 = load i32, i32* %23, align 4
  store i32 %242, i32* %13, align 4
  br label %243

243:                                              ; preds = %247, %241
  %244 = load i32, i32* %33, align 4
  %245 = load i32, i32* %28, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %254

247:                                              ; preds = %243
  %248 = load i32, i32* %28, align 4
  store i32 %248, i32* %33, align 4
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %250 = load i32, i32* %13, align 4
  %251 = load i32*, i32** %17, align 8
  %252 = load i32, i32* %18, align 4
  %253 = call i32 @_get_prev_page_serial(%struct.TYPE_10__* %249, i32 %250, i32* %251, i32 %252, i32* %33, i32* %24)
  store i32 %253, i32* %13, align 4
  br label %243

254:                                              ; preds = %243
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %256 = load i32, i32* %23, align 4
  %257 = call i32 @_seek_helper(%struct.TYPE_10__* %255, i32 %256)
  store i32 %257, i32* %26, align 4
  %258 = load i32, i32* %26, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %254
  %261 = load i32, i32* %26, align 4
  store i32 %261, i32* %10, align 4
  br label %383

262:                                              ; preds = %254
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %264 = call i32 @_fetch_headers(%struct.TYPE_10__* %263, i32* %31, i32* %32, i32** %29, i32* %30, i32* null)
  store i32 %264, i32* %26, align 4
  %265 = load i32, i32* %26, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %262
  %268 = load i32, i32* %26, align 4
  store i32 %268, i32* %10, align 4
  br label %383

269:                                              ; preds = %262
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  store i32 %273, i32* %28, align 4
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 8
  store i32 %276, i32* %21, align 4
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %278 = call i32 @_initial_pcmoffset(%struct.TYPE_10__* %277, i32* %31)
  store i32 %278, i32* %20, align 4
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %280 = load i32, i32* %23, align 4
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* %14, align 4
  %285 = load i32, i32* %15, align 4
  %286 = load i32, i32* %16, align 4
  %287 = load i32*, i32** %29, align 8
  %288 = load i32, i32* %30, align 4
  %289 = load i64, i64* %19, align 8
  %290 = add nsw i64 %289, 1
  %291 = call i32 @_bisect_forward_serialno(%struct.TYPE_10__* %279, i32 %280, i32 %283, i32 %284, i32 %285, i32 %286, i32* %287, i32 %288, i64 %290)
  store i32 %291, i32* %26, align 4
  %292 = load i32, i32* %26, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %269
  %295 = load i32, i32* %26, align 4
  store i32 %295, i32* %10, align 4
  br label %383

296:                                              ; preds = %269
  %297 = load i32*, i32** %29, align 8
  %298 = icmp ne i32* %297, null
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load i32*, i32** %29, align 8
  %301 = call i32 @_ogg_free(i32* %300)
  br label %302

302:                                              ; preds = %299, %296
  %303 = load i32, i32* %23, align 4
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = load i64, i64* %19, align 8
  %308 = add nsw i64 %307, 1
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  store i32 %303, i32* %309, align 4
  %310 = load i32, i32* %28, align 4
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 2
  %313 = load i32*, i32** %312, align 8
  %314 = load i64, i64* %19, align 8
  %315 = add nsw i64 %314, 1
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  store i32 %310, i32* %316, align 4
  %317 = load i32, i32* %21, align 4
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 3
  %320 = load i32*, i32** %319, align 8
  %321 = load i64, i64* %19, align 8
  %322 = add nsw i64 %321, 1
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  store i32 %317, i32* %323, align 4
  %324 = load i32, i32* %31, align 4
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 7
  %327 = load i32*, i32** %326, align 8
  %328 = load i64, i64* %19, align 8
  %329 = add nsw i64 %328, 1
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  store i32 %324, i32* %330, align 4
  %331 = load i32, i32* %32, align 4
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 6
  %334 = load i32*, i32** %333, align 8
  %335 = load i64, i64* %19, align 8
  %336 = add nsw i64 %335, 1
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  store i32 %331, i32* %337, align 4
  %338 = load i32, i32* %24, align 4
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 4
  %341 = load i32*, i32** %340, align 8
  %342 = load i64, i64* %19, align 8
  %343 = mul nsw i64 %342, 2
  %344 = add nsw i64 %343, 1
  %345 = getelementptr inbounds i32, i32* %341, i64 %344
  store i32 %338, i32* %345, align 4
  %346 = load i32, i32* %20, align 4
  %347 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 4
  %349 = load i32*, i32** %348, align 8
  %350 = load i64, i64* %19, align 8
  %351 = mul nsw i64 %350, 2
  %352 = add nsw i64 %351, 2
  %353 = getelementptr inbounds i32, i32* %349, i64 %352
  store i32 %346, i32* %353, align 4
  %354 = load i32, i32* %20, align 4
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 4
  %357 = load i32*, i32** %356, align 8
  %358 = load i64, i64* %19, align 8
  %359 = mul nsw i64 %358, 2
  %360 = add nsw i64 %359, 3
  %361 = getelementptr inbounds i32, i32* %357, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = sub nsw i32 %362, %354
  store i32 %363, i32* %361, align 4
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i32 0, i32 4
  %366 = load i32*, i32** %365, align 8
  %367 = load i64, i64* %19, align 8
  %368 = mul nsw i64 %367, 2
  %369 = add nsw i64 %368, 3
  %370 = getelementptr inbounds i32, i32* %366, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %373, label %381

373:                                              ; preds = %302
  %374 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 4
  %376 = load i32*, i32** %375, align 8
  %377 = load i64, i64* %19, align 8
  %378 = mul nsw i64 %377, 2
  %379 = add nsw i64 %378, 3
  %380 = getelementptr inbounds i32, i32* %376, i64 %379
  store i32 0, i32* %380, align 4
  br label %381

381:                                              ; preds = %373, %302
  br label %382

382:                                              ; preds = %381, %175
  store i32 0, i32* %10, align 4
  br label %383

383:                                              ; preds = %382, %294, %267, %260, %219, %211
  %384 = load i32, i32* %10, align 4
  ret i32 %384
}

declare dso_local i64 @_lookup_serialno(i32, i32*, i32) #1

declare dso_local i32 @_get_prev_page_serial(%struct.TYPE_10__*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @_ogg_free(i32*) #1

declare dso_local i8* @_ogg_malloc(i32) #1

declare dso_local i8* @_ogg_realloc(i32*, i32) #1

declare dso_local i32 @_seek_helper(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @_get_next_page(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @_lookup_page_serialno(i32*, i32*, i32) #1

declare dso_local i32 @_fetch_headers(%struct.TYPE_10__*, i32*, i32*, i32**, i32*, i32*) #1

declare dso_local i32 @_initial_pcmoffset(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
