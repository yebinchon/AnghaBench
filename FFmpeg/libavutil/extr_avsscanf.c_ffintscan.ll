; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_avsscanf.c_ffintscan.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_avsscanf.c_ffintscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@table = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\00\01\02\04\07\03\06\05\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32, i64)* @ffintscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ffintscan(i32* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load i8*, i8** @table, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8* %17, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ugt i32 %18, 36
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %4
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* @errno, align 4
  store i64 0, i64* %5, align 8
  br label %407

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %31, %25
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @shgetc(i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = call i64 @av_isspace(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %26

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 43
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 45
  br i1 %37, label %38, label %45

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 45
  %41 = zext i1 %40 to i32
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @shgetc(i32* %43)
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %38, %35
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 16
  br i1 %50, label %51, label %89

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 48
  br i1 %53, label %54, label %89

54:                                               ; preds = %51
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @shgetc(i32* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, 32
  %59 = icmp eq i32 %58, 120
  br i1 %59, label %60, label %83

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @shgetc(i32* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp sge i32 %68, 16
  br i1 %69, label %70, label %82

70:                                               ; preds = %60
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @shunget(i32* %71)
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @shunget(i32* %76)
  br label %81

78:                                               ; preds = %70
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @shlim(i32* %79, i32 0)
  br label %81

81:                                               ; preds = %78, %75
  store i64 0, i64* %5, align 8
  br label %407

82:                                               ; preds = %60
  store i32 16, i32* %7, align 4
  br label %88

83:                                               ; preds = %54
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 8, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %83
  br label %88

88:                                               ; preds = %87, %82
  br label %109

89:                                               ; preds = %51, %48
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 10, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %89
  %94 = load i8*, i8** %10, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i32, i32* %7, align 4
  %101 = icmp uge i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %93
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @shunget(i32* %103)
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @shlim(i32* %105, i32 0)
  %107 = load i32, i32* @EINVAL, align 4
  store i32 %107, i32* @errno, align 4
  store i64 0, i64* %5, align 8
  br label %407

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108, %88
  %110 = load i32, i32* %7, align 4
  %111 = icmp eq i32 %110, 10
  br i1 %111, label %112, label %174

112:                                              ; preds = %109
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %131, %112
  %114 = load i32, i32* %11, align 4
  %115 = sub nsw i32 %114, 48
  %116 = icmp ult i32 %115, 10
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @UINT_MAX, align 4
  %120 = sdiv i32 %119, 10
  %121 = sub nsw i32 %120, 1
  %122 = icmp ule i32 %118, %121
  br label %123

123:                                              ; preds = %117, %113
  %124 = phi i1 [ false, %113 ], [ %122, %117 ]
  br i1 %124, label %125, label %134

125:                                              ; preds = %123
  %126 = load i32, i32* %13, align 4
  %127 = mul i32 %126, 10
  %128 = load i32, i32* %11, align 4
  %129 = sub nsw i32 %128, 48
  %130 = add i32 %127, %129
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %125
  %132 = load i32*, i32** %6, align 8
  %133 = call i32 @shgetc(i32* %132)
  store i32 %133, i32* %11, align 4
  br label %113

134:                                              ; preds = %123
  %135 = load i32, i32* %13, align 4
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %14, align 8
  br label %137

137:                                              ; preds = %165, %134
  %138 = load i32, i32* %11, align 4
  %139 = sub nsw i32 %138, 48
  %140 = icmp ult i32 %139, 10
  br i1 %140, label %141, label %156

141:                                              ; preds = %137
  %142 = load i64, i64* %14, align 8
  %143 = load i32, i32* @ULLONG_MAX, align 4
  %144 = sdiv i32 %143, 10
  %145 = sext i32 %144 to i64
  %146 = icmp ule i64 %142, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %141
  %148 = load i64, i64* %14, align 8
  %149 = mul i64 10, %148
  %150 = load i32, i32* @ULLONG_MAX, align 4
  %151 = load i32, i32* %11, align 4
  %152 = sub nsw i32 %151, 48
  %153 = sub nsw i32 %150, %152
  %154 = sext i32 %153 to i64
  %155 = icmp ule i64 %149, %154
  br label %156

156:                                              ; preds = %147, %141, %137
  %157 = phi i1 [ false, %141 ], [ false, %137 ], [ %155, %147 ]
  br i1 %157, label %158, label %168

158:                                              ; preds = %156
  %159 = load i64, i64* %14, align 8
  %160 = mul i64 %159, 10
  %161 = load i32, i32* %11, align 4
  %162 = sub nsw i32 %161, 48
  %163 = sext i32 %162 to i64
  %164 = add i64 %160, %163
  store i64 %164, i64* %14, align 8
  br label %165

165:                                              ; preds = %158
  %166 = load i32*, i32** %6, align 8
  %167 = call i32 @shgetc(i32* %166)
  store i32 %167, i32* %11, align 4
  br label %137

168:                                              ; preds = %156
  %169 = load i32, i32* %11, align 4
  %170 = sub nsw i32 %169, 48
  %171 = icmp uge i32 %170, 10
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  br label %373

173:                                              ; preds = %168
  br label %341

174:                                              ; preds = %109
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = sub i32 %176, 1
  %178 = and i32 %175, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %256, label %180

180:                                              ; preds = %174
  %181 = load i32, i32* %7, align 4
  %182 = mul i32 23, %181
  %183 = lshr i32 %182, 5
  %184 = and i32 %183, 7
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [9 x i8], [9 x i8]* @.str, i64 0, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  store i32 %188, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %189

189:                                              ; preds = %216, %180
  %190 = load i8*, i8** %10, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = load i32, i32* %7, align 4
  %197 = icmp ult i32 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %189
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* @UINT_MAX, align 4
  %201 = sdiv i32 %200, 32
  %202 = icmp ule i32 %199, %201
  br label %203

203:                                              ; preds = %198, %189
  %204 = phi i1 [ false, %189 ], [ %202, %198 ]
  br i1 %204, label %205, label %219

205:                                              ; preds = %203
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %15, align 4
  %208 = shl i32 %206, %207
  %209 = load i8*, i8** %10, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = or i32 %208, %214
  store i32 %215, i32* %13, align 4
  br label %216

216:                                              ; preds = %205
  %217 = load i32*, i32** %6, align 8
  %218 = call i32 @shgetc(i32* %217)
  store i32 %218, i32* %11, align 4
  br label %189

219:                                              ; preds = %203
  %220 = load i32, i32* %13, align 4
  %221 = zext i32 %220 to i64
  store i64 %221, i64* %14, align 8
  br label %222

222:                                              ; preds = %252, %219
  %223 = load i8*, i8** %10, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = load i32, i32* %7, align 4
  %230 = icmp ult i32 %228, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %222
  %232 = load i64, i64* %14, align 8
  %233 = load i32, i32* @ULLONG_MAX, align 4
  %234 = load i32, i32* %15, align 4
  %235 = ashr i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = icmp ule i64 %232, %236
  br label %238

238:                                              ; preds = %231, %222
  %239 = phi i1 [ false, %222 ], [ %237, %231 ]
  br i1 %239, label %240, label %255

240:                                              ; preds = %238
  %241 = load i64, i64* %14, align 8
  %242 = load i32, i32* %15, align 4
  %243 = zext i32 %242 to i64
  %244 = shl i64 %241, %243
  %245 = load i8*, i8** %10, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i64
  %251 = or i64 %244, %250
  store i64 %251, i64* %14, align 8
  br label %252

252:                                              ; preds = %240
  %253 = load i32*, i32** %6, align 8
  %254 = call i32 @shgetc(i32* %253)
  store i32 %254, i32* %11, align 4
  br label %222

255:                                              ; preds = %238
  br label %340

256:                                              ; preds = %174
  store i32 0, i32* %13, align 4
  br label %257

257:                                              ; preds = %285, %256
  %258 = load i8*, i8** %10, align 8
  %259 = load i32, i32* %11, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = load i32, i32* %7, align 4
  %265 = icmp ult i32 %263, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %257
  %267 = load i32, i32* %13, align 4
  %268 = load i32, i32* @UINT_MAX, align 4
  %269 = sdiv i32 %268, 36
  %270 = sub nsw i32 %269, 1
  %271 = icmp ule i32 %267, %270
  br label %272

272:                                              ; preds = %266, %257
  %273 = phi i1 [ false, %257 ], [ %271, %266 ]
  br i1 %273, label %274, label %288

274:                                              ; preds = %272
  %275 = load i32, i32* %13, align 4
  %276 = load i32, i32* %7, align 4
  %277 = mul i32 %275, %276
  %278 = load i8*, i8** %10, align 8
  %279 = load i32, i32* %11, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = add i32 %277, %283
  store i32 %284, i32* %13, align 4
  br label %285

285:                                              ; preds = %274
  %286 = load i32*, i32** %6, align 8
  %287 = call i32 @shgetc(i32* %286)
  store i32 %287, i32* %11, align 4
  br label %257

288:                                              ; preds = %272
  %289 = load i32, i32* %13, align 4
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %14, align 8
  br label %291

291:                                              ; preds = %336, %288
  %292 = load i8*, i8** %10, align 8
  %293 = load i32, i32* %11, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8, i8* %292, i64 %294
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i32
  %298 = load i32, i32* %7, align 4
  %299 = icmp ult i32 %297, %298
  br i1 %299, label %300, label %322

300:                                              ; preds = %291
  %301 = load i64, i64* %14, align 8
  %302 = load i32, i32* @ULLONG_MAX, align 4
  %303 = load i32, i32* %7, align 4
  %304 = udiv i32 %302, %303
  %305 = zext i32 %304 to i64
  %306 = icmp ule i64 %301, %305
  br i1 %306, label %307, label %322

307:                                              ; preds = %300
  %308 = load i32, i32* %7, align 4
  %309 = zext i32 %308 to i64
  %310 = load i64, i64* %14, align 8
  %311 = mul i64 %309, %310
  %312 = load i32, i32* @ULLONG_MAX, align 4
  %313 = load i8*, i8** %10, align 8
  %314 = load i32, i32* %11, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %313, i64 %315
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = sub nsw i32 %312, %318
  %320 = sext i32 %319 to i64
  %321 = icmp ule i64 %311, %320
  br label %322

322:                                              ; preds = %307, %300, %291
  %323 = phi i1 [ false, %300 ], [ false, %291 ], [ %321, %307 ]
  br i1 %323, label %324, label %339

324:                                              ; preds = %322
  %325 = load i64, i64* %14, align 8
  %326 = load i32, i32* %7, align 4
  %327 = zext i32 %326 to i64
  %328 = mul i64 %325, %327
  %329 = load i8*, i8** %10, align 8
  %330 = load i32, i32* %11, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8, i8* %329, i64 %331
  %333 = load i8, i8* %332, align 1
  %334 = zext i8 %333 to i64
  %335 = add i64 %328, %334
  store i64 %335, i64* %14, align 8
  br label %336

336:                                              ; preds = %324
  %337 = load i32*, i32** %6, align 8
  %338 = call i32 @shgetc(i32* %337)
  store i32 %338, i32* %11, align 4
  br label %291

339:                                              ; preds = %322
  br label %340

340:                                              ; preds = %339, %255
  br label %341

341:                                              ; preds = %340, %173
  %342 = load i8*, i8** %10, align 8
  %343 = load i32, i32* %11, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, i8* %342, i64 %344
  %346 = load i8, i8* %345, align 1
  %347 = zext i8 %346 to i32
  %348 = load i32, i32* %7, align 4
  %349 = icmp ult i32 %347, %348
  br i1 %349, label %350, label %372

350:                                              ; preds = %341
  br label %351

351:                                              ; preds = %361, %350
  %352 = load i8*, i8** %10, align 8
  %353 = load i32, i32* %11, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8, i8* %352, i64 %354
  %356 = load i8, i8* %355, align 1
  %357 = zext i8 %356 to i32
  %358 = load i32, i32* %7, align 4
  %359 = icmp ult i32 %357, %358
  br i1 %359, label %360, label %364

360:                                              ; preds = %351
  br label %361

361:                                              ; preds = %360
  %362 = load i32*, i32** %6, align 8
  %363 = call i32 @shgetc(i32* %362)
  store i32 %363, i32* %11, align 4
  br label %351

364:                                              ; preds = %351
  %365 = load i32, i32* @ERANGE, align 4
  store i32 %365, i32* @errno, align 4
  %366 = load i64, i64* %9, align 8
  store i64 %366, i64* %14, align 8
  %367 = load i64, i64* %9, align 8
  %368 = and i64 %367, 1
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %364
  store i32 0, i32* %12, align 4
  br label %371

371:                                              ; preds = %370, %364
  br label %372

372:                                              ; preds = %371, %341
  br label %373

373:                                              ; preds = %372, %172
  %374 = load i32*, i32** %6, align 8
  %375 = call i32 @shunget(i32* %374)
  %376 = load i64, i64* %14, align 8
  %377 = load i64, i64* %9, align 8
  %378 = icmp uge i64 %376, %377
  br i1 %378, label %379, label %399

379:                                              ; preds = %373
  %380 = load i64, i64* %9, align 8
  %381 = and i64 %380, 1
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %390, label %383

383:                                              ; preds = %379
  %384 = load i32, i32* %12, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %390, label %386

386:                                              ; preds = %383
  %387 = load i32, i32* @ERANGE, align 4
  store i32 %387, i32* @errno, align 4
  %388 = load i64, i64* %9, align 8
  %389 = sub i64 %388, 1
  store i64 %389, i64* %5, align 8
  br label %407

390:                                              ; preds = %383, %379
  %391 = load i64, i64* %14, align 8
  %392 = load i64, i64* %9, align 8
  %393 = icmp ugt i64 %391, %392
  br i1 %393, label %394, label %397

394:                                              ; preds = %390
  %395 = load i32, i32* @ERANGE, align 4
  store i32 %395, i32* @errno, align 4
  %396 = load i64, i64* %9, align 8
  store i64 %396, i64* %5, align 8
  br label %407

397:                                              ; preds = %390
  br label %398

398:                                              ; preds = %397
  br label %399

399:                                              ; preds = %398, %373
  %400 = load i64, i64* %14, align 8
  %401 = load i32, i32* %12, align 4
  %402 = sext i32 %401 to i64
  %403 = xor i64 %400, %402
  %404 = load i32, i32* %12, align 4
  %405 = sext i32 %404 to i64
  %406 = sub i64 %403, %405
  store i64 %406, i64* %5, align 8
  br label %407

407:                                              ; preds = %399, %394, %386, %102, %81, %23
  %408 = load i64, i64* %5, align 8
  ret i64 %408
}

declare dso_local i64 @av_isspace(i32) #1

declare dso_local i32 @shgetc(i32*) #1

declare dso_local i32 @shunget(i32*) #1

declare dso_local i32 @shlim(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
