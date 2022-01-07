; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss4.c_mss4_decode_dct_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss4.c_mss4_decode_dct_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32**, %struct.TYPE_4__*, i32, i32**, i32**, i32*, i64, i64 }
%struct.TYPE_4__ = type { i32* }

@TOP = common dso_local global i64 0, align 8
@TOP_LEFT = common dso_local global i64 0, align 8
@LEFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32**, i32, i32)* @mss4_decode_dct_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mss4_decode_dct_block(%struct.TYPE_5__* %0, i32* %1, i32** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32**, i32*** %9, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %16, align 8
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %158, %5
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %161

24:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %143, %24
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %146

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = mul nsw i32 %29, 2
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %17, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @TOP, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @TOP_LEFT, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %42, i32* %51, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = load i32**, i32*** %53, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = mul nsw i32 %57, 2
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @TOP, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %63, i32* %72, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %11, align 4
  %92 = mul nsw i32 %91, 2
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %92, %93
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @mss4_decode_dct(i32* %73, i64 %76, i64 %79, i32 %82, i32* %89, i32 %90, i32 %94, i32 %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %28
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %6, align 4
  br label %336

105:                                              ; preds = %28
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @LEFT, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 4
  %118 = load i32**, i32*** %117, align 8
  %119 = getelementptr inbounds i32*, i32** %118, i64 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = mul nsw i32 %121, 2
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %120, i64 %125
  store i32 %115, i32* %126, align 4
  %127 = load i32*, i32** %16, align 8
  %128 = load i32, i32* %17, align 4
  %129 = mul nsw i32 %128, 8
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @ff_mss34_dct_put(i32* %131, i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %105
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %25

146:                                              ; preds = %25
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 8, %153
  %155 = load i32*, i32** %16, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32* %157, i32** %16, align 8
  br label %158

158:                                              ; preds = %146
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %13, align 4
  br label %21

161:                                              ; preds = %21
  store i32 1, i32* %12, align 4
  br label %162

162:                                              ; preds = %332, %161
  %163 = load i32, i32* %12, align 4
  %164 = icmp slt i32 %163, 3
  br i1 %164, label %165, label %335

165:                                              ; preds = %162
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 3
  %168 = load i32**, i32*** %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %168, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* @TOP, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 3
  %179 = load i32**, i32*** %178, align 8
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %179, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* @TOP_LEFT, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32 %176, i32* %186, align 4
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 4
  %189 = load i32**, i32*** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 3
  %200 = load i32**, i32*** %199, align 8
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %200, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @TOP, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32 %197, i32* %207, align 4
  %208 = load i32*, i32** %8, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 7
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, 1
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 6
  %215 = load i64, i64* %214, align 8
  %216 = add nsw i64 %215, 1
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 3
  %222 = load i32**, i32*** %221, align 8
  %223 = load i32, i32* %12, align 4
  %224 = add nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32*, i32** %222, i64 %225
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* %11, align 4
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 5
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @mss4_decode_dct(i32* %208, i64 %212, i64 %216, i32 %219, i32* %227, i32 %228, i32 %229, i32 %234)
  store i32 %235, i32* %15, align 4
  %236 = load i32, i32* %15, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %165
  %239 = load i32, i32* %15, align 4
  store i32 %239, i32* %6, align 4
  br label %336

240:                                              ; preds = %165
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 3
  %243 = load i32**, i32*** %242, align 8
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32*, i32** %243, i64 %246
  %248 = load i32*, i32** %247, align 8
  %249 = load i64, i64* @LEFT, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 4
  %254 = load i32**, i32*** %253, align 8
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32*, i32** %254, i64 %256
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %10, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  store i32 %251, i32* %261, align 4
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = load i32**, i32*** %263, align 8
  %265 = load i32, i32* %12, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32*, i32** %264, i64 %266
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @ff_mss34_dct_put(i32* %268, i32 8, i32 %271)
  %273 = load i32**, i32*** %9, align 8
  %274 = load i32, i32* %12, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32*, i32** %273, i64 %275
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %10, align 4
  %279 = mul nsw i32 %278, 16
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %277, i64 %280
  store i32* %281, i32** %16, align 8
  store i32 0, i32* %13, align 4
  br label %282

282:                                              ; preds = %328, %240
  %283 = load i32, i32* %13, align 4
  %284 = icmp slt i32 %283, 16
  br i1 %284, label %285, label %331

285:                                              ; preds = %282
  store i32 0, i32* %14, align 4
  br label %286

286:                                              ; preds = %312, %285
  %287 = load i32, i32* %14, align 4
  %288 = icmp slt i32 %287, 8
  br i1 %288, label %289, label %315

289:                                              ; preds = %286
  %290 = load i32*, i32** %16, align 8
  %291 = load i32, i32* %14, align 4
  %292 = mul nsw i32 %291, 2
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %290, i64 %293
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 0
  %297 = load i32**, i32*** %296, align 8
  %298 = load i32, i32* %12, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32*, i32** %297, i64 %299
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %14, align 4
  %303 = load i32, i32* %13, align 4
  %304 = and i32 %303, -2
  %305 = mul nsw i32 %304, 4
  %306 = add nsw i32 %302, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %301, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = mul nsw i32 %309, 257
  %311 = call i32 @AV_WN16A(i32* %294, i32 %310)
  br label %312

312:                                              ; preds = %289
  %313 = load i32, i32* %14, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %14, align 4
  br label %286

315:                                              ; preds = %286
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_4__*, %struct.TYPE_4__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 0
  %320 = load i32*, i32** %319, align 8
  %321 = load i32, i32* %12, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = load i32*, i32** %16, align 8
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds i32, i32* %325, i64 %326
  store i32* %327, i32** %16, align 8
  br label %328

328:                                              ; preds = %315
  %329 = load i32, i32* %13, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %13, align 4
  br label %282

331:                                              ; preds = %282
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %12, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %12, align 4
  br label %162

335:                                              ; preds = %162
  store i32 0, i32* %6, align 4
  br label %336

336:                                              ; preds = %335, %238, %103
  %337 = load i32, i32* %6, align 4
  ret i32 %337
}

declare dso_local i32 @mss4_decode_dct(i32*, i64, i64, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ff_mss34_dct_put(i32*, i32, i32) #1

declare dso_local i32 @AV_WN16A(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
