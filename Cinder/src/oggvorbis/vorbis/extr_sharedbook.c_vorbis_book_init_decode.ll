; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_sharedbook.c_vorbis_book_init_decode.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_sharedbook.c_vorbis_book_init_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, i32*, i32*, i32, i32*, i32, i32, i32 }
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
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %499

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
  %76 = call i8* @alloca(i32 %75)
  %77 = bitcast i8* %76 to i32**
  store i32** %77, i32*** %12, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %61
  br label %500

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
  %118 = call i8* @alloca(i32 %117)
  %119 = bitcast i8* %118 to i32*
  store i32* %119, i32** %10, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = call i8* @_ogg_malloc(i32 %123)
  %125 = bitcast i8* %124 to i32*
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
  %182 = call i32 @_book_unquantize(%struct.TYPE_8__* %179, i32 %180, i32* %181)
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 8
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = mul i64 %186, 4
  %188 = trunc i64 %187 to i32
  %189 = call i8* @_ogg_malloc(i32 %188)
  %190 = bitcast i8* %189 to i32*
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 3
  store i32* %190, i32** %192, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %193

193:                                              ; preds = %222, %176
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp slt i32 %194, %197
  br i1 %198, label %199, label %225

199:                                              ; preds = %193
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  %202 = load i64*, i64** %201, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = icmp sgt i64 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %199
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = load i32*, i32** %10, align 8
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %8, align 4
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %212, i64 %219
  store i32 %209, i32* %220, align 4
  br label %221

221:                                              ; preds = %208, %199
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %6, align 4
  br label %193

225:                                              ; preds = %193
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = mul i64 %227, 4
  %229 = trunc i64 %228 to i32
  %230 = call i8* @_ogg_malloc(i32 %229)
  %231 = bitcast i8* %230 to i32*
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 4
  store i32* %231, i32** %233, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %234

234:                                              ; preds = %270, %225
  %235 = load i32, i32* %6, align 4
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %273

240:                                              ; preds = %234
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 1
  %243 = load i64*, i64** %242, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %243, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = icmp sgt i64 %247, 0
  br i1 %248, label %249, label %269

249:                                              ; preds = %240
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 1
  %252 = load i64*, i64** %251, align 8
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = trunc i64 %256 to i32
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 4
  %260 = load i32*, i32** %259, align 8
  %261 = load i32*, i32** %10, align 8
  %262 = load i32, i32* %8, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %8, align 4
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %260, i64 %267
  store i32 %257, i32* %268, align 4
  br label %269

269:                                              ; preds = %249, %240
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %6, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %6, align 4
  br label %234

273:                                              ; preds = %234
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @_ilog(i32 %276)
  %278 = sub nsw i32 %277, 4
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 5
  store i32 %278, i32* %280, align 8
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 8
  %284 = icmp slt i32 %283, 5
  br i1 %284, label %285, label %288

285:                                              ; preds = %273
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 5
  store i32 5, i32* %287, align 8
  br label %288

288:                                              ; preds = %285, %273
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 8
  %292 = icmp sgt i32 %291, 8
  br i1 %292, label %293, label %296

293:                                              ; preds = %288
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 5
  store i32 8, i32* %295, align 8
  br label %296

296:                                              ; preds = %293, %288
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 8
  %300 = shl i32 1, %299
  store i32 %300, i32* %9, align 4
  %301 = load i32, i32* %9, align 4
  %302 = call i32* @_ogg_calloc(i32 %301, i32 4)
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 6
  store i32* %302, i32** %304, align 8
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 7
  store i32 0, i32* %306, align 8
  store i32 0, i32* %6, align 4
  br label %307

307:                                              ; preds = %394, %296
  %308 = load i32, i32* %6, align 4
  %309 = load i32, i32* %8, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %397

311:                                              ; preds = %307
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 7
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 4
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %6, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = icmp slt i32 %314, %321
  br i1 %322, label %323, label %333

323:                                              ; preds = %311
  %324 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 4
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %6, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 7
  store i32 %330, i32* %332, align 8
  br label %333

333:                                              ; preds = %323, %311
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 4
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %6, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 5
  %343 = load i32, i32* %342, align 8
  %344 = icmp sle i32 %340, %343
  br i1 %344, label %345, label %393

345:                                              ; preds = %333
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 2
  %348 = load i32*, i32** %347, align 8
  %349 = load i32, i32* %6, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = call i64 @bitreverse(i32 %352)
  %354 = trunc i64 %353 to i32
  store i32 %354, i32* %14, align 4
  store i32 0, i32* %7, align 4
  br label %355

355:                                              ; preds = %389, %345
  %356 = load i32, i32* %7, align 4
  %357 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 4
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* %6, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = sub nsw i32 %359, %366
  %368 = shl i32 1, %367
  %369 = icmp slt i32 %356, %368
  br i1 %369, label %370, label %392

370:                                              ; preds = %355
  %371 = load i32, i32* %6, align 4
  %372 = add nsw i32 %371, 1
  %373 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %373, i32 0, i32 6
  %375 = load i32*, i32** %374, align 8
  %376 = load i32, i32* %14, align 4
  %377 = load i32, i32* %7, align 4
  %378 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 4
  %380 = load i32*, i32** %379, align 8
  %381 = load i32, i32* %6, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %380, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = shl i32 %377, %384
  %386 = or i32 %376, %385
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %375, i64 %387
  store i32 %372, i32* %388, align 4
  br label %389

389:                                              ; preds = %370
  %390 = load i32, i32* %7, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %7, align 4
  br label %355

392:                                              ; preds = %355
  br label %393

393:                                              ; preds = %392, %333
  br label %394

394:                                              ; preds = %393
  %395 = load i32, i32* %6, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %6, align 4
  br label %307

