; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msmpeg4.c_ff_msmpeg4_pred_dc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msmpeg4.c_ff_msmpeg4_pred_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, i32**, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_msmpeg4_pred_dc(%struct.TYPE_9__* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %14, align 4
  br label %29

25:                                               ; preds = %4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load i32**, i32*** %38, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %41, i64 %49
  store i32* %50, i32** %15, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 -1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  %54 = load i32*, i32** %15, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 -1, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %10, align 4
  %60 = load i32*, i32** %15, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sub nsw i32 0, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 14
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %29
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %77, 4
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 1024, i32* %11, align 4
  store i32 1024, i32* %10, align 4
  br label %80

80:                                               ; preds = %79, %74, %70, %29
  %81 = load i32, i32* %14, align 4
  %82 = icmp eq i32 %81, 8
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 4
  %86 = sdiv i32 %85, 8
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 4
  %89 = sdiv i32 %88, 8
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 4
  %92 = sdiv i32 %91, 8
  store i32 %92, i32* %11, align 4
  br label %112

93:                                               ; preds = %80
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %14, align 4
  %96 = ashr i32 %95, 1
  %97 = add nsw i32 %94, %96
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @FASTDIV(i32 %97, i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %14, align 4
  %102 = ashr i32 %101, 1
  %103 = add nsw i32 %100, %102
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @FASTDIV(i32 %103, i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %14, align 4
  %108 = ashr i32 %107, 1
  %109 = add nsw i32 %106, %108
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @FASTDIV(i32 %109, i32 %110)
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %93, %83
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = icmp sgt i32 %115, 3
  br i1 %116, label %117, label %355

117:                                              ; preds = %112
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 13
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %337

122:                                              ; preds = %117
  %123 = load i32, i32* %6, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %13, align 4
  %127 = load i32*, i32** %8, align 8
  store i32 0, i32* %127, align 4
  br label %336

128:                                              ; preds = %122
  %129 = load i32, i32* %6, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %13, align 4
  %133 = load i32*, i32** %8, align 8
  store i32 1, i32* %133, align 4
  br label %335

134:                                              ; preds = %128
  %135 = load i32, i32* %6, align 4
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %137, label %154

137:                                              ; preds = %134
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = sub nsw i32 %138, %139
  %141 = call i64 @abs(i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = sub nsw i32 %142, %143
  %145 = call i64 @abs(i32 %144)
  %146 = icmp slt i64 %141, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %137
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %13, align 4
  %149 = load i32*, i32** %8, align 8
  store i32 1, i32* %149, align 4
  br label %153

150:                                              ; preds = %137
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %13, align 4
  %152 = load i32*, i32** %8, align 8
  store i32 0, i32* %152, align 4
  br label %153

153:                                              ; preds = %150, %147
  br label %334

154:                                              ; preds = %134
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 11
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 8, %159
  store i32 %160, i32* %18, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp slt i32 %161, 4
  br i1 %162, label %163, label %199

163:                                              ; preds = %154
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %17, align 4
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 12
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32**, i32*** %171, align 8
  %173 = getelementptr inbounds i32*, i32** %172, i64 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = ashr i32 %175, 1
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 8
  %180 = mul nsw i32 2, %179
  %181 = add nsw i32 %176, %180
  %182 = load i32, i32* %18, align 4
  %183 = mul nsw i32 %181, %182
  %184 = load i32, i32* %17, align 4
  %185 = mul nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %174, i64 %186
  %188 = load i32, i32* %6, align 4
  %189 = and i32 %188, 1
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 2, %192
  %194 = add nsw i32 %189, %193
  %195 = load i32, i32* %18, align 4
  %196 = mul nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %187, i64 %197
  store i32* %198, i32** %16, align 8
  br label %230

199:                                              ; preds = %154
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 9
  %202 = load i32, i32* %201, align 8
  store i32 %202, i32* %17, align 4
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 12
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i32**, i32*** %207, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sub nsw i32 %209, 3
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32*, i32** %208, i64 %211
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %18, align 4
  %218 = mul nsw i32 %216, %217
  %219 = load i32, i32* %17, align 4
  %220 = mul nsw i32 %218, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %213, i64 %221
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 8
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %18, align 4
  %227 = mul nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %222, i64 %228
  store i32* %229, i32** %16, align 8
  br label %230

230:                                              ; preds = %199, %163
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 8
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %230
  %236 = load i32, i32* %14, align 4
  %237 = ashr i32 %236, 1
  %238 = add nsw i32 1024, %237
  %239 = load i32, i32* %14, align 4
  %240 = sdiv i32 %238, %239
  store i32 %240, i32* %9, align 4
  br label %259

241:                                              ; preds = %230
  %242 = load i32*, i32** %16, align 8
  %243 = load i32, i32* %18, align 4
  %244 = sext i32 %243 to i64
  %245 = sub i64 0, %244
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  %247 = load i32, i32* %17, align 4
  %248 = load i32, i32* %14, align 4
  %249 = mul nsw i32 %248, 8
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 11
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = mul nsw i32 2, %254
  %256 = ashr i32 %249, %255
  %257 = load i32, i32* %18, align 4
  %258 = call i32 @get_dc(i32* %246, i32 %247, i32 %256, i32 %257)
  store i32 %258, i32* %9, align 4
  br label %259

259:                                              ; preds = %241, %235
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 7
  %262 = load i32, i32* %261, align 8
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %259
  %265 = load i32, i32* %14, align 4
  %266 = ashr i32 %265, 1
  %267 = add nsw i32 1024, %266
  %268 = load i32, i32* %14, align 4
  %269 = sdiv i32 %267, %268
  store i32 %269, i32* %11, align 4
  br label %290

270:                                              ; preds = %259
  %271 = load i32*, i32** %16, align 8
  %272 = load i32, i32* %18, align 4
  %273 = load i32, i32* %17, align 4
  %274 = mul nsw i32 %272, %273
  %275 = sext i32 %274 to i64
  %276 = sub i64 0, %275
  %277 = getelementptr inbounds i32, i32* %271, i64 %276
  %278 = load i32, i32* %17, align 4
  %279 = load i32, i32* %14, align 4
  %280 = mul nsw i32 %279, 8
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 11
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = mul nsw i32 2, %285
  %287 = ashr i32 %280, %286
  %288 = load i32, i32* %18, align 4
  %289 = call i32 @get_dc(i32* %277, i32 %278, i32 %287, i32 %288)
  store i32 %289, i32* %11, align 4
  br label %290

290:                                              ; preds = %270, %264
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 10
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %290
  %296 = load i32, i32* %9, align 4
  store i32 %296, i32* %13, align 4
  %297 = load i32*, i32** %8, align 8
  store i32 0, i32* %297, align 4
  br label %333

298:                                              ; preds = %290
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 10
  %301 = load i32, i32* %300, align 4
  %302 = icmp eq i32 %301, 1
  br i1 %302, label %303, label %313

303:                                              ; preds = %298
  %304 = load i32, i32* %6, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = load i32, i32* %11, align 4
  store i32 %307, i32* %13, align 4
  %308 = load i32*, i32** %8, align 8
  store i32 1, i32* %308, align 4
  br label %312

309:                                              ; preds = %303
  %310 = load i32, i32* %9, align 4
  store i32 %310, i32* %13, align 4
  %311 = load i32*, i32** %8, align 8
  store i32 0, i32* %311, align 4
  br label %312

312:                                              ; preds = %309, %306
  br label %332

313:                                              ; preds = %298
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 10
  %316 = load i32, i32* %315, align 4
  %317 = icmp eq i32 %316, 2
  br i1 %317, label %318, label %328

318:                                              ; preds = %313
  %319 = load i32, i32* %6, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %318
  %322 = load i32, i32* %9, align 4
  store i32 %322, i32* %13, align 4
  %323 = load i32*, i32** %8, align 8
  store i32 0, i32* %323, align 4
  br label %327

324:                                              ; preds = %318
  %325 = load i32, i32* %11, align 4
  store i32 %325, i32* %13, align 4
  %326 = load i32*, i32** %8, align 8
  store i32 1, i32* %326, align 4
  br label %327

327:                                              ; preds = %324, %321
  br label %331

328:                                              ; preds = %313
  %329 = load i32, i32* %11, align 4
  store i32 %329, i32* %13, align 4
  %330 = load i32*, i32** %8, align 8
  store i32 1, i32* %330, align 4
  br label %331

331:                                              ; preds = %328, %327
  br label %332

332:                                              ; preds = %331, %312
  br label %333

333:                                              ; preds = %332, %295
  br label %334

334:                                              ; preds = %333, %153
  br label %335

335:                                              ; preds = %334, %131
  br label %336

336:                                              ; preds = %335, %125
  br label %354

337:                                              ; preds = %117
  %338 = load i32, i32* %9, align 4
  %339 = load i32, i32* %10, align 4
  %340 = sub nsw i32 %338, %339
  %341 = call i64 @abs(i32 %340)
  %342 = load i32, i32* %10, align 4
  %343 = load i32, i32* %11, align 4
  %344 = sub nsw i32 %342, %343
  %345 = call i64 @abs(i32 %344)
  %346 = icmp slt i64 %341, %345
  br i1 %346, label %347, label %350

347:                                              ; preds = %337
  %348 = load i32, i32* %11, align 4
  store i32 %348, i32* %13, align 4
  %349 = load i32*, i32** %8, align 8
  store i32 1, i32* %349, align 4
  br label %353

350:                                              ; preds = %337
  %351 = load i32, i32* %9, align 4
  store i32 %351, i32* %13, align 4
  %352 = load i32*, i32** %8, align 8
  store i32 0, i32* %352, align 4
  br label %353

353:                                              ; preds = %350, %347
  br label %354

354:                                              ; preds = %353, %336
  br label %372

355:                                              ; preds = %112
  %356 = load i32, i32* %9, align 4
  %357 = load i32, i32* %10, align 4
  %358 = sub nsw i32 %356, %357
  %359 = call i64 @abs(i32 %358)
  %360 = load i32, i32* %10, align 4
  %361 = load i32, i32* %11, align 4
  %362 = sub nsw i32 %360, %361
  %363 = call i64 @abs(i32 %362)
  %364 = icmp sle i64 %359, %363
  br i1 %364, label %365, label %368

365:                                              ; preds = %355
  %366 = load i32, i32* %11, align 4
  store i32 %366, i32* %13, align 4
  %367 = load i32*, i32** %8, align 8
  store i32 1, i32* %367, align 4
  br label %371

368:                                              ; preds = %355
  %369 = load i32, i32* %9, align 4
  store i32 %369, i32* %13, align 4
  %370 = load i32*, i32** %8, align 8
  store i32 0, i32* %370, align 4
  br label %371

371:                                              ; preds = %368, %365
  br label %372

372:                                              ; preds = %371, %354
  %373 = load i32*, i32** %15, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 0
  %375 = load i32**, i32*** %7, align 8
  store i32* %374, i32** %375, align 8
  %376 = load i32, i32* %13, align 4
  ret i32 %376
}

declare dso_local i32 @FASTDIV(i32, i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @get_dc(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
