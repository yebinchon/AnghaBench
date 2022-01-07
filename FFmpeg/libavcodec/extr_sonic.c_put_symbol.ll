; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sonic.c_put_symbol.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sonic.c_put_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_symbol(i32* %0, i32* %1, i32 %2, i32 %3, [2 x i32]* %4, [2 x i32]* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32]*, align 8
  %12 = alloca [2 x i32]*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store [2 x i32]* %4, [2 x i32]** %11, align 8
  store [2 x i32]* %5, [2 x i32]** %12, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %469

18:                                               ; preds = %6
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @FFABS(i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @av_log2(i32 %21)
  store i32 %22, i32* %15, align 4
  br label %23

23:                                               ; preds = %18
  %24 = load [2 x i32]*, [2 x i32]** %11, align 8
  %25 = icmp ne [2 x i32]* %24, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = load [2 x i32]*, [2 x i32]** %11, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 %31
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load [2 x i32]*, [2 x i32]** %12, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32*, i32** %8, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 %43
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %44, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %26, %23
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = call i32 @put_rac(i32* %49, i32* %51, i32 0)
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %15, align 4
  %55 = icmp sle i32 %54, 9
  br i1 %55, label %56, label %265

56:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %102, %56
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %105

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61
  %63 = load [2 x i32]*, [2 x i32]** %11, align 8
  %64 = icmp ne [2 x i32]* %63, null
  br i1 %64, label %65, label %93

65:                                               ; preds = %62
  %66 = load [2 x i32]*, [2 x i32]** %11, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %66, i64 %73
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %74, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load [2 x i32]*, [2 x i32]** %12, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32*, i32** %8, align 8
  %85 = ptrtoint i32* %83 to i64
  %86 = ptrtoint i32* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %78, i64 %88
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %89, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %65, %62
  %94 = load i32*, i32** %7, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = call i32 @put_rac(i32* %94, i32* %99, i32 1)
  br label %101

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %57

105:                                              ; preds = %57
  br label %106

106:                                              ; preds = %105
  %107 = load [2 x i32]*, [2 x i32]** %11, align 8
  %108 = icmp ne [2 x i32]* %107, null
  br i1 %108, label %109, label %137

109:                                              ; preds = %106
  %110 = load [2 x i32]*, [2 x i32]** %11, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %110, i64 %117
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %118, i64 0, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load [2 x i32]*, [2 x i32]** %12, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32*, i32** %8, align 8
  %129 = ptrtoint i32* %127 to i64
  %130 = ptrtoint i32* %128 to i64
  %131 = sub i64 %129, %130
  %132 = sdiv exact i64 %131, 4
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %122, i64 %132
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %133, i64 0, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %109, %106
  %138 = load i32*, i32** %7, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = call i32 @put_rac(i32* %138, i32* %143, i32 0)
  br label %145

145:                                              ; preds = %137
  %146 = load i32, i32* %15, align 4
  %147 = sub nsw i32 %146, 1
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %206, %145
  %149 = load i32, i32* %13, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %209

151:                                              ; preds = %148
  br label %152

152:                                              ; preds = %151
  %153 = load [2 x i32]*, [2 x i32]** %11, align 8
  %154 = icmp ne [2 x i32]* %153, null
  br i1 %154, label %155, label %193

155:                                              ; preds = %152
  %156 = load [2 x i32]*, [2 x i32]** %11, align 8
  %157 = load i32*, i32** %8, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 22
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %156, i64 %163
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %13, align 4
  %167 = ashr i32 %165, %166
  %168 = and i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [2 x i32], [2 x i32]* %164, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  %173 = load [2 x i32]*, [2 x i32]** %12, align 8
  %174 = load i32*, i32** %8, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 22
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32*, i32** %8, align 8
  %180 = ptrtoint i32* %178 to i64
  %181 = ptrtoint i32* %179 to i64
  %182 = sub i64 %180, %181
  %183 = sdiv exact i64 %182, 4
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %173, i64 %183
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %13, align 4
  %187 = ashr i32 %185, %186
  %188 = and i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %184, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %155, %152
  %194 = load i32*, i32** %7, align 8
  %195 = load i32*, i32** %8, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 22
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %13, align 4
  %202 = ashr i32 %200, %201
  %203 = and i32 %202, 1
  %204 = call i32 @put_rac(i32* %194, i32* %199, i32 %203)
  br label %205

205:                                              ; preds = %193
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %13, align 4
  br label %148

209:                                              ; preds = %148
  %210 = load i32, i32* %10, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %264

212:                                              ; preds = %209
  br label %213

213:                                              ; preds = %212
  %214 = load [2 x i32]*, [2 x i32]** %11, align 8
  %215 = icmp ne [2 x i32]* %214, null
  br i1 %215, label %216, label %252

216:                                              ; preds = %213
  %217 = load [2 x i32]*, [2 x i32]** %11, align 8
  %218 = load i32*, i32** %8, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 11
  %220 = load i32, i32* %15, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [2 x i32], [2 x i32]* %217, i64 %224
  %226 = load i32, i32* %9, align 4
  %227 = icmp slt i32 %226, 0
  %228 = zext i1 %227 to i32
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [2 x i32], [2 x i32]* %225, i64 0, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 4
  %233 = load [2 x i32]*, [2 x i32]** %12, align 8
  %234 = load i32*, i32** %8, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 11
  %236 = load i32, i32* %15, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32*, i32** %8, align 8
  %240 = ptrtoint i32* %238 to i64
  %241 = ptrtoint i32* %239 to i64
  %242 = sub i64 %240, %241
  %243 = sdiv exact i64 %242, 4
  %244 = getelementptr inbounds [2 x i32], [2 x i32]* %233, i64 %243
  %245 = load i32, i32* %9, align 4
  %246 = icmp slt i32 %245, 0
  %247 = zext i1 %246 to i32
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [2 x i32], [2 x i32]* %244, i64 0, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  br label %252

252:                                              ; preds = %216, %213
  %253 = load i32*, i32** %7, align 8
  %254 = load i32*, i32** %8, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 11
  %256 = load i32, i32* %15, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %9, align 4
  %260 = icmp slt i32 %259, 0
  %261 = zext i1 %260 to i32
  %262 = call i32 @put_rac(i32* %253, i32* %258, i32 %261)
  br label %263

263:                                              ; preds = %252
  br label %264

264:                                              ; preds = %263, %209
  br label %468

265:                                              ; preds = %53
  store i32 0, i32* %13, align 4
  br label %266

266:                                              ; preds = %314, %265
  %267 = load i32, i32* %13, align 4
  %268 = load i32, i32* %15, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %317

270:                                              ; preds = %266
  br label %271

271:                                              ; preds = %270
  %272 = load [2 x i32]*, [2 x i32]** %11, align 8
  %273 = icmp ne [2 x i32]* %272, null
  br i1 %273, label %274, label %304

274:                                              ; preds = %271
  %275 = load [2 x i32]*, [2 x i32]** %11, align 8
  %276 = load i32*, i32** %8, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 1
  %278 = load i32, i32* %13, align 4
  %279 = call i32 @FFMIN(i32 %278, i32 9)
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %277, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [2 x i32], [2 x i32]* %275, i64 %283
  %285 = getelementptr inbounds [2 x i32], [2 x i32]* %284, i64 0, i64 1
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 4
  %288 = load [2 x i32]*, [2 x i32]** %12, align 8
  %289 = load i32*, i32** %8, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 1
  %291 = load i32, i32* %13, align 4
  %292 = call i32 @FFMIN(i32 %291, i32 9)
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %290, i64 %293
  %295 = load i32*, i32** %8, align 8
  %296 = ptrtoint i32* %294 to i64
  %297 = ptrtoint i32* %295 to i64
  %298 = sub i64 %296, %297
  %299 = sdiv exact i64 %298, 4
  %300 = getelementptr inbounds [2 x i32], [2 x i32]* %288, i64 %299
  %301 = getelementptr inbounds [2 x i32], [2 x i32]* %300, i64 0, i64 1
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %301, align 4
  br label %304

304:                                              ; preds = %274, %271
  %305 = load i32*, i32** %7, align 8
  %306 = load i32*, i32** %8, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 1
  %308 = load i32, i32* %13, align 4
  %309 = call i32 @FFMIN(i32 %308, i32 9)
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  %312 = call i32 @put_rac(i32* %305, i32* %311, i32 1)
  br label %313

313:                                              ; preds = %304
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %13, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %13, align 4
  br label %266

317:                                              ; preds = %266
  br label %318

318:                                              ; preds = %317
  %319 = load [2 x i32]*, [2 x i32]** %11, align 8
  %320 = icmp ne [2 x i32]* %319, null
  br i1 %320, label %321, label %345

321:                                              ; preds = %318
  %322 = load [2 x i32]*, [2 x i32]** %11, align 8
  %323 = load i32*, i32** %8, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  %325 = getelementptr inbounds i32, i32* %324, i64 9
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [2 x i32], [2 x i32]* %322, i64 %327
  %329 = getelementptr inbounds [2 x i32], [2 x i32]* %328, i64 0, i64 0
  %330 = load i32, i32* %329, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %329, align 4
  %332 = load [2 x i32]*, [2 x i32]** %12, align 8
  %333 = load i32*, i32** %8, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 1
  %335 = getelementptr inbounds i32, i32* %334, i64 9
  %336 = load i32*, i32** %8, align 8
  %337 = ptrtoint i32* %335 to i64
  %338 = ptrtoint i32* %336 to i64
  %339 = sub i64 %337, %338
  %340 = sdiv exact i64 %339, 4
  %341 = getelementptr inbounds [2 x i32], [2 x i32]* %332, i64 %340
  %342 = getelementptr inbounds [2 x i32], [2 x i32]* %341, i64 0, i64 0
  %343 = load i32, i32* %342, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %342, align 4
  br label %345

345:                                              ; preds = %321, %318
  %346 = load i32*, i32** %7, align 8
  %347 = load i32*, i32** %8, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 1
  %349 = getelementptr inbounds i32, i32* %348, i64 9
  %350 = call i32 @put_rac(i32* %346, i32* %349, i32 0)
  br label %351

351:                                              ; preds = %345
  %352 = load i32, i32* %15, align 4
  %353 = sub nsw i32 %352, 1
  store i32 %353, i32* %13, align 4
  br label %354

354:                                              ; preds = %415, %351
  %355 = load i32, i32* %13, align 4
  %356 = icmp sge i32 %355, 0
  br i1 %356, label %357, label %418

357:                                              ; preds = %354
  br label %358

358:                                              ; preds = %357
  %359 = load [2 x i32]*, [2 x i32]** %11, align 8
  %360 = icmp ne [2 x i32]* %359, null
  br i1 %360, label %361, label %401

361:                                              ; preds = %358
  %362 = load [2 x i32]*, [2 x i32]** %11, align 8
  %363 = load i32*, i32** %8, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 22
  %365 = load i32, i32* %13, align 4
  %366 = call i32 @FFMIN(i32 %365, i32 9)
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %364, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [2 x i32], [2 x i32]* %362, i64 %370
  %372 = load i32, i32* %14, align 4
  %373 = load i32, i32* %13, align 4
  %374 = ashr i32 %372, %373
  %375 = and i32 %374, 1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [2 x i32], [2 x i32]* %371, i64 0, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %377, align 4
  %380 = load [2 x i32]*, [2 x i32]** %12, align 8
  %381 = load i32*, i32** %8, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 22
  %383 = load i32, i32* %13, align 4
  %384 = call i32 @FFMIN(i32 %383, i32 9)
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %382, i64 %385
  %387 = load i32*, i32** %8, align 8
  %388 = ptrtoint i32* %386 to i64
  %389 = ptrtoint i32* %387 to i64
  %390 = sub i64 %388, %389
  %391 = sdiv exact i64 %390, 4
  %392 = getelementptr inbounds [2 x i32], [2 x i32]* %380, i64 %391
  %393 = load i32, i32* %14, align 4
  %394 = load i32, i32* %13, align 4
  %395 = ashr i32 %393, %394
  %396 = and i32 %395, 1
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [2 x i32], [2 x i32]* %392, i64 0, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %398, align 4
  br label %401

401:                                              ; preds = %361, %358
  %402 = load i32*, i32** %7, align 8
  %403 = load i32*, i32** %8, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 22
  %405 = load i32, i32* %13, align 4
  %406 = call i32 @FFMIN(i32 %405, i32 9)
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %404, i64 %407
  %409 = load i32, i32* %14, align 4
  %410 = load i32, i32* %13, align 4
  %411 = ashr i32 %409, %410
  %412 = and i32 %411, 1
  %413 = call i32 @put_rac(i32* %402, i32* %408, i32 %412)
  br label %414

414:                                              ; preds = %401
  br label %415

415:                                              ; preds = %414
  %416 = load i32, i32* %13, align 4
  %417 = add nsw i32 %416, -1
  store i32 %417, i32* %13, align 4
  br label %354

418:                                              ; preds = %354
  %419 = load i32, i32* %10, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %467

421:                                              ; preds = %418
  br label %422

422:                                              ; preds = %421
  %423 = load [2 x i32]*, [2 x i32]** %11, align 8
  %424 = icmp ne [2 x i32]* %423, null
  br i1 %424, label %425, label %457

425:                                              ; preds = %422
  %426 = load [2 x i32]*, [2 x i32]** %11, align 8
  %427 = load i32*, i32** %8, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 11
  %429 = getelementptr inbounds i32, i32* %428, i64 10
  %430 = load i32, i32* %429, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [2 x i32], [2 x i32]* %426, i64 %431
  %433 = load i32, i32* %9, align 4
  %434 = icmp slt i32 %433, 0
  %435 = zext i1 %434 to i32
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [2 x i32], [2 x i32]* %432, i64 0, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %437, align 4
  %440 = load [2 x i32]*, [2 x i32]** %12, align 8
  %441 = load i32*, i32** %8, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 11
  %443 = getelementptr inbounds i32, i32* %442, i64 10
  %444 = load i32*, i32** %8, align 8
  %445 = ptrtoint i32* %443 to i64
  %446 = ptrtoint i32* %444 to i64
  %447 = sub i64 %445, %446
  %448 = sdiv exact i64 %447, 4
  %449 = getelementptr inbounds [2 x i32], [2 x i32]* %440, i64 %448
  %450 = load i32, i32* %9, align 4
  %451 = icmp slt i32 %450, 0
  %452 = zext i1 %451 to i32
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds [2 x i32], [2 x i32]* %449, i64 0, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %454, align 4
  br label %457

457:                                              ; preds = %425, %422
  %458 = load i32*, i32** %7, align 8
  %459 = load i32*, i32** %8, align 8
  %460 = getelementptr inbounds i32, i32* %459, i64 11
  %461 = getelementptr inbounds i32, i32* %460, i64 10
  %462 = load i32, i32* %9, align 4
  %463 = icmp slt i32 %462, 0
  %464 = zext i1 %463 to i32
  %465 = call i32 @put_rac(i32* %458, i32* %461, i32 %464)
  br label %466

466:                                              ; preds = %457
  br label %467

467:                                              ; preds = %466, %418
  br label %468

468:                                              ; preds = %467, %264
  br label %501

469:                                              ; preds = %6
  br label %470

470:                                              ; preds = %469
  %471 = load [2 x i32]*, [2 x i32]** %11, align 8
  %472 = icmp ne [2 x i32]* %471, null
  br i1 %472, label %473, label %495

473:                                              ; preds = %470
  %474 = load [2 x i32]*, [2 x i32]** %11, align 8
  %475 = load i32*, i32** %8, align 8
  %476 = getelementptr inbounds i32, i32* %475, i64 0
  %477 = load i32, i32* %476, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [2 x i32], [2 x i32]* %474, i64 %478
  %480 = getelementptr inbounds [2 x i32], [2 x i32]* %479, i64 0, i64 1
  %481 = load i32, i32* %480, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %480, align 4
  %483 = load [2 x i32]*, [2 x i32]** %12, align 8
  %484 = load i32*, i32** %8, align 8
  %485 = getelementptr inbounds i32, i32* %484, i64 0
  %486 = load i32*, i32** %8, align 8
  %487 = ptrtoint i32* %485 to i64
  %488 = ptrtoint i32* %486 to i64
  %489 = sub i64 %487, %488
  %490 = sdiv exact i64 %489, 4
  %491 = getelementptr inbounds [2 x i32], [2 x i32]* %483, i64 %490
  %492 = getelementptr inbounds [2 x i32], [2 x i32]* %491, i64 0, i64 1
  %493 = load i32, i32* %492, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %492, align 4
  br label %495

495:                                              ; preds = %473, %470
  %496 = load i32*, i32** %7, align 8
  %497 = load i32*, i32** %8, align 8
  %498 = getelementptr inbounds i32, i32* %497, i64 0
  %499 = call i32 @put_rac(i32* %496, i32* %498, i32 1)
  br label %500

500:                                              ; preds = %495
  br label %501

501:                                              ; preds = %500, %468
  ret void
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @put_rac(i32*, i32*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
