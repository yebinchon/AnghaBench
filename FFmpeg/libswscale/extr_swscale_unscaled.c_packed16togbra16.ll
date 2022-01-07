; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_packed16togbra16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_packed16togbra16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**, i32*, i32, i32, i32, i32, i32)* @packed16togbra16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packed16togbra16(i32* %0, i32 %1, i32** %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32** %2, i32*** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %24 = load i32**, i32*** %12, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %22, align 4
  store i32 0, i32* %20, align 4
  br label %29

29:                                               ; preds = %939, %9
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %942

33:                                               ; preds = %29
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %20, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  store i32* %39, i32** %23, align 8
  %40 = load i32, i32* %16, align 4
  switch i32 %40, label %711 [
    i32 3, label %41
    i32 2, label %273
    i32 1, label %492
  ]

41:                                               ; preds = %33
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %109

44:                                               ; preds = %41
  %45 = load i32, i32* %22, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %109

47:                                               ; preds = %44
  store i32 0, i32* %19, align 4
  br label %48

48:                                               ; preds = %105, %47
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %108

52:                                               ; preds = %48
  %53 = load i32*, i32** %23, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %23, align 8
  %55 = load i32, i32* %53, align 4
  %56 = call i32 @av_bswap16(i32 %55)
  %57 = load i32, i32* %17, align 4
  %58 = ashr i32 %56, %57
  %59 = call i32 @av_bswap16(i32 %58)
  %60 = load i32**, i32*** %12, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load i32*, i32** %23, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %23, align 8
  %68 = load i32, i32* %66, align 4
  %69 = call i32 @av_bswap16(i32 %68)
  %70 = load i32, i32* %17, align 4
  %71 = ashr i32 %69, %70
  %72 = call i32 @av_bswap16(i32 %71)
  %73 = load i32**, i32*** %12, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %19, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  %79 = load i32*, i32** %23, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %23, align 8
  %81 = load i32, i32* %79, align 4
  %82 = call i32 @av_bswap16(i32 %81)
  %83 = load i32, i32* %17, align 4
  %84 = ashr i32 %82, %83
  %85 = call i32 @av_bswap16(i32 %84)
  %86 = load i32**, i32*** %12, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  %92 = load i32*, i32** %23, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %23, align 8
  %94 = load i32, i32* %92, align 4
  %95 = call i32 @av_bswap16(i32 %94)
  %96 = load i32, i32* %17, align 4
  %97 = ashr i32 %95, %96
  %98 = call i32 @av_bswap16(i32 %97)
  %99 = load i32**, i32*** %12, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 3
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %19, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %98, i32* %104, align 4
  br label %105

105:                                              ; preds = %52
  %106 = load i32, i32* %19, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %19, align 4
  br label %48

108:                                              ; preds = %48
  br label %272

109:                                              ; preds = %44, %41
  %110 = load i32, i32* %22, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %167

112:                                              ; preds = %109
  store i32 0, i32* %19, align 4
  br label %113

113:                                              ; preds = %163, %112
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* %18, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %166

117:                                              ; preds = %113
  %118 = load i32*, i32** %23, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %23, align 8
  %120 = load i32, i32* %118, align 4
  %121 = call i32 @av_bswap16(i32 %120)
  %122 = load i32, i32* %17, align 4
  %123 = ashr i32 %121, %122
  %124 = call i32 @av_bswap16(i32 %123)
  %125 = load i32**, i32*** %12, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %124, i32* %130, align 4
  %131 = load i32*, i32** %23, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %23, align 8
  %133 = load i32, i32* %131, align 4
  %134 = call i32 @av_bswap16(i32 %133)
  %135 = load i32, i32* %17, align 4
  %136 = ashr i32 %134, %135
  %137 = call i32 @av_bswap16(i32 %136)
  %138 = load i32**, i32*** %12, align 8
  %139 = getelementptr inbounds i32*, i32** %138, i64 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %19, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %137, i32* %143, align 4
  %144 = load i32*, i32** %23, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %23, align 8
  %146 = load i32, i32* %144, align 4
  %147 = call i32 @av_bswap16(i32 %146)
  %148 = load i32, i32* %17, align 4
  %149 = ashr i32 %147, %148
  %150 = call i32 @av_bswap16(i32 %149)
  %151 = load i32**, i32*** %12, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i64 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %19, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %150, i32* %156, align 4
  %157 = load i32**, i32*** %12, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 3
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %19, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 65535, i32* %162, align 4
  br label %163

163:                                              ; preds = %117
  %164 = load i32, i32* %19, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %19, align 4
  br label %113

166:                                              ; preds = %113
  br label %271

167:                                              ; preds = %109
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %221

170:                                              ; preds = %167
  store i32 0, i32* %19, align 4
  br label %171

171:                                              ; preds = %217, %170
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %18, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %220

175:                                              ; preds = %171
  %176 = load i32*, i32** %23, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %23, align 8
  %178 = load i32, i32* %176, align 4
  %179 = call i32 @av_bswap16(i32 %178)
  %180 = load i32, i32* %17, align 4
  %181 = ashr i32 %179, %180
  %182 = call i32 @av_bswap16(i32 %181)
  %183 = load i32**, i32*** %12, align 8
  %184 = getelementptr inbounds i32*, i32** %183, i64 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %182, i32* %188, align 4
  %189 = load i32*, i32** %23, align 8
  %190 = getelementptr inbounds i32, i32* %189, i32 1
  store i32* %190, i32** %23, align 8
  %191 = load i32, i32* %189, align 4
  %192 = call i32 @av_bswap16(i32 %191)
  %193 = load i32, i32* %17, align 4
  %194 = ashr i32 %192, %193
  %195 = call i32 @av_bswap16(i32 %194)
  %196 = load i32**, i32*** %12, align 8
  %197 = getelementptr inbounds i32*, i32** %196, i64 1
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %19, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 %195, i32* %201, align 4
  %202 = load i32*, i32** %23, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %203, i32** %23, align 8
  %204 = load i32, i32* %202, align 4
  %205 = call i32 @av_bswap16(i32 %204)
  %206 = load i32, i32* %17, align 4
  %207 = ashr i32 %205, %206
  %208 = call i32 @av_bswap16(i32 %207)
  %209 = load i32**, i32*** %12, align 8
  %210 = getelementptr inbounds i32*, i32** %209, i64 2
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %19, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  store i32 %208, i32* %214, align 4
  %215 = load i32*, i32** %23, align 8
  %216 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %216, i32** %23, align 8
  br label %217

217:                                              ; preds = %175
  %218 = load i32, i32* %19, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %19, align 4
  br label %171

220:                                              ; preds = %171
  br label %270

221:                                              ; preds = %167
  store i32 0, i32* %19, align 4
  br label %222

222:                                              ; preds = %266, %221
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* %18, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %269

226:                                              ; preds = %222
  %227 = load i32*, i32** %23, align 8
  %228 = getelementptr inbounds i32, i32* %227, i32 1
  store i32* %228, i32** %23, align 8
  %229 = load i32, i32* %227, align 4
  %230 = call i32 @av_bswap16(i32 %229)
  %231 = load i32, i32* %17, align 4
  %232 = ashr i32 %230, %231
  %233 = call i32 @av_bswap16(i32 %232)
  %234 = load i32**, i32*** %12, align 8
  %235 = getelementptr inbounds i32*, i32** %234, i64 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %19, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  store i32 %233, i32* %239, align 4
  %240 = load i32*, i32** %23, align 8
  %241 = getelementptr inbounds i32, i32* %240, i32 1
  store i32* %241, i32** %23, align 8
  %242 = load i32, i32* %240, align 4
  %243 = call i32 @av_bswap16(i32 %242)
  %244 = load i32, i32* %17, align 4
  %245 = ashr i32 %243, %244
  %246 = call i32 @av_bswap16(i32 %245)
  %247 = load i32**, i32*** %12, align 8
  %248 = getelementptr inbounds i32*, i32** %247, i64 1
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %19, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 %246, i32* %252, align 4
  %253 = load i32*, i32** %23, align 8
  %254 = getelementptr inbounds i32, i32* %253, i32 1
  store i32* %254, i32** %23, align 8
  %255 = load i32, i32* %253, align 4
  %256 = call i32 @av_bswap16(i32 %255)
  %257 = load i32, i32* %17, align 4
  %258 = ashr i32 %256, %257
  %259 = call i32 @av_bswap16(i32 %258)
  %260 = load i32**, i32*** %12, align 8
  %261 = getelementptr inbounds i32*, i32** %260, i64 2
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %19, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  store i32 %259, i32* %265, align 4
  br label %266

266:                                              ; preds = %226
  %267 = load i32, i32* %19, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %19, align 4
  br label %222

269:                                              ; preds = %222
  br label %270

270:                                              ; preds = %269, %220
  br label %271

271:                                              ; preds = %270, %166
  br label %272

272:                                              ; preds = %271, %108
  br label %917

273:                                              ; preds = %33
  %274 = load i32, i32* %15, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %337

276:                                              ; preds = %273
  %277 = load i32, i32* %22, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %337

279:                                              ; preds = %276
  store i32 0, i32* %19, align 4
  br label %280

280:                                              ; preds = %333, %279
  %281 = load i32, i32* %19, align 4
  %282 = load i32, i32* %18, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %336

284:                                              ; preds = %280
  %285 = load i32*, i32** %23, align 8
  %286 = getelementptr inbounds i32, i32* %285, i32 1
  store i32* %286, i32** %23, align 8
  %287 = load i32, i32* %285, align 4
  %288 = load i32, i32* %17, align 4
  %289 = ashr i32 %287, %288
  %290 = call i32 @av_bswap16(i32 %289)
  %291 = load i32**, i32*** %12, align 8
  %292 = getelementptr inbounds i32*, i32** %291, i64 0
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %19, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  store i32 %290, i32* %296, align 4
  %297 = load i32*, i32** %23, align 8
  %298 = getelementptr inbounds i32, i32* %297, i32 1
  store i32* %298, i32** %23, align 8
  %299 = load i32, i32* %297, align 4
  %300 = load i32, i32* %17, align 4
  %301 = ashr i32 %299, %300
  %302 = call i32 @av_bswap16(i32 %301)
  %303 = load i32**, i32*** %12, align 8
  %304 = getelementptr inbounds i32*, i32** %303, i64 1
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %19, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  store i32 %302, i32* %308, align 4
  %309 = load i32*, i32** %23, align 8
  %310 = getelementptr inbounds i32, i32* %309, i32 1
  store i32* %310, i32** %23, align 8
  %311 = load i32, i32* %309, align 4
  %312 = load i32, i32* %17, align 4
  %313 = ashr i32 %311, %312
  %314 = call i32 @av_bswap16(i32 %313)
  %315 = load i32**, i32*** %12, align 8
  %316 = getelementptr inbounds i32*, i32** %315, i64 2
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %19, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  store i32 %314, i32* %320, align 4
  %321 = load i32*, i32** %23, align 8
  %322 = getelementptr inbounds i32, i32* %321, i32 1
  store i32* %322, i32** %23, align 8
  %323 = load i32, i32* %321, align 4
  %324 = load i32, i32* %17, align 4
  %325 = ashr i32 %323, %324
  %326 = call i32 @av_bswap16(i32 %325)
  %327 = load i32**, i32*** %12, align 8
  %328 = getelementptr inbounds i32*, i32** %327, i64 3
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %19, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  store i32 %326, i32* %332, align 4
  br label %333

333:                                              ; preds = %284
  %334 = load i32, i32* %19, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %19, align 4
  br label %280

336:                                              ; preds = %280
  br label %491

337:                                              ; preds = %276, %273
  %338 = load i32, i32* %22, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %392

340:                                              ; preds = %337
  store i32 0, i32* %19, align 4
  br label %341

341:                                              ; preds = %388, %340
  %342 = load i32, i32* %19, align 4
  %343 = load i32, i32* %18, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %391

345:                                              ; preds = %341
  %346 = load i32*, i32** %23, align 8
  %347 = getelementptr inbounds i32, i32* %346, i32 1
  store i32* %347, i32** %23, align 8
  %348 = load i32, i32* %346, align 4
  %349 = load i32, i32* %17, align 4
  %350 = ashr i32 %348, %349
  %351 = call i32 @av_bswap16(i32 %350)
  %352 = load i32**, i32*** %12, align 8
  %353 = getelementptr inbounds i32*, i32** %352, i64 0
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %19, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  store i32 %351, i32* %357, align 4
  %358 = load i32*, i32** %23, align 8
  %359 = getelementptr inbounds i32, i32* %358, i32 1
  store i32* %359, i32** %23, align 8
  %360 = load i32, i32* %358, align 4
  %361 = load i32, i32* %17, align 4
  %362 = ashr i32 %360, %361
  %363 = call i32 @av_bswap16(i32 %362)
  %364 = load i32**, i32*** %12, align 8
  %365 = getelementptr inbounds i32*, i32** %364, i64 1
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %19, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  store i32 %363, i32* %369, align 4
  %370 = load i32*, i32** %23, align 8
  %371 = getelementptr inbounds i32, i32* %370, i32 1
  store i32* %371, i32** %23, align 8
  %372 = load i32, i32* %370, align 4
  %373 = load i32, i32* %17, align 4
  %374 = ashr i32 %372, %373
  %375 = call i32 @av_bswap16(i32 %374)
  %376 = load i32**, i32*** %12, align 8
  %377 = getelementptr inbounds i32*, i32** %376, i64 2
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* %19, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  store i32 %375, i32* %381, align 4
  %382 = load i32**, i32*** %12, align 8
  %383 = getelementptr inbounds i32*, i32** %382, i64 3
  %384 = load i32*, i32** %383, align 8
  %385 = load i32, i32* %19, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  store i32 65535, i32* %387, align 4
  br label %388

388:                                              ; preds = %345
  %389 = load i32, i32* %19, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %19, align 4
  br label %341

391:                                              ; preds = %341
  br label %490

392:                                              ; preds = %337
  %393 = load i32, i32* %15, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %443

395:                                              ; preds = %392
  store i32 0, i32* %19, align 4
  br label %396

396:                                              ; preds = %439, %395
  %397 = load i32, i32* %19, align 4
  %398 = load i32, i32* %18, align 4
  %399 = icmp slt i32 %397, %398
  br i1 %399, label %400, label %442

400:                                              ; preds = %396
  %401 = load i32*, i32** %23, align 8
  %402 = getelementptr inbounds i32, i32* %401, i32 1
  store i32* %402, i32** %23, align 8
  %403 = load i32, i32* %401, align 4
  %404 = load i32, i32* %17, align 4
  %405 = ashr i32 %403, %404
  %406 = call i32 @av_bswap16(i32 %405)
  %407 = load i32**, i32*** %12, align 8
  %408 = getelementptr inbounds i32*, i32** %407, i64 0
  %409 = load i32*, i32** %408, align 8
  %410 = load i32, i32* %19, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  store i32 %406, i32* %412, align 4
  %413 = load i32*, i32** %23, align 8
  %414 = getelementptr inbounds i32, i32* %413, i32 1
  store i32* %414, i32** %23, align 8
  %415 = load i32, i32* %413, align 4
  %416 = load i32, i32* %17, align 4
  %417 = ashr i32 %415, %416
  %418 = call i32 @av_bswap16(i32 %417)
  %419 = load i32**, i32*** %12, align 8
  %420 = getelementptr inbounds i32*, i32** %419, i64 1
  %421 = load i32*, i32** %420, align 8
  %422 = load i32, i32* %19, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  store i32 %418, i32* %424, align 4
  %425 = load i32*, i32** %23, align 8
  %426 = getelementptr inbounds i32, i32* %425, i32 1
  store i32* %426, i32** %23, align 8
  %427 = load i32, i32* %425, align 4
  %428 = load i32, i32* %17, align 4
  %429 = ashr i32 %427, %428
  %430 = call i32 @av_bswap16(i32 %429)
  %431 = load i32**, i32*** %12, align 8
  %432 = getelementptr inbounds i32*, i32** %431, i64 2
  %433 = load i32*, i32** %432, align 8
  %434 = load i32, i32* %19, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  store i32 %430, i32* %436, align 4
  %437 = load i32*, i32** %23, align 8
  %438 = getelementptr inbounds i32, i32* %437, i32 1
  store i32* %438, i32** %23, align 8
  br label %439

439:                                              ; preds = %400
  %440 = load i32, i32* %19, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %19, align 4
  br label %396

442:                                              ; preds = %396
  br label %489

443:                                              ; preds = %392
  store i32 0, i32* %19, align 4
  br label %444

444:                                              ; preds = %485, %443
  %445 = load i32, i32* %19, align 4
  %446 = load i32, i32* %18, align 4
  %447 = icmp slt i32 %445, %446
  br i1 %447, label %448, label %488

448:                                              ; preds = %444
  %449 = load i32*, i32** %23, align 8
  %450 = getelementptr inbounds i32, i32* %449, i32 1
  store i32* %450, i32** %23, align 8
  %451 = load i32, i32* %449, align 4
  %452 = load i32, i32* %17, align 4
  %453 = ashr i32 %451, %452
  %454 = call i32 @av_bswap16(i32 %453)
  %455 = load i32**, i32*** %12, align 8
  %456 = getelementptr inbounds i32*, i32** %455, i64 0
  %457 = load i32*, i32** %456, align 8
  %458 = load i32, i32* %19, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %457, i64 %459
  store i32 %454, i32* %460, align 4
  %461 = load i32*, i32** %23, align 8
  %462 = getelementptr inbounds i32, i32* %461, i32 1
  store i32* %462, i32** %23, align 8
  %463 = load i32, i32* %461, align 4
  %464 = load i32, i32* %17, align 4
  %465 = ashr i32 %463, %464
  %466 = call i32 @av_bswap16(i32 %465)
  %467 = load i32**, i32*** %12, align 8
  %468 = getelementptr inbounds i32*, i32** %467, i64 1
  %469 = load i32*, i32** %468, align 8
  %470 = load i32, i32* %19, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %469, i64 %471
  store i32 %466, i32* %472, align 4
  %473 = load i32*, i32** %23, align 8
  %474 = getelementptr inbounds i32, i32* %473, i32 1
  store i32* %474, i32** %23, align 8
  %475 = load i32, i32* %473, align 4
  %476 = load i32, i32* %17, align 4
  %477 = ashr i32 %475, %476
  %478 = call i32 @av_bswap16(i32 %477)
  %479 = load i32**, i32*** %12, align 8
  %480 = getelementptr inbounds i32*, i32** %479, i64 2
  %481 = load i32*, i32** %480, align 8
  %482 = load i32, i32* %19, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %481, i64 %483
  store i32 %478, i32* %484, align 4
  br label %485

485:                                              ; preds = %448
  %486 = load i32, i32* %19, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %19, align 4
  br label %444

488:                                              ; preds = %444
  br label %489

489:                                              ; preds = %488, %442
  br label %490

490:                                              ; preds = %489, %391
  br label %491

491:                                              ; preds = %490, %336
  br label %917

492:                                              ; preds = %33
  %493 = load i32, i32* %15, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %556

495:                                              ; preds = %492
  %496 = load i32, i32* %22, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %556

498:                                              ; preds = %495
  store i32 0, i32* %19, align 4
  br label %499

499:                                              ; preds = %552, %498
  %500 = load i32, i32* %19, align 4
  %501 = load i32, i32* %18, align 4
  %502 = icmp slt i32 %500, %501
  br i1 %502, label %503, label %555

503:                                              ; preds = %499
  %504 = load i32*, i32** %23, align 8
  %505 = getelementptr inbounds i32, i32* %504, i32 1
  store i32* %505, i32** %23, align 8
  %506 = load i32, i32* %504, align 4
  %507 = call i32 @av_bswap16(i32 %506)
  %508 = load i32, i32* %17, align 4
  %509 = ashr i32 %507, %508
  %510 = load i32**, i32*** %12, align 8
  %511 = getelementptr inbounds i32*, i32** %510, i64 0
  %512 = load i32*, i32** %511, align 8
  %513 = load i32, i32* %19, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %512, i64 %514
  store i32 %509, i32* %515, align 4
  %516 = load i32*, i32** %23, align 8
  %517 = getelementptr inbounds i32, i32* %516, i32 1
  store i32* %517, i32** %23, align 8
  %518 = load i32, i32* %516, align 4
  %519 = call i32 @av_bswap16(i32 %518)
  %520 = load i32, i32* %17, align 4
  %521 = ashr i32 %519, %520
  %522 = load i32**, i32*** %12, align 8
  %523 = getelementptr inbounds i32*, i32** %522, i64 1
  %524 = load i32*, i32** %523, align 8
  %525 = load i32, i32* %19, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32, i32* %524, i64 %526
  store i32 %521, i32* %527, align 4
  %528 = load i32*, i32** %23, align 8
  %529 = getelementptr inbounds i32, i32* %528, i32 1
  store i32* %529, i32** %23, align 8
  %530 = load i32, i32* %528, align 4
  %531 = call i32 @av_bswap16(i32 %530)
  %532 = load i32, i32* %17, align 4
  %533 = ashr i32 %531, %532
  %534 = load i32**, i32*** %12, align 8
  %535 = getelementptr inbounds i32*, i32** %534, i64 2
  %536 = load i32*, i32** %535, align 8
  %537 = load i32, i32* %19, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i32, i32* %536, i64 %538
  store i32 %533, i32* %539, align 4
  %540 = load i32*, i32** %23, align 8
  %541 = getelementptr inbounds i32, i32* %540, i32 1
  store i32* %541, i32** %23, align 8
  %542 = load i32, i32* %540, align 4
  %543 = call i32 @av_bswap16(i32 %542)
  %544 = load i32, i32* %17, align 4
  %545 = ashr i32 %543, %544
  %546 = load i32**, i32*** %12, align 8
  %547 = getelementptr inbounds i32*, i32** %546, i64 3
  %548 = load i32*, i32** %547, align 8
  %549 = load i32, i32* %19, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %548, i64 %550
  store i32 %545, i32* %551, align 4
  br label %552

552:                                              ; preds = %503
  %553 = load i32, i32* %19, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %19, align 4
  br label %499

555:                                              ; preds = %499
  br label %710

556:                                              ; preds = %495, %492
  %557 = load i32, i32* %22, align 4
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %611

559:                                              ; preds = %556
  store i32 0, i32* %19, align 4
  br label %560

560:                                              ; preds = %607, %559
  %561 = load i32, i32* %19, align 4
  %562 = load i32, i32* %18, align 4
  %563 = icmp slt i32 %561, %562
  br i1 %563, label %564, label %610

564:                                              ; preds = %560
  %565 = load i32*, i32** %23, align 8
  %566 = getelementptr inbounds i32, i32* %565, i32 1
  store i32* %566, i32** %23, align 8
  %567 = load i32, i32* %565, align 4
  %568 = call i32 @av_bswap16(i32 %567)
  %569 = load i32, i32* %17, align 4
  %570 = ashr i32 %568, %569
  %571 = load i32**, i32*** %12, align 8
  %572 = getelementptr inbounds i32*, i32** %571, i64 0
  %573 = load i32*, i32** %572, align 8
  %574 = load i32, i32* %19, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i32, i32* %573, i64 %575
  store i32 %570, i32* %576, align 4
  %577 = load i32*, i32** %23, align 8
  %578 = getelementptr inbounds i32, i32* %577, i32 1
  store i32* %578, i32** %23, align 8
  %579 = load i32, i32* %577, align 4
  %580 = call i32 @av_bswap16(i32 %579)
  %581 = load i32, i32* %17, align 4
  %582 = ashr i32 %580, %581
  %583 = load i32**, i32*** %12, align 8
  %584 = getelementptr inbounds i32*, i32** %583, i64 1
  %585 = load i32*, i32** %584, align 8
  %586 = load i32, i32* %19, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds i32, i32* %585, i64 %587
  store i32 %582, i32* %588, align 4
  %589 = load i32*, i32** %23, align 8
  %590 = getelementptr inbounds i32, i32* %589, i32 1
  store i32* %590, i32** %23, align 8
  %591 = load i32, i32* %589, align 4
  %592 = call i32 @av_bswap16(i32 %591)
  %593 = load i32, i32* %17, align 4
  %594 = ashr i32 %592, %593
  %595 = load i32**, i32*** %12, align 8
  %596 = getelementptr inbounds i32*, i32** %595, i64 2
  %597 = load i32*, i32** %596, align 8
  %598 = load i32, i32* %19, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i32, i32* %597, i64 %599
  store i32 %594, i32* %600, align 4
  %601 = load i32**, i32*** %12, align 8
  %602 = getelementptr inbounds i32*, i32** %601, i64 3
  %603 = load i32*, i32** %602, align 8
  %604 = load i32, i32* %19, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i32, i32* %603, i64 %605
  store i32 65535, i32* %606, align 4
  br label %607

607:                                              ; preds = %564
  %608 = load i32, i32* %19, align 4
  %609 = add nsw i32 %608, 1
  store i32 %609, i32* %19, align 4
  br label %560

610:                                              ; preds = %560
  br label %709

611:                                              ; preds = %556
  %612 = load i32, i32* %15, align 4
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %662

614:                                              ; preds = %611
  store i32 0, i32* %19, align 4
  br label %615

615:                                              ; preds = %658, %614
  %616 = load i32, i32* %19, align 4
  %617 = load i32, i32* %18, align 4
  %618 = icmp slt i32 %616, %617
  br i1 %618, label %619, label %661

619:                                              ; preds = %615
  %620 = load i32*, i32** %23, align 8
  %621 = getelementptr inbounds i32, i32* %620, i32 1
  store i32* %621, i32** %23, align 8
  %622 = load i32, i32* %620, align 4
  %623 = call i32 @av_bswap16(i32 %622)
  %624 = load i32, i32* %17, align 4
  %625 = ashr i32 %623, %624
  %626 = load i32**, i32*** %12, align 8
  %627 = getelementptr inbounds i32*, i32** %626, i64 0
  %628 = load i32*, i32** %627, align 8
  %629 = load i32, i32* %19, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i32, i32* %628, i64 %630
  store i32 %625, i32* %631, align 4
  %632 = load i32*, i32** %23, align 8
  %633 = getelementptr inbounds i32, i32* %632, i32 1
  store i32* %633, i32** %23, align 8
  %634 = load i32, i32* %632, align 4
  %635 = call i32 @av_bswap16(i32 %634)
  %636 = load i32, i32* %17, align 4
  %637 = ashr i32 %635, %636
  %638 = load i32**, i32*** %12, align 8
  %639 = getelementptr inbounds i32*, i32** %638, i64 1
  %640 = load i32*, i32** %639, align 8
  %641 = load i32, i32* %19, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds i32, i32* %640, i64 %642
  store i32 %637, i32* %643, align 4
  %644 = load i32*, i32** %23, align 8
  %645 = getelementptr inbounds i32, i32* %644, i32 1
  store i32* %645, i32** %23, align 8
  %646 = load i32, i32* %644, align 4
  %647 = call i32 @av_bswap16(i32 %646)
  %648 = load i32, i32* %17, align 4
  %649 = ashr i32 %647, %648
  %650 = load i32**, i32*** %12, align 8
  %651 = getelementptr inbounds i32*, i32** %650, i64 2
  %652 = load i32*, i32** %651, align 8
  %653 = load i32, i32* %19, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds i32, i32* %652, i64 %654
  store i32 %649, i32* %655, align 4
  %656 = load i32*, i32** %23, align 8
  %657 = getelementptr inbounds i32, i32* %656, i32 1
  store i32* %657, i32** %23, align 8
  br label %658

658:                                              ; preds = %619
  %659 = load i32, i32* %19, align 4
  %660 = add nsw i32 %659, 1
  store i32 %660, i32* %19, align 4
  br label %615

661:                                              ; preds = %615
  br label %708

662:                                              ; preds = %611
  store i32 0, i32* %19, align 4
  br label %663

663:                                              ; preds = %704, %662
  %664 = load i32, i32* %19, align 4
  %665 = load i32, i32* %18, align 4
  %666 = icmp slt i32 %664, %665
  br i1 %666, label %667, label %707

667:                                              ; preds = %663
  %668 = load i32*, i32** %23, align 8
  %669 = getelementptr inbounds i32, i32* %668, i32 1
  store i32* %669, i32** %23, align 8
  %670 = load i32, i32* %668, align 4
  %671 = call i32 @av_bswap16(i32 %670)
  %672 = load i32, i32* %17, align 4
  %673 = ashr i32 %671, %672
  %674 = load i32**, i32*** %12, align 8
  %675 = getelementptr inbounds i32*, i32** %674, i64 0
  %676 = load i32*, i32** %675, align 8
  %677 = load i32, i32* %19, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds i32, i32* %676, i64 %678
  store i32 %673, i32* %679, align 4
  %680 = load i32*, i32** %23, align 8
  %681 = getelementptr inbounds i32, i32* %680, i32 1
  store i32* %681, i32** %23, align 8
  %682 = load i32, i32* %680, align 4
  %683 = call i32 @av_bswap16(i32 %682)
  %684 = load i32, i32* %17, align 4
  %685 = ashr i32 %683, %684
  %686 = load i32**, i32*** %12, align 8
  %687 = getelementptr inbounds i32*, i32** %686, i64 1
  %688 = load i32*, i32** %687, align 8
  %689 = load i32, i32* %19, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i32, i32* %688, i64 %690
  store i32 %685, i32* %691, align 4
  %692 = load i32*, i32** %23, align 8
  %693 = getelementptr inbounds i32, i32* %692, i32 1
  store i32* %693, i32** %23, align 8
  %694 = load i32, i32* %692, align 4
  %695 = call i32 @av_bswap16(i32 %694)
  %696 = load i32, i32* %17, align 4
  %697 = ashr i32 %695, %696
  %698 = load i32**, i32*** %12, align 8
  %699 = getelementptr inbounds i32*, i32** %698, i64 2
  %700 = load i32*, i32** %699, align 8
  %701 = load i32, i32* %19, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds i32, i32* %700, i64 %702
  store i32 %697, i32* %703, align 4
  br label %704

704:                                              ; preds = %667
  %705 = load i32, i32* %19, align 4
  %706 = add nsw i32 %705, 1
  store i32 %706, i32* %19, align 4
  br label %663

707:                                              ; preds = %663
  br label %708

708:                                              ; preds = %707, %661
  br label %709

709:                                              ; preds = %708, %610
  br label %710

710:                                              ; preds = %709, %555
  br label %917

711:                                              ; preds = %33
  %712 = load i32, i32* %15, align 4
  %713 = icmp ne i32 %712, 0
  br i1 %713, label %714, label %771

714:                                              ; preds = %711
  %715 = load i32, i32* %22, align 4
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %717, label %771

717:                                              ; preds = %714
  store i32 0, i32* %19, align 4
  br label %718

718:                                              ; preds = %767, %717
  %719 = load i32, i32* %19, align 4
  %720 = load i32, i32* %18, align 4
  %721 = icmp slt i32 %719, %720
  br i1 %721, label %722, label %770

722:                                              ; preds = %718
  %723 = load i32*, i32** %23, align 8
  %724 = getelementptr inbounds i32, i32* %723, i32 1
  store i32* %724, i32** %23, align 8
  %725 = load i32, i32* %723, align 4
  %726 = load i32, i32* %17, align 4
  %727 = ashr i32 %725, %726
  %728 = load i32**, i32*** %12, align 8
  %729 = getelementptr inbounds i32*, i32** %728, i64 0
  %730 = load i32*, i32** %729, align 8
  %731 = load i32, i32* %19, align 4
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds i32, i32* %730, i64 %732
  store i32 %727, i32* %733, align 4
  %734 = load i32*, i32** %23, align 8
  %735 = getelementptr inbounds i32, i32* %734, i32 1
  store i32* %735, i32** %23, align 8
  %736 = load i32, i32* %734, align 4
  %737 = load i32, i32* %17, align 4
  %738 = ashr i32 %736, %737
  %739 = load i32**, i32*** %12, align 8
  %740 = getelementptr inbounds i32*, i32** %739, i64 1
  %741 = load i32*, i32** %740, align 8
  %742 = load i32, i32* %19, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds i32, i32* %741, i64 %743
  store i32 %738, i32* %744, align 4
  %745 = load i32*, i32** %23, align 8
  %746 = getelementptr inbounds i32, i32* %745, i32 1
  store i32* %746, i32** %23, align 8
  %747 = load i32, i32* %745, align 4
  %748 = load i32, i32* %17, align 4
  %749 = ashr i32 %747, %748
  %750 = load i32**, i32*** %12, align 8
  %751 = getelementptr inbounds i32*, i32** %750, i64 2
  %752 = load i32*, i32** %751, align 8
  %753 = load i32, i32* %19, align 4
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds i32, i32* %752, i64 %754
  store i32 %749, i32* %755, align 4
  %756 = load i32*, i32** %23, align 8
  %757 = getelementptr inbounds i32, i32* %756, i32 1
  store i32* %757, i32** %23, align 8
  %758 = load i32, i32* %756, align 4
  %759 = load i32, i32* %17, align 4
  %760 = ashr i32 %758, %759
  %761 = load i32**, i32*** %12, align 8
  %762 = getelementptr inbounds i32*, i32** %761, i64 3
  %763 = load i32*, i32** %762, align 8
  %764 = load i32, i32* %19, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds i32, i32* %763, i64 %765
  store i32 %760, i32* %766, align 4
  br label %767

767:                                              ; preds = %722
  %768 = load i32, i32* %19, align 4
  %769 = add nsw i32 %768, 1
  store i32 %769, i32* %19, align 4
  br label %718

770:                                              ; preds = %718
  br label %916

771:                                              ; preds = %714, %711
  %772 = load i32, i32* %22, align 4
  %773 = icmp ne i32 %772, 0
  br i1 %773, label %774, label %823

774:                                              ; preds = %771
  store i32 0, i32* %19, align 4
  br label %775

775:                                              ; preds = %819, %774
  %776 = load i32, i32* %19, align 4
  %777 = load i32, i32* %18, align 4
  %778 = icmp slt i32 %776, %777
  br i1 %778, label %779, label %822

779:                                              ; preds = %775
  %780 = load i32*, i32** %23, align 8
  %781 = getelementptr inbounds i32, i32* %780, i32 1
  store i32* %781, i32** %23, align 8
  %782 = load i32, i32* %780, align 4
  %783 = load i32, i32* %17, align 4
  %784 = ashr i32 %782, %783
  %785 = load i32**, i32*** %12, align 8
  %786 = getelementptr inbounds i32*, i32** %785, i64 0
  %787 = load i32*, i32** %786, align 8
  %788 = load i32, i32* %19, align 4
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds i32, i32* %787, i64 %789
  store i32 %784, i32* %790, align 4
  %791 = load i32*, i32** %23, align 8
  %792 = getelementptr inbounds i32, i32* %791, i32 1
  store i32* %792, i32** %23, align 8
  %793 = load i32, i32* %791, align 4
  %794 = load i32, i32* %17, align 4
  %795 = ashr i32 %793, %794
  %796 = load i32**, i32*** %12, align 8
  %797 = getelementptr inbounds i32*, i32** %796, i64 1
  %798 = load i32*, i32** %797, align 8
  %799 = load i32, i32* %19, align 4
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds i32, i32* %798, i64 %800
  store i32 %795, i32* %801, align 4
  %802 = load i32*, i32** %23, align 8
  %803 = getelementptr inbounds i32, i32* %802, i32 1
  store i32* %803, i32** %23, align 8
  %804 = load i32, i32* %802, align 4
  %805 = load i32, i32* %17, align 4
  %806 = ashr i32 %804, %805
  %807 = load i32**, i32*** %12, align 8
  %808 = getelementptr inbounds i32*, i32** %807, i64 2
  %809 = load i32*, i32** %808, align 8
  %810 = load i32, i32* %19, align 4
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds i32, i32* %809, i64 %811
  store i32 %806, i32* %812, align 4
  %813 = load i32**, i32*** %12, align 8
  %814 = getelementptr inbounds i32*, i32** %813, i64 3
  %815 = load i32*, i32** %814, align 8
  %816 = load i32, i32* %19, align 4
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds i32, i32* %815, i64 %817
  store i32 65535, i32* %818, align 4
  br label %819

819:                                              ; preds = %779
  %820 = load i32, i32* %19, align 4
  %821 = add nsw i32 %820, 1
  store i32 %821, i32* %19, align 4
  br label %775

822:                                              ; preds = %775
  br label %915

823:                                              ; preds = %771
  %824 = load i32, i32* %15, align 4
  %825 = icmp ne i32 %824, 0
  br i1 %825, label %826, label %871

826:                                              ; preds = %823
  store i32 0, i32* %19, align 4
  br label %827

827:                                              ; preds = %867, %826
  %828 = load i32, i32* %19, align 4
  %829 = load i32, i32* %18, align 4
  %830 = icmp slt i32 %828, %829
  br i1 %830, label %831, label %870

831:                                              ; preds = %827
  %832 = load i32*, i32** %23, align 8
  %833 = getelementptr inbounds i32, i32* %832, i32 1
  store i32* %833, i32** %23, align 8
  %834 = load i32, i32* %832, align 4
  %835 = load i32, i32* %17, align 4
  %836 = ashr i32 %834, %835
  %837 = load i32**, i32*** %12, align 8
  %838 = getelementptr inbounds i32*, i32** %837, i64 0
  %839 = load i32*, i32** %838, align 8
  %840 = load i32, i32* %19, align 4
  %841 = sext i32 %840 to i64
  %842 = getelementptr inbounds i32, i32* %839, i64 %841
  store i32 %836, i32* %842, align 4
  %843 = load i32*, i32** %23, align 8
  %844 = getelementptr inbounds i32, i32* %843, i32 1
  store i32* %844, i32** %23, align 8
  %845 = load i32, i32* %843, align 4
  %846 = load i32, i32* %17, align 4
  %847 = ashr i32 %845, %846
  %848 = load i32**, i32*** %12, align 8
  %849 = getelementptr inbounds i32*, i32** %848, i64 1
  %850 = load i32*, i32** %849, align 8
  %851 = load i32, i32* %19, align 4
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds i32, i32* %850, i64 %852
  store i32 %847, i32* %853, align 4
  %854 = load i32*, i32** %23, align 8
  %855 = getelementptr inbounds i32, i32* %854, i32 1
  store i32* %855, i32** %23, align 8
  %856 = load i32, i32* %854, align 4
  %857 = load i32, i32* %17, align 4
  %858 = ashr i32 %856, %857
  %859 = load i32**, i32*** %12, align 8
  %860 = getelementptr inbounds i32*, i32** %859, i64 2
  %861 = load i32*, i32** %860, align 8
  %862 = load i32, i32* %19, align 4
  %863 = sext i32 %862 to i64
  %864 = getelementptr inbounds i32, i32* %861, i64 %863
  store i32 %858, i32* %864, align 4
  %865 = load i32*, i32** %23, align 8
  %866 = getelementptr inbounds i32, i32* %865, i32 1
  store i32* %866, i32** %23, align 8
  br label %867

867:                                              ; preds = %831
  %868 = load i32, i32* %19, align 4
  %869 = add nsw i32 %868, 1
  store i32 %869, i32* %19, align 4
  br label %827

870:                                              ; preds = %827
  br label %914

871:                                              ; preds = %823
  store i32 0, i32* %19, align 4
  br label %872

872:                                              ; preds = %910, %871
  %873 = load i32, i32* %19, align 4
  %874 = load i32, i32* %18, align 4
  %875 = icmp slt i32 %873, %874
  br i1 %875, label %876, label %913

876:                                              ; preds = %872
  %877 = load i32*, i32** %23, align 8
  %878 = getelementptr inbounds i32, i32* %877, i32 1
  store i32* %878, i32** %23, align 8
  %879 = load i32, i32* %877, align 4
  %880 = load i32, i32* %17, align 4
  %881 = ashr i32 %879, %880
  %882 = load i32**, i32*** %12, align 8
  %883 = getelementptr inbounds i32*, i32** %882, i64 0
  %884 = load i32*, i32** %883, align 8
  %885 = load i32, i32* %19, align 4
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds i32, i32* %884, i64 %886
  store i32 %881, i32* %887, align 4
  %888 = load i32*, i32** %23, align 8
  %889 = getelementptr inbounds i32, i32* %888, i32 1
  store i32* %889, i32** %23, align 8
  %890 = load i32, i32* %888, align 4
  %891 = load i32, i32* %17, align 4
  %892 = ashr i32 %890, %891
  %893 = load i32**, i32*** %12, align 8
  %894 = getelementptr inbounds i32*, i32** %893, i64 1
  %895 = load i32*, i32** %894, align 8
  %896 = load i32, i32* %19, align 4
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds i32, i32* %895, i64 %897
  store i32 %892, i32* %898, align 4
  %899 = load i32*, i32** %23, align 8
  %900 = getelementptr inbounds i32, i32* %899, i32 1
  store i32* %900, i32** %23, align 8
  %901 = load i32, i32* %899, align 4
  %902 = load i32, i32* %17, align 4
  %903 = ashr i32 %901, %902
  %904 = load i32**, i32*** %12, align 8
  %905 = getelementptr inbounds i32*, i32** %904, i64 2
  %906 = load i32*, i32** %905, align 8
  %907 = load i32, i32* %19, align 4
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds i32, i32* %906, i64 %908
  store i32 %903, i32* %909, align 4
  br label %910

910:                                              ; preds = %876
  %911 = load i32, i32* %19, align 4
  %912 = add nsw i32 %911, 1
  store i32 %912, i32* %19, align 4
  br label %872

913:                                              ; preds = %872
  br label %914

914:                                              ; preds = %913, %870
  br label %915

915:                                              ; preds = %914, %822
  br label %916

916:                                              ; preds = %915, %770
  br label %917

917:                                              ; preds = %916, %710, %491, %272
  store i32 0, i32* %21, align 4
  br label %918

918:                                              ; preds = %935, %917
  %919 = load i32, i32* %21, align 4
  %920 = icmp slt i32 %919, 4
  br i1 %920, label %921, label %938

921:                                              ; preds = %918
  %922 = load i32*, i32** %13, align 8
  %923 = load i32, i32* %21, align 4
  %924 = sext i32 %923 to i64
  %925 = getelementptr inbounds i32, i32* %922, i64 %924
  %926 = load i32, i32* %925, align 4
  %927 = ashr i32 %926, 1
  %928 = load i32**, i32*** %12, align 8
  %929 = load i32, i32* %21, align 4
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds i32*, i32** %928, i64 %930
  %932 = load i32*, i32** %931, align 8
  %933 = sext i32 %927 to i64
  %934 = getelementptr inbounds i32, i32* %932, i64 %933
  store i32* %934, i32** %931, align 8
  br label %935

935:                                              ; preds = %921
  %936 = load i32, i32* %21, align 4
  %937 = add nsw i32 %936, 1
  store i32 %937, i32* %21, align 4
  br label %918

938:                                              ; preds = %918
  br label %939

939:                                              ; preds = %938
  %940 = load i32, i32* %20, align 4
  %941 = add nsw i32 %940, 1
  store i32 %941, i32* %20, align 4
  br label %29

942:                                              ; preds = %29
  ret void
}

declare dso_local i32 @av_bswap16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
