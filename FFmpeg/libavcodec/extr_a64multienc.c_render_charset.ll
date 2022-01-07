; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_a64multienc.c_render_charset.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_a64multienc.c_render_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32, i32*, i64 }

@render_charset.index1 = internal global [256 x i64] zeroinitializer, align 16
@render_charset.index2 = internal global [256 x i64] zeroinitializer, align 16
@render_charset.dither = internal global [256 x i64] zeroinitializer, align 16
@DITHERSTEPS = common dso_local global i32 0, align 4
@CHARSET_CHARS = common dso_local global i32 0, align 4
@INTERLACED = common dso_local global i64 0, align 8
@interlaced_dither_patterns = common dso_local global i64*** null, align 8
@multi_dither_patterns = common dso_local global i64*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64*, i64*)* @render_charset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_charset(%struct.TYPE_4__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %7, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %122, %3
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %30, label %125

30:                                               ; preds = %27
  %31 = load i32, i32* %19, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %94

37:                                               ; preds = %30
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %19, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %38, %46
  br i1 %47, label %48, label %94

48:                                               ; preds = %37
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %19, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %19, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %56, %63
  store i32 %64, i32* %20, align 4
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %88, %48
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %20, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @DITHERSTEPS, align 4
  %72 = sub nsw i32 %71, 1
  %73 = mul nsw i32 %70, %72
  %74 = load i32, i32* %20, align 4
  %75 = sdiv i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [256 x i64], [256 x i64]* @render_charset.dither, i64 0, i64 %86
  store i64 %76, i64* %87, align 8
  br label %88

88:                                               ; preds = %69
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %65

91:                                               ; preds = %65
  %92 = load i32, i32* %19, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %19, align 4
  br label %94

94:                                               ; preds = %91, %37, %30
  %95 = load i32, i32* %19, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1
  %100 = icmp sge i32 %95, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [256 x i64], [256 x i64]* @render_charset.dither, i64 0, i64 %103
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %101, %94
  %106 = load i32, i32* %19, align 4
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [256 x i64], [256 x i64]* @render_charset.index1, i64 0, i64 %109
  store i64 %107, i64* %110, align 8
  %111 = load i32, i32* %19, align 4
  %112 = add nsw i32 %111, 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 1
  %117 = call i8* @FFMIN(i32 %112, i32 %116)
  %118 = ptrtoint i8* %117 to i64
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [256 x i64], [256 x i64]* @render_charset.index2, i64 0, i64 %120
  store i64 %118, i64* %121, align 8
  br label %122

122:                                              ; preds = %105
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %27

125:                                              ; preds = %27
  store i32 0, i32* %10, align 4
  br label %126

126:                                              ; preds = %403, %125
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @CHARSET_CHARS, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %406

130:                                              ; preds = %126
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %131

131:                                              ; preds = %319, %130
  %132 = load i32, i32* %12, align 4
  %133 = icmp slt i32 %132, 8
  br i1 %133, label %134, label %322

134:                                              ; preds = %131
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %135

135:                                              ; preds = %299, %134
  %136 = load i32, i32* %11, align 4
  %137 = icmp slt i32 %136, 4
  br i1 %137, label %138, label %302

138:                                              ; preds = %135
  %139 = load i32*, i32** %18, align 8
  %140 = load i32, i32* %12, align 4
  %141 = mul nsw i32 %140, 4
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %139, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %15, align 8
  %148 = load i64, i64* %15, align 8
  %149 = getelementptr inbounds [256 x i64], [256 x i64]* @render_charset.index1, i64 0, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp uge i64 %150, 3
  br i1 %151, label %152, label %165

152:                                              ; preds = %138
  %153 = load i64, i64* %15, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = sub i64 %153, %159
  %161 = load i32, i32* %17, align 4
  %162 = sext i32 %161 to i64
  %163 = add i64 %162, %160
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %17, align 4
  br label %165

165:                                              ; preds = %152, %138
  %166 = load i64, i64* %15, align 8
  %167 = getelementptr inbounds [256 x i64], [256 x i64]* @render_charset.index1, i64 0, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = icmp ult i64 %168, 1
  br i1 %169, label %170, label %183

170:                                              ; preds = %165
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %15, align 8
  %178 = sub i64 %176, %177
  %179 = load i32, i32* %16, align 4
  %180 = sext i32 %179 to i64
  %181 = add i64 %180, %178
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %16, align 4
  br label %183

183:                                              ; preds = %170, %165
  %184 = load i64, i64* %8, align 8
  %185 = shl i64 %184, 2
  store i64 %185, i64* %8, align 8
  %186 = load i64, i64* @INTERLACED, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %263

188:                                              ; preds = %183
  %189 = load i64, i64* %9, align 8
  %190 = shl i64 %189, 2
  store i64 %190, i64* %9, align 8
  %191 = load i64***, i64**** @interlaced_dither_patterns, align 8
  %192 = load i64, i64* %15, align 8
  %193 = getelementptr inbounds [256 x i64], [256 x i64]* @render_charset.dither, i64 0, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds i64**, i64*** %191, i64 %194
  %196 = load i64**, i64*** %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = and i32 %197, 3
  %199 = mul nsw i32 %198, 2
  %200 = add nsw i32 %199, 0
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64*, i64** %196, i64 %201
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = and i32 %204, 3
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %203, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %188
  %211 = load i64, i64* %15, align 8
  %212 = getelementptr inbounds [256 x i64], [256 x i64]* @render_charset.index2, i64 0, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = and i64 %213, 3
  %215 = sub i64 3, %214
  %216 = load i64, i64* %8, align 8
  %217 = or i64 %216, %215
  store i64 %217, i64* %8, align 8
  br label %226

218:                                              ; preds = %188
  %219 = load i64, i64* %15, align 8
  %220 = getelementptr inbounds [256 x i64], [256 x i64]* @render_charset.index1, i64 0, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = and i64 %221, 3
  %223 = sub i64 3, %222
  %224 = load i64, i64* %8, align 8
  %225 = or i64 %224, %223
  store i64 %225, i64* %8, align 8
  br label %226

226:                                              ; preds = %218, %210
  %227 = load i64***, i64**** @interlaced_dither_patterns, align 8
  %228 = load i64, i64* %15, align 8
  %229 = getelementptr inbounds [256 x i64], [256 x i64]* @render_charset.dither, i64 0, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds i64**, i64*** %227, i64 %230
  %232 = load i64**, i64*** %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = and i32 %233, 3
  %235 = mul nsw i32 %234, 2
  %236 = add nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i64*, i64** %232, i64 %237
  %239 = load i64*, i64** %238, align 8
  %240 = load i32, i32* %11, align 4
  %241 = and i32 %240, 3
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i64, i64* %239, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %226
  %247 = load i64, i64* %15, align 8
  %248 = getelementptr inbounds [256 x i64], [256 x i64]* @render_charset.index2, i64 0, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = and i64 %249, 3
  %251 = sub i64 3, %250
  %252 = load i64, i64* %9, align 8
  %253 = or i64 %252, %251
  store i64 %253, i64* %9, align 8
  br label %262

254:                                              ; preds = %226
  %255 = load i64, i64* %15, align 8
  %256 = getelementptr inbounds [256 x i64], [256 x i64]* @render_charset.index1, i64 0, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = and i64 %257, 3
  %259 = sub i64 3, %258
  %260 = load i64, i64* %9, align 8
  %261 = or i64 %260, %259
  store i64 %261, i64* %9, align 8
  br label %262

262:                                              ; preds = %254, %246
  br label %298

263:                                              ; preds = %183
  %264 = load i64***, i64**** @multi_dither_patterns, align 8
  %265 = load i64, i64* %15, align 8
  %266 = getelementptr inbounds [256 x i64], [256 x i64]* @render_charset.dither, i64 0, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds i64**, i64*** %264, i64 %267
  %269 = load i64**, i64*** %268, align 8
  %270 = load i32, i32* %12, align 4
  %271 = and i32 %270, 3
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i64*, i64** %269, i64 %272
  %274 = load i64*, i64** %273, align 8
  %275 = load i32, i32* %11, align 4
  %276 = and i32 %275, 3
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i64, i64* %274, i64 %277
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %289

281:                                              ; preds = %263
  %282 = load i64, i64* %15, align 8
  %283 = getelementptr inbounds [256 x i64], [256 x i64]* @render_charset.index2, i64 0, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = and i64 %284, 3
  %286 = sub i64 3, %285
  %287 = load i64, i64* %8, align 8
  %288 = or i64 %287, %286
  store i64 %288, i64* %8, align 8
  br label %297

289:                                              ; preds = %263
  %290 = load i64, i64* %15, align 8
  %291 = getelementptr inbounds [256 x i64], [256 x i64]* @render_charset.index1, i64 0, i64 %290
  %292 = load i64, i64* %291, align 8
  %293 = and i64 %292, 3
  %294 = sub i64 3, %293
  %295 = load i64, i64* %8, align 8
  %296 = or i64 %295, %294
  store i64 %296, i64* %8, align 8
  br label %297

297:                                              ; preds = %289, %281
  br label %298

298:                                              ; preds = %297, %262
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %11, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %11, align 4
  br label %135

302:                                              ; preds = %135
  %303 = load i64, i64* %8, align 8
  %304 = load i64*, i64** %5, align 8
  %305 = load i32, i32* %12, align 4
  %306 = add nsw i32 %305, 0
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i64, i64* %304, i64 %307
  store i64 %303, i64* %308, align 8
  %309 = load i64, i64* @INTERLACED, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %318

311:                                              ; preds = %302
  %312 = load i64, i64* %9, align 8
  %313 = load i64*, i64** %5, align 8
  %314 = load i32, i32* %12, align 4
  %315 = add nsw i32 %314, 2048
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i64, i64* %313, i64 %316
  store i64 %312, i64* %317, align 8
  br label %318

318:                                              ; preds = %311, %302
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %12, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %12, align 4
  br label %131

322:                                              ; preds = %131
  %323 = load i32, i32* %17, align 4
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %389

325:                                              ; preds = %322
  %326 = load i32, i32* %16, align 4
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %328, label %389

328:                                              ; preds = %325
  %329 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 3
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %389

333:                                              ; preds = %328
  %334 = load i32, i32* %16, align 4
  %335 = load i32, i32* %17, align 4
  %336 = icmp sgt i32 %334, %335
  br i1 %336, label %337, label %362

337:                                              ; preds = %333
  store i32 0, i32* %11, align 4
  br label %338

338:                                              ; preds = %358, %337
  %339 = load i32, i32* %11, align 4
  %340 = icmp slt i32 %339, 32
  br i1 %340, label %341, label %361

341:                                              ; preds = %338
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 2
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 3
  %346 = load i32, i32* %345, align 4
  %347 = load i32*, i32** %18, align 8
  %348 = load i32, i32* %11, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = call i8* @FFMIN(i32 %346, i32 %351)
  %353 = ptrtoint i8* %352 to i32
  %354 = load i32*, i32** %18, align 8
  %355 = load i32, i32* %11, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  store i32 %353, i32* %357, align 4
  br label %358

358:                                              ; preds = %341
  %359 = load i32, i32* %11, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %11, align 4
  br label %338

361:                                              ; preds = %338
  br label %386

362:                                              ; preds = %333
  store i32 0, i32* %11, align 4
  br label %363

363:                                              ; preds = %382, %362
  %364 = load i32, i32* %11, align 4
  %365 = icmp slt i32 %364, 32
  br i1 %365, label %366, label %385

366:                                              ; preds = %363
  %367 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i32 0, i32 2
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 1
  %371 = load i32, i32* %370, align 4
  %372 = load i32*, i32** %18, align 8
  %373 = load i32, i32* %11, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @FFMAX(i32 %371, i32 %376)
  %378 = load i32*, i32** %18, align 8
  %379 = load i32, i32* %11, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  store i32 %377, i32* %381, align 4
  br label %382

382:                                              ; preds = %366
  %383 = load i32, i32* %11, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %11, align 4
  br label %363

385:                                              ; preds = %363
  br label %386

386:                                              ; preds = %385, %361
  %387 = load i32, i32* %10, align 4
  %388 = add nsw i32 %387, -1
  store i32 %388, i32* %10, align 4
  br label %402

389:                                              ; preds = %328, %325, %322
  %390 = load i32*, i32** %18, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 32
  store i32* %391, i32** %18, align 8
  %392 = load i64*, i64** %5, align 8
  %393 = getelementptr inbounds i64, i64* %392, i64 8
  store i64* %393, i64** %5, align 8
  %394 = load i32, i32* %17, align 4
  %395 = icmp sgt i32 %394, 0
  %396 = zext i1 %395 to i32
  %397 = sext i32 %396 to i64
  %398 = load i64*, i64** %6, align 8
  %399 = load i32, i32* %10, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i64, i64* %398, i64 %400
  store i64 %397, i64* %401, align 8
  br label %402

402:                                              ; preds = %389, %386
  br label %403

403:                                              ; preds = %402
  %404 = load i32, i32* %10, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %10, align 4
  br label %126

406:                                              ; preds = %126
  ret void
}

declare dso_local i8* @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
