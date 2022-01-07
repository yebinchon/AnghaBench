; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_utfconv.c_utf8_decodestr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_utfconv.c_utf8_decodestr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTF_DECOMPOSED = common dso_local global i32 0, align 4
@UTF_PRECOMPOSED = common dso_local global i32 0, align 4
@UTF_ESCAPE_ILLEGAL = common dso_local global i32 0, align 4
@UTF_SFM_CONVERSIONS = common dso_local global i32 0, align 4
@utf_extrabytes = common dso_local global i32* null, align 8
@SP_HALF_BASE = common dso_local global i32 0, align 4
@SP_HALF_SHIFT = common dso_local global i32 0, align 4
@SP_HIGH_FIRST = common dso_local global i32 0, align 4
@SP_HIGH_LAST = common dso_local global i32 0, align 4
@SP_HALF_MASK = common dso_local global i32 0, align 4
@SP_LOW_FIRST = common dso_local global i32 0, align 4
@SP_LOW_LAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UCS_ALT_NULL = common dso_local global i32 0, align 4
@hexdigits = common dso_local global i32* null, align 8
@UTF_REVERSE_ENDIAN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_decodestr(i32* %0, i64 %1, i32* %2, i64* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [8 x i32], align 16
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @UTF_DECOMPOSED, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @UTF_PRECOMPOSED, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %22, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @UTF_ESCAPE_ILLEGAL, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %23, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @UTF_SFM_CONVERSIONS, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %24, align 4
  %45 = load i32*, i32** %10, align 8
  store i32* %45, i32** %15, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %16, align 8
  br label %49

49:                                               ; preds = %382, %337, %297, %262, %7
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %9, align 8
  %52 = icmp ugt i64 %50, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %8, align 8
  %56 = load i32, i32* %54, align 4
  store i32 %56, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %53, %49
  %59 = phi i1 [ false, %49 ], [ %57, %53 ]
  br i1 %59, label %60, label %404

60:                                               ; preds = %58
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = icmp uge i32* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %444

65:                                               ; preds = %60
  %66 = load i32, i32* %18, align 4
  %67 = icmp ult i32 %66, 128
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load i32, i32* %24, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* %18, align 4
  %73 = load i64, i64* %9, align 8
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @ucs_to_sfm(i32 %72, i32 %75)
  br label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %18, align 4
  br label %79

79:                                               ; preds = %77, %71
  %80 = phi i32 [ %76, %71 ], [ %78, %77 ]
  store i32 %80, i32* %17, align 4
  br label %332

81:                                               ; preds = %65
  %82 = load i32*, i32** @utf_extrabytes, align 8
  %83 = load i32, i32* %18, align 4
  %84 = lshr i32 %83, 3
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %25, align 4
  %88 = load i32, i32* %25, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %81
  %91 = load i64, i64* %9, align 8
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* %25, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90, %81
  br label %349

96:                                               ; preds = %90
  %97 = load i32, i32* %25, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %9, align 8
  %100 = sub i64 %99, %98
  store i64 %100, i64* %9, align 8
  %101 = load i32, i32* %25, align 4
  switch i32 %101, label %266 [
    i32 1, label %102
    i32 2, label %126
    i32 3, label %178
  ]

102:                                              ; preds = %96
  %103 = load i32, i32* %18, align 4
  store i32 %103, i32* %26, align 4
  %104 = load i32, i32* %26, align 4
  %105 = shl i32 %104, 6
  store i32 %105, i32* %26, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %8, align 8
  %108 = load i32, i32* %106, align 4
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = lshr i32 %109, 6
  %111 = icmp ne i32 %110, 2
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %346

113:                                              ; preds = %102
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* %26, align 4
  %116 = add i32 %115, %114
  store i32 %116, i32* %26, align 4
  %117 = load i32, i32* %26, align 4
  %118 = sext i32 %117 to i64
  %119 = sub i64 %118, 12416
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %26, align 4
  %121 = load i32, i32* %26, align 4
  %122 = icmp slt i32 %121, 128
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %346

124:                                              ; preds = %113
  %125 = load i32, i32* %26, align 4
  store i32 %125, i32* %17, align 4
  br label %268

126:                                              ; preds = %96
  %127 = load i32, i32* %18, align 4
  store i32 %127, i32* %26, align 4
  %128 = load i32, i32* %26, align 4
  %129 = shl i32 %128, 6
  store i32 %129, i32* %26, align 4
  %130 = load i32*, i32** %8, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %8, align 8
  %132 = load i32, i32* %130, align 4
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* %18, align 4
  %134 = lshr i32 %133, 6
  %135 = icmp ne i32 %134, 2
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  br label %346

137:                                              ; preds = %126
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %26, align 4
  %140 = add i32 %139, %138
  store i32 %140, i32* %26, align 4
  %141 = load i32, i32* %26, align 4
  %142 = shl i32 %141, 6
  store i32 %142, i32* %26, align 4
  %143 = load i32*, i32** %8, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %8, align 8
  %145 = load i32, i32* %143, align 4
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %18, align 4
  %147 = lshr i32 %146, 6
  %148 = icmp ne i32 %147, 2
  br i1 %148, label %149, label %150

149:                                              ; preds = %137
  br label %343

150:                                              ; preds = %137
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %26, align 4
  %153 = add i32 %152, %151
  store i32 %153, i32* %26, align 4
  %154 = load i32, i32* %26, align 4
  %155 = sext i32 %154 to i64
  %156 = sub i64 %155, 925824
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %26, align 4
  %158 = load i32, i32* %26, align 4
  %159 = icmp slt i32 %158, 2048
  br i1 %159, label %160, label %161

160:                                              ; preds = %150
  br label %343

161:                                              ; preds = %150
  %162 = load i32, i32* %26, align 4
  %163 = icmp sge i32 %162, 55296
  br i1 %163, label %164, label %176

164:                                              ; preds = %161
  %165 = load i32, i32* %26, align 4
  %166 = icmp sle i32 %165, 57343
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %343

168:                                              ; preds = %164
  %169 = load i32, i32* %26, align 4
  %170 = icmp eq i32 %169, 65534
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %26, align 4
  %173 = icmp eq i32 %172, 65535
  br i1 %173, label %174, label %175

174:                                              ; preds = %171, %168
  br label %343

175:                                              ; preds = %171
  br label %176

176:                                              ; preds = %175, %161
  %177 = load i32, i32* %26, align 4
  store i32 %177, i32* %17, align 4
  br label %268

178:                                              ; preds = %96
  %179 = load i32, i32* %18, align 4
  store i32 %179, i32* %26, align 4
  %180 = load i32, i32* %26, align 4
  %181 = shl i32 %180, 6
  store i32 %181, i32* %26, align 4
  %182 = load i32*, i32** %8, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %8, align 8
  %184 = load i32, i32* %182, align 4
  store i32 %184, i32* %18, align 4
  %185 = load i32, i32* %18, align 4
  %186 = lshr i32 %185, 6
  %187 = icmp ne i32 %186, 2
  br i1 %187, label %188, label %189

188:                                              ; preds = %178
  br label %346

189:                                              ; preds = %178
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* %26, align 4
  %192 = add i32 %191, %190
  store i32 %192, i32* %26, align 4
  %193 = load i32, i32* %26, align 4
  %194 = shl i32 %193, 6
  store i32 %194, i32* %26, align 4
  %195 = load i32*, i32** %8, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %8, align 8
  %197 = load i32, i32* %195, align 4
  store i32 %197, i32* %18, align 4
  %198 = load i32, i32* %18, align 4
  %199 = lshr i32 %198, 6
  %200 = icmp ne i32 %199, 2
  br i1 %200, label %201, label %202

201:                                              ; preds = %189
  br label %343

202:                                              ; preds = %189
  %203 = load i32, i32* %18, align 4
  %204 = load i32, i32* %26, align 4
  %205 = add i32 %204, %203
  store i32 %205, i32* %26, align 4
  %206 = load i32, i32* %26, align 4
  %207 = shl i32 %206, 6
  store i32 %207, i32* %26, align 4
  %208 = load i32*, i32** %8, align 8
  %209 = getelementptr inbounds i32, i32* %208, i32 1
  store i32* %209, i32** %8, align 8
  %210 = load i32, i32* %208, align 4
  store i32 %210, i32* %18, align 4
  %211 = load i32, i32* %18, align 4
  %212 = lshr i32 %211, 6
  %213 = icmp ne i32 %212, 2
  br i1 %213, label %214, label %215

214:                                              ; preds = %202
  br label %340

215:                                              ; preds = %202
  %216 = load i32, i32* %18, align 4
  %217 = load i32, i32* %26, align 4
  %218 = add i32 %217, %216
  store i32 %218, i32* %26, align 4
  %219 = load i32, i32* @SP_HALF_BASE, align 4
  %220 = sext i32 %219 to i64
  %221 = add i64 63447168, %220
  %222 = load i32, i32* %26, align 4
  %223 = sext i32 %222 to i64
  %224 = sub i64 %223, %221
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %26, align 4
  %226 = load i32, i32* %26, align 4
  %227 = load i32, i32* @SP_HALF_SHIFT, align 4
  %228 = ashr i32 %226, %227
  %229 = load i32, i32* @SP_HIGH_FIRST, align 4
  %230 = add nsw i32 %228, %229
  store i32 %230, i32* %17, align 4
  %231 = load i32, i32* %17, align 4
  %232 = load i32, i32* @SP_HIGH_FIRST, align 4
  %233 = icmp ult i32 %231, %232
  br i1 %233, label %238, label %234

234:                                              ; preds = %215
  %235 = load i32, i32* %17, align 4
  %236 = load i32, i32* @SP_HIGH_LAST, align 4
  %237 = icmp ugt i32 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %234, %215
  br label %340

239:                                              ; preds = %234
  %240 = load i32, i32* %17, align 4
  %241 = call i32 @push(i32 %240, i32* %19, i32** %10)
  %242 = load i32*, i32** %10, align 8
  %243 = load i32*, i32** %16, align 8
  %244 = icmp uge i32* %242, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %239
  br label %444

246:                                              ; preds = %239
  %247 = load i32, i32* %26, align 4
  %248 = load i32, i32* @SP_HALF_MASK, align 4
  %249 = and i32 %247, %248
  %250 = load i32, i32* @SP_LOW_FIRST, align 4
  %251 = add nsw i32 %249, %250
  store i32 %251, i32* %17, align 4
  %252 = load i32, i32* %17, align 4
  %253 = load i32, i32* @SP_LOW_FIRST, align 4
  %254 = icmp ult i32 %252, %253
  br i1 %254, label %259, label %255

255:                                              ; preds = %246
  %256 = load i32, i32* %17, align 4
  %257 = load i32, i32* @SP_LOW_LAST, align 4
  %258 = icmp ugt i32 %256, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %255, %246
  %260 = load i32*, i32** %10, align 8
  %261 = getelementptr inbounds i32, i32* %260, i32 -1
  store i32* %261, i32** %10, align 8
  br label %340

262:                                              ; preds = %255
  %263 = load i32, i32* %17, align 4
  %264 = load i32*, i32** %10, align 8
  %265 = getelementptr inbounds i32, i32* %264, i32 1
  store i32* %265, i32** %10, align 8
  store i32 %263, i32* %264, align 4
  br label %49

266:                                              ; preds = %96
  %267 = load i32, i32* @EINVAL, align 4
  store i32 %267, i32* %20, align 4
  br label %435

268:                                              ; preds = %176, %124
  %269 = load i32, i32* %21, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %299

271:                                              ; preds = %268
  %272 = load i32, i32* %17, align 4
  %273 = call i64 @unicode_decomposeable(i32 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %298

275:                                              ; preds = %271
  %276 = load i32, i32* %17, align 4
  %277 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i64 0, i64 0
  %278 = call i32 @unicode_decompose(i32 %276, i32* %277)
  store i32 %278, i32* %28, align 4
  store i32 0, i32* %29, align 4
  br label %279

279:                                              ; preds = %294, %275
  %280 = load i32, i32* %29, align 4
  %281 = load i32, i32* %28, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %297

283:                                              ; preds = %279
  %284 = load i32*, i32** %10, align 8
  %285 = load i32*, i32** %16, align 8
  %286 = icmp uge i32* %284, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %283
  br label %444

288:                                              ; preds = %283
  %289 = load i32, i32* %29, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i64 0, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @push(i32 %292, i32* %19, i32** %10)
  br label %294

294:                                              ; preds = %288
  %295 = load i32, i32* %29, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %29, align 4
  br label %279

297:                                              ; preds = %279
  br label %49

298:                                              ; preds = %271
  br label %326

299:                                              ; preds = %268
  %300 = load i32, i32* %22, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %325

302:                                              ; preds = %299
  %303 = load i32*, i32** %10, align 8
  %304 = load i32*, i32** %15, align 8
  %305 = icmp ne i32* %303, %304
  br i1 %305, label %306, label %325

306:                                              ; preds = %302
  %307 = load i32, i32* %17, align 4
  %308 = call i64 @unicode_combinable(i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %324

310:                                              ; preds = %306
  %311 = load i32*, i32** %10, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 -1
  %313 = load i32, i32* %312, align 4
  store i32 %313, i32* %31, align 4
  %314 = load i32, i32* %31, align 4
  %315 = load i32, i32* %17, align 4
  %316 = call i32 @unicode_combine(i32 %314, i32 %315)
  store i32 %316, i32* %30, align 4
  %317 = load i32, i32* %30, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %310
  %320 = load i32*, i32** %10, align 8
  %321 = getelementptr inbounds i32, i32* %320, i32 -1
  store i32* %321, i32** %10, align 8
  %322 = load i32, i32* %30, align 4
  store i32 %322, i32* %17, align 4
  br label %323

323:                                              ; preds = %319, %310
  br label %324

324:                                              ; preds = %323, %306
  br label %325

325:                                              ; preds = %324, %302, %299
  br label %326

326:                                              ; preds = %325, %298
  %327 = load i32, i32* %17, align 4
  %328 = load i32, i32* @UCS_ALT_NULL, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %326
  store i32 0, i32* %17, align 4
  br label %331

331:                                              ; preds = %330, %326
  br label %332

332:                                              ; preds = %331, %79
  %333 = load i32, i32* %17, align 4
  %334 = load i32, i32* %13, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %332
  store i32 47, i32* %17, align 4
  br label %337

337:                                              ; preds = %336, %332
  %338 = load i32, i32* %17, align 4
  %339 = call i32 @push(i32 %338, i32* %19, i32** %10)
  br label %49

340:                                              ; preds = %259, %238, %214
  %341 = load i32*, i32** %8, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 -3
  store i32* %342, i32** %8, align 8
  br label %349

343:                                              ; preds = %201, %174, %167, %160, %149
  %344 = load i32*, i32** %8, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 -2
  store i32* %345, i32** %8, align 8
  br label %349

346:                                              ; preds = %188, %136, %123, %112
  %347 = load i32*, i32** %8, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 -1
  store i32* %348, i32** %8, align 8
  br label %349

349:                                              ; preds = %346, %343, %340, %95
  %350 = load i32, i32* %23, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %354, label %352

352:                                              ; preds = %349
  %353 = load i32, i32* @EINVAL, align 4
  store i32 %353, i32* %20, align 4
  br label %435

354:                                              ; preds = %349
  %355 = load i32, i32* %25, align 4
  %356 = icmp sgt i32 %355, 0
  br i1 %356, label %357, label %362

357:                                              ; preds = %354
  %358 = load i32, i32* %25, align 4
  %359 = sext i32 %358 to i64
  %360 = load i64, i64* %9, align 8
  %361 = add i64 %360, %359
  store i64 %361, i64* %9, align 8
  br label %362

362:                                              ; preds = %357, %354
  %363 = load i32*, i32** %8, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 -1
  %365 = load i32, i32* %364, align 4
  store i32 %365, i32* %18, align 4
  %366 = load i32*, i32** %10, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 2
  %368 = load i32*, i32** %16, align 8
  %369 = icmp uge i32* %367, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %362
  br label %444

371:                                              ; preds = %362
  %372 = load i32, i32* %19, align 4
  %373 = icmp sgt i32 %372, 1
  br i1 %373, label %374, label %382

374:                                              ; preds = %371
  %375 = load i32*, i32** %10, align 8
  %376 = load i32, i32* %19, align 4
  %377 = sext i32 %376 to i64
  %378 = sub i64 0, %377
  %379 = getelementptr inbounds i32, i32* %375, i64 %378
  %380 = load i32, i32* %19, align 4
  %381 = call i32 @prioritysort(i32* %379, i32 %380)
  br label %382

382:                                              ; preds = %374, %371
  store i32 0, i32* %19, align 4
  store i32 37, i32* %17, align 4
  %383 = load i32, i32* %17, align 4
  %384 = load i32*, i32** %10, align 8
  %385 = getelementptr inbounds i32, i32* %384, i32 1
  store i32* %385, i32** %10, align 8
  store i32 %383, i32* %384, align 4
  %386 = load i32*, i32** @hexdigits, align 8
  %387 = load i32, i32* %18, align 4
  %388 = lshr i32 %387, 4
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %386, i64 %389
  %391 = load i32, i32* %390, align 4
  store i32 %391, i32* %17, align 4
  %392 = load i32, i32* %17, align 4
  %393 = load i32*, i32** %10, align 8
  %394 = getelementptr inbounds i32, i32* %393, i32 1
  store i32* %394, i32** %10, align 8
  store i32 %392, i32* %393, align 4
  %395 = load i32*, i32** @hexdigits, align 8
  %396 = load i32, i32* %18, align 4
  %397 = and i32 %396, 15
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %395, i64 %398
  %400 = load i32, i32* %399, align 4
  store i32 %400, i32* %17, align 4
  %401 = load i32, i32* %17, align 4
  %402 = load i32*, i32** %10, align 8
  %403 = getelementptr inbounds i32, i32* %402, i32 1
  store i32* %403, i32** %10, align 8
  store i32 %401, i32* %402, align 4
  br label %49

404:                                              ; preds = %58
  %405 = load i32, i32* %19, align 4
  %406 = icmp sgt i32 %405, 1
  br i1 %406, label %407, label %415

407:                                              ; preds = %404
  %408 = load i32*, i32** %10, align 8
  %409 = load i32, i32* %19, align 4
  %410 = sext i32 %409 to i64
  %411 = sub i64 0, %410
  %412 = getelementptr inbounds i32, i32* %408, i64 %411
  %413 = load i32, i32* %19, align 4
  %414 = call i32 @prioritysort(i32* %412, i32 %413)
  br label %415

415:                                              ; preds = %407, %404
  %416 = load i32, i32* %14, align 4
  %417 = load i32, i32* @UTF_REVERSE_ENDIAN, align 4
  %418 = and i32 %416, %417
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %434

420:                                              ; preds = %415
  %421 = load i32*, i32** %15, align 8
  store i32* %421, i32** %32, align 8
  br label %422

422:                                              ; preds = %426, %420
  %423 = load i32*, i32** %32, align 8
  %424 = load i32*, i32** %10, align 8
  %425 = icmp ult i32* %423, %424
  br i1 %425, label %426, label %433

426:                                              ; preds = %422
  %427 = load i32*, i32** %32, align 8
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @OSSwapInt16(i32 %428)
  %430 = load i32*, i32** %32, align 8
  store i32 %429, i32* %430, align 4
  %431 = load i32*, i32** %32, align 8
  %432 = getelementptr inbounds i32, i32* %431, i32 1
  store i32* %432, i32** %32, align 8
  br label %422

433:                                              ; preds = %422
  br label %434

434:                                              ; preds = %433, %415
  br label %435

435:                                              ; preds = %444, %434, %352, %266
  %436 = load i32*, i32** %10, align 8
  %437 = load i32*, i32** %15, align 8
  %438 = ptrtoint i32* %436 to i64
  %439 = ptrtoint i32* %437 to i64
  %440 = sub i64 %438, %439
  %441 = sdiv exact i64 %440, 4
  %442 = load i64*, i64** %11, align 8
  store i64 %441, i64* %442, align 8
  %443 = load i32, i32* %20, align 4
  ret i32 %443

444:                                              ; preds = %370, %287, %245, %64
  %445 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %445, i32* %20, align 4
  br label %435
}

declare dso_local i32 @ucs_to_sfm(i32, i32) #1

declare dso_local i32 @push(i32, i32*, i32**) #1

declare dso_local i64 @unicode_decomposeable(i32) #1

declare dso_local i32 @unicode_decompose(i32, i32*) #1

declare dso_local i64 @unicode_combinable(i32) #1

declare dso_local i32 @unicode_combine(i32, i32) #1

declare dso_local i32 @prioritysort(i32*, i32) #1

declare dso_local i32 @OSSwapInt16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
