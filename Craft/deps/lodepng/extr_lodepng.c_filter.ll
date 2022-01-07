; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_filter.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64, i32*, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i32, i64, i64 }
%struct.TYPE_12__ = type { i8*, i32 }

@LCT_PALETTE = common dso_local global i64 0, align 8
@LFS_ZERO = common dso_local global i64 0, align 8
@LFS_MINSUM = common dso_local global i64 0, align 8
@LFS_ENTROPY = common dso_local global i64 0, align 8
@LFS_PREDEFINED = common dso_local global i64 0, align 8
@LFS_BRUTE_FORCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, %struct.TYPE_15__*, %struct.TYPE_13__*)* @filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter(i8* %0, i8* %1, i32 %2, i32 %3, %struct.TYPE_15__* %4, %struct.TYPE_13__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca [5 x i64], align 16
  %25 = alloca [5 x %struct.TYPE_12__], align 16
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8, align 1
  %30 = alloca [5 x float], align 16
  %31 = alloca [5 x %struct.TYPE_12__], align 16
  %32 = alloca float, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca [256 x i32], align 16
  %36 = alloca float, align 4
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i32, align 4
  %40 = alloca [5 x i64], align 16
  %41 = alloca [5 x %struct.TYPE_12__], align 16
  %42 = alloca i64, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i8*, align 8
  %46 = alloca %struct.TYPE_14__, align 8
  %47 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %13, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %49 = call i32 @lodepng_get_bpp(%struct.TYPE_15__* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %14, align 4
  %52 = mul i32 %50, %51
  %53 = add i32 %52, 7
  %54 = udiv i32 %53, 8
  %55 = zext i32 %54 to i64
  store i64 %55, i64* %15, align 8
  %56 = load i32, i32* %14, align 4
  %57 = add i32 %56, 7
  %58 = udiv i32 %57, 8
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %16, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %20, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %21, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %6
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @LCT_PALETTE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %76, 8
  br i1 %77, label %78, label %80

78:                                               ; preds = %73, %67
  %79 = load i64, i64* @LFS_ZERO, align 8
  store i64 %79, i64* %21, align 8
  br label %80

80:                                               ; preds = %78, %73, %6
  %81 = load i32, i32* %14, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 31, i32* %7, align 4
  br label %751

84:                                               ; preds = %80
  %85 = load i64, i64* %21, align 8
  %86 = load i64, i64* @LFS_ZERO, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %124

88:                                               ; preds = %84
  store i32 0, i32* %19, align 4
  br label %89

89:                                               ; preds = %120, %88
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %123

93:                                               ; preds = %89
  %94 = load i64, i64* %15, align 8
  %95 = add i64 1, %94
  %96 = load i32, i32* %19, align 4
  %97 = zext i32 %96 to i64
  %98 = mul i64 %95, %97
  store i64 %98, i64* %22, align 8
  %99 = load i64, i64* %15, align 8
  %100 = load i32, i32* %19, align 4
  %101 = zext i32 %100 to i64
  %102 = mul i64 %99, %101
  store i64 %102, i64* %23, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i64, i64* %22, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8 0, i8* %105, align 1
  %106 = load i8*, i8** %8, align 8
  %107 = load i64, i64* %22, align 8
  %108 = add i64 %107, 1
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8*, i8** %9, align 8
  %111 = load i64, i64* %23, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = load i8*, i8** %17, align 8
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* %16, align 8
  %116 = call i32 @filterScanline(i8* %109, i8* %112, i8* %113, i64 %114, i64 %115, i32 0)
  %117 = load i8*, i8** %9, align 8
  %118 = load i64, i64* %23, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %17, align 8
  br label %120

120:                                              ; preds = %93
  %121 = load i32, i32* %19, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %19, align 4
  br label %89

123:                                              ; preds = %89
  br label %749

124:                                              ; preds = %84
  %125 = load i64, i64* %21, align 8
  %126 = load i64, i64* @LFS_MINSUM, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %329

128:                                              ; preds = %124
  store i64 0, i64* %26, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %129

129:                                              ; preds = %145, %128
  %130 = load i32, i32* %27, align 4
  %131 = icmp ult i32 %130, 5
  br i1 %131, label %132, label %148

132:                                              ; preds = %129
  %133 = load i32, i32* %27, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %25, i64 0, i64 %134
  %136 = call i32 @ucvector_init(%struct.TYPE_12__* %135)
  %137 = load i32, i32* %27, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %25, i64 0, i64 %138
  %140 = load i64, i64* %15, align 8
  %141 = call i32 @ucvector_resize(%struct.TYPE_12__* %139, i64 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %132
  store i32 83, i32* %7, align 4
  br label %751

144:                                              ; preds = %132
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %27, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %27, align 4
  br label %129

148:                                              ; preds = %129
  %149 = load i32, i32* %20, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %316, label %151

151:                                              ; preds = %148
  store i32 0, i32* %19, align 4
  br label %152

152:                                              ; preds = %312, %151
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %156, label %315

156:                                              ; preds = %152
  store i32 0, i32* %27, align 4
  br label %157

157:                                              ; preds = %263, %156
  %158 = load i32, i32* %27, align 4
  %159 = icmp ult i32 %158, 5
  br i1 %159, label %160, label %266

160:                                              ; preds = %157
  %161 = load i32, i32* %27, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %25, i64 0, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 16
  %166 = load i8*, i8** %9, align 8
  %167 = load i32, i32* %19, align 4
  %168 = zext i32 %167 to i64
  %169 = load i64, i64* %15, align 8
  %170 = mul i64 %168, %169
  %171 = getelementptr inbounds i8, i8* %166, i64 %170
  %172 = load i8*, i8** %17, align 8
  %173 = load i64, i64* %15, align 8
  %174 = load i64, i64* %16, align 8
  %175 = load i32, i32* %27, align 4
  %176 = call i32 @filterScanline(i8* %165, i8* %171, i8* %172, i64 %173, i64 %174, i32 %175)
  %177 = load i32, i32* %27, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 %178
  store i64 0, i64* %179, align 8
  %180 = load i32, i32* %27, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %208

182:                                              ; preds = %160
  store i32 0, i32* %18, align 4
  br label %183

183:                                              ; preds = %204, %182
  %184 = load i32, i32* %18, align 4
  %185 = zext i32 %184 to i64
  %186 = load i64, i64* %15, align 8
  %187 = icmp ult i64 %185, %186
  br i1 %187, label %188, label %207

188:                                              ; preds = %183
  %189 = load i32, i32* %27, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %25, i64 0, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 16
  %194 = load i32, i32* %18, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i64
  %199 = load i32, i32* %27, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = add i64 %202, %198
  store i64 %203, i64* %201, align 8
  br label %204

204:                                              ; preds = %188
  %205 = load i32, i32* %18, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %18, align 4
  br label %183

207:                                              ; preds = %183
  br label %246

208:                                              ; preds = %160
  store i32 0, i32* %18, align 4
  br label %209

209:                                              ; preds = %242, %208
  %210 = load i32, i32* %18, align 4
  %211 = zext i32 %210 to i64
  %212 = load i64, i64* %15, align 8
  %213 = icmp ult i64 %211, %212
  br i1 %213, label %214, label %245

214:                                              ; preds = %209
  %215 = load i32, i32* %27, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %25, i64 0, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 16
  %220 = load i32, i32* %18, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load i8, i8* %222, align 1
  store i8 %223, i8* %29, align 1
  %224 = load i8, i8* %29, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %214
  %228 = load i8, i8* %29, align 1
  %229 = sext i8 %228 to i32
  %230 = sub nsw i32 0, %229
  br label %234

231:                                              ; preds = %214
  %232 = load i8, i8* %29, align 1
  %233 = sext i8 %232 to i32
  br label %234

234:                                              ; preds = %231, %227
  %235 = phi i32 [ %230, %227 ], [ %233, %231 ]
  %236 = sext i32 %235 to i64
  %237 = load i32, i32* %27, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = add i64 %240, %236
  store i64 %241, i64* %239, align 8
  br label %242

242:                                              ; preds = %234
  %243 = load i32, i32* %18, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %18, align 4
  br label %209

245:                                              ; preds = %209
  br label %246

246:                                              ; preds = %245, %207
  %247 = load i32, i32* %27, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %256, label %249

249:                                              ; preds = %246
  %250 = load i32, i32* %27, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* %26, align 8
  %255 = icmp ult i64 %253, %254
  br i1 %255, label %256, label %262

256:                                              ; preds = %249, %246
  %257 = load i32, i32* %27, align 4
  store i32 %257, i32* %28, align 4
  %258 = load i32, i32* %27, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 %259
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %26, align 8
  br label %262

262:                                              ; preds = %256, %249
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %27, align 4
  %265 = add i32 %264, 1
  store i32 %265, i32* %27, align 4
  br label %157

266:                                              ; preds = %157
  %267 = load i8*, i8** %9, align 8
  %268 = load i32, i32* %19, align 4
  %269 = zext i32 %268 to i64
  %270 = load i64, i64* %15, align 8
  %271 = mul i64 %269, %270
  %272 = getelementptr inbounds i8, i8* %267, i64 %271
  store i8* %272, i8** %17, align 8
  %273 = load i32, i32* %28, align 4
  %274 = trunc i32 %273 to i8
  %275 = load i8*, i8** %8, align 8
  %276 = load i32, i32* %19, align 4
  %277 = zext i32 %276 to i64
  %278 = load i64, i64* %15, align 8
  %279 = add i64 %278, 1
  %280 = mul i64 %277, %279
  %281 = getelementptr inbounds i8, i8* %275, i64 %280
  store i8 %274, i8* %281, align 1
  store i32 0, i32* %18, align 4
  br label %282

282:                                              ; preds = %308, %266
  %283 = load i32, i32* %18, align 4
  %284 = zext i32 %283 to i64
  %285 = load i64, i64* %15, align 8
  %286 = icmp ult i64 %284, %285
  br i1 %286, label %287, label %311

287:                                              ; preds = %282
  %288 = load i32, i32* %28, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %25, i64 0, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 0
  %292 = load i8*, i8** %291, align 16
  %293 = load i32, i32* %18, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds i8, i8* %292, i64 %294
  %296 = load i8, i8* %295, align 1
  %297 = load i8*, i8** %8, align 8
  %298 = load i32, i32* %19, align 4
  %299 = zext i32 %298 to i64
  %300 = load i64, i64* %15, align 8
  %301 = add i64 %300, 1
  %302 = mul i64 %299, %301
  %303 = add i64 %302, 1
  %304 = load i32, i32* %18, align 4
  %305 = zext i32 %304 to i64
  %306 = add i64 %303, %305
  %307 = getelementptr inbounds i8, i8* %297, i64 %306
  store i8 %296, i8* %307, align 1
  br label %308

308:                                              ; preds = %287
  %309 = load i32, i32* %18, align 4
  %310 = add i32 %309, 1
  store i32 %310, i32* %18, align 4
  br label %282

311:                                              ; preds = %282
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %19, align 4
  %314 = add i32 %313, 1
  store i32 %314, i32* %19, align 4
  br label %152

315:                                              ; preds = %152
  br label %316

316:                                              ; preds = %315, %148
  store i32 0, i32* %27, align 4
  br label %317

317:                                              ; preds = %325, %316
  %318 = load i32, i32* %27, align 4
  %319 = icmp ult i32 %318, 5
  br i1 %319, label %320, label %328

320:                                              ; preds = %317
  %321 = load i32, i32* %27, align 4
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %25, i64 0, i64 %322
  %324 = call i32 @ucvector_cleanup(%struct.TYPE_12__* %323)
  br label %325

325:                                              ; preds = %320
  %326 = load i32, i32* %27, align 4
  %327 = add i32 %326, 1
  store i32 %327, i32* %27, align 4
  br label %317

328:                                              ; preds = %317
  br label %748

329:                                              ; preds = %124
  %330 = load i64, i64* %21, align 8
  %331 = load i64, i64* @LFS_ENTROPY, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %539

333:                                              ; preds = %329
  store float 0.000000e+00, float* %32, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %33, align 4
  br label %334

334:                                              ; preds = %350, %333
  %335 = load i32, i32* %33, align 4
  %336 = icmp ult i32 %335, 5
  br i1 %336, label %337, label %353

337:                                              ; preds = %334
  %338 = load i32, i32* %33, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %31, i64 0, i64 %339
  %341 = call i32 @ucvector_init(%struct.TYPE_12__* %340)
  %342 = load i32, i32* %33, align 4
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %31, i64 0, i64 %343
  %345 = load i64, i64* %15, align 8
  %346 = call i32 @ucvector_resize(%struct.TYPE_12__* %344, i64 %345)
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %349, label %348

348:                                              ; preds = %337
  store i32 83, i32* %7, align 4
  br label %751

349:                                              ; preds = %337
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %33, align 4
  %352 = add i32 %351, 1
  store i32 %352, i32* %33, align 4
  br label %334

353:                                              ; preds = %334
  store i32 0, i32* %19, align 4
  br label %354

354:                                              ; preds = %523, %353
  %355 = load i32, i32* %19, align 4
  %356 = load i32, i32* %11, align 4
  %357 = icmp ult i32 %355, %356
  br i1 %357, label %358, label %526

358:                                              ; preds = %354
  store i32 0, i32* %33, align 4
  br label %359

359:                                              ; preds = %474, %358
  %360 = load i32, i32* %33, align 4
  %361 = icmp ult i32 %360, 5
  br i1 %361, label %362, label %477

362:                                              ; preds = %359
  %363 = load i32, i32* %33, align 4
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %31, i64 0, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 0
  %367 = load i8*, i8** %366, align 16
  %368 = load i8*, i8** %9, align 8
  %369 = load i32, i32* %19, align 4
  %370 = zext i32 %369 to i64
  %371 = load i64, i64* %15, align 8
  %372 = mul i64 %370, %371
  %373 = getelementptr inbounds i8, i8* %368, i64 %372
  %374 = load i8*, i8** %17, align 8
  %375 = load i64, i64* %15, align 8
  %376 = load i64, i64* %16, align 8
  %377 = load i32, i32* %33, align 4
  %378 = call i32 @filterScanline(i8* %367, i8* %373, i8* %374, i64 %375, i64 %376, i32 %377)
  store i32 0, i32* %18, align 4
  br label %379

379:                                              ; preds = %386, %362
  %380 = load i32, i32* %18, align 4
  %381 = icmp ult i32 %380, 256
  br i1 %381, label %382, label %389

382:                                              ; preds = %379
  %383 = load i32, i32* %18, align 4
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds [256 x i32], [256 x i32]* %35, i64 0, i64 %384
  store i32 0, i32* %385, align 4
  br label %386

386:                                              ; preds = %382
  %387 = load i32, i32* %18, align 4
  %388 = add i32 %387, 1
  store i32 %388, i32* %18, align 4
  br label %379

389:                                              ; preds = %379
  store i32 0, i32* %18, align 4
  br label %390

390:                                              ; preds = %409, %389
  %391 = load i32, i32* %18, align 4
  %392 = zext i32 %391 to i64
  %393 = load i64, i64* %15, align 8
  %394 = icmp ult i64 %392, %393
  br i1 %394, label %395, label %412

395:                                              ; preds = %390
  %396 = load i32, i32* %33, align 4
  %397 = zext i32 %396 to i64
  %398 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %31, i64 0, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 0
  %400 = load i8*, i8** %399, align 16
  %401 = load i32, i32* %18, align 4
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds i8, i8* %400, i64 %402
  %404 = load i8, i8* %403, align 1
  %405 = zext i8 %404 to i64
  %406 = getelementptr inbounds [256 x i32], [256 x i32]* %35, i64 0, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = add i32 %407, 1
  store i32 %408, i32* %406, align 4
  br label %409

409:                                              ; preds = %395
  %410 = load i32, i32* %18, align 4
  %411 = add i32 %410, 1
  store i32 %411, i32* %18, align 4
  br label %390

412:                                              ; preds = %390
  %413 = load i32, i32* %33, align 4
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds [256 x i32], [256 x i32]* %35, i64 0, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = add i32 %416, 1
  store i32 %417, i32* %415, align 4
  %418 = load i32, i32* %33, align 4
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds [5 x float], [5 x float]* %30, i64 0, i64 %419
  store float 0.000000e+00, float* %420, align 4
  store i32 0, i32* %18, align 4
  br label %421

421:                                              ; preds = %454, %412
  %422 = load i32, i32* %18, align 4
  %423 = icmp ult i32 %422, 256
  br i1 %423, label %424, label %457

424:                                              ; preds = %421
  %425 = load i32, i32* %18, align 4
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds [256 x i32], [256 x i32]* %35, i64 0, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = uitofp i32 %428 to float
  %430 = load i64, i64* %15, align 8
  %431 = add i64 %430, 1
  %432 = uitofp i64 %431 to float
  %433 = fdiv float %429, %432
  store float %433, float* %36, align 4
  %434 = load i32, i32* %18, align 4
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds [256 x i32], [256 x i32]* %35, i64 0, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %424
  br label %447

440:                                              ; preds = %424
  %441 = load float, float* %36, align 4
  %442 = fdiv float 1.000000e+00, %441
  %443 = fptosi float %442 to i32
  %444 = call float @flog2(i32 %443)
  %445 = load float, float* %36, align 4
  %446 = fmul float %444, %445
  br label %447

447:                                              ; preds = %440, %439
  %448 = phi float [ 0.000000e+00, %439 ], [ %446, %440 ]
  %449 = load i32, i32* %33, align 4
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds [5 x float], [5 x float]* %30, i64 0, i64 %450
  %452 = load float, float* %451, align 4
  %453 = fadd float %452, %448
  store float %453, float* %451, align 4
  br label %454

454:                                              ; preds = %447
  %455 = load i32, i32* %18, align 4
  %456 = add i32 %455, 1
  store i32 %456, i32* %18, align 4
  br label %421

457:                                              ; preds = %421
  %458 = load i32, i32* %33, align 4
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %467, label %460

460:                                              ; preds = %457
  %461 = load i32, i32* %33, align 4
  %462 = zext i32 %461 to i64
  %463 = getelementptr inbounds [5 x float], [5 x float]* %30, i64 0, i64 %462
  %464 = load float, float* %463, align 4
  %465 = load float, float* %32, align 4
  %466 = fcmp olt float %464, %465
  br i1 %466, label %467, label %473

467:                                              ; preds = %460, %457
  %468 = load i32, i32* %33, align 4
  store i32 %468, i32* %34, align 4
  %469 = load i32, i32* %33, align 4
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds [5 x float], [5 x float]* %30, i64 0, i64 %470
  %472 = load float, float* %471, align 4
  store float %472, float* %32, align 4
  br label %473

473:                                              ; preds = %467, %460
  br label %474

474:                                              ; preds = %473
  %475 = load i32, i32* %33, align 4
  %476 = add i32 %475, 1
  store i32 %476, i32* %33, align 4
  br label %359

477:                                              ; preds = %359
  %478 = load i8*, i8** %9, align 8
  %479 = load i32, i32* %19, align 4
  %480 = zext i32 %479 to i64
  %481 = load i64, i64* %15, align 8
  %482 = mul i64 %480, %481
  %483 = getelementptr inbounds i8, i8* %478, i64 %482
  store i8* %483, i8** %17, align 8
  %484 = load i32, i32* %34, align 4
  %485 = trunc i32 %484 to i8
  %486 = load i8*, i8** %8, align 8
  %487 = load i32, i32* %19, align 4
  %488 = zext i32 %487 to i64
  %489 = load i64, i64* %15, align 8
  %490 = add i64 %489, 1
  %491 = mul i64 %488, %490
  %492 = getelementptr inbounds i8, i8* %486, i64 %491
  store i8 %485, i8* %492, align 1
  store i32 0, i32* %18, align 4
  br label %493

493:                                              ; preds = %519, %477
  %494 = load i32, i32* %18, align 4
  %495 = zext i32 %494 to i64
  %496 = load i64, i64* %15, align 8
  %497 = icmp ult i64 %495, %496
  br i1 %497, label %498, label %522

498:                                              ; preds = %493
  %499 = load i32, i32* %34, align 4
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %31, i64 0, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %501, i32 0, i32 0
  %503 = load i8*, i8** %502, align 16
  %504 = load i32, i32* %18, align 4
  %505 = zext i32 %504 to i64
  %506 = getelementptr inbounds i8, i8* %503, i64 %505
  %507 = load i8, i8* %506, align 1
  %508 = load i8*, i8** %8, align 8
  %509 = load i32, i32* %19, align 4
  %510 = zext i32 %509 to i64
  %511 = load i64, i64* %15, align 8
  %512 = add i64 %511, 1
  %513 = mul i64 %510, %512
  %514 = add i64 %513, 1
  %515 = load i32, i32* %18, align 4
  %516 = zext i32 %515 to i64
  %517 = add i64 %514, %516
  %518 = getelementptr inbounds i8, i8* %508, i64 %517
  store i8 %507, i8* %518, align 1
  br label %519

519:                                              ; preds = %498
  %520 = load i32, i32* %18, align 4
  %521 = add i32 %520, 1
  store i32 %521, i32* %18, align 4
  br label %493

522:                                              ; preds = %493
  br label %523

523:                                              ; preds = %522
  %524 = load i32, i32* %19, align 4
  %525 = add i32 %524, 1
  store i32 %525, i32* %19, align 4
  br label %354

526:                                              ; preds = %354
  store i32 0, i32* %33, align 4
  br label %527

527:                                              ; preds = %535, %526
  %528 = load i32, i32* %33, align 4
  %529 = icmp ult i32 %528, 5
  br i1 %529, label %530, label %538

530:                                              ; preds = %527
  %531 = load i32, i32* %33, align 4
  %532 = zext i32 %531 to i64
  %533 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %31, i64 0, i64 %532
  %534 = call i32 @ucvector_cleanup(%struct.TYPE_12__* %533)
  br label %535

535:                                              ; preds = %530
  %536 = load i32, i32* %33, align 4
  %537 = add i32 %536, 1
  store i32 %537, i32* %33, align 4
  br label %527

538:                                              ; preds = %527
  br label %747

539:                                              ; preds = %329
  %540 = load i64, i64* %21, align 8
  %541 = load i64, i64* @LFS_PREDEFINED, align 8
  %542 = icmp eq i64 %540, %541
  br i1 %542, label %543, label %589

543:                                              ; preds = %539
  store i32 0, i32* %19, align 4
  br label %544

544:                                              ; preds = %585, %543
  %545 = load i32, i32* %19, align 4
  %546 = load i32, i32* %11, align 4
  %547 = icmp ult i32 %545, %546
  br i1 %547, label %548, label %588

548:                                              ; preds = %544
  %549 = load i64, i64* %15, align 8
  %550 = add i64 1, %549
  %551 = load i32, i32* %19, align 4
  %552 = zext i32 %551 to i64
  %553 = mul i64 %550, %552
  store i64 %553, i64* %37, align 8
  %554 = load i64, i64* %15, align 8
  %555 = load i32, i32* %19, align 4
  %556 = zext i32 %555 to i64
  %557 = mul i64 %554, %556
  store i64 %557, i64* %38, align 8
  %558 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %559 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %558, i32 0, i32 1
  %560 = load i32*, i32** %559, align 8
  %561 = load i32, i32* %19, align 4
  %562 = zext i32 %561 to i64
  %563 = getelementptr inbounds i32, i32* %560, i64 %562
  %564 = load i32, i32* %563, align 4
  store i32 %564, i32* %39, align 4
  %565 = load i32, i32* %39, align 4
  %566 = trunc i32 %565 to i8
  %567 = load i8*, i8** %8, align 8
  %568 = load i64, i64* %37, align 8
  %569 = getelementptr inbounds i8, i8* %567, i64 %568
  store i8 %566, i8* %569, align 1
  %570 = load i8*, i8** %8, align 8
  %571 = load i64, i64* %37, align 8
  %572 = add i64 %571, 1
  %573 = getelementptr inbounds i8, i8* %570, i64 %572
  %574 = load i8*, i8** %9, align 8
  %575 = load i64, i64* %38, align 8
  %576 = getelementptr inbounds i8, i8* %574, i64 %575
  %577 = load i8*, i8** %17, align 8
  %578 = load i64, i64* %15, align 8
  %579 = load i64, i64* %16, align 8
  %580 = load i32, i32* %39, align 4
  %581 = call i32 @filterScanline(i8* %573, i8* %576, i8* %577, i64 %578, i64 %579, i32 %580)
  %582 = load i8*, i8** %9, align 8
  %583 = load i64, i64* %38, align 8
  %584 = getelementptr inbounds i8, i8* %582, i64 %583
  store i8* %584, i8** %17, align 8
  br label %585

585:                                              ; preds = %548
  %586 = load i32, i32* %19, align 4
  %587 = add i32 %586, 1
  store i32 %587, i32* %19, align 4
  br label %544

588:                                              ; preds = %544
  br label %746

589:                                              ; preds = %539
  %590 = load i64, i64* %21, align 8
  %591 = load i64, i64* @LFS_BRUTE_FORCE, align 8
  %592 = icmp eq i64 %590, %591
  br i1 %592, label %593, label %744

593:                                              ; preds = %589
  store i64 0, i64* %42, align 8
  store i32 0, i32* %43, align 4
  store i32 0, i32* %44, align 4
  %594 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %595 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %594, i32 0, i32 2
  %596 = bitcast %struct.TYPE_14__* %46 to i8*
  %597 = bitcast %struct.TYPE_14__* %595 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %596, i8* align 8 %597, i64 24, i1 false)
  %598 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  store i32 1, i32* %598, align 8
  %599 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  store i64 0, i64* %599, align 8
  %600 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  store i64 0, i64* %600, align 8
  store i32 0, i32* %43, align 4
  br label %601

601:                                              ; preds = %614, %593
  %602 = load i32, i32* %43, align 4
  %603 = icmp ult i32 %602, 5
  br i1 %603, label %604, label %617

604:                                              ; preds = %601
  %605 = load i32, i32* %43, align 4
  %606 = zext i32 %605 to i64
  %607 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %41, i64 0, i64 %606
  %608 = call i32 @ucvector_init(%struct.TYPE_12__* %607)
  %609 = load i32, i32* %43, align 4
  %610 = zext i32 %609 to i64
  %611 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %41, i64 0, i64 %610
  %612 = load i64, i64* %15, align 8
  %613 = call i32 @ucvector_resize(%struct.TYPE_12__* %611, i64 %612)
  br label %614

614:                                              ; preds = %604
  %615 = load i32, i32* %43, align 4
  %616 = add i32 %615, 1
  store i32 %616, i32* %43, align 4
  br label %601

617:                                              ; preds = %601
  store i32 0, i32* %19, align 4
  br label %618

618:                                              ; preds = %728, %617
  %619 = load i32, i32* %19, align 4
  %620 = load i32, i32* %11, align 4
  %621 = icmp ult i32 %619, %620
  br i1 %621, label %622, label %731

622:                                              ; preds = %618
  store i32 0, i32* %43, align 4
  br label %623

623:                                              ; preds = %679, %622
  %624 = load i32, i32* %43, align 4
  %625 = icmp ult i32 %624, 5
  br i1 %625, label %626, label %682

626:                                              ; preds = %623
  %627 = load i32, i32* %43, align 4
  %628 = zext i32 %627 to i64
  %629 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %41, i64 0, i64 %628
  %630 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %629, i32 0, i32 1
  %631 = load i32, i32* %630, align 8
  store i32 %631, i32* %47, align 4
  %632 = load i32, i32* %43, align 4
  %633 = zext i32 %632 to i64
  %634 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %41, i64 0, i64 %633
  %635 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %634, i32 0, i32 0
  %636 = load i8*, i8** %635, align 16
  %637 = load i8*, i8** %9, align 8
  %638 = load i32, i32* %19, align 4
  %639 = zext i32 %638 to i64
  %640 = load i64, i64* %15, align 8
  %641 = mul i64 %639, %640
  %642 = getelementptr inbounds i8, i8* %637, i64 %641
  %643 = load i8*, i8** %17, align 8
  %644 = load i64, i64* %15, align 8
  %645 = load i64, i64* %16, align 8
  %646 = load i32, i32* %43, align 4
  %647 = call i32 @filterScanline(i8* %636, i8* %642, i8* %643, i64 %644, i64 %645, i32 %646)
  %648 = load i32, i32* %43, align 4
  %649 = zext i32 %648 to i64
  %650 = getelementptr inbounds [5 x i64], [5 x i64]* %40, i64 0, i64 %649
  store i64 0, i64* %650, align 8
  store i8* null, i8** %45, align 8
  %651 = load i32, i32* %43, align 4
  %652 = zext i32 %651 to i64
  %653 = getelementptr inbounds [5 x i64], [5 x i64]* %40, i64 0, i64 %652
  %654 = load i32, i32* %43, align 4
  %655 = zext i32 %654 to i64
  %656 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %41, i64 0, i64 %655
  %657 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %656, i32 0, i32 0
  %658 = load i8*, i8** %657, align 16
  %659 = load i32, i32* %47, align 4
  %660 = call i32 @zlib_compress(i8** %45, i64* %653, i8* %658, i32 %659, %struct.TYPE_14__* %46)
  %661 = load i8*, i8** %45, align 8
  %662 = call i32 @lodepng_free(i8* %661)
  %663 = load i32, i32* %43, align 4
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %672, label %665

665:                                              ; preds = %626
  %666 = load i32, i32* %43, align 4
  %667 = zext i32 %666 to i64
  %668 = getelementptr inbounds [5 x i64], [5 x i64]* %40, i64 0, i64 %667
  %669 = load i64, i64* %668, align 8
  %670 = load i64, i64* %42, align 8
  %671 = icmp ult i64 %669, %670
  br i1 %671, label %672, label %678

672:                                              ; preds = %665, %626
  %673 = load i32, i32* %43, align 4
  store i32 %673, i32* %44, align 4
  %674 = load i32, i32* %43, align 4
  %675 = zext i32 %674 to i64
  %676 = getelementptr inbounds [5 x i64], [5 x i64]* %40, i64 0, i64 %675
  %677 = load i64, i64* %676, align 8
  store i64 %677, i64* %42, align 8
  br label %678

678:                                              ; preds = %672, %665
  br label %679

679:                                              ; preds = %678
  %680 = load i32, i32* %43, align 4
  %681 = add i32 %680, 1
  store i32 %681, i32* %43, align 4
  br label %623

682:                                              ; preds = %623
  %683 = load i8*, i8** %9, align 8
  %684 = load i32, i32* %19, align 4
  %685 = zext i32 %684 to i64
  %686 = load i64, i64* %15, align 8
  %687 = mul i64 %685, %686
  %688 = getelementptr inbounds i8, i8* %683, i64 %687
  store i8* %688, i8** %17, align 8
  %689 = load i32, i32* %44, align 4
  %690 = trunc i32 %689 to i8
  %691 = load i8*, i8** %8, align 8
  %692 = load i32, i32* %19, align 4
  %693 = zext i32 %692 to i64
  %694 = load i64, i64* %15, align 8
  %695 = add i64 %694, 1
  %696 = mul i64 %693, %695
  %697 = getelementptr inbounds i8, i8* %691, i64 %696
  store i8 %690, i8* %697, align 1
  store i32 0, i32* %18, align 4
  br label %698

698:                                              ; preds = %724, %682
  %699 = load i32, i32* %18, align 4
  %700 = zext i32 %699 to i64
  %701 = load i64, i64* %15, align 8
  %702 = icmp ult i64 %700, %701
  br i1 %702, label %703, label %727

703:                                              ; preds = %698
  %704 = load i32, i32* %44, align 4
  %705 = zext i32 %704 to i64
  %706 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %41, i64 0, i64 %705
  %707 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %706, i32 0, i32 0
  %708 = load i8*, i8** %707, align 16
  %709 = load i32, i32* %18, align 4
  %710 = zext i32 %709 to i64
  %711 = getelementptr inbounds i8, i8* %708, i64 %710
  %712 = load i8, i8* %711, align 1
  %713 = load i8*, i8** %8, align 8
  %714 = load i32, i32* %19, align 4
  %715 = zext i32 %714 to i64
  %716 = load i64, i64* %15, align 8
  %717 = add i64 %716, 1
  %718 = mul i64 %715, %717
  %719 = add i64 %718, 1
  %720 = load i32, i32* %18, align 4
  %721 = zext i32 %720 to i64
  %722 = add i64 %719, %721
  %723 = getelementptr inbounds i8, i8* %713, i64 %722
  store i8 %712, i8* %723, align 1
  br label %724

724:                                              ; preds = %703
  %725 = load i32, i32* %18, align 4
  %726 = add i32 %725, 1
  store i32 %726, i32* %18, align 4
  br label %698

727:                                              ; preds = %698
  br label %728

728:                                              ; preds = %727
  %729 = load i32, i32* %19, align 4
  %730 = add i32 %729, 1
  store i32 %730, i32* %19, align 4
  br label %618

731:                                              ; preds = %618
  store i32 0, i32* %43, align 4
  br label %732

732:                                              ; preds = %740, %731
  %733 = load i32, i32* %43, align 4
  %734 = icmp ult i32 %733, 5
  br i1 %734, label %735, label %743

735:                                              ; preds = %732
  %736 = load i32, i32* %43, align 4
  %737 = zext i32 %736 to i64
  %738 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %41, i64 0, i64 %737
  %739 = call i32 @ucvector_cleanup(%struct.TYPE_12__* %738)
  br label %740

740:                                              ; preds = %735
  %741 = load i32, i32* %43, align 4
  %742 = add i32 %741, 1
  store i32 %742, i32* %43, align 4
  br label %732

743:                                              ; preds = %732
  br label %745

744:                                              ; preds = %589
  store i32 88, i32* %7, align 4
  br label %751

745:                                              ; preds = %743
  br label %746

746:                                              ; preds = %745, %588
  br label %747

747:                                              ; preds = %746, %538
  br label %748

748:                                              ; preds = %747, %328
  br label %749

749:                                              ; preds = %748, %123
  %750 = load i32, i32* %20, align 4
  store i32 %750, i32* %7, align 4
  br label %751

751:                                              ; preds = %749, %744, %348, %143, %83
  %752 = load i32, i32* %7, align 4
  ret i32 %752
}

declare dso_local i32 @lodepng_get_bpp(%struct.TYPE_15__*) #1

declare dso_local i32 @filterScanline(i8*, i8*, i8*, i64, i64, i32) #1

declare dso_local i32 @ucvector_init(%struct.TYPE_12__*) #1

declare dso_local i32 @ucvector_resize(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @ucvector_cleanup(%struct.TYPE_12__*) #1

declare dso_local float @flog2(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @zlib_compress(i8**, i64*, i8*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @lodepng_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
