; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv30.c_rv30_loop_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv30.c_rv30_loop_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i64*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32** }

@rv30_loop_filt_lim = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @rv30_loop_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv30_loop_filter(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %28, %31
  store i32 %32, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %75, %2
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %80

39:                                               ; preds = %33
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = call i64 @IS_INTRA(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %17, align 4
  %54 = call i64 @IS_SEPARATE_DC(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52, %39
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 65535, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %52
  %64 = load i32, i32* %17, align 4
  %65 = call i64 @IS_INTRA(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 255, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %63
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %33

80:                                               ; preds = %33
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %81, %84
  store i32 %85, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %378, %80
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %383

92:                                               ; preds = %86
  %93 = load i32*, i32** @rv30_loop_filt_lim, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32, i32* %93, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %92
  %108 = load i32*, i32** @rv30_loop_filt_lim, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %108, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %15, align 4
  br label %121

121:                                              ; preds = %107, %92
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %236, %121
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %123, 16
  br i1 %124, label %125, label %239

125:                                              ; preds = %122
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32**, i32*** %131, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = mul nsw i32 %135, 16
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %4, align 4
  %140 = mul nsw i32 %139, 16
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %140, %141
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 %142, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %138, i64 %147
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = mul nsw i32 4, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %148, i64 %154
  store i32* %155, i32** %11, align 8
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %230, %125
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 4
  br i1 %162, label %163, label %235

163:                                              ; preds = %160
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %164, %165
  store i32 %166, i32* %18, align 4
  store i32 0, i32* %13, align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %18, align 4
  %175 = shl i32 1, %174
  %176 = and i32 %173, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %163
  %179 = load i32, i32* %14, align 4
  store i32 %179, i32* %13, align 4
  br label %219

180:                                              ; preds = %163
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %199, label %183

183:                                              ; preds = %180
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %18, align 4
  %193 = add nsw i32 %192, 3
  %194 = shl i32 1, %193
  %195 = and i32 %191, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %183
  %198 = load i32, i32* %15, align 4
  store i32 %198, i32* %13, align 4
  br label %218

199:                                              ; preds = %183, %180
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %217

202:                                              ; preds = %199
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %18, align 4
  %211 = sub nsw i32 %210, 1
  %212 = shl i32 1, %211
  %213 = and i32 %209, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %202
  %216 = load i32, i32* %14, align 4
  store i32 %216, i32* %13, align 4
  br label %217

217:                                              ; preds = %215, %202, %199
  br label %218

218:                                              ; preds = %217, %197
  br label %219

219:                                              ; preds = %218, %178
  %220 = load i32, i32* %13, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %219
  %223 = load i32*, i32** %11, align 8
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %13, align 4
  %228 = call i32 @rv30_weak_loop_filter(i32* %223, i32 1, i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %222, %219
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %8, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %8, align 4
  %233 = load i32*, i32** %11, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 4
  store i32* %234, i32** %11, align 8
  br label %160

235:                                              ; preds = %160
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, 4
  store i32 %238, i32* %9, align 4
  br label %122

239:                                              ; preds = %122
  store i32 0, i32* %10, align 4
  br label %240

240:                                              ; preds = %374, %239
  %241 = load i32, i32* %10, align 4
  %242 = icmp slt i32 %241, 2
  br i1 %242, label %243, label %377

243:                                              ; preds = %240
  store i32 0, i32* %20, align 4
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %10, align 4
  %252 = mul nsw i32 %251, 4
  %253 = ashr i32 %250, %252
  %254 = and i32 %253, 15
  store i32 %254, i32* %19, align 4
  %255 = load i32, i32* %7, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %270

257:                                              ; preds = %243
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %6, align 4
  %262 = sub nsw i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %260, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %10, align 4
  %267 = mul nsw i32 %266, 4
  %268 = ashr i32 %265, %267
  %269 = and i32 %268, 15
  store i32 %269, i32* %20, align 4
  br label %270

270:                                              ; preds = %257, %243
  store i32 0, i32* %9, align 4
  br label %271

271:                                              ; preds = %370, %270
  %272 = load i32, i32* %9, align 4
  %273 = icmp slt i32 %272, 8
  br i1 %273, label %274, label %373

274:                                              ; preds = %271
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 4
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 2
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 0
  %281 = load i32**, i32*** %280, align 8
  %282 = load i32, i32* %10, align 4
  %283 = add nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32*, i32** %281, i64 %284
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %7, align 4
  %288 = mul nsw i32 %287, 8
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %286, i64 %289
  %291 = load i32, i32* %4, align 4
  %292 = mul nsw i32 %291, 8
  %293 = load i32, i32* %9, align 4
  %294 = add nsw i32 %292, %293
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = mul nsw i32 %294, %297
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %290, i64 %299
  %301 = load i32, i32* %7, align 4
  %302 = icmp ne i32 %301, 0
  %303 = xor i1 %302, true
  %304 = zext i1 %303 to i32
  %305 = mul nsw i32 4, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %300, i64 %306
  store i32* %307, i32** %12, align 8
  %308 = load i32, i32* %7, align 4
  %309 = icmp ne i32 %308, 0
  %310 = xor i1 %309, true
  %311 = zext i1 %310 to i32
  store i32 %311, i32* %8, align 4
  br label %312

312:                                              ; preds = %364, %274
  %313 = load i32, i32* %8, align 4
  %314 = icmp slt i32 %313, 2
  br i1 %314, label %315, label %369

315:                                              ; preds = %312
  %316 = load i32, i32* %8, align 4
  %317 = load i32, i32* %9, align 4
  %318 = ashr i32 %317, 1
  %319 = add nsw i32 %316, %318
  store i32 %319, i32* %21, align 4
  store i32 0, i32* %13, align 4
  %320 = load i32, i32* %19, align 4
  %321 = load i32, i32* %21, align 4
  %322 = shl i32 1, %321
  %323 = and i32 %320, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %315
  %326 = load i32, i32* %14, align 4
  store i32 %326, i32* %13, align 4
  br label %353

327:                                              ; preds = %315
  %328 = load i32, i32* %8, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %339, label %330

330:                                              ; preds = %327
  %331 = load i32, i32* %20, align 4
  %332 = load i32, i32* %21, align 4
  %333 = add nsw i32 %332, 1
  %334 = shl i32 1, %333
  %335 = and i32 %331, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %330
  %338 = load i32, i32* %15, align 4
  store i32 %338, i32* %13, align 4
  br label %352

339:                                              ; preds = %330, %327
  %340 = load i32, i32* %8, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %351

342:                                              ; preds = %339
  %343 = load i32, i32* %19, align 4
  %344 = load i32, i32* %21, align 4
  %345 = sub nsw i32 %344, 1
  %346 = shl i32 1, %345
  %347 = and i32 %343, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %342
  %350 = load i32, i32* %14, align 4
  store i32 %350, i32* %13, align 4
  br label %351

351:                                              ; preds = %349, %342, %339
  br label %352

352:                                              ; preds = %351, %337
  br label %353

353:                                              ; preds = %352, %325
  %354 = load i32, i32* %13, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %363

356:                                              ; preds = %353
  %357 = load i32*, i32** %12, align 8
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* %13, align 4
  %362 = call i32 @rv30_weak_loop_filter(i32* %357, i32 1, i32 %360, i32 %361)
  br label %363

363:                                              ; preds = %356, %353
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %8, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %8, align 4
  %367 = load i32*, i32** %12, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 4
  store i32* %368, i32** %12, align 8
  br label %312

369:                                              ; preds = %312
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %9, align 4
  %372 = add nsw i32 %371, 4
  store i32 %372, i32* %9, align 4
  br label %271

373:                                              ; preds = %271
  br label %374

374:                                              ; preds = %373
  %375 = load i32, i32* %10, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %10, align 4
  br label %240

377:                                              ; preds = %240
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %7, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %7, align 4
  %381 = load i32, i32* %6, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %6, align 4
  br label %86

383:                                              ; preds = %86
  %384 = load i32, i32* %4, align 4
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = mul nsw i32 %384, %387
  store i32 %388, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %389

389:                                              ; preds = %684, %383
  %390 = load i32, i32* %7, align 4
  %391 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = icmp slt i32 %390, %393
  br i1 %394, label %395, label %689

395:                                              ; preds = %389
  %396 = load i32*, i32** @rv30_loop_filt_lim, align 8
  %397 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %397, i32 0, i32 4
  %399 = load %struct.TYPE_7__*, %struct.TYPE_7__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 1
  %401 = load i64*, i64** %400, align 8
  %402 = load i32, i32* %6, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i64, i64* %401, i64 %403
  %405 = load i64, i64* %404, align 8
  %406 = getelementptr inbounds i32, i32* %396, i64 %405
  %407 = load i32, i32* %406, align 4
  store i32 %407, i32* %14, align 4
  %408 = load i32, i32* %4, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %427

410:                                              ; preds = %395
  %411 = load i32*, i32** @rv30_loop_filt_lim, align 8
  %412 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %412, i32 0, i32 4
  %414 = load %struct.TYPE_7__*, %struct.TYPE_7__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %414, i32 0, i32 1
  %416 = load i64*, i64** %415, align 8
  %417 = load i32, i32* %6, align 4
  %418 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = sub nsw i32 %417, %420
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i64, i64* %416, i64 %422
  %424 = load i64, i64* %423, align 8
  %425 = getelementptr inbounds i32, i32* %411, i64 %424
  %426 = load i32, i32* %425, align 4
  store i32 %426, i32* %16, align 4
  br label %427

427:                                              ; preds = %410, %395
  %428 = load i32, i32* %4, align 4
  %429 = icmp ne i32 %428, 0
  %430 = xor i1 %429, true
  %431 = zext i1 %430 to i32
  %432 = mul nsw i32 4, %431
  store i32 %432, i32* %9, align 4
  br label %433

433:                                              ; preds = %539, %427
  %434 = load i32, i32* %9, align 4
  %435 = icmp slt i32 %434, 16
  br i1 %435, label %436, label %542

436:                                              ; preds = %433
  %437 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %437, i32 0, i32 4
  %439 = load %struct.TYPE_7__*, %struct.TYPE_7__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %439, i32 0, i32 2
  %441 = load %struct.TYPE_6__*, %struct.TYPE_6__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %441, i32 0, i32 0
  %443 = load i32**, i32*** %442, align 8
  %444 = getelementptr inbounds i32*, i32** %443, i64 0
  %445 = load i32*, i32** %444, align 8
  %446 = load i32, i32* %7, align 4
  %447 = mul nsw i32 %446, 16
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %445, i64 %448
  %450 = load i32, i32* %4, align 4
  %451 = mul nsw i32 %450, 16
  %452 = load i32, i32* %9, align 4
  %453 = add nsw i32 %451, %452
  %454 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %455 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %454, i32 0, i32 2
  %456 = load i32, i32* %455, align 8
  %457 = mul nsw i32 %453, %456
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %449, i64 %458
  store i32* %459, i32** %11, align 8
  store i32 0, i32* %8, align 4
  br label %460

460:                                              ; preds = %533, %436
  %461 = load i32, i32* %8, align 4
  %462 = icmp slt i32 %461, 4
  br i1 %462, label %463, label %538

463:                                              ; preds = %460
  %464 = load i32, i32* %8, align 4
  %465 = load i32, i32* %9, align 4
  %466 = add nsw i32 %464, %465
  store i32 %466, i32* %22, align 4
  store i32 0, i32* %13, align 4
  %467 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %468 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %467, i32 0, i32 0
  %469 = load i32*, i32** %468, align 8
  %470 = load i32, i32* %6, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %469, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* %22, align 4
  %475 = shl i32 1, %474
  %476 = and i32 %473, %475
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %480

478:                                              ; preds = %463
  %479 = load i32, i32* %14, align 4
  store i32 %479, i32* %13, align 4
  br label %522

480:                                              ; preds = %463
  %481 = load i32, i32* %9, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %502, label %483

483:                                              ; preds = %480
  %484 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %485 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %484, i32 0, i32 0
  %486 = load i32*, i32** %485, align 8
  %487 = load i32, i32* %6, align 4
  %488 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %489 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = sub nsw i32 %487, %490
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %486, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* %22, align 4
  %496 = add nsw i32 %495, 12
  %497 = shl i32 1, %496
  %498 = and i32 %494, %497
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %502

500:                                              ; preds = %483
  %501 = load i32, i32* %16, align 4
  store i32 %501, i32* %13, align 4
  br label %521

502:                                              ; preds = %483, %480
  %503 = load i32, i32* %9, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %520

505:                                              ; preds = %502
  %506 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %507 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %506, i32 0, i32 0
  %508 = load i32*, i32** %507, align 8
  %509 = load i32, i32* %6, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, i32* %508, i64 %510
  %512 = load i32, i32* %511, align 4
  %513 = load i32, i32* %22, align 4
  %514 = sub nsw i32 %513, 4
  %515 = shl i32 1, %514
  %516 = and i32 %512, %515
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %520

518:                                              ; preds = %505
  %519 = load i32, i32* %14, align 4
  store i32 %519, i32* %13, align 4
  br label %520

520:                                              ; preds = %518, %505, %502
  br label %521

521:                                              ; preds = %520, %500
  br label %522

522:                                              ; preds = %521, %478
  %523 = load i32, i32* %13, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %532

525:                                              ; preds = %522
  %526 = load i32*, i32** %11, align 8
  %527 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %528 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %527, i32 0, i32 2
  %529 = load i32, i32* %528, align 8
  %530 = load i32, i32* %13, align 4
  %531 = call i32 @rv30_weak_loop_filter(i32* %526, i32 %529, i32 1, i32 %530)
  br label %532

532:                                              ; preds = %525, %522
  br label %533

533:                                              ; preds = %532
  %534 = load i32, i32* %8, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %8, align 4
  %536 = load i32*, i32** %11, align 8
  %537 = getelementptr inbounds i32, i32* %536, i64 4
  store i32* %537, i32** %11, align 8
  br label %460

538:                                              ; preds = %460
  br label %539

539:                                              ; preds = %538
  %540 = load i32, i32* %9, align 4
  %541 = add nsw i32 %540, 4
  store i32 %541, i32* %9, align 4
  br label %433

542:                                              ; preds = %433
  store i32 0, i32* %10, align 4
  br label %543

543:                                              ; preds = %680, %542
  %544 = load i32, i32* %10, align 4
  %545 = icmp slt i32 %544, 2
  br i1 %545, label %546, label %683

546:                                              ; preds = %543
  store i32 0, i32* %24, align 4
  %547 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %548 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %547, i32 0, i32 1
  %549 = load i32*, i32** %548, align 8
  %550 = load i32, i32* %6, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %549, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = load i32, i32* %10, align 4
  %555 = mul nsw i32 %554, 4
  %556 = ashr i32 %553, %555
  %557 = and i32 %556, 15
  store i32 %557, i32* %23, align 4
  %558 = load i32, i32* %4, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %576

560:                                              ; preds = %546
  %561 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %562 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %561, i32 0, i32 1
  %563 = load i32*, i32** %562, align 8
  %564 = load i32, i32* %6, align 4
  %565 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %566 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 8
  %568 = sub nsw i32 %564, %567
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32, i32* %563, i64 %569
  %571 = load i32, i32* %570, align 4
  %572 = load i32, i32* %10, align 4
  %573 = mul nsw i32 %572, 4
  %574 = ashr i32 %571, %573
  %575 = and i32 %574, 15
  store i32 %575, i32* %24, align 4
  br label %576

576:                                              ; preds = %560, %546
  %577 = load i32, i32* %4, align 4
  %578 = icmp ne i32 %577, 0
  %579 = xor i1 %578, true
  %580 = zext i1 %579 to i32
  %581 = mul nsw i32 4, %580
  store i32 %581, i32* %9, align 4
  br label %582

582:                                              ; preds = %676, %576
  %583 = load i32, i32* %9, align 4
  %584 = icmp slt i32 %583, 8
  br i1 %584, label %585, label %679

585:                                              ; preds = %582
  %586 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %587 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %586, i32 0, i32 4
  %588 = load %struct.TYPE_7__*, %struct.TYPE_7__** %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %588, i32 0, i32 2
  %590 = load %struct.TYPE_6__*, %struct.TYPE_6__** %589, align 8
  %591 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %590, i32 0, i32 0
  %592 = load i32**, i32*** %591, align 8
  %593 = load i32, i32* %10, align 4
  %594 = add nsw i32 %593, 1
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i32*, i32** %592, i64 %595
  %597 = load i32*, i32** %596, align 8
  %598 = load i32, i32* %7, align 4
  %599 = mul nsw i32 %598, 8
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i32, i32* %597, i64 %600
  %602 = load i32, i32* %4, align 4
  %603 = mul nsw i32 %602, 8
  %604 = load i32, i32* %9, align 4
  %605 = add nsw i32 %603, %604
  %606 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %607 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %606, i32 0, i32 3
  %608 = load i32, i32* %607, align 4
  %609 = mul nsw i32 %605, %608
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i32, i32* %601, i64 %610
  store i32* %611, i32** %12, align 8
  store i32 0, i32* %8, align 4
  br label %612

612:                                              ; preds = %670, %585
  %613 = load i32, i32* %8, align 4
  %614 = icmp slt i32 %613, 2
  br i1 %614, label %615, label %675

615:                                              ; preds = %612
  %616 = load i32, i32* %8, align 4
  %617 = load i32, i32* %9, align 4
  %618 = ashr i32 %617, 1
  %619 = add nsw i32 %616, %618
  store i32 %619, i32* %25, align 4
  store i32 0, i32* %13, align 4
  %620 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %621 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %620, i32 0, i32 1
  %622 = load i32*, i32** %621, align 8
  %623 = load i32, i32* %6, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds i32, i32* %622, i64 %624
  %626 = load i32, i32* %625, align 4
  %627 = load i32, i32* %25, align 4
  %628 = shl i32 1, %627
  %629 = and i32 %626, %628
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %633

631:                                              ; preds = %615
  %632 = load i32, i32* %14, align 4
  store i32 %632, i32* %13, align 4
  br label %659

633:                                              ; preds = %615
  %634 = load i32, i32* %9, align 4
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %645, label %636

636:                                              ; preds = %633
  %637 = load i32, i32* %24, align 4
  %638 = load i32, i32* %25, align 4
  %639 = add nsw i32 %638, 2
  %640 = shl i32 1, %639
  %641 = and i32 %637, %640
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %643, label %645

643:                                              ; preds = %636
  %644 = load i32, i32* %16, align 4
  store i32 %644, i32* %13, align 4
  br label %658

645:                                              ; preds = %636, %633
  %646 = load i32, i32* %9, align 4
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %648, label %657

648:                                              ; preds = %645
  %649 = load i32, i32* %23, align 4
  %650 = load i32, i32* %25, align 4
  %651 = sub nsw i32 %650, 2
  %652 = shl i32 1, %651
  %653 = and i32 %649, %652
  %654 = icmp ne i32 %653, 0
  br i1 %654, label %655, label %657

655:                                              ; preds = %648
  %656 = load i32, i32* %14, align 4
  store i32 %656, i32* %13, align 4
  br label %657

657:                                              ; preds = %655, %648, %645
  br label %658

658:                                              ; preds = %657, %643
  br label %659

659:                                              ; preds = %658, %631
  %660 = load i32, i32* %13, align 4
  %661 = icmp ne i32 %660, 0
  br i1 %661, label %662, label %669

662:                                              ; preds = %659
  %663 = load i32*, i32** %12, align 8
  %664 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %665 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %664, i32 0, i32 3
  %666 = load i32, i32* %665, align 4
  %667 = load i32, i32* %13, align 4
  %668 = call i32 @rv30_weak_loop_filter(i32* %663, i32 %666, i32 1, i32 %667)
  br label %669

669:                                              ; preds = %662, %659
  br label %670

670:                                              ; preds = %669
  %671 = load i32, i32* %8, align 4
  %672 = add nsw i32 %671, 1
  store i32 %672, i32* %8, align 4
  %673 = load i32*, i32** %12, align 8
  %674 = getelementptr inbounds i32, i32* %673, i64 4
  store i32* %674, i32** %12, align 8
  br label %612

675:                                              ; preds = %612
  br label %676

676:                                              ; preds = %675
  %677 = load i32, i32* %9, align 4
  %678 = add nsw i32 %677, 4
  store i32 %678, i32* %9, align 4
  br label %582

679:                                              ; preds = %582
  br label %680

680:                                              ; preds = %679
  %681 = load i32, i32* %10, align 4
  %682 = add nsw i32 %681, 1
  store i32 %682, i32* %10, align 4
  br label %543

683:                                              ; preds = %543
  br label %684

684:                                              ; preds = %683
  %685 = load i32, i32* %7, align 4
  %686 = add nsw i32 %685, 1
  store i32 %686, i32* %7, align 4
  %687 = load i32, i32* %6, align 4
  %688 = add nsw i32 %687, 1
  store i32 %688, i32* %6, align 4
  br label %389

689:                                              ; preds = %389
  ret void
}

declare dso_local i64 @IS_INTRA(i32) #1

declare dso_local i64 @IS_SEPARATE_DC(i32) #1

declare dso_local i32 @rv30_weak_loop_filter(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
