; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp5.c_vp5_parse_coeff_models.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp5.c_vp5_parse_coeff_models.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__**, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32**, i32****, i8******, i8**** }

@vp5_dccv_pct = common dso_local global i32** null, align 8
@VP56_FRAME_CURRENT = common dso_local global i64 0, align 8
@vp5_ract_pct = common dso_local global i32**** null, align 8
@vp5_dccv_lc = common dso_local global i32*** null, align 8
@vp5_ract_lc = common dso_local global i32***** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @vp5_parse_coeff_models to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp5_parse_coeff_models(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca [11 x i8*], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i32* %12, i32** %3, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds [11 x i8*], [11 x i8*]* %5, i64 0, i64 0
  %17 = call i32 @memset(i8** %16, i32 128, i32 88)
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %91, %1
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %94

21:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %87, %21
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 11
  br i1 %24, label %25, label %90

25:                                               ; preds = %22
  %26 = load i32*, i32** %3, align 8
  %27 = load i32**, i32*** @vp5_dccv_pct, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @vp56_rac_get_prob_branchy(i32* %26, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %25
  %39 = load i32*, i32** %3, align 8
  %40 = call i8* @vp56_rac_gets_nn(i32* %39, i32 7)
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [11 x i8*], [11 x i8*]* %5, i64 0, i64 %42
  store i8* %40, i8** %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [11 x i8*], [11 x i8*]* %5, i64 0, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %48, i32* %58, align 4
  br label %86

59:                                               ; preds = %25
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %61, align 8
  %63 = load i64, i64* @VP56_FRAME_CURRENT, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %62, i64 %63
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %59
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [11 x i8*], [11 x i8*]* %5, i64 0, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %74, i32* %84, align 4
  br label %85

85:                                               ; preds = %69, %59
  br label %86

86:                                               ; preds = %85, %38
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %22

90:                                               ; preds = %22
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %18

94:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %208, %94
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %96, 3
  br i1 %97, label %98, label %211

98:                                               ; preds = %95
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %204, %98
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %100, 2
  br i1 %101, label %102, label %207

102:                                              ; preds = %99
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %200, %102
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 6
  br i1 %105, label %106, label %203

106:                                              ; preds = %103
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %196, %106
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 11
  br i1 %109, label %110, label %199

110:                                              ; preds = %107
  %111 = load i32*, i32** %3, align 8
  %112 = load i32****, i32***** @vp5_ract_pct, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32***, i32**** %112, i64 %114
  %116 = load i32***, i32**** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32**, i32*** %116, i64 %118
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @vp56_rac_get_prob_branchy(i32* %111, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %160

131:                                              ; preds = %110
  %132 = load i32*, i32** %3, align 8
  %133 = call i8* @vp56_rac_gets_nn(i32* %132, i32 7)
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [11 x i8*], [11 x i8*]* %5, i64 0, i64 %135
  store i8* %133, i8** %136, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [11 x i8*], [11 x i8*]* %5, i64 0, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = ptrtoint i8* %140 to i32
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32****, i32***** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32***, i32**** %144, i64 %146
  %148 = load i32***, i32**** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32**, i32*** %148, i64 %150
  %152 = load i32**, i32*** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %152, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %141, i32* %159, align 4
  br label %195

160:                                              ; preds = %110
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %162, align 8
  %164 = load i64, i64* @VP56_FRAME_CURRENT, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %163, i64 %164
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %194

170:                                              ; preds = %160
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [11 x i8*], [11 x i8*]* %5, i64 0, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = ptrtoint i8* %174 to i32
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load i32****, i32***** %177, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32***, i32**** %178, i64 %180
  %182 = load i32***, i32**** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32**, i32*** %182, i64 %184
  %186 = load i32**, i32*** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %175, i32* %193, align 4
  br label %194

194:                                              ; preds = %170, %160
  br label %195

195:                                              ; preds = %194, %131
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %6, align 4
  br label %107

199:                                              ; preds = %107
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %103

203:                                              ; preds = %103
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %10, align 4
  br label %99

207:                                              ; preds = %99
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %95

211:                                              ; preds = %95
  store i32 0, i32* %10, align 4
  br label %212

212:                                              ; preds = %284, %211
  %213 = load i32, i32* %10, align 4
  %214 = icmp slt i32 %213, 2
  br i1 %214, label %215, label %287

215:                                              ; preds = %212
  store i32 0, i32* %8, align 4
  br label %216

216:                                              ; preds = %280, %215
  %217 = load i32, i32* %8, align 4
  %218 = icmp slt i32 %217, 36
  br i1 %218, label %219, label %283

219:                                              ; preds = %216
  store i32 0, i32* %6, align 4
  br label %220

220:                                              ; preds = %276, %219
  %221 = load i32, i32* %6, align 4
  %222 = icmp slt i32 %221, 5
  br i1 %222, label %223, label %279

223:                                              ; preds = %220
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i32**, i32*** %225, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32*, i32** %226, i64 %228
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32***, i32**** @vp5_dccv_lc, align 8
  %236 = load i32, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32**, i32*** %235, i64 %237
  %239 = load i32**, i32*** %238, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32*, i32** %239, i64 %241
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = mul nsw i32 %234, %245
  %247 = add nsw i32 %246, 128
  %248 = ashr i32 %247, 8
  %249 = load i32***, i32**** @vp5_dccv_lc, align 8
  %250 = load i32, i32* %6, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32**, i32*** %249, i64 %251
  %253 = load i32**, i32*** %252, align 8
  %254 = load i32, i32* %8, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32*, i32** %253, i64 %255
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 1
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %248, %259
  %261 = call i8* @av_clip(i32 %260, i32 1, i32 254)
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 3
  %264 = load i8****, i8***** %263, align 8
  %265 = load i32, i32* %10, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8***, i8**** %264, i64 %266
  %268 = load i8***, i8**** %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8**, i8*** %268, i64 %270
  %272 = load i8**, i8*** %271, align 8
  %273 = load i32, i32* %6, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %272, i64 %274
  store i8* %261, i8** %275, align 8
  br label %276

276:                                              ; preds = %223
  %277 = load i32, i32* %6, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %6, align 4
  br label %220

279:                                              ; preds = %220
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %8, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %8, align 4
  br label %216

283:                                              ; preds = %216
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %10, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %10, align 4
  br label %212

287:                                              ; preds = %212
  store i32 0, i32* %9, align 4
  br label %288

288:                                              ; preds = %408, %287
  %289 = load i32, i32* %9, align 4
  %290 = icmp slt i32 %289, 3
  br i1 %290, label %291, label %411

291:                                              ; preds = %288
  store i32 0, i32* %10, align 4
  br label %292

292:                                              ; preds = %404, %291
  %293 = load i32, i32* %10, align 4
  %294 = icmp slt i32 %293, 2
  br i1 %294, label %295, label %407

295:                                              ; preds = %292
  store i32 0, i32* %7, align 4
  br label %296

296:                                              ; preds = %400, %295
  %297 = load i32, i32* %7, align 4
  %298 = icmp slt i32 %297, 3
  br i1 %298, label %299, label %403

299:                                              ; preds = %296
  store i32 0, i32* %8, align 4
  br label %300

300:                                              ; preds = %396, %299
  %301 = load i32, i32* %8, align 4
  %302 = icmp slt i32 %301, 6
  br i1 %302, label %303, label %399

303:                                              ; preds = %300
  store i32 0, i32* %6, align 4
  br label %304

304:                                              ; preds = %392, %303
  %305 = load i32, i32* %6, align 4
  %306 = icmp slt i32 %305, 5
  br i1 %306, label %307, label %395

307:                                              ; preds = %304
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 1
  %310 = load i32****, i32***** %309, align 8
  %311 = load i32, i32* %10, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32***, i32**** %310, i64 %312
  %314 = load i32***, i32**** %313, align 8
  %315 = load i32, i32* %9, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32**, i32*** %314, i64 %316
  %318 = load i32**, i32*** %317, align 8
  %319 = load i32, i32* %7, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32*, i32** %318, i64 %320
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %6, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = load i32*****, i32****** @vp5_ract_lc, align 8
  %328 = load i32, i32* %9, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32****, i32***** %327, i64 %329
  %331 = load i32****, i32***** %330, align 8
  %332 = load i32, i32* %7, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32***, i32**** %331, i64 %333
  %335 = load i32***, i32**** %334, align 8
  %336 = load i32, i32* %6, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32**, i32*** %335, i64 %337
  %339 = load i32**, i32*** %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32*, i32** %339, i64 %341
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 0
  %345 = load i32, i32* %344, align 4
  %346 = mul nsw i32 %326, %345
  %347 = add nsw i32 %346, 128
  %348 = ashr i32 %347, 8
  %349 = load i32*****, i32****** @vp5_ract_lc, align 8
  %350 = load i32, i32* %9, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32****, i32***** %349, i64 %351
  %353 = load i32****, i32***** %352, align 8
  %354 = load i32, i32* %7, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32***, i32**** %353, i64 %355
  %357 = load i32***, i32**** %356, align 8
  %358 = load i32, i32* %6, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32**, i32*** %357, i64 %359
  %361 = load i32**, i32*** %360, align 8
  %362 = load i32, i32* %8, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32*, i32** %361, i64 %363
  %365 = load i32*, i32** %364, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 1
  %367 = load i32, i32* %366, align 4
  %368 = add nsw i32 %348, %367
  %369 = call i8* @av_clip(i32 %368, i32 1, i32 254)
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 2
  %372 = load i8******, i8******* %371, align 8
  %373 = load i32, i32* %10, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8*****, i8****** %372, i64 %374
  %376 = load i8*****, i8****** %375, align 8
  %377 = load i32, i32* %9, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8****, i8***** %376, i64 %378
  %380 = load i8****, i8***** %379, align 8
  %381 = load i32, i32* %7, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i8***, i8**** %380, i64 %382
  %384 = load i8***, i8**** %383, align 8
  %385 = load i32, i32* %8, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i8**, i8*** %384, i64 %386
  %388 = load i8**, i8*** %387, align 8
  %389 = load i32, i32* %6, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i8*, i8** %388, i64 %390
  store i8* %369, i8** %391, align 8
  br label %392

392:                                              ; preds = %307
  %393 = load i32, i32* %6, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %6, align 4
  br label %304

395:                                              ; preds = %304
  br label %396

396:                                              ; preds = %395
  %397 = load i32, i32* %8, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %8, align 4
  br label %300

399:                                              ; preds = %300
  br label %400

400:                                              ; preds = %399
  %401 = load i32, i32* %7, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %7, align 4
  br label %296

403:                                              ; preds = %296
  br label %404

404:                                              ; preds = %403
  %405 = load i32, i32* %10, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %10, align 4
  br label %292

407:                                              ; preds = %292
  br label %408

408:                                              ; preds = %407
  %409 = load i32, i32* %9, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %9, align 4
  br label %288

411:                                              ; preds = %288
  ret i32 0
}

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i64 @vp56_rac_get_prob_branchy(i32*, i32) #1

declare dso_local i8* @vp56_rac_gets_nn(i32*, i32) #1

declare dso_local i8* @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
