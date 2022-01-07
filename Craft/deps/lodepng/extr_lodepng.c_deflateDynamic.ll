; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_deflateDynamic.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_deflateDynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_19__ = type { i8*, i64 }
%struct.TYPE_21__ = type { i64 }

@NUM_CODE_LENGTH_CODES = common dso_local global i32 0, align 4
@CLCL_ORDER = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32*, i8*, i64, i64, %struct.TYPE_20__*, i32)* @deflateDynamic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflateDynamic(i32* %0, i64* %1, i32* %2, i8* %3, i64 %4, i64 %5, %struct.TYPE_20__* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_19__, align 8
  %19 = alloca %struct.TYPE_21__, align 8
  %20 = alloca %struct.TYPE_21__, align 8
  %21 = alloca %struct.TYPE_21__, align 8
  %22 = alloca %struct.TYPE_19__, align 8
  %23 = alloca %struct.TYPE_19__, align 8
  %24 = alloca %struct.TYPE_19__, align 8
  %25 = alloca %struct.TYPE_19__, align 8
  %26 = alloca %struct.TYPE_19__, align 8
  %27 = alloca %struct.TYPE_19__, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64* %1, i64** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.TYPE_20__* %6, %struct.TYPE_20__** %15, align 8
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %13, align 8
  %44 = sub i64 %42, %43
  store i64 %44, i64* %28, align 8
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %29, align 4
  %46 = call i32 @uivector_init(%struct.TYPE_19__* %18)
  %47 = call i32 @HuffmanTree_init(%struct.TYPE_21__* %19)
  %48 = call i32 @HuffmanTree_init(%struct.TYPE_21__* %20)
  %49 = call i32 @HuffmanTree_init(%struct.TYPE_21__* %21)
  %50 = call i32 @uivector_init(%struct.TYPE_19__* %22)
  %51 = call i32 @uivector_init(%struct.TYPE_19__* %23)
  %52 = call i32 @uivector_init(%struct.TYPE_19__* %24)
  %53 = call i32 @uivector_init(%struct.TYPE_19__* %25)
  %54 = call i32 @uivector_init(%struct.TYPE_19__* %26)
  %55 = call i32 @uivector_init(%struct.TYPE_19__* %27)
  br label %56

56:                                               ; preds = %8
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %645

60:                                               ; preds = %56
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %60
  %66 = load i32*, i32** %11, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @encodeLZ77(%struct.TYPE_19__* %18, i32* %66, i8* %67, i64 %68, i64 %69, i32 %72, i32 %75, i32 %78, i32 %81)
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %65
  br label %645

86:                                               ; preds = %65
  br label %113

87:                                               ; preds = %60
  %88 = load i64, i64* %28, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 @uivector_resize(%struct.TYPE_19__* %18, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = call i32 @ERROR_BREAK(i32 83)
  br label %94

94:                                               ; preds = %92, %87
  %95 = load i64, i64* %13, align 8
  store i64 %95, i64* %32, align 8
  br label %96

96:                                               ; preds = %109, %94
  %97 = load i64, i64* %32, align 8
  %98 = load i64, i64* %14, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %96
  %101 = load i8*, i8** %12, align 8
  %102 = load i64, i64* %32, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i64, i64* %32, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8 %104, i8* %108, align 1
  br label %109

109:                                              ; preds = %100
  %110 = load i64, i64* %32, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %32, align 8
  br label %96

112:                                              ; preds = %96
  br label %113

113:                                              ; preds = %112, %86
  %114 = call i32 @uivector_resizev(%struct.TYPE_19__* %22, i32 286, i32 0)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = call i32 @ERROR_BREAK(i32 83)
  br label %118

118:                                              ; preds = %116, %113
  %119 = call i32 @uivector_resizev(%struct.TYPE_19__* %23, i32 30, i32 0)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = call i32 @ERROR_BREAK(i32 83)
  br label %123

123:                                              ; preds = %121, %118
  store i64 0, i64* %32, align 8
  br label %124

124:                                              ; preds = %163, %123
  %125 = load i64, i64* %32, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ult i64 %125, %127
  br i1 %128, label %129, label %166

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i64, i64* %32, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  store i32 %135, i32* %36, align 4
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i32, i32* %36, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = add i8 %141, 1
  store i8 %142, i8* %140, align 1
  %143 = load i32, i32* %36, align 4
  %144 = icmp ugt i32 %143, 256
  br i1 %144, label %145, label %162

145:                                              ; preds = %129
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load i64, i64* %32, align 8
  %149 = add i64 %148, 2
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  store i32 %152, i32* %37, align 4
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* %37, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = add i8 %158, 1
  store i8 %159, i8* %157, align 1
  %160 = load i64, i64* %32, align 8
  %161 = add i64 %160, 3
  store i64 %161, i64* %32, align 8
  br label %162

162:                                              ; preds = %145, %129
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %32, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %32, align 8
  br label %124

166:                                              ; preds = %124
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 256
  store i8 1, i8* %169, align 1
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = bitcast i8* %171 to i32*
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @HuffmanTree_makeFromFrequencies(%struct.TYPE_21__* %19, i32* %172, i32 257, i64 %174, i32 15)
  store i32 %175, i32* %17, align 4
  %176 = load i32, i32* %17, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %166
  br label %645

179:                                              ; preds = %166
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = bitcast i8* %181 to i32*
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @HuffmanTree_makeFromFrequencies(%struct.TYPE_21__* %20, i32* %182, i32 2, i64 %184, i32 15)
  store i32 %185, i32* %17, align 4
  %186 = load i32, i32* %17, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %179
  br label %645

189:                                              ; preds = %179
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %30, align 8
  %192 = load i64, i64* %30, align 8
  %193 = icmp ugt i64 %192, 286
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  store i64 286, i64* %30, align 8
  br label %195

195:                                              ; preds = %194, %189
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %31, align 8
  %198 = load i64, i64* %31, align 8
  %199 = icmp ugt i64 %198, 30
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  store i64 30, i64* %31, align 8
  br label %201

201:                                              ; preds = %200, %195
  store i64 0, i64* %32, align 8
  br label %202

202:                                              ; preds = %212, %201
  %203 = load i64, i64* %32, align 8
  %204 = load i64, i64* %30, align 8
  %205 = icmp ult i64 %203, %204
  br i1 %205, label %206, label %215

206:                                              ; preds = %202
  %207 = load i64, i64* %32, align 8
  %208 = trunc i64 %207 to i32
  %209 = call i64 @HuffmanTree_getLength(%struct.TYPE_21__* %19, i32 %208)
  %210 = trunc i64 %209 to i32
  %211 = call i32 @uivector_push_back(%struct.TYPE_19__* %25, i32 %210)
  br label %212

212:                                              ; preds = %206
  %213 = load i64, i64* %32, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %32, align 8
  br label %202

215:                                              ; preds = %202
  store i64 0, i64* %32, align 8
  br label %216

216:                                              ; preds = %226, %215
  %217 = load i64, i64* %32, align 8
  %218 = load i64, i64* %31, align 8
  %219 = icmp ult i64 %217, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %216
  %221 = load i64, i64* %32, align 8
  %222 = trunc i64 %221 to i32
  %223 = call i64 @HuffmanTree_getLength(%struct.TYPE_21__* %20, i32 %222)
  %224 = trunc i64 %223 to i32
  %225 = call i32 @uivector_push_back(%struct.TYPE_19__* %25, i32 %224)
  br label %226

226:                                              ; preds = %220
  %227 = load i64, i64* %32, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %32, align 8
  br label %216

229:                                              ; preds = %216
  store i64 0, i64* %32, align 8
  br label %230

230:                                              ; preds = %361, %229
  %231 = load i64, i64* %32, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = trunc i64 %233 to i32
  %235 = zext i32 %234 to i64
  %236 = icmp ult i64 %231, %235
  br i1 %236, label %237, label %364

237:                                              ; preds = %230
  store i32 0, i32* %38, align 4
  br label %238

238:                                              ; preds = %269, %237
  %239 = load i64, i64* %32, align 8
  %240 = load i32, i32* %38, align 4
  %241 = zext i32 %240 to i64
  %242 = add i64 %239, %241
  %243 = add i64 %242, 1
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = trunc i64 %245 to i32
  %247 = zext i32 %246 to i64
  %248 = icmp ult i64 %243, %247
  br i1 %248, label %249, label %267

249:                                              ; preds = %238
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = load i64, i64* %32, align 8
  %253 = load i32, i32* %38, align 4
  %254 = zext i32 %253 to i64
  %255 = add i64 %252, %254
  %256 = add i64 %255, 1
  %257 = getelementptr inbounds i8, i8* %251, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = load i64, i64* %32, align 8
  %263 = getelementptr inbounds i8, i8* %261, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  %266 = icmp eq i32 %259, %265
  br label %267

267:                                              ; preds = %249, %238
  %268 = phi i1 [ false, %238 ], [ %266, %249 ]
  br i1 %268, label %269, label %272

269:                                              ; preds = %267
  %270 = load i32, i32* %38, align 4
  %271 = add i32 %270, 1
  store i32 %271, i32* %38, align 4
  br label %238

272:                                              ; preds = %267
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = load i64, i64* %32, align 8
  %276 = getelementptr inbounds i8, i8* %274, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %308

280:                                              ; preds = %272
  %281 = load i32, i32* %38, align 4
  %282 = icmp uge i32 %281, 2
  br i1 %282, label %283, label %308

283:                                              ; preds = %280
  %284 = load i32, i32* %38, align 4
  %285 = add i32 %284, 1
  store i32 %285, i32* %38, align 4
  %286 = load i32, i32* %38, align 4
  %287 = icmp ule i32 %286, 10
  br i1 %287, label %288, label %293

288:                                              ; preds = %283
  %289 = call i32 @uivector_push_back(%struct.TYPE_19__* %26, i32 17)
  %290 = load i32, i32* %38, align 4
  %291 = sub i32 %290, 3
  %292 = call i32 @uivector_push_back(%struct.TYPE_19__* %26, i32 %291)
  br label %302

293:                                              ; preds = %283
  %294 = load i32, i32* %38, align 4
  %295 = icmp ugt i32 %294, 138
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  store i32 138, i32* %38, align 4
  br label %297

297:                                              ; preds = %296, %293
  %298 = call i32 @uivector_push_back(%struct.TYPE_19__* %26, i32 18)
  %299 = load i32, i32* %38, align 4
  %300 = sub i32 %299, 11
  %301 = call i32 @uivector_push_back(%struct.TYPE_19__* %26, i32 %300)
  br label %302

302:                                              ; preds = %297, %288
  %303 = load i32, i32* %38, align 4
  %304 = sub i32 %303, 1
  %305 = zext i32 %304 to i64
  %306 = load i64, i64* %32, align 8
  %307 = add i64 %306, %305
  store i64 %307, i64* %32, align 8
  br label %360

308:                                              ; preds = %280, %272
  %309 = load i32, i32* %38, align 4
  %310 = icmp uge i32 %309, 3
  br i1 %310, label %311, label %351

311:                                              ; preds = %308
  %312 = load i32, i32* %38, align 4
  %313 = udiv i32 %312, 6
  store i32 %313, i32* %40, align 4
  %314 = load i32, i32* %38, align 4
  %315 = urem i32 %314, 6
  store i32 %315, i32* %41, align 4
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %317 = load i8*, i8** %316, align 8
  %318 = load i64, i64* %32, align 8
  %319 = getelementptr inbounds i8, i8* %317, i64 %318
  %320 = load i8, i8* %319, align 1
  %321 = zext i8 %320 to i32
  %322 = call i32 @uivector_push_back(%struct.TYPE_19__* %26, i32 %321)
  store i64 0, i64* %39, align 8
  br label %323

323:                                              ; preds = %331, %311
  %324 = load i64, i64* %39, align 8
  %325 = load i32, i32* %40, align 4
  %326 = zext i32 %325 to i64
  %327 = icmp ult i64 %324, %326
  br i1 %327, label %328, label %334

328:                                              ; preds = %323
  %329 = call i32 @uivector_push_back(%struct.TYPE_19__* %26, i32 16)
  %330 = call i32 @uivector_push_back(%struct.TYPE_19__* %26, i32 3)
  br label %331

331:                                              ; preds = %328
  %332 = load i64, i64* %39, align 8
  %333 = add i64 %332, 1
  store i64 %333, i64* %39, align 8
  br label %323

334:                                              ; preds = %323
  %335 = load i32, i32* %41, align 4
  %336 = icmp uge i32 %335, 3
  br i1 %336, label %337, label %342

337:                                              ; preds = %334
  %338 = call i32 @uivector_push_back(%struct.TYPE_19__* %26, i32 16)
  %339 = load i32, i32* %41, align 4
  %340 = sub i32 %339, 3
  %341 = call i32 @uivector_push_back(%struct.TYPE_19__* %26, i32 %340)
  br label %346

342:                                              ; preds = %334
  %343 = load i32, i32* %41, align 4
  %344 = load i32, i32* %38, align 4
  %345 = sub i32 %344, %343
  store i32 %345, i32* %38, align 4
  br label %346

346:                                              ; preds = %342, %337
  %347 = load i32, i32* %38, align 4
  %348 = zext i32 %347 to i64
  %349 = load i64, i64* %32, align 8
  %350 = add i64 %349, %348
  store i64 %350, i64* %32, align 8
  br label %359

351:                                              ; preds = %308
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %353 = load i8*, i8** %352, align 8
  %354 = load i64, i64* %32, align 8
  %355 = getelementptr inbounds i8, i8* %353, i64 %354
  %356 = load i8, i8* %355, align 1
  %357 = zext i8 %356 to i32
  %358 = call i32 @uivector_push_back(%struct.TYPE_19__* %26, i32 %357)
  br label %359

359:                                              ; preds = %351, %346
  br label %360

360:                                              ; preds = %359, %302
  br label %361

361:                                              ; preds = %360
  %362 = load i64, i64* %32, align 8
  %363 = add i64 %362, 1
  store i64 %363, i64* %32, align 8
  br label %230

364:                                              ; preds = %230
  %365 = load i32, i32* @NUM_CODE_LENGTH_CODES, align 4
  %366 = call i32 @uivector_resizev(%struct.TYPE_19__* %24, i32 %365, i32 0)
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %370, label %368

368:                                              ; preds = %364
  %369 = call i32 @ERROR_BREAK(i32 83)
  br label %370

370:                                              ; preds = %368, %364
  store i64 0, i64* %32, align 8
  br label %371

371:                                              ; preds = %399, %370
  %372 = load i64, i64* %32, align 8
  %373 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = icmp ult i64 %372, %374
  br i1 %375, label %376, label %402

376:                                              ; preds = %371
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %378 = load i8*, i8** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %380 = load i8*, i8** %379, align 8
  %381 = load i64, i64* %32, align 8
  %382 = getelementptr inbounds i8, i8* %380, i64 %381
  %383 = load i8, i8* %382, align 1
  %384 = zext i8 %383 to i64
  %385 = getelementptr inbounds i8, i8* %378, i64 %384
  %386 = load i8, i8* %385, align 1
  %387 = add i8 %386, 1
  store i8 %387, i8* %385, align 1
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %389 = load i8*, i8** %388, align 8
  %390 = load i64, i64* %32, align 8
  %391 = getelementptr inbounds i8, i8* %389, i64 %390
  %392 = load i8, i8* %391, align 1
  %393 = zext i8 %392 to i32
  %394 = icmp sge i32 %393, 16
  br i1 %394, label %395, label %398

395:                                              ; preds = %376
  %396 = load i64, i64* %32, align 8
  %397 = add i64 %396, 1
  store i64 %397, i64* %32, align 8
  br label %398

398:                                              ; preds = %395, %376
  br label %399

399:                                              ; preds = %398
  %400 = load i64, i64* %32, align 8
  %401 = add i64 %400, 1
  store i64 %401, i64* %32, align 8
  br label %371

402:                                              ; preds = %371
  %403 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %404 = load i8*, i8** %403, align 8
  %405 = bitcast i8* %404 to i32*
  %406 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = trunc i64 %407 to i32
  %409 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  %411 = call i32 @HuffmanTree_makeFromFrequencies(%struct.TYPE_21__* %21, i32* %405, i32 %408, i64 %410, i32 7)
  store i32 %411, i32* %17, align 4
  %412 = load i32, i32* %17, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %402
  br label %645

415:                                              ; preds = %402
  %416 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = trunc i64 %417 to i32
  %419 = call i32 @uivector_resize(%struct.TYPE_19__* %27, i32 %418)
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %423, label %421

421:                                              ; preds = %415
  %422 = call i32 @ERROR_BREAK(i32 83)
  br label %423

423:                                              ; preds = %421, %415
  store i64 0, i64* %32, align 8
  br label %424

424:                                              ; preds = %440, %423
  %425 = load i64, i64* %32, align 8
  %426 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = icmp ult i64 %425, %427
  br i1 %428, label %429, label %443

429:                                              ; preds = %424
  %430 = load i32*, i32** @CLCL_ORDER, align 8
  %431 = load i64, i64* %32, align 8
  %432 = getelementptr inbounds i32, i32* %430, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = call i64 @HuffmanTree_getLength(%struct.TYPE_21__* %21, i32 %433)
  %435 = trunc i64 %434 to i8
  %436 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %437 = load i8*, i8** %436, align 8
  %438 = load i64, i64* %32, align 8
  %439 = getelementptr inbounds i8, i8* %437, i64 %438
  store i8 %435, i8* %439, align 1
  br label %440

440:                                              ; preds = %429
  %441 = load i64, i64* %32, align 8
  %442 = add i64 %441, 1
  store i64 %442, i64* %32, align 8
  br label %424

443:                                              ; preds = %424
  br label %444

444:                                              ; preds = %469, %443
  %445 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %446 = load i8*, i8** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %448 = load i64, i64* %447, align 8
  %449 = sub i64 %448, 1
  %450 = getelementptr inbounds i8, i8* %446, i64 %449
  %451 = load i8, i8* %450, align 1
  %452 = zext i8 %451 to i32
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %458

454:                                              ; preds = %444
  %455 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %456 = load i64, i64* %455, align 8
  %457 = icmp ugt i64 %456, 4
  br label %458

458:                                              ; preds = %454, %444
  %459 = phi i1 [ false, %444 ], [ %457, %454 ]
  br i1 %459, label %460, label %470

460:                                              ; preds = %458
  %461 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %462 = load i64, i64* %461, align 8
  %463 = sub i64 %462, 1
  %464 = trunc i64 %463 to i32
  %465 = call i32 @uivector_resize(%struct.TYPE_19__* %27, i32 %464)
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %469, label %467

467:                                              ; preds = %460
  %468 = call i32 @ERROR_BREAK(i32 83)
  br label %469

469:                                              ; preds = %467, %460
  br label %444

470:                                              ; preds = %458
  %471 = load i32, i32* %17, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %474

473:                                              ; preds = %470
  br label %645

474:                                              ; preds = %470
  %475 = load i64*, i64** %10, align 8
  %476 = load i32*, i32** %9, align 8
  %477 = load i32, i32* %29, align 4
  %478 = call i32 @addBitToStream(i64* %475, i32* %476, i32 %477)
  %479 = load i64*, i64** %10, align 8
  %480 = load i32*, i32** %9, align 8
  %481 = call i32 @addBitToStream(i64* %479, i32* %480, i32 0)
  %482 = load i64*, i64** %10, align 8
  %483 = load i32*, i32** %9, align 8
  %484 = call i32 @addBitToStream(i64* %482, i32* %483, i32 1)
  %485 = load i64, i64* %30, align 8
  %486 = sub i64 %485, 257
  %487 = trunc i64 %486 to i32
  store i32 %487, i32* %33, align 4
  %488 = load i64, i64* %31, align 8
  %489 = sub i64 %488, 1
  %490 = trunc i64 %489 to i32
  store i32 %490, i32* %34, align 4
  %491 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %492 = load i64, i64* %491, align 8
  %493 = trunc i64 %492 to i32
  %494 = sub i32 %493, 4
  store i32 %494, i32* %35, align 4
  br label %495

495:                                              ; preds = %510, %474
  %496 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %497 = load i8*, i8** %496, align 8
  %498 = load i32, i32* %35, align 4
  %499 = add i32 %498, 4
  %500 = sub i32 %499, 1
  %501 = zext i32 %500 to i64
  %502 = getelementptr inbounds i8, i8* %497, i64 %501
  %503 = load i8, i8* %502, align 1
  %504 = icmp ne i8 %503, 0
  br i1 %504, label %508, label %505

505:                                              ; preds = %495
  %506 = load i32, i32* %35, align 4
  %507 = icmp ugt i32 %506, 0
  br label %508

508:                                              ; preds = %505, %495
  %509 = phi i1 [ false, %495 ], [ %507, %505 ]
  br i1 %509, label %510, label %513

510:                                              ; preds = %508
  %511 = load i32, i32* %35, align 4
  %512 = add i32 %511, -1
  store i32 %512, i32* %35, align 4
  br label %495

513:                                              ; preds = %508
  %514 = load i64*, i64** %10, align 8
  %515 = load i32*, i32** %9, align 8
  %516 = load i32, i32* %33, align 4
  %517 = call i32 @addBitsToStream(i64* %514, i32* %515, i32 %516, i32 5)
  %518 = load i64*, i64** %10, align 8
  %519 = load i32*, i32** %9, align 8
  %520 = load i32, i32* %34, align 4
  %521 = call i32 @addBitsToStream(i64* %518, i32* %519, i32 %520, i32 5)
  %522 = load i64*, i64** %10, align 8
  %523 = load i32*, i32** %9, align 8
  %524 = load i32, i32* %35, align 4
  %525 = call i32 @addBitsToStream(i64* %522, i32* %523, i32 %524, i32 4)
  store i64 0, i64* %32, align 8
  br label %526

526:                                              ; preds = %542, %513
  %527 = load i64, i64* %32, align 8
  %528 = load i32, i32* %35, align 4
  %529 = add i32 %528, 4
  %530 = zext i32 %529 to i64
  %531 = icmp ult i64 %527, %530
  br i1 %531, label %532, label %545

532:                                              ; preds = %526
  %533 = load i64*, i64** %10, align 8
  %534 = load i32*, i32** %9, align 8
  %535 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %536 = load i8*, i8** %535, align 8
  %537 = load i64, i64* %32, align 8
  %538 = getelementptr inbounds i8, i8* %536, i64 %537
  %539 = load i8, i8* %538, align 1
  %540 = zext i8 %539 to i32
  %541 = call i32 @addBitsToStream(i64* %533, i32* %534, i32 %540, i32 3)
  br label %542

542:                                              ; preds = %532
  %543 = load i64, i64* %32, align 8
  %544 = add i64 %543, 1
  store i64 %544, i64* %32, align 8
  br label %526

545:                                              ; preds = %526
  store i64 0, i64* %32, align 8
  br label %546

546:                                              ; preds = %628, %545
  %547 = load i64, i64* %32, align 8
  %548 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %549 = load i64, i64* %548, align 8
  %550 = icmp ult i64 %547, %549
  br i1 %550, label %551, label %631

551:                                              ; preds = %546
  %552 = load i64*, i64** %10, align 8
  %553 = load i32*, i32** %9, align 8
  %554 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %555 = load i8*, i8** %554, align 8
  %556 = load i64, i64* %32, align 8
  %557 = getelementptr inbounds i8, i8* %555, i64 %556
  %558 = load i8, i8* %557, align 1
  %559 = zext i8 %558 to i32
  %560 = call i32 @HuffmanTree_getCode(%struct.TYPE_21__* %21, i32 %559)
  %561 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %562 = load i8*, i8** %561, align 8
  %563 = load i64, i64* %32, align 8
  %564 = getelementptr inbounds i8, i8* %562, i64 %563
  %565 = load i8, i8* %564, align 1
  %566 = zext i8 %565 to i32
  %567 = call i64 @HuffmanTree_getLength(%struct.TYPE_21__* %21, i32 %566)
  %568 = call i32 @addHuffmanSymbol(i64* %552, i32* %553, i32 %560, i64 %567)
  %569 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %570 = load i8*, i8** %569, align 8
  %571 = load i64, i64* %32, align 8
  %572 = getelementptr inbounds i8, i8* %570, i64 %571
  %573 = load i8, i8* %572, align 1
  %574 = zext i8 %573 to i32
  %575 = icmp eq i32 %574, 16
  br i1 %575, label %576, label %587

576:                                              ; preds = %551
  %577 = load i64*, i64** %10, align 8
  %578 = load i32*, i32** %9, align 8
  %579 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %580 = load i8*, i8** %579, align 8
  %581 = load i64, i64* %32, align 8
  %582 = add i64 %581, 1
  store i64 %582, i64* %32, align 8
  %583 = getelementptr inbounds i8, i8* %580, i64 %582
  %584 = load i8, i8* %583, align 1
  %585 = zext i8 %584 to i32
  %586 = call i32 @addBitsToStream(i64* %577, i32* %578, i32 %585, i32 2)
  br label %627

587:                                              ; preds = %551
  %588 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %589 = load i8*, i8** %588, align 8
  %590 = load i64, i64* %32, align 8
  %591 = getelementptr inbounds i8, i8* %589, i64 %590
  %592 = load i8, i8* %591, align 1
  %593 = zext i8 %592 to i32
  %594 = icmp eq i32 %593, 17
  br i1 %594, label %595, label %606

595:                                              ; preds = %587
  %596 = load i64*, i64** %10, align 8
  %597 = load i32*, i32** %9, align 8
  %598 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %599 = load i8*, i8** %598, align 8
  %600 = load i64, i64* %32, align 8
  %601 = add i64 %600, 1
  store i64 %601, i64* %32, align 8
  %602 = getelementptr inbounds i8, i8* %599, i64 %601
  %603 = load i8, i8* %602, align 1
  %604 = zext i8 %603 to i32
  %605 = call i32 @addBitsToStream(i64* %596, i32* %597, i32 %604, i32 3)
  br label %626

606:                                              ; preds = %587
  %607 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %608 = load i8*, i8** %607, align 8
  %609 = load i64, i64* %32, align 8
  %610 = getelementptr inbounds i8, i8* %608, i64 %609
  %611 = load i8, i8* %610, align 1
  %612 = zext i8 %611 to i32
  %613 = icmp eq i32 %612, 18
  br i1 %613, label %614, label %625

614:                                              ; preds = %606
  %615 = load i64*, i64** %10, align 8
  %616 = load i32*, i32** %9, align 8
  %617 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %618 = load i8*, i8** %617, align 8
  %619 = load i64, i64* %32, align 8
  %620 = add i64 %619, 1
  store i64 %620, i64* %32, align 8
  %621 = getelementptr inbounds i8, i8* %618, i64 %620
  %622 = load i8, i8* %621, align 1
  %623 = zext i8 %622 to i32
  %624 = call i32 @addBitsToStream(i64* %615, i32* %616, i32 %623, i32 7)
  br label %625

625:                                              ; preds = %614, %606
  br label %626

626:                                              ; preds = %625, %595
  br label %627

627:                                              ; preds = %626, %576
  br label %628

628:                                              ; preds = %627
  %629 = load i64, i64* %32, align 8
  %630 = add i64 %629, 1
  store i64 %630, i64* %32, align 8
  br label %546

631:                                              ; preds = %546
  %632 = load i64*, i64** %10, align 8
  %633 = load i32*, i32** %9, align 8
  %634 = call i32 @writeLZ77data(i64* %632, i32* %633, %struct.TYPE_19__* %18, %struct.TYPE_21__* %19, %struct.TYPE_21__* %20)
  %635 = call i64 @HuffmanTree_getLength(%struct.TYPE_21__* %19, i32 256)
  %636 = icmp eq i64 %635, 0
  br i1 %636, label %637, label %639

637:                                              ; preds = %631
  %638 = call i32 @ERROR_BREAK(i32 64)
  br label %639

639:                                              ; preds = %637, %631
  %640 = load i64*, i64** %10, align 8
  %641 = load i32*, i32** %9, align 8
  %642 = call i32 @HuffmanTree_getCode(%struct.TYPE_21__* %19, i32 256)
  %643 = call i64 @HuffmanTree_getLength(%struct.TYPE_21__* %19, i32 256)
  %644 = call i32 @addHuffmanSymbol(i64* %640, i32* %641, i32 %642, i64 %643)
  br label %645

645:                                              ; preds = %639, %473, %414, %188, %178, %85, %56
  %646 = call i32 @uivector_cleanup(%struct.TYPE_19__* %18)
  %647 = call i32 @HuffmanTree_cleanup(%struct.TYPE_21__* %19)
  %648 = call i32 @HuffmanTree_cleanup(%struct.TYPE_21__* %20)
  %649 = call i32 @HuffmanTree_cleanup(%struct.TYPE_21__* %21)
  %650 = call i32 @uivector_cleanup(%struct.TYPE_19__* %22)
  %651 = call i32 @uivector_cleanup(%struct.TYPE_19__* %23)
  %652 = call i32 @uivector_cleanup(%struct.TYPE_19__* %24)
  %653 = call i32 @uivector_cleanup(%struct.TYPE_19__* %26)
  %654 = call i32 @uivector_cleanup(%struct.TYPE_19__* %25)
  %655 = call i32 @uivector_cleanup(%struct.TYPE_19__* %27)
  %656 = load i32, i32* %17, align 4
  ret i32 %656
}

declare dso_local i32 @uivector_init(%struct.TYPE_19__*) #1

declare dso_local i32 @HuffmanTree_init(%struct.TYPE_21__*) #1

declare dso_local i32 @encodeLZ77(%struct.TYPE_19__*, i32*, i8*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @uivector_resize(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ERROR_BREAK(i32) #1

declare dso_local i32 @uivector_resizev(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @HuffmanTree_makeFromFrequencies(%struct.TYPE_21__*, i32*, i32, i64, i32) #1

declare dso_local i32 @uivector_push_back(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @HuffmanTree_getLength(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @addBitToStream(i64*, i32*, i32) #1

declare dso_local i32 @addBitsToStream(i64*, i32*, i32, i32) #1

declare dso_local i32 @addHuffmanSymbol(i64*, i32*, i32, i64) #1

declare dso_local i32 @HuffmanTree_getCode(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @writeLZ77data(i64*, i32*, %struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @uivector_cleanup(%struct.TYPE_19__*) #1

declare dso_local i32 @HuffmanTree_cleanup(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
