; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_output.c_yuv2gbrp16_full_X_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_output.c_yuv2gbrp16_full_X_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@AV_PIX_FMT_FLAG_ALPHA = common dso_local global i32 0, align 4
@HAVE_BIGENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32**, i32, i32*, i32**, i32**, i32, i32**, i32**, i32, i32)* @yuv2gbrp16_full_X_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yuv2gbrp16_full_X_c(%struct.TYPE_5__* %0, i32* %1, i32** %2, i32 %3, i32* %4, i32** %5, i32** %6, i32 %7, i32** %8, i32** %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32**, align 8
  %22 = alloca i32**, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_6__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32**, align 8
  %29 = alloca i32**, align 8
  %30 = alloca i32**, align 8
  %31 = alloca i32**, align 8
  %32 = alloca i32**, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32** %2, i32*** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32* %4, i32** %17, align 8
  store i32** %5, i32*** %18, align 8
  store i32** %6, i32*** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32** %8, i32*** %21, align 8
  store i32** %9, i32*** %22, align 8
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_6__* @av_pix_fmt_desc_get(i32 %43)
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %25, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AV_PIX_FMT_FLAG_ALPHA, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %12
  %52 = load i32**, i32*** %21, align 8
  %53 = icmp ne i32** %52, null
  br label %54

54:                                               ; preds = %51, %12
  %55 = phi i1 [ false, %12 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %27, align 4
  %57 = load i32**, i32*** %22, align 8
  store i32** %57, i32*** %28, align 8
  %58 = load i32**, i32*** %15, align 8
  store i32** %58, i32*** %29, align 8
  %59 = load i32**, i32*** %18, align 8
  store i32** %59, i32*** %30, align 8
  %60 = load i32**, i32*** %19, align 8
  store i32** %60, i32*** %31, align 8
  %61 = load i32**, i32*** %21, align 8
  store i32** %61, i32*** %32, align 8
  store i32 0, i32* %26, align 4
  br label %62

62:                                               ; preds = %262, %54
  %63 = load i32, i32* %26, align 4
  %64 = load i32, i32* %23, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %265

66:                                               ; preds = %62
  store i32 -1073741824, i32* %34, align 4
  store i32 -1073741824, i32* %35, align 4
  store i32 -1073741824, i32* %36, align 4
  store i32 0, i32* %33, align 4
  br label %67

67:                                               ; preds = %89, %66
  %68 = load i32, i32* %33, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %67
  %72 = load i32**, i32*** %29, align 8
  %73 = load i32, i32* %33, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %26, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %14, align 8
  %82 = load i32, i32* %33, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = mul i32 %80, %85
  %87 = load i32, i32* %34, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %34, align 4
  br label %89

89:                                               ; preds = %71
  %90 = load i32, i32* %33, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %33, align 4
  br label %67

92:                                               ; preds = %67
  store i32 0, i32* %33, align 4
  br label %93

93:                                               ; preds = %132, %92
  %94 = load i32, i32* %33, align 4
  %95 = load i32, i32* %20, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %135

97:                                               ; preds = %93
  %98 = load i32**, i32*** %30, align 8
  %99 = load i32, i32* %33, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %26, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %17, align 8
  %108 = load i32, i32* %33, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = mul i32 %106, %111
  %113 = load i32, i32* %35, align 4
  %114 = add i32 %113, %112
  store i32 %114, i32* %35, align 4
  %115 = load i32**, i32*** %31, align 8
  %116 = load i32, i32* %33, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %26, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %17, align 8
  %125 = load i32, i32* %33, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = mul i32 %123, %128
  %130 = load i32, i32* %36, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* %36, align 4
  br label %132

132:                                              ; preds = %97
  %133 = load i32, i32* %33, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %33, align 4
  br label %93

135:                                              ; preds = %93
  %136 = load i32, i32* %34, align 4
  %137 = ashr i32 %136, 14
  store i32 %137, i32* %34, align 4
  %138 = load i32, i32* %34, align 4
  %139 = add nsw i32 %138, 65536
  store i32 %139, i32* %34, align 4
  %140 = load i32, i32* %35, align 4
  %141 = ashr i32 %140, 14
  store i32 %141, i32* %35, align 4
  %142 = load i32, i32* %36, align 4
  %143 = ashr i32 %142, 14
  store i32 %143, i32* %36, align 4
  %144 = load i32, i32* %27, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %177

146:                                              ; preds = %135
  store i32 -1073741824, i32* %40, align 4
  store i32 0, i32* %33, align 4
  br label %147

147:                                              ; preds = %169, %146
  %148 = load i32, i32* %33, align 4
  %149 = load i32, i32* %16, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %172

151:                                              ; preds = %147
  %152 = load i32**, i32*** %32, align 8
  %153 = load i32, i32* %33, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %152, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %26, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %14, align 8
  %162 = load i32, i32* %33, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = mul i32 %160, %165
  %167 = load i32, i32* %40, align 4
  %168 = add i32 %167, %166
  store i32 %168, i32* %40, align 4
  br label %169

169:                                              ; preds = %151
  %170 = load i32, i32* %33, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %33, align 4
  br label %147

172:                                              ; preds = %147
  %173 = load i32, i32* %40, align 4
  %174 = ashr i32 %173, 1
  store i32 %174, i32* %40, align 4
  %175 = load i32, i32* %40, align 4
  %176 = add nsw i32 %175, 536879104
  store i32 %176, i32* %40, align 4
  br label %177

177:                                              ; preds = %172, %135
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* %34, align 4
  %182 = sext i32 %181 to i64
  %183 = sub nsw i64 %182, %180
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %34, align 4
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %34, align 4
  %189 = mul nsw i32 %188, %187
  store i32 %189, i32* %34, align 4
  %190 = load i32, i32* %34, align 4
  %191 = add nsw i32 %190, 8192
  store i32 %191, i32* %34, align 4
  %192 = load i32, i32* %36, align 4
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = mul nsw i32 %192, %195
  store i32 %196, i32* %37, align 4
  %197 = load i32, i32* %36, align 4
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = mul nsw i32 %197, %200
  %202 = load i32, i32* %35, align 4
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %202, %205
  %207 = add nsw i32 %201, %206
  store i32 %207, i32* %38, align 4
  %208 = load i32, i32* %35, align 4
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = mul nsw i32 %208, %211
  store i32 %212, i32* %39, align 4
  %213 = load i32, i32* %34, align 4
  %214 = load i32, i32* %37, align 4
  %215 = add nsw i32 %213, %214
  %216 = call i32 @av_clip_uintp2(i32 %215, i32 30)
  store i32 %216, i32* %37, align 4
  %217 = load i32, i32* %34, align 4
  %218 = load i32, i32* %38, align 4
  %219 = add nsw i32 %217, %218
  %220 = call i32 @av_clip_uintp2(i32 %219, i32 30)
  store i32 %220, i32* %38, align 4
  %221 = load i32, i32* %34, align 4
  %222 = load i32, i32* %39, align 4
  %223 = add nsw i32 %221, %222
  %224 = call i32 @av_clip_uintp2(i32 %223, i32 30)
  store i32 %224, i32* %39, align 4
  %225 = load i32, i32* %38, align 4
  %226 = ashr i32 %225, 14
  %227 = load i32**, i32*** %28, align 8
  %228 = getelementptr inbounds i32*, i32** %227, i64 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %26, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  store i32 %226, i32* %232, align 4
  %233 = load i32, i32* %39, align 4
  %234 = ashr i32 %233, 14
  %235 = load i32**, i32*** %28, align 8
  %236 = getelementptr inbounds i32*, i32** %235, i64 1
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %26, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %234, i32* %240, align 4
  %241 = load i32, i32* %37, align 4
  %242 = ashr i32 %241, 14
  %243 = load i32**, i32*** %28, align 8
  %244 = getelementptr inbounds i32*, i32** %243, i64 2
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %26, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %242, i32* %248, align 4
  %249 = load i32, i32* %27, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %177
  %252 = load i32, i32* %40, align 4
  %253 = call i32 @av_clip_uintp2(i32 %252, i32 30)
  %254 = ashr i32 %253, 14
  %255 = load i32**, i32*** %28, align 8
  %256 = getelementptr inbounds i32*, i32** %255, i64 3
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %26, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  store i32 %254, i32* %260, align 4
  br label %261

261:                                              ; preds = %251, %177
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %26, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %26, align 4
  br label %62

265:                                              ; preds = %62
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @isBE(i32 %268)
  %270 = icmp ne i32 %269, 0
  %271 = xor i1 %270, true
  %272 = zext i1 %271 to i32
  %273 = load i32, i32* @HAVE_BIGENDIAN, align 4
  %274 = icmp ne i32 %273, 0
  %275 = xor i1 %274, true
  %276 = zext i1 %275 to i32
  %277 = icmp ne i32 %272, %276
  br i1 %277, label %278, label %348

278:                                              ; preds = %265
  store i32 0, i32* %26, align 4
  br label %279

279:                                              ; preds = %344, %278
  %280 = load i32, i32* %26, align 4
  %281 = load i32, i32* %23, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %347

283:                                              ; preds = %279
  %284 = load i32**, i32*** %28, align 8
  %285 = getelementptr inbounds i32*, i32** %284, i64 0
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %26, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @av_bswap16(i32 %290)
  %292 = load i32**, i32*** %28, align 8
  %293 = getelementptr inbounds i32*, i32** %292, i64 0
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %26, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %291, i32* %297, align 4
  %298 = load i32**, i32*** %28, align 8
  %299 = getelementptr inbounds i32*, i32** %298, i64 1
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %26, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @av_bswap16(i32 %304)
  %306 = load i32**, i32*** %28, align 8
  %307 = getelementptr inbounds i32*, i32** %306, i64 1
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %26, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32 %305, i32* %311, align 4
  %312 = load i32**, i32*** %28, align 8
  %313 = getelementptr inbounds i32*, i32** %312, i64 2
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %26, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @av_bswap16(i32 %318)
  %320 = load i32**, i32*** %28, align 8
  %321 = getelementptr inbounds i32*, i32** %320, i64 2
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %26, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  store i32 %319, i32* %325, align 4
  %326 = load i32, i32* %27, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %343

328:                                              ; preds = %283
  %329 = load i32**, i32*** %28, align 8
  %330 = getelementptr inbounds i32*, i32** %329, i64 3
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %26, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @av_bswap16(i32 %335)
  %337 = load i32**, i32*** %28, align 8
  %338 = getelementptr inbounds i32*, i32** %337, i64 3
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* %26, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  store i32 %336, i32* %342, align 4
  br label %343

343:                                              ; preds = %328, %283
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %26, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %26, align 4
  br label %279

347:                                              ; preds = %279
  br label %348

348:                                              ; preds = %347, %265
  ret void
}

declare dso_local %struct.TYPE_6__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_clip_uintp2(i32, i32) #1

declare dso_local i32 @isBE(i32) #1

declare dso_local i32 @av_bswap16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