397:                                              ; preds = %307
  %398 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i32 0, i32 5
  %400 = load i32, i32* %399, align 8
  %401 = sub nsw i32 31, %400
  %402 = zext i32 %401 to i64
  %403 = shl i64 4294967294, %402
  %404 = trunc i64 %403 to i32
  store i32 %404, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %6, align 4
  br label %405

405:                                              ; preds = %495, %397
  %406 = load i32, i32* %6, align 4
  %407 = load i32, i32* %9, align 4
  %408 = icmp slt i32 %406, %407
  br i1 %408, label %409, label %498

409:                                              ; preds = %405
  %410 = load i32, i32* %6, align 4
  %411 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 5
  %413 = load i32, i32* %412, align 8
  %414 = sub nsw i32 32, %413
  %415 = shl i32 %410, %414
  store i32 %415, i32* %18, align 4
  %416 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %416, i32 0, i32 6
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* %18, align 4
  %420 = call i64 @bitreverse(i32 %419)
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %494

424:                                              ; preds = %409
  br label %425

425:                                              ; preds = %443, %424
  %426 = load i64, i64* %16, align 8
  %427 = add nsw i64 %426, 1
  %428 = load i32, i32* %8, align 4
  %429 = sext i32 %428 to i64
  %430 = icmp slt i64 %427, %429
  br i1 %430, label %431, label %441

431:                                              ; preds = %425
  %432 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %433 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %432, i32 0, i32 2
  %434 = load i32*, i32** %433, align 8
  %435 = load i64, i64* %16, align 8
  %436 = add nsw i64 %435, 1
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* %18, align 4
  %440 = icmp sle i32 %438, %439
  br label %441

441:                                              ; preds = %431, %425
  %442 = phi i1 [ false, %425 ], [ %440, %431 ]
  br i1 %442, label %443, label %446

443:                                              ; preds = %441
  %444 = load i64, i64* %16, align 8
  %445 = add nsw i64 %444, 1
  store i64 %445, i64* %16, align 8
  br label %425

446:                                              ; preds = %441
  br label %447

447:                                              ; preds = %465, %446
  %448 = load i64, i64* %17, align 8
  %449 = load i32, i32* %8, align 4
  %450 = sext i32 %449 to i64
  %451 = icmp slt i64 %448, %450
  br i1 %451, label %452, label %463

452:                                              ; preds = %447
  %453 = load i32, i32* %18, align 4
  %454 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %455 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %454, i32 0, i32 2
  %456 = load i32*, i32** %455, align 8
  %457 = load i64, i64* %17, align 8
  %458 = getelementptr inbounds i32, i32* %456, i64 %457
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* %15, align 4
  %461 = and i32 %459, %460
  %462 = icmp sge i32 %453, %461
  br label %463

463:                                              ; preds = %452, %447
  %464 = phi i1 [ false, %447 ], [ %462, %452 ]
  br i1 %464, label %465, label %468

465:                                              ; preds = %463
  %466 = load i64, i64* %17, align 8
  %467 = add nsw i64 %466, 1
  store i64 %467, i64* %17, align 8
  br label %447

468:                                              ; preds = %463
  %469 = load i64, i64* %16, align 8
  store i64 %469, i64* %19, align 8
  %470 = load i32, i32* %8, align 4
  %471 = sext i32 %470 to i64
  %472 = load i64, i64* %17, align 8
  %473 = sub nsw i64 %471, %472
  store i64 %473, i64* %20, align 8
  %474 = load i64, i64* %19, align 8
  %475 = icmp ugt i64 %474, 32767
  br i1 %475, label %476, label %477

476:                                              ; preds = %468
  store i64 32767, i64* %19, align 8
  br label %477

477:                                              ; preds = %476, %468
  %478 = load i64, i64* %20, align 8
  %479 = icmp ugt i64 %478, 32767
  br i1 %479, label %480, label %481

480:                                              ; preds = %477
  store i64 32767, i64* %20, align 8
  br label %481

481:                                              ; preds = %480, %477
  %482 = load i64, i64* %19, align 8
  %483 = shl i64 %482, 15
  %484 = or i64 2147483648, %483
  %485 = load i64, i64* %20, align 8
  %486 = or i64 %484, %485
  %487 = trunc i64 %486 to i32
  %488 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %489 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %488, i32 0, i32 6
  %490 = load i32*, i32** %489, align 8
  %491 = load i32, i32* %18, align 4
  %492 = call i64 @bitreverse(i32 %491)
  %493 = getelementptr inbounds i32, i32* %490, i64 %492
  store i32 %487, i32* %493, align 4
  br label %494

494:                                              ; preds = %481, %409
  br label %495

495:                                              ; preds = %494
  %496 = load i32, i32* %6, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %6, align 4
  br label %405

498:                                              ; preds = %405
  br label %499

499:                                              ; preds = %498, %45
  store i32 0, i32* %3, align 4
  br label %503

500:                                              ; preds = %80
  %501 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %502 = call i32 @vorbis_book_clear(%struct.TYPE_9__* %501)
  store i32 -1, i32* %3, align 4
  br label %503

503:                                              ; preds = %500, %499
  %504 = load i32, i32* %3, align 4
  ret i32 %504
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32* @_make_words(i64*, i32, i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i64 @bitreverse(i32) #1

declare dso_local i32 @qsort(i32**, i32, i32, i32) #1

declare dso_local i8* @_ogg_malloc(i32) #1

declare dso_local i32 @_ogg_free(i32*) #1

declare dso_local i32 @_book_unquantize(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @_ilog(i32) #1

declare dso_local i32* @_ogg_calloc(i32, i32) #1

declare dso_local i32 @vorbis_book_clear(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
