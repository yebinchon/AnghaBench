; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdm2.c_fill_tone_level_array.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdm2.c_fill_tone_level_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32***, i32***, i64, i32***, i32****, i32***, i32**, i8****, i32 }

@coeff_per_sb_for_dequant = common dso_local global i32** null, align 8
@last_coeff = common dso_local global i32* null, align 8
@dequant_table = common dso_local global i32*** null, align 8
@fft_tone_level_table = common dso_local global i8*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @fill_tone_level_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_tone_level_array(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %171, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %174

17:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %167, %17
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 30
  br i1 %20, label %21, label %170

21:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %163, %21
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %166

25:                                               ; preds = %22
  %26 = load i32**, i32*** @coeff_per_sb_for_dequant, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32*, i32** %26, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32*, i32** @last_coeff, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp slt i32 %35, %42
  br i1 %43, label %44, label %108

44:                                               ; preds = %25
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32***, i32**** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32**, i32*** %47, i64 %49
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %51, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32***, i32**** @dequant_table, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32**, i32*** %61, i64 %64
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %66, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %60, %75
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32***, i32**** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32**, i32*** %79, i64 %81
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32***, i32**** @dequant_table, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32**, i32*** %92, i64 %95
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %91, %105
  %107 = add nsw i32 %76, %106
  store i32 %107, i32* %9, align 4
  br label %139

108:                                              ; preds = %25
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32***, i32**** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32**, i32*** %111, i64 %113
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32***, i32**** @dequant_table, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32**, i32*** %124, i64 %127
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %123, %137
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %108, %44
  %140 = load i32, i32* %9, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 255
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i32, i32* %9, align 4
  %147 = sdiv i32 %146, 256
  %148 = and i32 %147, 255
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  %151 = load i32***, i32**** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32**, i32*** %151, i64 %153
  %155 = load i32**, i32*** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %148, i32* %162, align 4
  br label %163

163:                                              ; preds = %145
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %5, align 4
  br label %22

166:                                              ; preds = %22
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  br label %18

170:                                              ; preds = %18
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %11

174:                                              ; preds = %11
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 10
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @QDM2_SB_USED(i32 %177)
  store i32 %178, i32* %8, align 4
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %314

183:                                              ; preds = %174
  %184 = load i32, i32* %4, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %314, label %186

186:                                              ; preds = %183
  store i32 0, i32* %6, align 4
  br label %187

187:                                              ; preds = %310, %186
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %313

191:                                              ; preds = %187
  store i32 0, i32* %7, align 4
  br label %192

192:                                              ; preds = %306, %191
  %193 = load i32, i32* %7, align 4
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %309

198:                                              ; preds = %192
  store i32 0, i32* %5, align 4
  br label %199

199:                                              ; preds = %302, %198
  %200 = load i32, i32* %5, align 4
  %201 = icmp slt i32 %200, 64
  br i1 %201, label %202, label %305

202:                                              ; preds = %199
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 3
  %205 = load i32***, i32**** %204, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32**, i32*** %205, i64 %207
  %209 = load i32**, i32*** %208, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32*, i32** %209, i64 %211
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %5, align 4
  %215 = sdiv i32 %214, 8
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 5
  %221 = load i32***, i32**** %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32**, i32*** %221, i64 %223
  %225 = load i32**, i32*** %224, align 8
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %5, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  store i32 %218, i32* %232, align 4
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 5
  %235 = load i32***, i32**** %234, align 8
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32**, i32*** %235, i64 %237
  %239 = load i32**, i32*** %238, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32*, i32** %239, i64 %241
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %264

249:                                              ; preds = %202
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 9
  %252 = load i8****, i8***** %251, align 8
  %253 = load i32, i32* %7, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8***, i8**** %252, i64 %254
  %256 = load i8***, i8**** %255, align 8
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8**, i8*** %256, i64 %258
  %260 = load i8**, i8*** %259, align 8
  %261 = load i32, i32* %5, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8*, i8** %260, i64 %262
  store i8* null, i8** %263, align 8
  br label %301

264:                                              ; preds = %202
  %265 = load i8***, i8**** @fft_tone_level_table, align 8
  %266 = getelementptr inbounds i8**, i8*** %265, i64 0
  %267 = load i8**, i8*** %266, align 8
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 5
  %270 = load i32***, i32**** %269, align 8
  %271 = load i32, i32* %7, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32**, i32*** %270, i64 %272
  %274 = load i32**, i32*** %273, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32*, i32** %274, i64 %276
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %5, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = and i32 %282, 63
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8*, i8** %267, i64 %284
  %286 = load i8*, i8** %285, align 8
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 9
  %289 = load i8****, i8***** %288, align 8
  %290 = load i32, i32* %7, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8***, i8**** %289, i64 %291
  %293 = load i8***, i8**** %292, align 8
  %294 = load i32, i32* %6, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8**, i8*** %293, i64 %295
  %297 = load i8**, i8*** %296, align 8
  %298 = load i32, i32* %5, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8*, i8** %297, i64 %299
  store i8* %286, i8** %300, align 8
  br label %301

301:                                              ; preds = %264, %249
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %5, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %5, align 4
  br label %199

305:                                              ; preds = %199
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %7, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %7, align 4
  br label %192

309:                                              ; preds = %192
  br label %310

310:                                              ; preds = %309
  %311 = load i32, i32* %6, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %6, align 4
  br label %187

313:                                              ; preds = %187
  br label %734

314:                                              ; preds = %183, %174
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 4
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  %319 = zext i1 %318 to i64
  %320 = select i1 %318, i32 0, i32 1
  store i32 %320, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %321

321:                                              ; preds = %730, %314
  %322 = load i32, i32* %6, align 4
  %323 = load i32, i32* %8, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %733

325:                                              ; preds = %321
  %326 = load i32, i32* %6, align 4
  %327 = icmp sge i32 %326, 4
  br i1 %327, label %328, label %488

328:                                              ; preds = %325
  %329 = load i32, i32* %6, align 4
  %330 = icmp sle i32 %329, 23
  br i1 %330, label %331, label %488

331:                                              ; preds = %328
  store i32 0, i32* %7, align 4
  br label %332

332:                                              ; preds = %484, %331
  %333 = load i32, i32* %7, align 4
  %334 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = icmp slt i32 %333, %336
  br i1 %337, label %338, label %487

338:                                              ; preds = %332
  store i32 0, i32* %5, align 4
  br label %339

339:                                              ; preds = %480, %338
  %340 = load i32, i32* %5, align 4
  %341 = icmp slt i32 %340, 64
  br i1 %341, label %342, label %483

342:                                              ; preds = %339
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 3
  %345 = load i32***, i32**** %344, align 8
  %346 = load i32, i32* %7, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32**, i32*** %345, i64 %347
  %349 = load i32**, i32*** %348, align 8
  %350 = load i32, i32* %6, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32*, i32** %349, i64 %351
  %353 = load i32*, i32** %352, align 8
  %354 = load i32, i32* %5, align 4
  %355 = sdiv i32 %354, 8
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %353, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i32 0, i32 6
  %361 = load i32****, i32***** %360, align 8
  %362 = load i32, i32* %7, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32***, i32**** %361, i64 %363
  %365 = load i32***, i32**** %364, align 8
  %366 = load i32, i32* %6, align 4
  %367 = sdiv i32 %366, 8
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32**, i32*** %365, i64 %368
  %370 = load i32**, i32*** %369, align 8
  %371 = load i32, i32* %5, align 4
  %372 = sdiv i32 %371, 8
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32*, i32** %370, i64 %373
  %375 = load i32*, i32** %374, align 8
  %376 = load i32, i32* %5, align 4
  %377 = srem i32 %376, 8
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %375, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = sub nsw i32 %358, %380
  %382 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %382, i32 0, i32 7
  %384 = load i32***, i32**** %383, align 8
  %385 = load i32, i32* %7, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32**, i32*** %384, i64 %386
  %388 = load i32**, i32*** %387, align 8
  %389 = load i32, i32* %6, align 4
  %390 = sub nsw i32 %389, 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32*, i32** %388, i64 %391
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %5, align 4
  %395 = sdiv i32 %394, 8
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %393, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = sub nsw i32 %381, %398
  %400 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %400, i32 0, i32 8
  %402 = load i32**, i32*** %401, align 8
  %403 = load i32, i32* %7, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32*, i32** %402, i64 %404
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* %6, align 4
  %408 = sub nsw i32 %407, 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %406, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = sub nsw i32 %399, %411
  store i32 %412, i32* %9, align 4
  %413 = load i32, i32* %9, align 4
  %414 = and i32 %413, 255
  %415 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %415, i32 0, i32 5
  %417 = load i32***, i32**** %416, align 8
  %418 = load i32, i32* %7, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32**, i32*** %417, i64 %419
  %421 = load i32**, i32*** %420, align 8
  %422 = load i32, i32* %6, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32*, i32** %421, i64 %423
  %425 = load i32*, i32** %424, align 8
  %426 = load i32, i32* %5, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  store i32 %414, i32* %428, align 4
  %429 = load i32, i32* %9, align 4
  %430 = icmp slt i32 %429, 0
  br i1 %430, label %439, label %431

431:                                              ; preds = %342
  %432 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %432, i32 0, i32 4
  %434 = load i64, i64* %433, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %454, label %436

436:                                              ; preds = %431
  %437 = load i32, i32* %9, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %454, label %439

439:                                              ; preds = %436, %342
  %440 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %440, i32 0, i32 9
  %442 = load i8****, i8***** %441, align 8
  %443 = load i32, i32* %7, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i8***, i8**** %442, i64 %444
  %446 = load i8***, i8**** %445, align 8
  %447 = load i32, i32* %6, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i8**, i8*** %446, i64 %448
  %450 = load i8**, i8*** %449, align 8
  %451 = load i32, i32* %5, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i8*, i8** %450, i64 %452
  store i8* null, i8** %453, align 8
  br label %479

454:                                              ; preds = %436, %431
  %455 = load i8***, i8**** @fft_tone_level_table, align 8
  %456 = load i32, i32* %10, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i8**, i8*** %455, i64 %457
  %459 = load i8**, i8*** %458, align 8
  %460 = load i32, i32* %9, align 4
  %461 = and i32 %460, 63
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i8*, i8** %459, i64 %462
  %464 = load i8*, i8** %463, align 8
  %465 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %466 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %465, i32 0, i32 9
  %467 = load i8****, i8***** %466, align 8
  %468 = load i32, i32* %7, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i8***, i8**** %467, i64 %469
  %471 = load i8***, i8**** %470, align 8
  %472 = load i32, i32* %6, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i8**, i8*** %471, i64 %473
  %475 = load i8**, i8*** %474, align 8
  %476 = load i32, i32* %5, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i8*, i8** %475, i64 %477
  store i8* %464, i8** %478, align 8
  br label %479

479:                                              ; preds = %454, %439
  br label %480

480:                                              ; preds = %479
  %481 = load i32, i32* %5, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %5, align 4
  br label %339

483:                                              ; preds = %339
  br label %484

484:                                              ; preds = %483
  %485 = load i32, i32* %7, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %7, align 4
  br label %332

487:                                              ; preds = %332
  br label %729

488:                                              ; preds = %328, %325
  %489 = load i32, i32* %6, align 4
  %490 = icmp sgt i32 %489, 4
  br i1 %490, label %491, label %627

491:                                              ; preds = %488
  store i32 0, i32* %7, align 4
  br label %492

492:                                              ; preds = %623, %491
  %493 = load i32, i32* %7, align 4
  %494 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %495 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = icmp slt i32 %493, %496
  br i1 %497, label %498, label %626

498:                                              ; preds = %492
  store i32 0, i32* %5, align 4
  br label %499

499:                                              ; preds = %619, %498
  %500 = load i32, i32* %5, align 4
  %501 = icmp slt i32 %500, 64
  br i1 %501, label %502, label %622

502:                                              ; preds = %499
  %503 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %504 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %503, i32 0, i32 3
  %505 = load i32***, i32**** %504, align 8
  %506 = load i32, i32* %7, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32**, i32*** %505, i64 %507
  %509 = load i32**, i32*** %508, align 8
  %510 = load i32, i32* %6, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i32*, i32** %509, i64 %511
  %513 = load i32*, i32** %512, align 8
  %514 = load i32, i32* %5, align 4
  %515 = sdiv i32 %514, 8
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i32, i32* %513, i64 %516
  %518 = load i32, i32* %517, align 4
  %519 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %520 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %519, i32 0, i32 6
  %521 = load i32****, i32***** %520, align 8
  %522 = load i32, i32* %7, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i32***, i32**** %521, i64 %523
  %525 = load i32***, i32**** %524, align 8
  %526 = getelementptr inbounds i32**, i32*** %525, i64 2
  %527 = load i32**, i32*** %526, align 8
  %528 = load i32, i32* %5, align 4
  %529 = sdiv i32 %528, 8
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i32*, i32** %527, i64 %530
  %532 = load i32*, i32** %531, align 8
  %533 = load i32, i32* %5, align 4
  %534 = srem i32 %533, 8
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds i32, i32* %532, i64 %535
  %537 = load i32, i32* %536, align 4
  %538 = sub nsw i32 %518, %537
  %539 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %540 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %539, i32 0, i32 8
  %541 = load i32**, i32*** %540, align 8
  %542 = load i32, i32* %7, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i32*, i32** %541, i64 %543
  %545 = load i32*, i32** %544, align 8
  %546 = load i32, i32* %6, align 4
  %547 = sub nsw i32 %546, 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i32, i32* %545, i64 %548
  %550 = load i32, i32* %549, align 4
  %551 = sub nsw i32 %538, %550
  store i32 %551, i32* %9, align 4
  %552 = load i32, i32* %9, align 4
  %553 = and i32 %552, 255
  %554 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %555 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %554, i32 0, i32 5
  %556 = load i32***, i32**** %555, align 8
  %557 = load i32, i32* %7, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32**, i32*** %556, i64 %558
  %560 = load i32**, i32*** %559, align 8
  %561 = load i32, i32* %6, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i32*, i32** %560, i64 %562
  %564 = load i32*, i32** %563, align 8
  %565 = load i32, i32* %5, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i32, i32* %564, i64 %566
  store i32 %553, i32* %567, align 4
  %568 = load i32, i32* %9, align 4
  %569 = icmp slt i32 %568, 0
  br i1 %569, label %578, label %570

570:                                              ; preds = %502
  %571 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %572 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %571, i32 0, i32 4
  %573 = load i64, i64* %572, align 8
  %574 = icmp ne i64 %573, 0
  br i1 %574, label %593, label %575

575:                                              ; preds = %570
  %576 = load i32, i32* %9, align 4
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %593, label %578

578:                                              ; preds = %575, %502
  %579 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %580 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %579, i32 0, i32 9
  %581 = load i8****, i8***** %580, align 8
  %582 = load i32, i32* %7, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i8***, i8**** %581, i64 %583
  %585 = load i8***, i8**** %584, align 8
  %586 = load i32, i32* %6, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds i8**, i8*** %585, i64 %587
  %589 = load i8**, i8*** %588, align 8
  %590 = load i32, i32* %5, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i8*, i8** %589, i64 %591
  store i8* null, i8** %592, align 8
  br label %618

593:                                              ; preds = %575, %570
  %594 = load i8***, i8**** @fft_tone_level_table, align 8
  %595 = load i32, i32* %10, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i8**, i8*** %594, i64 %596
  %598 = load i8**, i8*** %597, align 8
  %599 = load i32, i32* %9, align 4
  %600 = and i32 %599, 63
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i8*, i8** %598, i64 %601
  %603 = load i8*, i8** %602, align 8
  %604 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %605 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %604, i32 0, i32 9
  %606 = load i8****, i8***** %605, align 8
  %607 = load i32, i32* %7, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i8***, i8**** %606, i64 %608
  %610 = load i8***, i8**** %609, align 8
  %611 = load i32, i32* %6, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds i8**, i8*** %610, i64 %612
  %614 = load i8**, i8*** %613, align 8
  %615 = load i32, i32* %5, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i8*, i8** %614, i64 %616
  store i8* %603, i8** %617, align 8
  br label %618

618:                                              ; preds = %593, %578
  br label %619

619:                                              ; preds = %618
  %620 = load i32, i32* %5, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %5, align 4
  br label %499

622:                                              ; preds = %499
  br label %623

623:                                              ; preds = %622
  %624 = load i32, i32* %7, align 4
  %625 = add nsw i32 %624, 1
  store i32 %625, i32* %7, align 4
  br label %492

626:                                              ; preds = %492
  br label %728

627:                                              ; preds = %488
  store i32 0, i32* %7, align 4
  br label %628

628:                                              ; preds = %724, %627
  %629 = load i32, i32* %7, align 4
  %630 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %631 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %630, i32 0, i32 0
  %632 = load i32, i32* %631, align 8
  %633 = icmp slt i32 %629, %632
  br i1 %633, label %634, label %727

634:                                              ; preds = %628
  store i32 0, i32* %5, align 4
  br label %635

635:                                              ; preds = %720, %634
  %636 = load i32, i32* %5, align 4
  %637 = icmp slt i32 %636, 64
  br i1 %637, label %638, label %723

638:                                              ; preds = %635
  %639 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %640 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %639, i32 0, i32 3
  %641 = load i32***, i32**** %640, align 8
  %642 = load i32, i32* %7, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds i32**, i32*** %641, i64 %643
  %645 = load i32**, i32*** %644, align 8
  %646 = load i32, i32* %6, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds i32*, i32** %645, i64 %647
  %649 = load i32*, i32** %648, align 8
  %650 = load i32, i32* %5, align 4
  %651 = sdiv i32 %650, 8
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i32, i32* %649, i64 %652
  %654 = load i32, i32* %653, align 4
  %655 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %656 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %655, i32 0, i32 5
  %657 = load i32***, i32**** %656, align 8
  %658 = load i32, i32* %7, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i32**, i32*** %657, i64 %659
  %661 = load i32**, i32*** %660, align 8
  %662 = load i32, i32* %6, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i32*, i32** %661, i64 %663
  %665 = load i32*, i32** %664, align 8
  %666 = load i32, i32* %5, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds i32, i32* %665, i64 %667
  store i32 %654, i32* %668, align 4
  store i32 %654, i32* %9, align 4
  %669 = load i32, i32* %9, align 4
  %670 = icmp slt i32 %669, 0
  br i1 %670, label %679, label %671

671:                                              ; preds = %638
  %672 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %673 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %672, i32 0, i32 4
  %674 = load i64, i64* %673, align 8
  %675 = icmp ne i64 %674, 0
  br i1 %675, label %694, label %676

676:                                              ; preds = %671
  %677 = load i32, i32* %9, align 4
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %694, label %679

679:                                              ; preds = %676, %638
  %680 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %681 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %680, i32 0, i32 9
  %682 = load i8****, i8***** %681, align 8
  %683 = load i32, i32* %7, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds i8***, i8**** %682, i64 %684
  %686 = load i8***, i8**** %685, align 8
  %687 = load i32, i32* %6, align 4
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds i8**, i8*** %686, i64 %688
  %690 = load i8**, i8*** %689, align 8
  %691 = load i32, i32* %5, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds i8*, i8** %690, i64 %692
  store i8* null, i8** %693, align 8
  br label %719

694:                                              ; preds = %676, %671
  %695 = load i8***, i8**** @fft_tone_level_table, align 8
  %696 = load i32, i32* %10, align 4
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds i8**, i8*** %695, i64 %697
  %699 = load i8**, i8*** %698, align 8
  %700 = load i32, i32* %9, align 4
  %701 = and i32 %700, 63
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds i8*, i8** %699, i64 %702
  %704 = load i8*, i8** %703, align 8
  %705 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %706 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %705, i32 0, i32 9
  %707 = load i8****, i8***** %706, align 8
  %708 = load i32, i32* %7, align 4
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds i8***, i8**** %707, i64 %709
  %711 = load i8***, i8**** %710, align 8
  %712 = load i32, i32* %6, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds i8**, i8*** %711, i64 %713
  %715 = load i8**, i8*** %714, align 8
  %716 = load i32, i32* %5, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds i8*, i8** %715, i64 %717
  store i8* %704, i8** %718, align 8
  br label %719

719:                                              ; preds = %694, %679
  br label %720

720:                                              ; preds = %719
  %721 = load i32, i32* %5, align 4
  %722 = add nsw i32 %721, 1
  store i32 %722, i32* %5, align 4
  br label %635

723:                                              ; preds = %635
  br label %724

724:                                              ; preds = %723
  %725 = load i32, i32* %7, align 4
  %726 = add nsw i32 %725, 1
  store i32 %726, i32* %7, align 4
  br label %628

727:                                              ; preds = %628
  br label %728

728:                                              ; preds = %727, %626
  br label %729

729:                                              ; preds = %728, %487
  br label %730

730:                                              ; preds = %729
  %731 = load i32, i32* %6, align 4
  %732 = add nsw i32 %731, 1
  store i32 %732, i32* %6, align 4
  br label %321

733:                                              ; preds = %321
  br label %734

734:                                              ; preds = %733, %313
  ret void
}

declare dso_local i32 @QDM2_SB_USED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
