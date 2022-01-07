; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_put_subframe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_put_subframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32**, i32*, i32**, i32**, i32, i32, i32, i32*, i64 }

@SUBSUBFRAMES = common dso_local global i32 0, align 4
@DCAENC_SUBBANDS = common dso_local global i32 0, align 4
@DCA_LFE_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @put_subframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_subframe(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 6
  %11 = load i32, i32* @SUBSUBFRAMES, align 4
  %12 = sub nsw i32 %11, 1
  %13 = call i32 @put_bits(i32* %10, i32 2, i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  %16 = call i32 @put_bits(i32* %15, i32 3, i32 0)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %50, %2
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %46, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @DCAENC_SUBBANDS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, -1
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @put_bits(i32* %30, i32 1, i32 %44)
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %24

49:                                               ; preds = %24
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %17

53:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %98, %53
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %101

60:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %94, %60
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @DCAENC_SUBBANDS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %97

65:                                               ; preds = %61
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %65
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 6
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @put_bits(i32* %80, i32 12, i32 %91)
  br label %93

93:                                               ; preds = %78, %65
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %61

97:                                               ; preds = %61
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %54

101:                                              ; preds = %54
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %161, %101
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %164

108:                                              ; preds = %102
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 6
  br i1 %116, label %117, label %141

117:                                              ; preds = %108
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %137, %117
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @DCAENC_SUBBANDS, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %118
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 6
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @put_bits(i32* %124, i32 5, i32 %135)
  br label %137

137:                                              ; preds = %122
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %118

140:                                              ; preds = %118
  br label %160

141:                                              ; preds = %108
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 6
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 3
  %146 = load i32**, i32*** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* @DCAENC_SUBBANDS, align 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ff_dca_vlc_enc_alloc(i32* %143, i32* %150, i32 %151, i32 %158)
  br label %160

160:                                              ; preds = %141, %140
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %102

164:                                              ; preds = %102
  %165 = load i32, i32* @SUBSUBFRAMES, align 4
  %166 = icmp sgt i32 %165, 1
  br i1 %166, label %167, label %205

167:                                              ; preds = %164
  store i32 0, i32* %8, align 4
  br label %168

168:                                              ; preds = %201, %167
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %174, label %204

174:                                              ; preds = %168
  store i32 0, i32* %6, align 4
  br label %175

175:                                              ; preds = %197, %174
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @DCAENC_SUBBANDS, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %200

179:                                              ; preds = %175
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 3
  %182 = load i32**, i32*** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32*, i32** %182, i64 %184
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %179
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 6
  %195 = call i32 @put_bits(i32* %194, i32 1, i32 0)
  br label %196

196:                                              ; preds = %192, %179
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %6, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %6, align 4
  br label %175

200:                                              ; preds = %175
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %168

204:                                              ; preds = %168
  br label %205

205:                                              ; preds = %204, %164
  store i32 0, i32* %8, align 4
  br label %206

206:                                              ; preds = %250, %205
  %207 = load i32, i32* %8, align 4
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %253

212:                                              ; preds = %206
  store i32 0, i32* %6, align 4
  br label %213

213:                                              ; preds = %246, %212
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* @DCAENC_SUBBANDS, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %249

217:                                              ; preds = %213
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 3
  %220 = load i32**, i32*** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32*, i32** %220, i64 %222
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %245

230:                                              ; preds = %217
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 6
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 4
  %235 = load i32**, i32*** %234, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32*, i32** %235, i64 %237
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @put_bits(i32* %232, i32 7, i32 %243)
  br label %245

245:                                              ; preds = %230, %217
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %6, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %6, align 4
  br label %213

249:                                              ; preds = %213
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %8, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %8, align 4
  br label %206

253:                                              ; preds = %206
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 9
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %289

258:                                              ; preds = %253
  store i32 0, i32* %5, align 4
  br label %259

259:                                              ; preds = %279, %258
  %260 = load i32, i32* %5, align 4
  %261 = load i32, i32* @DCA_LFE_SAMPLES, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %282

263:                                              ; preds = %259
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 6
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 8
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %5, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 7
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @quantize_value(i32 %272, i32 %275)
  %277 = and i32 %276, 255
  %278 = call i32 @put_bits(i32* %265, i32 8, i32 %277)
  br label %279

279:                                              ; preds = %263
  %280 = load i32, i32* %5, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %5, align 4
  br label %259

282:                                              ; preds = %259
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 6
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @put_bits(i32* %284, i32 8, i32 %287)
  br label %289

289:                                              ; preds = %282, %253
  store i32 0, i32* %7, align 4
  br label %290

290:                                              ; preds = %334, %289
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* @SUBSUBFRAMES, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %337

294:                                              ; preds = %290
  store i32 0, i32* %8, align 4
  br label %295

295:                                              ; preds = %330, %294
  %296 = load i32, i32* %8, align 4
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp slt i32 %296, %299
  br i1 %300, label %301, label %333

301:                                              ; preds = %295
  store i32 0, i32* %6, align 4
  br label %302

302:                                              ; preds = %326, %301
  %303 = load i32, i32* %6, align 4
  %304 = load i32, i32* @DCAENC_SUBBANDS, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %329

306:                                              ; preds = %302
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 3
  %309 = load i32**, i32*** %308, align 8
  %310 = load i32, i32* %8, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32*, i32** %309, i64 %311
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %6, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %306
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %321 = load i32, i32* %7, align 4
  %322 = load i32, i32* %6, align 4
  %323 = load i32, i32* %8, align 4
  %324 = call i32 @put_subframe_samples(%struct.TYPE_4__* %320, i32 %321, i32 %322, i32 %323)
  br label %325

325:                                              ; preds = %319, %306
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %6, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %6, align 4
  br label %302

329:                                              ; preds = %302
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %8, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %8, align 4
  br label %295

333:                                              ; preds = %295
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %7, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %7, align 4
  br label %290

337:                                              ; preds = %290
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 6
  %340 = call i32 @put_bits(i32* %339, i32 16, i32 65535)
  ret void
}

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @ff_dca_vlc_enc_alloc(i32*, i32*, i32, i32) #1

declare dso_local i32 @quantize_value(i32, i32) #1

declare dso_local i32 @put_subframe_samples(%struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
