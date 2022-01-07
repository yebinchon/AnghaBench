; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi_dsp.c_ff_ivi_recompose53.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi_dsp.c_ff_ivi_recompose53.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i16* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_ivi_recompose53(%struct.TYPE_5__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
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
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i16*, align 8
  %40 = alloca i16*, align 8
  %41 = alloca i16*, align 8
  %42 = alloca i16*, align 8
  %43 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 4, i32* %43, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %37, align 8
  store i64 0, i64* %38, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i16*, i16** %54, align 8
  store i16* %55, i16** %39, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i16*, i16** %60, align 8
  store i16* %61, i16** %40, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i16*, i16** %66, align 8
  store i16* %67, i16** %41, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 3
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i16*, i16** %72, align 8
  store i16* %73, i16** %42, align 8
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %468, %3
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %471

80:                                               ; preds = %74
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 2
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sge i32 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i64 0, i64* %37, align 8
  br label %88

88:                                               ; preds = %87, %80
  %89 = load i16*, i16** %39, align 8
  %90 = getelementptr inbounds i16, i16* %89, i64 0
  %91 = load i16, i16* %90, align 2
  %92 = sext i16 %91 to i32
  store i32 %92, i32* %17, align 4
  %93 = load i16*, i16** %39, align 8
  %94 = load i64, i64* %37, align 8
  %95 = getelementptr inbounds i16, i16* %93, i64 %94
  %96 = load i16, i16* %95, align 2
  %97 = sext i16 %96 to i32
  store i32 %97, i32* %18, align 4
  %98 = load i16*, i16** %40, align 8
  %99 = load i64, i64* %38, align 8
  %100 = getelementptr inbounds i16, i16* %98, i64 %99
  %101 = load i16, i16* %100, align 2
  %102 = sext i16 %101 to i32
  store i32 %102, i32* %19, align 4
  %103 = load i16*, i16** %40, align 8
  %104 = getelementptr inbounds i16, i16* %103, i64 0
  %105 = load i16, i16* %104, align 2
  %106 = sext i16 %105 to i32
  store i32 %106, i32* %20, align 4
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %20, align 4
  %109 = mul nsw i32 %108, 6
  %110 = sub nsw i32 %107, %109
  %111 = load i16*, i16** %40, align 8
  %112 = load i64, i64* %37, align 8
  %113 = getelementptr inbounds i16, i16* %111, i64 %112
  %114 = load i16, i16* %113, align 2
  %115 = sext i16 %114 to i32
  %116 = add nsw i32 %110, %115
  store i32 %116, i32* %21, align 4
  %117 = load i16*, i16** %41, align 8
  %118 = getelementptr inbounds i16, i16* %117, i64 0
  %119 = load i16, i16* %118, align 2
  %120 = sext i16 %119 to i32
  store i32 %120, i32* %23, align 4
  %121 = load i32, i32* %23, align 4
  store i32 %121, i32* %24, align 4
  %122 = load i16*, i16** %41, align 8
  %123 = load i64, i64* %37, align 8
  %124 = getelementptr inbounds i16, i16* %122, i64 %123
  %125 = load i16, i16* %124, align 2
  %126 = sext i16 %125 to i32
  store i32 %126, i32* %26, align 4
  %127 = load i32, i32* %26, align 4
  store i32 %127, i32* %27, align 4
  %128 = load i16*, i16** %42, align 8
  %129 = load i64, i64* %38, align 8
  %130 = getelementptr inbounds i16, i16* %128, i64 %129
  %131 = load i16, i16* %130, align 2
  %132 = sext i16 %131 to i32
  store i32 %132, i32* %29, align 4
  %133 = load i32, i32* %29, align 4
  store i32 %133, i32* %30, align 4
  %134 = load i16*, i16** %42, align 8
  %135 = getelementptr inbounds i16, i16* %134, i64 0
  %136 = load i16, i16* %135, align 2
  %137 = sext i16 %136 to i32
  store i32 %137, i32* %32, align 4
  %138 = load i32, i32* %32, align 4
  store i32 %138, i32* %33, align 4
  %139 = load i32, i32* %29, align 4
  %140 = load i32, i32* %32, align 4
  %141 = mul nsw i32 %140, 6
  %142 = sub nsw i32 %139, %141
  %143 = load i16*, i16** %42, align 8
  %144 = load i64, i64* %37, align 8
  %145 = getelementptr inbounds i16, i16* %143, i64 %144
  %146 = load i16, i16* %145, align 2
  %147 = sext i16 %146 to i32
  %148 = add nsw i32 %142, %147
  store i32 %148, i32* %35, align 4
  %149 = load i32, i32* %35, align 4
  store i32 %149, i32* %36, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %150

150:                                              ; preds = %440, %88
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %445

156:                                              ; preds = %150
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 2
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp sge i32 %158, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %156
  %164 = load i16*, i16** %39, align 8
  %165 = getelementptr inbounds i16, i16* %164, i32 -1
  store i16* %165, i16** %39, align 8
  %166 = load i16*, i16** %40, align 8
  %167 = getelementptr inbounds i16, i16* %166, i32 -1
  store i16* %167, i16** %40, align 8
  %168 = load i16*, i16** %41, align 8
  %169 = getelementptr inbounds i16, i16* %168, i32 -1
  store i16* %169, i16** %41, align 8
  %170 = load i16*, i16** %42, align 8
  %171 = getelementptr inbounds i16, i16* %170, i32 -1
  store i16* %171, i16** %42, align 8
  br label %172

172:                                              ; preds = %163, %156
  %173 = load i32, i32* %23, align 4
  store i32 %173, i32* %22, align 4
  %174 = load i32, i32* %24, align 4
  store i32 %174, i32* %23, align 4
  %175 = load i32, i32* %26, align 4
  store i32 %175, i32* %25, align 4
  %176 = load i32, i32* %27, align 4
  store i32 %176, i32* %26, align 4
  %177 = load i32, i32* %29, align 4
  store i32 %177, i32* %28, align 4
  %178 = load i32, i32* %30, align 4
  store i32 %178, i32* %29, align 4
  %179 = load i32, i32* %32, align 4
  store i32 %179, i32* %31, align 4
  %180 = load i32, i32* %33, align 4
  store i32 %180, i32* %32, align 4
  %181 = load i32, i32* %35, align 4
  store i32 %181, i32* %34, align 4
  %182 = load i32, i32* %36, align 4
  store i32 %182, i32* %35, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %183 = load i32, i32* %17, align 4
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %18, align 4
  store i32 %184, i32* %16, align 4
  %185 = load i16*, i16** %39, align 8
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i16, i16* %185, i64 %188
  %190 = load i16, i16* %189, align 2
  %191 = sext i16 %190 to i32
  store i32 %191, i32* %17, align 4
  %192 = load i16*, i16** %39, align 8
  %193 = load i64, i64* %37, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = add i64 %193, %195
  %197 = add i64 %196, 1
  %198 = getelementptr inbounds i16, i16* %192, i64 %197
  %199 = load i16, i16* %198, align 2
  %200 = sext i16 %199 to i32
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %17, align 4
  %203 = add nsw i32 %201, %202
  store i32 %203, i32* %15, align 4
  %204 = load i32, i32* %14, align 4
  %205 = mul nsw i32 %204, 16
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %15, align 4
  %207 = mul nsw i32 %206, 8
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %16, align 4
  %210 = add nsw i32 %208, %209
  %211 = mul nsw i32 %210, 8
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* %16, align 4
  %214 = add nsw i32 %212, %213
  %215 = load i32, i32* %18, align 4
  %216 = add nsw i32 %214, %215
  %217 = mul nsw i32 %216, 4
  store i32 %217, i32* %13, align 4
  %218 = load i32, i32* %20, align 4
  store i32 %218, i32* %14, align 4
  %219 = load i32, i32* %19, align 4
  store i32 %219, i32* %15, align 4
  %220 = load i16*, i16** %40, align 8
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i16, i16* %220, i64 %223
  %225 = load i16, i16* %224, align 2
  %226 = sext i16 %225 to i32
  store i32 %226, i32* %20, align 4
  %227 = load i16*, i16** %40, align 8
  %228 = load i64, i64* %38, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = add i64 %228, %230
  %232 = add i64 %231, 1
  %233 = getelementptr inbounds i16, i16* %227, i64 %232
  %234 = load i16, i16* %233, align 2
  %235 = sext i16 %234 to i32
  store i32 %235, i32* %19, align 4
  %236 = load i32, i32* %15, align 4
  %237 = load i32, i32* %14, align 4
  %238 = mul nsw i32 %237, 6
  %239 = sub nsw i32 %236, %238
  %240 = load i32, i32* %21, align 4
  %241 = add nsw i32 %239, %240
  store i32 %241, i32* %16, align 4
  %242 = load i32, i32* %19, align 4
  %243 = load i32, i32* %20, align 4
  %244 = mul nsw i32 %243, 6
  %245 = sub nsw i32 %242, %244
  %246 = load i16*, i16** %40, align 8
  %247 = load i64, i64* %37, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sext i32 %248 to i64
  %250 = add i64 %247, %249
  %251 = add i64 %250, 1
  %252 = getelementptr inbounds i16, i16* %246, i64 %251
  %253 = load i16, i16* %252, align 2
  %254 = sext i16 %253 to i32
  %255 = add nsw i32 %245, %254
  store i32 %255, i32* %21, align 4
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* %15, align 4
  %258 = add nsw i32 %256, %257
  %259 = mul nsw i32 %258, 8
  %260 = load i32, i32* %10, align 4
  %261 = add nsw i32 %260, %259
  store i32 %261, i32* %10, align 4
  %262 = load i32, i32* %14, align 4
  %263 = load i32, i32* %15, align 4
  %264 = add nsw i32 %262, %263
  %265 = load i32, i32* %19, align 4
  %266 = add nsw i32 %264, %265
  %267 = load i32, i32* %20, align 4
  %268 = add nsw i32 %266, %267
  %269 = mul nsw i32 %268, 4
  %270 = load i32, i32* %11, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %11, align 4
  %272 = load i32, i32* %16, align 4
  %273 = mul nsw i32 %272, 4
  %274 = load i32, i32* %12, align 4
  %275 = add nsw i32 %274, %273
  store i32 %275, i32* %12, align 4
  %276 = load i32, i32* %16, align 4
  %277 = load i32, i32* %21, align 4
  %278 = add nsw i32 %276, %277
  %279 = mul nsw i32 %278, 2
  %280 = load i32, i32* %13, align 4
  %281 = add nsw i32 %280, %279
  store i32 %281, i32* %13, align 4
  %282 = load i16*, i16** %41, align 8
  %283 = load i32, i32* %9, align 4
  %284 = add nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i16, i16* %282, i64 %285
  %287 = load i16, i16* %286, align 2
  %288 = sext i16 %287 to i32
  store i32 %288, i32* %24, align 4
  %289 = load i16*, i16** %41, align 8
  %290 = load i64, i64* %37, align 8
  %291 = load i32, i32* %9, align 4
  %292 = sext i32 %291 to i64
  %293 = add i64 %290, %292
  %294 = add i64 %293, 1
  %295 = getelementptr inbounds i16, i16* %289, i64 %294
  %296 = load i16, i16* %295, align 2
  %297 = sext i16 %296 to i32
  store i32 %297, i32* %27, align 4
  %298 = load i32, i32* %22, align 4
  %299 = load i32, i32* %23, align 4
  %300 = add nsw i32 %298, %299
  store i32 %300, i32* %14, align 4
  %301 = load i32, i32* %22, align 4
  %302 = load i32, i32* %23, align 4
  %303 = mul nsw i32 %302, 6
  %304 = sub nsw i32 %301, %303
  %305 = load i32, i32* %24, align 4
  %306 = add nsw i32 %304, %305
  store i32 %306, i32* %15, align 4
  %307 = load i32, i32* %14, align 4
  %308 = mul nsw i32 %307, 8
  %309 = load i32, i32* %10, align 4
  %310 = add nsw i32 %309, %308
  store i32 %310, i32* %10, align 4
  %311 = load i32, i32* %15, align 4
  %312 = mul nsw i32 %311, 4
  %313 = load i32, i32* %11, align 4
  %314 = add nsw i32 %313, %312
  store i32 %314, i32* %11, align 4
  %315 = load i32, i32* %14, align 4
  %316 = load i32, i32* %25, align 4
  %317 = add nsw i32 %315, %316
  %318 = load i32, i32* %26, align 4
  %319 = add nsw i32 %317, %318
  %320 = mul nsw i32 %319, 4
  %321 = load i32, i32* %12, align 4
  %322 = add nsw i32 %321, %320
  store i32 %322, i32* %12, align 4
  %323 = load i32, i32* %15, align 4
  %324 = load i32, i32* %25, align 4
  %325 = add nsw i32 %323, %324
  %326 = load i32, i32* %26, align 4
  %327 = mul nsw i32 %326, 6
  %328 = sub nsw i32 %325, %327
  %329 = load i32, i32* %27, align 4
  %330 = add nsw i32 %328, %329
  %331 = mul nsw i32 %330, 2
  %332 = load i32, i32* %13, align 4
  %333 = add nsw i32 %332, %331
  store i32 %333, i32* %13, align 4
  %334 = load i16*, i16** %42, align 8
  %335 = load i32, i32* %9, align 4
  %336 = add nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i16, i16* %334, i64 %337
  %339 = load i16, i16* %338, align 2
  %340 = sext i16 %339 to i32
  store i32 %340, i32* %33, align 4
  %341 = load i16*, i16** %42, align 8
  %342 = load i64, i64* %38, align 8
  %343 = load i32, i32* %9, align 4
  %344 = sext i32 %343 to i64
  %345 = add i64 %342, %344
  %346 = add i64 %345, 1
  %347 = getelementptr inbounds i16, i16* %341, i64 %346
  %348 = load i16, i16* %347, align 2
  %349 = sext i16 %348 to i32
  store i32 %349, i32* %30, align 4
  %350 = load i32, i32* %28, align 4
  %351 = load i32, i32* %31, align 4
  %352 = add nsw i32 %350, %351
  store i32 %352, i32* %14, align 4
  %353 = load i32, i32* %29, align 4
  %354 = load i32, i32* %32, align 4
  %355 = add nsw i32 %353, %354
  store i32 %355, i32* %15, align 4
  %356 = load i32, i32* %30, align 4
  %357 = load i32, i32* %33, align 4
  %358 = add nsw i32 %356, %357
  store i32 %358, i32* %16, align 4
  %359 = load i32, i32* %30, align 4
  %360 = load i32, i32* %33, align 4
  %361 = mul nsw i32 %360, 6
  %362 = sub nsw i32 %359, %361
  %363 = load i16*, i16** %42, align 8
  %364 = load i64, i64* %37, align 8
  %365 = load i32, i32* %9, align 4
  %366 = sext i32 %365 to i64
  %367 = add i64 %364, %366
  %368 = add i64 %367, 1
  %369 = getelementptr inbounds i16, i16* %363, i64 %368
  %370 = load i16, i16* %369, align 2
  %371 = sext i16 %370 to i32
  %372 = add nsw i32 %362, %371
  store i32 %372, i32* %36, align 4
  %373 = load i32, i32* %14, align 4
  %374 = load i32, i32* %15, align 4
  %375 = add nsw i32 %373, %374
  %376 = mul nsw i32 %375, 4
  %377 = load i32, i32* %10, align 4
  %378 = add nsw i32 %377, %376
  store i32 %378, i32* %10, align 4
  %379 = load i32, i32* %14, align 4
  %380 = load i32, i32* %15, align 4
  %381 = mul nsw i32 %380, 6
  %382 = sub nsw i32 %379, %381
  %383 = load i32, i32* %16, align 4
  %384 = add nsw i32 %382, %383
  %385 = mul nsw i32 %384, 2
  %386 = load i32, i32* %11, align 4
  %387 = add nsw i32 %386, %385
  store i32 %387, i32* %11, align 4
  %388 = load i32, i32* %34, align 4
  %389 = load i32, i32* %35, align 4
  %390 = add nsw i32 %388, %389
  %391 = mul nsw i32 %390, 2
  %392 = load i32, i32* %12, align 4
  %393 = add nsw i32 %392, %391
  store i32 %393, i32* %12, align 4
  %394 = load i32, i32* %34, align 4
  %395 = load i32, i32* %35, align 4
  %396 = mul nsw i32 %395, 6
  %397 = sub nsw i32 %394, %396
  %398 = load i32, i32* %36, align 4
  %399 = add nsw i32 %397, %398
  %400 = load i32, i32* %13, align 4
  %401 = add nsw i32 %400, %399
  store i32 %401, i32* %13, align 4
  %402 = load i32, i32* %10, align 4
  %403 = ashr i32 %402, 6
  %404 = add nsw i32 %403, 128
  %405 = call i32 @av_clip_uint8(i32 %404)
  %406 = load i32*, i32** %5, align 8
  %407 = load i32, i32* %7, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  store i32 %405, i32* %409, align 4
  %410 = load i32, i32* %11, align 4
  %411 = ashr i32 %410, 6
  %412 = add nsw i32 %411, 128
  %413 = call i32 @av_clip_uint8(i32 %412)
  %414 = load i32*, i32** %5, align 8
  %415 = load i32, i32* %7, align 4
  %416 = add nsw i32 %415, 1
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %414, i64 %417
  store i32 %413, i32* %418, align 4
  %419 = load i32, i32* %12, align 4
  %420 = ashr i32 %419, 6
  %421 = add nsw i32 %420, 128
  %422 = call i32 @av_clip_uint8(i32 %421)
  %423 = load i32*, i32** %5, align 8
  %424 = load i64, i64* %6, align 8
  %425 = load i32, i32* %7, align 4
  %426 = sext i32 %425 to i64
  %427 = add i64 %424, %426
  %428 = getelementptr inbounds i32, i32* %423, i64 %427
  store i32 %422, i32* %428, align 4
  %429 = load i32, i32* %13, align 4
  %430 = ashr i32 %429, 6
  %431 = add nsw i32 %430, 128
  %432 = call i32 @av_clip_uint8(i32 %431)
  %433 = load i32*, i32** %5, align 8
  %434 = load i64, i64* %6, align 8
  %435 = load i32, i32* %7, align 4
  %436 = sext i32 %435 to i64
  %437 = add i64 %434, %436
  %438 = add i64 %437, 1
  %439 = getelementptr inbounds i32, i32* %433, i64 %438
  store i32 %432, i32* %439, align 4
  br label %440

440:                                              ; preds = %172
  %441 = load i32, i32* %7, align 4
  %442 = add nsw i32 %441, 2
  store i32 %442, i32* %7, align 4
  %443 = load i32, i32* %9, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %9, align 4
  br label %150

445:                                              ; preds = %150
  %446 = load i64, i64* %6, align 8
  %447 = shl i64 %446, 1
  %448 = load i32*, i32** %5, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 %447
  store i32* %449, i32** %5, align 8
  %450 = load i64, i64* %37, align 8
  %451 = sub i64 0, %450
  store i64 %451, i64* %38, align 8
  %452 = load i64, i64* %37, align 8
  %453 = add i64 %452, 1
  %454 = load i16*, i16** %39, align 8
  %455 = getelementptr inbounds i16, i16* %454, i64 %453
  store i16* %455, i16** %39, align 8
  %456 = load i64, i64* %37, align 8
  %457 = add i64 %456, 1
  %458 = load i16*, i16** %40, align 8
  %459 = getelementptr inbounds i16, i16* %458, i64 %457
  store i16* %459, i16** %40, align 8
  %460 = load i64, i64* %37, align 8
  %461 = add i64 %460, 1
  %462 = load i16*, i16** %41, align 8
  %463 = getelementptr inbounds i16, i16* %462, i64 %461
  store i16* %463, i16** %41, align 8
  %464 = load i64, i64* %37, align 8
  %465 = add i64 %464, 1
  %466 = load i16*, i16** %42, align 8
  %467 = getelementptr inbounds i16, i16* %466, i64 %465
  store i16* %467, i16** %42, align 8
  br label %468

468:                                              ; preds = %445
  %469 = load i32, i32* %8, align 4
  %470 = add nsw i32 %469, 2
  store i32 %470, i32* %8, align 4
  br label %74

471:                                              ; preds = %74
  ret void
}

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
