; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_sharedbook.c_vorbis_book_init_decode.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_sharedbook.c_vorbis_book_init_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, i32*, i8*, i32, i32*, i8, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64*, i32 }

@sort32a = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vorbis_book_init_decode(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 0, i32* %8, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = call i32 @memset(%struct.TYPE_9__* %21, i32 0, i32 64)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %42, %2
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %29
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 10
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %507

61:                                               ; preds = %45
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32* @_make_words(i64* %64, i32 %67, i32 %70)
  store i32* %71, i32** %11, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 8, %73
  %75 = trunc i64 %74 to i32
  %76 = call i64 @alloca(i32 %75)
  %77 = inttoptr i64 %76 to i32**
  store i32** %77, i32*** %12, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %61
  br label %508

81:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %106, %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %109

86:                                               ; preds = %82
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @bitreverse(i32 %91)
  %93 = trunc i64 %92 to i32
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32**, i32*** %12, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  store i32* %101, i32** %105, align 8
  br label %106

106:                                              ; preds = %86
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %82

109:                                              ; preds = %82
  %110 = load i32**, i32*** %12, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @sort32a, align 4
  %113 = call i32 @qsort(i32** %110, i32 %111, i32 8, i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = trunc i64 %116 to i32
  %118 = call i64 @alloca(i32 %117)
  %119 = inttoptr i64 %118 to i32*
  store i32* %119, i32** %10, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = call i64 @_ogg_malloc(i32 %123)
  %125 = inttoptr i64 %124 to i32*
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  store i32* %125, i32** %127, align 8
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %149, %109
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %128
  %133 = load i32**, i32*** %12, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = ptrtoint i32* %137 to i64
  %140 = ptrtoint i32* %138 to i64
  %141 = sub i64 %139, %140
  %142 = sdiv exact i64 %141, 4
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32*, i32** %10, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %144, i32* %148, align 4
  br label %149

149:                                              ; preds = %132
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %128

152:                                              ; preds = %128
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %173, %152
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %176

157:                                              ; preds = %153
  %158 = load i32*, i32** %11, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %165, i64 %171
  store i32 %162, i32* %172, align 4
  br label %173

173:                                              ; preds = %157
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %6, align 4
  br label %153

176:                                              ; preds = %153
  %177 = load i32*, i32** %11, align 8
  %178 = call i32 @_ogg_free(i32* %177)
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %180 = load i32, i32* %8, align 4
  %181 = load i32*, i32** %10, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 8
  %184 = call i32 @_book_unquantize(%struct.TYPE_8__* %179, i32 %180, i32* %181, i32* %183)
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 9
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = mul i64 %188, 4
  %190 = trunc i64 %189 to i32
  %191 = call i64 @_ogg_malloc(i32 %190)
  %192 = inttoptr i64 %191 to i32*
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 3
  store i32* %192, i32** %194, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %195

195:                                              ; preds = %224, %176
  %196 = load i32, i32* %6, align 4
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %227

201:                                              ; preds = %195
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  %204 = load i64*, i64** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = icmp sgt i64 %208, 0
  br i1 %209, label %210, label %223

210:                                              ; preds = %201
  %211 = load i32, i32* %6, align 4
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = load i32*, i32** %10, align 8
  %216 = load i32, i32* %8, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %8, align 4
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %214, i64 %221
  store i32 %211, i32* %222, align 4
  br label %223

223:                                              ; preds = %210, %201
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %6, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %6, align 4
  br label %195

227:                                              ; preds = %195
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = mul i64 %229, 1
  %231 = trunc i64 %230 to i32
  %232 = call i64 @_ogg_malloc(i32 %231)
  %233 = inttoptr i64 %232 to i8*
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 4
  store i8* %233, i8** %235, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %236

236:                                              ; preds = %272, %227
  %237 = load i32, i32* %6, align 4
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp slt i32 %237, %240
  br i1 %241, label %242, label %275

242:                                              ; preds = %236
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 1
  %245 = load i64*, i64** %244, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64, i64* %245, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = icmp sgt i64 %249, 0
  br i1 %250, label %251, label %271

251:                                              ; preds = %242
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  %254 = load i64*, i64** %253, align 8
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i64, i64* %254, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = trunc i64 %258 to i8
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 4
  %262 = load i8*, i8** %261, align 8
  %263 = load i32*, i32** %10, align 8
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %262, i64 %269
  store i8 %259, i8* %270, align 1
  br label %271

271:                                              ; preds = %251, %242
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %6, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %6, align 4
  br label %236

275:                                              ; preds = %236
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @_ilog(i32 %278)
  %280 = sub nsw i32 %279, 4
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 5
  store i32 %280, i32* %282, align 8
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 8
  %286 = icmp slt i32 %285, 5
  br i1 %286, label %287, label %290

287:                                              ; preds = %275
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 5
  store i32 5, i32* %289, align 8
  br label %290

290:                                              ; preds = %287, %275
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 8
  %294 = icmp sgt i32 %293, 8
  br i1 %294, label %295, label %298

295:                                              ; preds = %290
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 5
  store i32 8, i32* %297, align 8
  br label %298

298:                                              ; preds = %295, %290
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 8
  %302 = shl i32 1, %301
  store i32 %302, i32* %9, align 4
  %303 = load i32, i32* %9, align 4
  %304 = call i64 @_ogg_calloc(i32 %303, i32 4)
  %305 = inttoptr i64 %304 to i32*
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 6
  store i32* %305, i32** %307, align 8
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 7
  store i8 0, i8* %309, align 8
  store i32 0, i32* %6, align 4
  br label %310

310:                                              ; preds = %402, %298
  %311 = load i32, i32* %6, align 4
  %312 = load i32, i32* %8, align 4
  %313 = icmp slt i32 %311, %312
  br i1 %313, label %314, label %405

314:                                              ; preds = %310
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 7
  %317 = load i8, i8* %316, align 8
  %318 = sext i8 %317 to i32
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 4
  %321 = load i8*, i8** %320, align 8
  %322 = load i32, i32* %6, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %321, i64 %323
  %325 = load i8, i8* %324, align 1
  %326 = sext i8 %325 to i32
  %327 = icmp slt i32 %318, %326
  br i1 %327, label %328, label %338

328:                                              ; preds = %314
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 4
  %331 = load i8*, i8** %330, align 8
  %332 = load i32, i32* %6, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8, i8* %331, i64 %333
  %335 = load i8, i8* %334, align 1
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 7
  store i8 %335, i8* %337, align 8
  br label %338

338:                                              ; preds = %328, %314
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 4
  %341 = load i8*, i8** %340, align 8
  %342 = load i32, i32* %6, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %341, i64 %343
  %345 = load i8, i8* %344, align 1
  %346 = sext i8 %345 to i32
  %347 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 5
  %349 = load i32, i32* %348, align 8
  %350 = icmp sle i32 %346, %349
  br i1 %350, label %351, label %401

351:                                              ; preds = %338
  %352 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 2
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %6, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = call i64 @bitreverse(i32 %358)
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %14, align 4
  store i32 0, i32* %7, align 4
  br label %361

361:                                              ; preds = %397, %351
  %362 = load i32, i32* %7, align 4
  %363 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 5
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 4
  %368 = load i8*, i8** %367, align 8
  %369 = load i32, i32* %6, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8, i8* %368, i64 %370
  %372 = load i8, i8* %371, align 1
  %373 = sext i8 %372 to i32
  %374 = sub nsw i32 %365, %373
  %375 = shl i32 1, %374
  %376 = icmp slt i32 %362, %375
  br i1 %376, label %377, label %400

377:                                              ; preds = %361
  %378 = load i32, i32* %6, align 4
  %379 = add nsw i32 %378, 1
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 6
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* %14, align 4
  %384 = load i32, i32* %7, align 4
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 4
  %387 = load i8*, i8** %386, align 8
  %388 = load i32, i32* %6, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8, i8* %387, i64 %389
  %391 = load i8, i8* %390, align 1
  %392 = sext i8 %391 to i32
  %393 = shl i32 %384, %392
  %394 = or i32 %383, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %382, i64 %395
  store i32 %379, i32* %396, align 4
  br label %397

397:                                              ; preds = %377
  %398 = load i32, i32* %7, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %7, align 4
  br label %361

400:                                              ; preds = %361
  br label %401

401:                                              ; preds = %400, %338
  br label %402

402:                                              ; preds = %401
  %403 = load i32, i32* %6, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %6, align 4
  br label %310

405:                                              ; preds = %310
  %406 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %406, i32 0, i32 5
  %408 = load i32, i32* %407, align 8
  %409 = sub nsw i32 31, %408
  %410 = zext i32 %409 to i64
  %411 = shl i64 4294967294, %410
  %412 = trunc i64 %411 to i32
  store i32 %412, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %6, align 4
  br label %413

413:                                              ; preds = %503, %405
  %414 = load i32, i32* %6, align 4
  %415 = load i32, i32* %9, align 4
  %416 = icmp slt i32 %414, %415
  br i1 %416, label %417, label %506

417:                                              ; preds = %413
  %418 = load i32, i32* %6, align 4
  %419 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %419, i32 0, i32 5
  %421 = load i32, i32* %420, align 8
  %422 = sub nsw i32 32, %421
  %423 = shl i32 %418, %422
  store i32 %423, i32* %18, align 4
  %424 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %424, i32 0, i32 6
  %426 = load i32*, i32** %425, align 8
  %427 = load i32, i32* %18, align 4
  %428 = call i64 @bitreverse(i32 %427)
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %502

432:                                              ; preds = %417
  br label %433

433:                                              ; preds = %451, %432
  %434 = load i64, i64* %16, align 8
  %435 = add nsw i64 %434, 1
  %436 = load i32, i32* %8, align 4
  %437 = sext i32 %436 to i64
  %438 = icmp slt i64 %435, %437
  br i1 %438, label %439, label %449

439:                                              ; preds = %433
  %440 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %440, i32 0, i32 2
  %442 = load i32*, i32** %441, align 8
  %443 = load i64, i64* %16, align 8
  %444 = add nsw i64 %443, 1
  %445 = getelementptr inbounds i32, i32* %442, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* %18, align 4
  %448 = icmp sle i32 %446, %447
  br label %449

449:                                              ; preds = %439, %433
  %450 = phi i1 [ false, %433 ], [ %448, %439 ]
  br i1 %450, label %451, label %454

451:                                              ; preds = %449
  %452 = load i64, i64* %16, align 8
  %453 = add nsw i64 %452, 1
  store i64 %453, i64* %16, align 8
  br label %433

454:                                              ; preds = %449
  br label %455

455:                                              ; preds = %473, %454
  %456 = load i64, i64* %17, align 8
  %457 = load i32, i32* %8, align 4
  %458 = sext i32 %457 to i64
  %459 = icmp slt i64 %456, %458
  br i1 %459, label %460, label %471

460:                                              ; preds = %455
  %461 = load i32, i32* %18, align 4
  %462 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %463 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %462, i32 0, i32 2
  %464 = load i32*, i32** %463, align 8
  %465 = load i64, i64* %17, align 8
  %466 = getelementptr inbounds i32, i32* %464, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = load i32, i32* %15, align 4
  %469 = and i32 %467, %468
  %470 = icmp sge i32 %461, %469
  br label %471

471:                                              ; preds = %460, %455
  %472 = phi i1 [ false, %455 ], [ %470, %460 ]
  br i1 %472, label %473, label %476

473:                                              ; preds = %471
  %474 = load i64, i64* %17, align 8
  %475 = add nsw i64 %474, 1
  store i64 %475, i64* %17, align 8
  br label %455

476:                                              ; preds = %471
  %477 = load i64, i64* %16, align 8
  store i64 %477, i64* %19, align 8
  %478 = load i32, i32* %8, align 4
  %479 = sext i32 %478 to i64
  %480 = load i64, i64* %17, align 8
  %481 = sub nsw i64 %479, %480
  store i64 %481, i64* %20, align 8
  %482 = load i64, i64* %19, align 8
  %483 = icmp ugt i64 %482, 32767
  br i1 %483, label %484, label %485

484:                                              ; preds = %476
  store i64 32767, i64* %19, align 8
  br label %485

485:                                              ; preds = %484, %476
  %486 = load i64, i64* %20, align 8
  %487 = icmp ugt i64 %486, 32767
  br i1 %487, label %488, label %489

488:                                              ; preds = %485
  store i64 32767, i64* %20, align 8
  br label %489

489:                                              ; preds = %488, %485
  %490 = load i64, i64* %19, align 8
  %491 = shl i64 %490, 15
  %492 = or i64 2147483648, %491
  %493 = load i64, i64* %20, align 8
  %494 = or i64 %492, %493
  %495 = trunc i64 %494 to i32
  %496 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %496, i32 0, i32 6
  %498 = load i32*, i32** %497, align 8
  %499 = load i32, i32* %18, align 4
  %500 = call i64 @bitreverse(i32 %499)
  %501 = getelementptr inbounds i32, i32* %498, i64 %500
  store i32 %495, i32* %501, align 4
  br label %502

502:                                              ; preds = %489, %417
  br label %503

503:                                              ; preds = %502
  %504 = load i32, i32* %6, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %6, align 4
  br label %413

506:                                              ; preds = %413
  br label %507

507:                                              ; preds = %506, %45
  store i32 0, i32* %3, align 4
  br label %511

508:                                              ; preds = %80
  %509 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %510 = call i32 @vorbis_book_clear(%struct.TYPE_9__* %509)
  store i32 -1, i32* %3, align 4
  br label %511

511:                                              ; preds = %508, %507
  %512 = load i32, i32* %3, align 4
  ret i32 %512
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32* @_make_words(i64*, i32, i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i64 @bitreverse(i32) #1

declare dso_local i32 @qsort(i32**, i32, i32, i32) #1

declare dso_local i64 @_ogg_malloc(i32) #1

declare dso_local i32 @_ogg_free(i32*) #1

declare dso_local i32 @_book_unquantize(%struct.TYPE_8__*, i32, i32*, i32*) #1

declare dso_local i32 @_ilog(i32) #1

declare dso_local i64 @_ogg_calloc(i32, i32) #1

declare dso_local i32 @vorbis_book_clear(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
