; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_audioconvert.c_swri_audio_convert.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_audioconvert.c_swri_audio_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32 (i32*, i32*, i32, i32, i32*)*, i32*, i32 (i32**, i32**, i32)* }
%struct.TYPE_6__ = type { i64, i32, i32, i32** }

@SWR_CH_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swri_audio_convert(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %33

29:                                               ; preds = %4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  br label %33

33:                                               ; preds = %29, %28
  %34 = phi i32 [ 1, %28 ], [ %32, %29 ]
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  store i32 %38, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @av_assert0(i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %92

52:                                               ; preds = %33
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  br label %62

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i32 [ %60, %57 ], [ 1, %61 ]
  store i32 %63, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %81, %62
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = ptrtoint i32* %75 to i64
  %77 = load i32, i32* %15, align 4
  %78 = zext i32 %77 to i64
  %79 = or i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %64

84:                                               ; preds = %64
  %85 = load i32, i32* %15, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %85, %88
  %90 = load i32, i32* %13, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %84, %33
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %137

97:                                               ; preds = %92
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  br label %107

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %102
  %108 = phi i32 [ %105, %102 ], [ 1, %106 ]
  store i32 %108, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %126, %107
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = ptrtoint i32* %120 to i64
  %122 = load i32, i32* %17, align 4
  %123 = zext i32 %122 to i64
  %124 = or i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %17, align 4
  br label %126

126:                                              ; preds = %113
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %109

129:                                              ; preds = %109
  %130 = load i32, i32* %17, align 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %130, %133
  %135 = load i32, i32* %13, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %129, %92
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 6
  %140 = load i32 (i32**, i32**, i32)*, i32 (i32**, i32**, i32)** %139, align 8
  %141 = icmp ne i32 (i32**, i32**, i32)* %140, null
  br i1 %141, label %142, label %262

142:                                              ; preds = %137
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %262, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %262, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %9, align 4
  %152 = and i32 %151, -16
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp sge i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i32 @av_assert1(i32 %155)
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp sle i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @av_assert1(i32 %160)
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @SWR_CH_MAX, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %179, label %167

167:                                              ; preds = %150
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  %170 = load i32**, i32*** %169, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %170, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = icmp ne i32* %176, null
  %178 = xor i1 %177, true
  br label %179

179:                                              ; preds = %167, %150
  %180 = phi i1 [ true, %150 ], [ %178, %167 ]
  %181 = zext i1 %180 to i32
  %182 = call i32 @av_assert2(i32 %181)
  %183 = load i32, i32* %11, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %256

185:                                              ; preds = %179
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %188, %191
  br i1 %192, label %193, label %243

193:                                              ; preds = %185
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  br label %203

202:                                              ; preds = %193
  br label %203

203:                                              ; preds = %202, %198
  %204 = phi i32 [ %201, %198 ], [ 1, %202 ]
  store i32 %204, i32* %18, align 4
  store i32 0, i32* %10, align 4
  br label %205

205:                                              ; preds = %239, %203
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %18, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %242

209:                                              ; preds = %205
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 6
  %212 = load i32 (i32**, i32**, i32)*, i32 (i32**, i32**, i32)** %211, align 8
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 3
  %215 = load i32**, i32*** %214, align 8
  %216 = load i32, i32* %10, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32*, i32** %215, i64 %217
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 3
  %221 = load i32**, i32*** %220, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32*, i32** %221, i64 %223
  %225 = load i32, i32* %11, align 4
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %209
  br label %235

231:                                              ; preds = %209
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  br label %235

235:                                              ; preds = %231, %230
  %236 = phi i32 [ 1, %230 ], [ %234, %231 ]
  %237 = mul nsw i32 %225, %236
  %238 = call i32 %212(i32** %218, i32** %224, i32 %237)
  br label %239

239:                                              ; preds = %235
  %240 = load i32, i32* %10, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %10, align 4
  br label %205

242:                                              ; preds = %205
  br label %255

243:                                              ; preds = %185
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 6
  %246 = load i32 (i32**, i32**, i32)*, i32 (i32**, i32**, i32)** %245, align 8
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 3
  %249 = load i32**, i32*** %248, align 8
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 3
  %252 = load i32**, i32*** %251, align 8
  %253 = load i32, i32* %11, align 4
  %254 = call i32 %246(i32** %249, i32** %252, i32 %253)
  br label %255

255:                                              ; preds = %243, %242
  br label %256

256:                                              ; preds = %255, %179
  %257 = load i32, i32* %11, align 4
  %258 = load i32, i32* %9, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  store i32 0, i32* %5, align 4
  br label %363

261:                                              ; preds = %256
  br label %262

262:                                              ; preds = %261, %147, %142, %137
  store i32 0, i32* %10, align 4
  br label %263

263:                                              ; preds = %359, %262
  %264 = load i32, i32* %10, align 4
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp slt i32 %264, %267
  br i1 %268, label %269, label %362

269:                                              ; preds = %263
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 3
  %272 = load i32*, i32** %271, align 8
  %273 = icmp ne i32* %272, null
  br i1 %273, label %274, label %282

274:                                              ; preds = %269
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 3
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %10, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  br label %284

282:                                              ; preds = %269
  %283 = load i32, i32* %10, align 4
  br label %284

284:                                              ; preds = %282, %274
  %285 = phi i32 [ %281, %274 ], [ %283, %282 ]
  store i32 %285, i32* %19, align 4
  %286 = load i32, i32* %19, align 4
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %284
  br label %305

289:                                              ; preds = %284
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %289
  br label %299

295:                                              ; preds = %289
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  br label %299

299:                                              ; preds = %295, %294
  %300 = phi i32 [ 1, %294 ], [ %298, %295 ]
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = mul nsw i32 %300, %303
  br label %305

305:                                              ; preds = %299, %288
  %306 = phi i32 [ 0, %288 ], [ %304, %299 ]
  store i32 %306, i32* %20, align 4
  %307 = load i32, i32* %19, align 4
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %305
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 5
  %312 = load i32*, i32** %311, align 8
  br label %321

313:                                              ; preds = %305
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 3
  %316 = load i32**, i32*** %315, align 8
  %317 = load i32, i32* %19, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32*, i32** %316, i64 %318
  %320 = load i32*, i32** %319, align 8
  br label %321

321:                                              ; preds = %313, %309
  %322 = phi i32* [ %312, %309 ], [ %320, %313 ]
  store i32* %322, i32** %21, align 8
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 3
  %325 = load i32**, i32*** %324, align 8
  %326 = load i32, i32* %10, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32*, i32** %325, i64 %327
  %329 = load i32*, i32** %328, align 8
  store i32* %329, i32** %22, align 8
  %330 = load i32*, i32** %22, align 8
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* %9, align 4
  %333 = mul nsw i32 %331, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %330, i64 %334
  store i32* %335, i32** %23, align 8
  %336 = load i32*, i32** %22, align 8
  %337 = icmp ne i32* %336, null
  br i1 %337, label %339, label %338

338:                                              ; preds = %321
  br label %359

339:                                              ; preds = %321
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 4
  %342 = load i32 (i32*, i32*, i32, i32, i32*)*, i32 (i32*, i32*, i32, i32, i32*)** %341, align 8
  %343 = load i32*, i32** %22, align 8
  %344 = load i32, i32* %11, align 4
  %345 = load i32, i32* %12, align 4
  %346 = mul nsw i32 %344, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %343, i64 %347
  %349 = load i32*, i32** %21, align 8
  %350 = load i32, i32* %11, align 4
  %351 = load i32, i32* %20, align 4
  %352 = mul nsw i32 %350, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %349, i64 %353
  %355 = load i32, i32* %20, align 4
  %356 = load i32, i32* %12, align 4
  %357 = load i32*, i32** %23, align 8
  %358 = call i32 %342(i32* %348, i32* %354, i32 %355, i32 %356, i32* %357)
  br label %359

359:                                              ; preds = %339, %338
  %360 = load i32, i32* %10, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %10, align 4
  br label %263

362:                                              ; preds = %263
  store i32 0, i32* %5, align 4
  br label %363

363:                                              ; preds = %362, %260
  %364 = load i32, i32* %5, align 4
  ret i32 %364
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @av_assert2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
