; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fic.c_fic_draw_cursor.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fic.c_fic_draw_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32)* @fic_draw_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fic_draw_cursor(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [3 x i32*], align 16
  %10 = alloca [4 x [1024 x i32]], align 16
  %11 = alloca [3 x [256 x i32]], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %7, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %96, %3
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 1024
  br i1 %25, label %26, label %99

26:                                               ; preds = %23
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 25, %29
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 129, %33
  %35 = add nsw i32 %30, %34
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 66, %38
  %40 = add nsw i32 %35, %39
  %41 = sdiv i32 %40, 255
  %42 = add nsw i32 %41, 16
  %43 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %10, i64 0, i64 0
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [1024 x i32], [1024 x i32]* %43, i64 0, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 -38, %49
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 112, %53
  %55 = add nsw i32 %50, %54
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 -74, %58
  %60 = add nsw i32 %55, %59
  %61 = sdiv i32 %60, 255
  %62 = add nsw i32 %61, 128
  %63 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %10, i64 0, i64 1
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [1024 x i32], [1024 x i32]* %63, i64 0, i64 %65
  store i32 %62, i32* %66, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 -18, %69
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 112, %73
  %75 = add nsw i32 %70, %74
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 -94, %78
  %80 = add nsw i32 %75, %79
  %81 = sdiv i32 %80, 255
  %82 = add nsw i32 %81, 128
  %83 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %10, i64 0, i64 2
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [1024 x i32], [1024 x i32]* %83, i64 0, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %10, i64 0, i64 3
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [1024 x i32], [1024 x i32]* %90, i64 0, i64 %92
  store i32 %89, i32* %93, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  store i32* %95, i32** %8, align 8
  br label %96

96:                                               ; preds = %26
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %23

99:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %183, %99
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %101, 32
  br i1 %102, label %103, label %186

103:                                              ; preds = %100
  store i32 0, i32* %13, align 4
  br label %104

104:                                              ; preds = %179, %103
  %105 = load i32, i32* %13, align 4
  %106 = icmp slt i32 %105, 32
  br i1 %106, label %107, label %182

107:                                              ; preds = %104
  store i32 0, i32* %14, align 4
  br label %108

108:                                              ; preds = %175, %107
  %109 = load i32, i32* %14, align 4
  %110 = icmp slt i32 %109, 3
  br i1 %110, label %111, label %178

111:                                              ; preds = %108
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %10, i64 0, i64 %114
  %116 = load i32, i32* %12, align 4
  %117 = mul nsw i32 32, %116
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [1024 x i32], [1024 x i32]* %115, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %10, i64 0, i64 %125
  %127 = load i32, i32* %12, align 4
  %128 = mul nsw i32 32, %127
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %128, %129
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [1024 x i32], [1024 x i32]* %126, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %122, %134
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %10, i64 0, i64 %138
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  %142 = mul nsw i32 32, %141
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [1024 x i32], [1024 x i32]* %139, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %135, %147
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %10, i64 0, i64 %151
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  %155 = mul nsw i32 32, %154
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %155, %156
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [1024 x i32], [1024 x i32]* %152, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %148, %161
  %163 = sdiv i32 %162, 4
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %11, i64 0, i64 %165
  %167 = load i32, i32* %12, align 4
  %168 = sdiv i32 %167, 2
  %169 = mul nsw i32 16, %168
  %170 = load i32, i32* %13, align 4
  %171 = sdiv i32 %170, 2
  %172 = add nsw i32 %169, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [256 x i32], [256 x i32]* %166, i64 0, i64 %173
  store i32 %163, i32* %174, align 4
  br label %175

175:                                              ; preds = %111
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %14, align 4
  br label %108

178:                                              ; preds = %108
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 %180, 2
  store i32 %181, i32* %13, align 4
  br label %104

182:                                              ; preds = %104
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, 2
  store i32 %185, i32* %12, align 4
  br label %100

186:                                              ; preds = %100
  store i32 0, i32* %12, align 4
  br label %187

187:                                              ; preds = %238, %186
  %188 = load i32, i32* %12, align 4
  %189 = icmp slt i32 %188, 3
  br i1 %189, label %190, label %241

190:                                              ; preds = %187
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i32**, i32*** %194, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* %12, align 4
  %211 = icmp ne i32 %210, 0
  %212 = xor i1 %211, true
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = ashr i32 %209, %214
  %216 = mul nsw i32 %208, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %199, i64 %217
  %219 = load i32, i32* %5, align 4
  %220 = load i32, i32* %12, align 4
  %221 = icmp ne i32 %220, 0
  %222 = xor i1 %221, true
  %223 = xor i1 %222, true
  %224 = zext i1 %223 to i32
  %225 = ashr i32 %219, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %218, i64 %226
  %228 = load i32, i32* %12, align 4
  %229 = icmp ne i32 %228, 0
  %230 = xor i1 %229, true
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %227, i64 %233
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 %236
  store i32* %234, i32** %237, align 8
  br label %238

238:                                              ; preds = %190
  %239 = load i32, i32* %12, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %12, align 4
  br label %187

241:                                              ; preds = %187
  store i32 0, i32* %12, align 4
  br label %242

242:                                              ; preds = %376, %241
  %243 = load i32, i32* %12, align 4
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = sub nsw i64 %246, %248
  %250 = call i32 @FFMIN(i32 32, i64 %249)
  %251 = sub nsw i32 %250, 1
  %252 = icmp slt i32 %243, %251
  br i1 %252, label %253, label %379

253:                                              ; preds = %242
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i32, i32* %5, align 4
  %258 = sext i32 %257 to i64
  %259 = sub nsw i64 %256, %258
  %260 = call i32 @FFMIN(i32 32, i64 %259)
  store i32 %260, i32* %15, align 4
  %261 = load i32, i32* %15, align 4
  %262 = sdiv i32 %261, 2
  store i32 %262, i32* %16, align 4
  %263 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  %264 = load i32*, i32** %263, align 16
  %265 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %10, i64 0, i64 0
  %266 = getelementptr inbounds [1024 x i32], [1024 x i32]* %265, i64 0, i64 0
  %267 = load i32, i32* %12, align 4
  %268 = mul nsw i32 %267, 32
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  %271 = load i32, i32* %15, align 4
  %272 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %10, i64 0, i64 3
  %273 = getelementptr inbounds [1024 x i32], [1024 x i32]* %272, i64 0, i64 0
  %274 = load i32, i32* %12, align 4
  %275 = mul nsw i32 %274, 32
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %273, i64 %276
  %278 = call i32 @fic_alpha_blend(i32* %264, i32* %270, i32 %271, i32* %277)
  %279 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  %280 = load i32*, i32** %279, align 16
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 0
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %280, i64 %288
  %290 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %10, i64 0, i64 0
  %291 = getelementptr inbounds [1024 x i32], [1024 x i32]* %290, i64 0, i64 0
  %292 = load i32, i32* %12, align 4
  %293 = add nsw i32 %292, 1
  %294 = mul nsw i32 %293, 32
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %291, i64 %295
  %297 = load i32, i32* %15, align 4
  %298 = getelementptr inbounds [4 x [1024 x i32]], [4 x [1024 x i32]]* %10, i64 0, i64 3
  %299 = getelementptr inbounds [1024 x i32], [1024 x i32]* %298, i64 0, i64 0
  %300 = load i32, i32* %12, align 4
  %301 = add nsw i32 %300, 1
  %302 = mul nsw i32 %301, 32
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %299, i64 %303
  %305 = call i32 @fic_alpha_blend(i32* %289, i32* %296, i32 %297, i32* %304)
  %306 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 1
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %11, i64 0, i64 0
  %309 = getelementptr inbounds [256 x i32], [256 x i32]* %308, i64 0, i64 0
  %310 = load i32, i32* %12, align 4
  %311 = sdiv i32 %310, 2
  %312 = mul nsw i32 %311, 16
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %309, i64 %313
  %315 = load i32, i32* %16, align 4
  %316 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %11, i64 0, i64 2
  %317 = getelementptr inbounds [256 x i32], [256 x i32]* %316, i64 0, i64 0
  %318 = load i32, i32* %12, align 4
  %319 = sdiv i32 %318, 2
  %320 = mul nsw i32 %319, 16
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %317, i64 %321
  %323 = call i32 @fic_alpha_blend(i32* %307, i32* %314, i32 %315, i32* %322)
  %324 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 2
  %325 = load i32*, i32** %324, align 16
  %326 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %11, i64 0, i64 1
  %327 = getelementptr inbounds [256 x i32], [256 x i32]* %326, i64 0, i64 0
  %328 = load i32, i32* %12, align 4
  %329 = sdiv i32 %328, 2
  %330 = mul nsw i32 %329, 16
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %327, i64 %331
  %333 = load i32, i32* %16, align 4
  %334 = getelementptr inbounds [3 x [256 x i32]], [3 x [256 x i32]]* %11, i64 0, i64 2
  %335 = getelementptr inbounds [256 x i32], [256 x i32]* %334, i64 0, i64 0
  %336 = load i32, i32* %12, align 4
  %337 = sdiv i32 %336, 2
  %338 = mul nsw i32 %337, 16
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %335, i64 %339
  %341 = call i32 @fic_alpha_blend(i32* %325, i32* %332, i32 %333, i32* %340)
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 1
  %344 = load %struct.TYPE_5__*, %struct.TYPE_5__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 1
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 0
  %348 = load i32, i32* %347, align 4
  %349 = mul nsw i32 %348, 2
  %350 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  %351 = load i32*, i32** %350, align 16
  %352 = sext i32 %349 to i64
  %353 = getelementptr inbounds i32, i32* %351, i64 %352
  store i32* %353, i32** %350, align 16
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 1
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 1
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 1
  %360 = load i32, i32* %359, align 4
  %361 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 1
  %362 = load i32*, i32** %361, align 8
  %363 = sext i32 %360 to i64
  %364 = getelementptr inbounds i32, i32* %362, i64 %363
  store i32* %364, i32** %361, align 8
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_5__*, %struct.TYPE_5__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i32 0, i32 1
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 2
  %371 = load i32, i32* %370, align 4
  %372 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 2
  %373 = load i32*, i32** %372, align 16
  %374 = sext i32 %371 to i64
  %375 = getelementptr inbounds i32, i32* %373, i64 %374
  store i32* %375, i32** %372, align 16
  br label %376

376:                                              ; preds = %253
  %377 = load i32, i32* %12, align 4
  %378 = add nsw i32 %377, 2
  store i32 %378, i32* %12, align 4
  br label %242

379:                                              ; preds = %242
  ret void
}

declare dso_local i32 @FFMIN(i32, i64) #1

declare dso_local i32 @fic_alpha_blend(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
