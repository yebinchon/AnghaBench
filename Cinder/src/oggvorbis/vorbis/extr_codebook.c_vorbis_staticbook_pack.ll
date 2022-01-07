; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_codebook.c_vorbis_staticbook_pack.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_codebook.c_vorbis_staticbook_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vorbis_staticbook_pack(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @oggpack_write(i32* %13, i32 5653314, i32 24)
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @oggpack_write(i32* %15, i32 %18, i32 16)
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @oggpack_write(i32* %20, i32 %23, i32 24)
  store i64 1, i64* %6, align 8
  br label %25

25:                                               ; preds = %58, %2
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %26, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %25
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub nsw i64 %36, 1
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = sub nsw i64 %51, 1
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %47, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %41, %32
  br label %61

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %6, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %6, align 8
  br label %25

61:                                               ; preds = %56, %25
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 1, i32* %8, align 4
  br label %69

69:                                               ; preds = %68, %61
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %156

72:                                               ; preds = %69
  store i64 0, i64* %9, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @oggpack_write(i32* %73, i32 1, i32 1)
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = call i32 @oggpack_write(i32* %75, i32 %81, i32 5)
  store i64 1, i64* %6, align 8
  br label %83

83:                                               ; preds = %139, %72
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %84, %88
  br i1 %89, label %90, label %142

90:                                               ; preds = %83
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %10, align 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = sub nsw i64 %101, 1
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %11, align 1
  %106 = load i8, i8* %10, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8, i8* %11, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp sgt i32 %107, %109
  br i1 %110, label %111, label %138

111:                                              ; preds = %90
  %112 = load i8, i8* %11, align 1
  %113 = sext i8 %112 to i64
  store i64 %113, i64* %7, align 8
  br label %114

114:                                              ; preds = %134, %111
  %115 = load i64, i64* %7, align 8
  %116 = load i8, i8* %10, align 1
  %117 = sext i8 %116 to i64
  %118 = icmp slt i64 %115, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %114
  %120 = load i32*, i32** %5, align 8
  %121 = load i64, i64* %6, align 8
  %122 = load i64, i64* %9, align 8
  %123 = sub nsw i64 %121, %122
  %124 = trunc i64 %123 to i32
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %9, align 8
  %130 = sub nsw i64 %128, %129
  %131 = call i32 @_ilog(i64 %130)
  %132 = call i32 @oggpack_write(i32* %120, i32 %124, i32 %131)
  %133 = load i64, i64* %6, align 8
  store i64 %133, i64* %9, align 8
  br label %134

134:                                              ; preds = %119
  %135 = load i64, i64* %7, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %7, align 8
  br label %114

137:                                              ; preds = %114
  br label %138

138:                                              ; preds = %137, %90
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %6, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %6, align 8
  br label %83

142:                                              ; preds = %83
  %143 = load i32*, i32** %5, align 8
  %144 = load i64, i64* %6, align 8
  %145 = load i64, i64* %9, align 8
  %146 = sub nsw i64 %144, %145
  %147 = trunc i64 %146 to i32
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %9, align 8
  %153 = sub nsw i64 %151, %152
  %154 = call i32 @_ilog(i64 %153)
  %155 = call i32 @oggpack_write(i32* %143, i32 %147, i32 %154)
  br label %249

156:                                              ; preds = %69
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 @oggpack_write(i32* %157, i32 0, i32 1)
  store i64 0, i64* %6, align 8
  br label %159

159:                                              ; preds = %176, %156
  %160 = load i64, i64* %6, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = icmp slt i64 %160, %164
  br i1 %165, label %166, label %179

166:                                              ; preds = %159
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* %6, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  br label %179

175:                                              ; preds = %166
  br label %176

176:                                              ; preds = %175
  %177 = load i64, i64* %6, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %6, align 8
  br label %159

179:                                              ; preds = %174, %159
  %180 = load i64, i64* %6, align 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = icmp eq i64 %180, %184
  br i1 %185, label %186, label %210

186:                                              ; preds = %179
  %187 = load i32*, i32** %5, align 8
  %188 = call i32 @oggpack_write(i32* %187, i32 0, i32 1)
  store i64 0, i64* %6, align 8
  br label %189

189:                                              ; preds = %206, %186
  %190 = load i64, i64* %6, align 8
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = icmp slt i64 %190, %194
  br i1 %195, label %196, label %209

196:                                              ; preds = %189
  %197 = load i32*, i32** %5, align 8
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* %6, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 %203, 1
  %205 = call i32 @oggpack_write(i32* %197, i32 %204, i32 5)
  br label %206

206:                                              ; preds = %196
  %207 = load i64, i64* %6, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %6, align 8
  br label %189

209:                                              ; preds = %189
  br label %248

210:                                              ; preds = %179
  %211 = load i32*, i32** %5, align 8
  %212 = call i32 @oggpack_write(i32* %211, i32 1, i32 1)
  store i64 0, i64* %6, align 8
  br label %213

213:                                              ; preds = %244, %210
  %214 = load i64, i64* %6, align 8
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = icmp slt i64 %214, %218
  br i1 %219, label %220, label %247

220:                                              ; preds = %213
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = load i64, i64* %6, align 8
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %220
  %229 = load i32*, i32** %5, align 8
  %230 = call i32 @oggpack_write(i32* %229, i32 0, i32 1)
  br label %243

231:                                              ; preds = %220
  %232 = load i32*, i32** %5, align 8
  %233 = call i32 @oggpack_write(i32* %232, i32 1, i32 1)
  %234 = load i32*, i32** %5, align 8
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = load i64, i64* %6, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = sub nsw i32 %240, 1
  %242 = call i32 @oggpack_write(i32* %234, i32 %241, i32 5)
  br label %243

243:                                              ; preds = %231, %228
  br label %244

244:                                              ; preds = %243
  %245 = load i64, i64* %6, align 8
  %246 = add nsw i64 %245, 1
  store i64 %246, i64* %6, align 8
  br label %213

247:                                              ; preds = %213
  br label %248

248:                                              ; preds = %247, %209
  br label %249

249:                                              ; preds = %248, %142
  %250 = load i32*, i32** %5, align 8
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @oggpack_write(i32* %250, i32 %253, i32 4)
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  switch i32 %257, label %325 [
    i32 0, label %258
    i32 1, label %259
    i32 2, label %259
  ]

258:                                              ; preds = %249
  br label %326

259:                                              ; preds = %249, %249
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 8
  %262 = load i32*, i32** %261, align 8
  %263 = icmp ne i32* %262, null
  br i1 %263, label %265, label %264

264:                                              ; preds = %259
  store i32 -1, i32* %3, align 4
  br label %327

265:                                              ; preds = %259
  %266 = load i32*, i32** %5, align 8
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @oggpack_write(i32* %266, i32 %269, i32 32)
  %271 = load i32*, i32** %5, align 8
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @oggpack_write(i32* %271, i32 %274, i32 32)
  %276 = load i32*, i32** %5, align 8
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 6
  %279 = load i32, i32* %278, align 4
  %280 = sub nsw i32 %279, 1
  %281 = call i32 @oggpack_write(i32* %276, i32 %280, i32 4)
  %282 = load i32*, i32** %5, align 8
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 7
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @oggpack_write(i32* %282, i32 %285, i32 1)
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  switch i32 %289, label %301 [
    i32 1, label %290
    i32 2, label %293
  ]

290:                                              ; preds = %265
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %292 = call i32 @_book_maptype1_quantvals(%struct.TYPE_4__* %291)
  store i32 %292, i32* %12, align 4
  br label %302

293:                                              ; preds = %265
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = mul nsw i32 %296, %299
  store i32 %300, i32* %12, align 4
  br label %302

301:                                              ; preds = %265
  store i32 -1, i32* %12, align 4
  br label %302

302:                                              ; preds = %301, %293, %290
  store i64 0, i64* %6, align 8
  br label %303

303:                                              ; preds = %321, %302
  %304 = load i64, i64* %6, align 8
  %305 = load i32, i32* %12, align 4
  %306 = sext i32 %305 to i64
  %307 = icmp slt i64 %304, %306
  br i1 %307, label %308, label %324

308:                                              ; preds = %303
  %309 = load i32*, i32** %5, align 8
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 8
  %312 = load i32*, i32** %311, align 8
  %313 = load i64, i64* %6, align 8
  %314 = getelementptr inbounds i32, i32* %312, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @labs(i32 %315)
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 6
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @oggpack_write(i32* %309, i32 %316, i32 %319)
  br label %321

321:                                              ; preds = %308
  %322 = load i64, i64* %6, align 8
  %323 = add nsw i64 %322, 1
  store i64 %323, i64* %6, align 8
  br label %303

324:                                              ; preds = %303
  br label %326

325:                                              ; preds = %249
  store i32 -1, i32* %3, align 4
  br label %327

326:                                              ; preds = %324, %258
  store i32 0, i32* %3, align 4
  br label %327

327:                                              ; preds = %326, %325, %264
  %328 = load i32, i32* %3, align 4
  ret i32 %328
}

declare dso_local i32 @oggpack_write(i32*, i32, i32) #1

declare dso_local i32 @_ilog(i64) #1

declare dso_local i32 @_book_maptype1_quantvals(%struct.TYPE_4__*) #1

declare dso_local i32 @labs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
