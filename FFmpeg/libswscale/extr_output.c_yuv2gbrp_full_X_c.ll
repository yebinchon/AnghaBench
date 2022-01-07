; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_output.c_yuv2gbrp_full_X_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_output.c_yuv2gbrp_full_X_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@AV_PIX_FMT_FLAG_ALPHA = common dso_local global i32 0, align 4
@HAVE_BIGENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32**, i32, i32*, i32**, i32**, i32, i32**, i32**, i32, i32)* @yuv2gbrp_full_X_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yuv2gbrp_full_X_c(%struct.TYPE_7__* %0, i32* %1, i32** %2, i32 %3, i32* %4, i32** %5, i32** %6, i32 %7, i32** %8, i32** %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.TYPE_7__*, align 8
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
  %25 = alloca %struct.TYPE_8__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32**, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %13, align 8
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
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_8__* @av_pix_fmt_desc_get(i32 %40)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %25, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AV_PIX_FMT_FLAG_ALPHA, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %12
  %49 = load i32**, i32*** %21, align 8
  %50 = icmp ne i32** %49, null
  br label %51

51:                                               ; preds = %48, %12
  %52 = phi i1 [ false, %12 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %27, align 4
  %54 = load i32**, i32*** %22, align 8
  store i32** %54, i32*** %28, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 30, %60
  store i32 %61, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %26, align 4
  br label %62

62:                                               ; preds = %320, %51
  %63 = load i32, i32* %26, align 4
  %64 = load i32, i32* %23, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %323

66:                                               ; preds = %62
  store i32 512, i32* %32, align 4
  store i32 -67108352, i32* %33, align 4
  store i32 -67108352, i32* %34, align 4
  store i32 0, i32* %31, align 4
  br label %67

67:                                               ; preds = %89, %66
  %68 = load i32, i32* %31, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %67
  %72 = load i32**, i32*** %15, align 8
  %73 = load i32, i32* %31, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %26, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %14, align 8
  %82 = load i32, i32* %31, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %80, %85
  %87 = load i32, i32* %32, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %32, align 4
  br label %89

89:                                               ; preds = %71
  %90 = load i32, i32* %31, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %31, align 4
  br label %67

92:                                               ; preds = %67
  store i32 0, i32* %31, align 4
  br label %93

93:                                               ; preds = %132, %92
  %94 = load i32, i32* %31, align 4
  %95 = load i32, i32* %20, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %135

97:                                               ; preds = %93
  %98 = load i32**, i32*** %18, align 8
  %99 = load i32, i32* %31, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %26, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %17, align 8
  %108 = load i32, i32* %31, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %106, %111
  %113 = load i32, i32* %33, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %33, align 4
  %115 = load i32**, i32*** %19, align 8
  %116 = load i32, i32* %31, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %26, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %17, align 8
  %125 = load i32, i32* %31, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %123, %128
  %130 = load i32, i32* %34, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %34, align 4
  br label %132

132:                                              ; preds = %97
  %133 = load i32, i32* %31, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %31, align 4
  br label %93

135:                                              ; preds = %93
  %136 = load i32, i32* %32, align 4
  %137 = ashr i32 %136, 10
  store i32 %137, i32* %32, align 4
  %138 = load i32, i32* %33, align 4
  %139 = ashr i32 %138, 10
  store i32 %139, i32* %33, align 4
  %140 = load i32, i32* %34, align 4
  %141 = ashr i32 %140, 10
  store i32 %141, i32* %34, align 4
  %142 = load i32, i32* %27, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %178

144:                                              ; preds = %135
  store i32 262144, i32* %30, align 4
  store i32 0, i32* %31, align 4
  br label %145

145:                                              ; preds = %167, %144
  %146 = load i32, i32* %31, align 4
  %147 = load i32, i32* %16, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %170

149:                                              ; preds = %145
  %150 = load i32**, i32*** %21, align 8
  %151 = load i32, i32* %31, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %26, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %14, align 8
  %160 = load i32, i32* %31, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 %158, %163
  %165 = load i32, i32* %30, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %30, align 4
  br label %167

167:                                              ; preds = %149
  %168 = load i32, i32* %31, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %31, align 4
  br label %145

170:                                              ; preds = %145
  %171 = load i32, i32* %30, align 4
  %172 = and i32 %171, -134217728
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* %30, align 4
  %176 = call i32 @av_clip_uintp2(i32 %175, i32 27)
  store i32 %176, i32* %30, align 4
  br label %177

177:                                              ; preds = %174, %170
  br label %178

178:                                              ; preds = %177, %135
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 6
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %32, align 4
  %183 = sext i32 %182 to i64
  %184 = sub nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %32, align 4
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %32, align 4
  %190 = mul nsw i32 %189, %188
  store i32 %190, i32* %32, align 4
  %191 = load i32, i32* %29, align 4
  %192 = sub nsw i32 %191, 1
  %193 = shl i32 1, %192
  %194 = load i32, i32* %32, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %32, align 4
  %196 = load i32, i32* %32, align 4
  %197 = load i32, i32* %34, align 4
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %197, %200
  %202 = add nsw i32 %196, %201
  store i32 %202, i32* %35, align 4
  %203 = load i32, i32* %32, align 4
  %204 = load i32, i32* %34, align 4
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = mul nsw i32 %204, %207
  %209 = add nsw i32 %203, %208
  %210 = load i32, i32* %33, align 4
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 %210, %213
  %215 = add nsw i32 %209, %214
  store i32 %215, i32* %36, align 4
  %216 = load i32, i32* %32, align 4
  %217 = load i32, i32* %33, align 4
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = mul nsw i32 %217, %220
  %222 = add nsw i32 %216, %221
  store i32 %222, i32* %37, align 4
  %223 = load i32, i32* %35, align 4
  %224 = load i32, i32* %36, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* %37, align 4
  %227 = or i32 %225, %226
  %228 = and i32 %227, -1073741824
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %178
  %231 = load i32, i32* %35, align 4
  %232 = call i32 @av_clip_uintp2(i32 %231, i32 30)
  store i32 %232, i32* %35, align 4
  %233 = load i32, i32* %36, align 4
  %234 = call i32 @av_clip_uintp2(i32 %233, i32 30)
  store i32 %234, i32* %36, align 4
  %235 = load i32, i32* %37, align 4
  %236 = call i32 @av_clip_uintp2(i32 %235, i32 30)
  store i32 %236, i32* %37, align 4
  br label %237

237:                                              ; preds = %230, %178
  %238 = load i32, i32* %29, align 4
  %239 = icmp ne i32 %238, 22
  br i1 %239, label %240, label %282

240:                                              ; preds = %237
  %241 = load i32, i32* %36, align 4
  %242 = load i32, i32* %29, align 4
  %243 = ashr i32 %241, %242
  %244 = load i32**, i32*** %28, align 8
  %245 = getelementptr inbounds i32*, i32** %244, i64 0
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %26, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  store i32 %243, i32* %249, align 4
  %250 = load i32, i32* %37, align 4
  %251 = load i32, i32* %29, align 4
  %252 = ashr i32 %250, %251
  %253 = load i32**, i32*** %28, align 8
  %254 = getelementptr inbounds i32*, i32** %253, i64 1
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %26, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  store i32 %252, i32* %258, align 4
  %259 = load i32, i32* %35, align 4
  %260 = load i32, i32* %29, align 4
  %261 = ashr i32 %259, %260
  %262 = load i32**, i32*** %28, align 8
  %263 = getelementptr inbounds i32*, i32** %262, i64 2
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %26, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  store i32 %261, i32* %267, align 4
  %268 = load i32, i32* %27, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %281

270:                                              ; preds = %240
  %271 = load i32, i32* %30, align 4
  %272 = load i32, i32* %29, align 4
  %273 = sub nsw i32 %272, 3
  %274 = ashr i32 %271, %273
  %275 = load i32**, i32*** %28, align 8
  %276 = getelementptr inbounds i32*, i32** %275, i64 3
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %26, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  store i32 %274, i32* %280, align 4
  br label %281

281:                                              ; preds = %270, %240
  br label %319

282:                                              ; preds = %237
  %283 = load i32, i32* %36, align 4
  %284 = ashr i32 %283, 22
  %285 = load i32**, i32*** %22, align 8
  %286 = getelementptr inbounds i32*, i32** %285, i64 0
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %26, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  store i32 %284, i32* %290, align 4
  %291 = load i32, i32* %37, align 4
  %292 = ashr i32 %291, 22
  %293 = load i32**, i32*** %22, align 8
  %294 = getelementptr inbounds i32*, i32** %293, i64 1
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %26, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  store i32 %292, i32* %298, align 4
  %299 = load i32, i32* %35, align 4
  %300 = ashr i32 %299, 22
  %301 = load i32**, i32*** %22, align 8
  %302 = getelementptr inbounds i32*, i32** %301, i64 2
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %26, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  store i32 %300, i32* %306, align 4
  %307 = load i32, i32* %27, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %318

309:                                              ; preds = %282
  %310 = load i32, i32* %30, align 4
  %311 = ashr i32 %310, 19
  %312 = load i32**, i32*** %22, align 8
  %313 = getelementptr inbounds i32*, i32** %312, i64 3
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %26, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  store i32 %311, i32* %317, align 4
  br label %318

318:                                              ; preds = %309, %282
  br label %319

319:                                              ; preds = %318, %281
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %26, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %26, align 4
  br label %62

323:                                              ; preds = %62
  %324 = load i32, i32* %29, align 4
  %325 = icmp ne i32 %324, 22
  br i1 %325, label %326, label %409

326:                                              ; preds = %323
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @isBE(i32 %329)
  %331 = icmp ne i32 %330, 0
  %332 = xor i1 %331, true
  %333 = zext i1 %332 to i32
  %334 = load i32, i32* @HAVE_BIGENDIAN, align 4
  %335 = icmp ne i32 %334, 0
  %336 = xor i1 %335, true
  %337 = zext i1 %336 to i32
  %338 = icmp ne i32 %333, %337
  br i1 %338, label %339, label %409

339:                                              ; preds = %326
  store i32 0, i32* %26, align 4
  br label %340

340:                                              ; preds = %405, %339
  %341 = load i32, i32* %26, align 4
  %342 = load i32, i32* %23, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %408

344:                                              ; preds = %340
  %345 = load i32**, i32*** %28, align 8
  %346 = getelementptr inbounds i32*, i32** %345, i64 0
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %26, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @av_bswap16(i32 %351)
  %353 = load i32**, i32*** %28, align 8
  %354 = getelementptr inbounds i32*, i32** %353, i64 0
  %355 = load i32*, i32** %354, align 8
  %356 = load i32, i32* %26, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  store i32 %352, i32* %358, align 4
  %359 = load i32**, i32*** %28, align 8
  %360 = getelementptr inbounds i32*, i32** %359, i64 1
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %26, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @av_bswap16(i32 %365)
  %367 = load i32**, i32*** %28, align 8
  %368 = getelementptr inbounds i32*, i32** %367, i64 1
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %26, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  store i32 %366, i32* %372, align 4
  %373 = load i32**, i32*** %28, align 8
  %374 = getelementptr inbounds i32*, i32** %373, i64 2
  %375 = load i32*, i32** %374, align 8
  %376 = load i32, i32* %26, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @av_bswap16(i32 %379)
  %381 = load i32**, i32*** %28, align 8
  %382 = getelementptr inbounds i32*, i32** %381, i64 2
  %383 = load i32*, i32** %382, align 8
  %384 = load i32, i32* %26, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %383, i64 %385
  store i32 %380, i32* %386, align 4
  %387 = load i32, i32* %27, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %404

389:                                              ; preds = %344
  %390 = load i32**, i32*** %28, align 8
  %391 = getelementptr inbounds i32*, i32** %390, i64 3
  %392 = load i32*, i32** %391, align 8
  %393 = load i32, i32* %26, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @av_bswap16(i32 %396)
  %398 = load i32**, i32*** %28, align 8
  %399 = getelementptr inbounds i32*, i32** %398, i64 3
  %400 = load i32*, i32** %399, align 8
  %401 = load i32, i32* %26, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %400, i64 %402
  store i32 %397, i32* %403, align 4
  br label %404

404:                                              ; preds = %389, %344
  br label %405

405:                                              ; preds = %404
  %406 = load i32, i32* %26, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %26, align 4
  br label %340

408:                                              ; preds = %340
  br label %409

409:                                              ; preds = %408, %326, %323
  ret void
}

declare dso_local %struct.TYPE_8__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_clip_uintp2(i32, i32) #1

declare dso_local i32 @isBE(i32) #1

declare dso_local i32 @av_bswap16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
