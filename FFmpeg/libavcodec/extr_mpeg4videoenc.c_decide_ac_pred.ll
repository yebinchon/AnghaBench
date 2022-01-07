; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videoenc.c_decide_ac_pred.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videoenc.c_decide_ac_pred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32***, i32*, i32, i32, i32, i32*, i32, %struct.TYPE_10__, %struct.TYPE_13__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_13__ = type { i64* }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_12__ = type { i64* }
%struct.TYPE_11__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, [64 x i32]*, i32*, i64**, i32*)* @decide_ac_pred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decide_ac_pred(%struct.TYPE_15__* %0, [64 x i32]* %1, i32* %2, i64** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca [64 x i32]*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store [64 x i32]* %1, [64 x i32]** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64** %3, i64*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 12
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %15, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @memcpy(i32* %28, i32* %31, i32 24)
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %537, %5
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 6
  br i1 %35, label %36, label %540

36:                                               ; preds = %33
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = load [64 x i32]*, [64 x i32]** %8, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [64 x i32], [64 x i32]* %38, i64 %40
  %42 = getelementptr inbounds [64 x i32], [64 x i32]* %41, i64 0, i64 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 11
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = call i64 @get_block_rate(%struct.TYPE_15__* %37, i32* %42, i32 %49, i64* %53)
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %12, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32***, i32**** %60, align 8
  %62 = getelementptr inbounds i32**, i32*** %61, i64 0
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 16
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %65, i64 %74
  store i32* %75, i32** %16, align 8
  %76 = load i32*, i32** %16, align 8
  store i32* %76, i32** %17, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %288

83:                                               ; preds = %36
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 %89, %92
  %94 = add nsw i32 %86, %93
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %94, %97
  store i32 %98, i32* %18, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %105, 16
  %107 = load i32*, i32** %16, align 8
  %108 = sext i32 %106 to i64
  %109 = sub i64 0, %108
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32* %110, i32** %16, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %131, label %115

115:                                              ; preds = %83
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 8
  %119 = load i32*, i32** %15, align 8
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %118, %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %115
  %126 = load i32, i32* %14, align 4
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %14, align 4
  %130 = icmp eq i32 %129, 3
  br i1 %130, label %131, label %200

131:                                              ; preds = %128, %125, %115, %83
  store i32 1, i32* %13, align 4
  br label %132

132:                                              ; preds = %196, %131
  %133 = load i32, i32* %13, align 4
  %134 = icmp slt i32 %133, 8
  br i1 %134, label %135, label %199

135:                                              ; preds = %132
  %136 = load [64 x i32]*, [64 x i32]** %8, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [64 x i32], [64 x i32]* %136, i64 %138
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 9
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds [64 x i32], [64 x i32]* %139, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %19, align 4
  %150 = load i32, i32* %19, align 4
  %151 = load i32*, i32** %16, align 8
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 8
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %150, %156
  %158 = load [64 x i32]*, [64 x i32]** %8, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [64 x i32], [64 x i32]* %158, i64 %160
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 9
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds [64 x i32], [64 x i32]* %161, i64 0, i64 %169
  store i32 %157, i32* %170, align 4
  %171 = load [64 x i32]*, [64 x i32]** %8, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [64 x i32], [64 x i32]* %171, i64 %173
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 9
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i64*, i64** %177, align 8
  %179 = load i32, i32* %13, align 4
  %180 = shl i32 %179, 3
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %178, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds [64 x i32], [64 x i32]* %174, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %17, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %185, i32* %189, align 4
  %190 = load i32, i32* %19, align 4
  %191 = load i32*, i32** %17, align 8
  %192 = load i32, i32* %13, align 4
  %193 = add nsw i32 %192, 8
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  store i32 %190, i32* %195, align 4
  br label %196

196:                                              ; preds = %135
  %197 = load i32, i32* %13, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %13, align 4
  br label %132

199:                                              ; preds = %132
  br label %279

200:                                              ; preds = %128
  store i32 1, i32* %13, align 4
  br label %201

201:                                              ; preds = %275, %200
  %202 = load i32, i32* %13, align 4
  %203 = icmp slt i32 %202, 8
  br i1 %203, label %204, label %278

204:                                              ; preds = %201
  %205 = load [64 x i32]*, [64 x i32]** %8, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [64 x i32], [64 x i32]* %205, i64 %207
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 9
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i64*, i64** %211, align 8
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64, i64* %212, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds [64 x i32], [64 x i32]* %208, i64 0, i64 %216
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %20, align 4
  %219 = load i32, i32* %20, align 4
  %220 = load i32*, i32** %16, align 8
  %221 = load i32, i32* %13, align 4
  %222 = add nsw i32 %221, 8
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %15, align 8
  %227 = load i32, i32* %18, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = mul nsw i32 %225, %230
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 7
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @ROUNDED_DIV(i32 %231, i32 %234)
  %236 = sub nsw i32 %219, %235
  %237 = load [64 x i32]*, [64 x i32]** %8, align 8
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [64 x i32], [64 x i32]* %237, i64 %239
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 9
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  %244 = load i64*, i64** %243, align 8
  %245 = load i32, i32* %13, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, i64* %244, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds [64 x i32], [64 x i32]* %240, i64 0, i64 %248
  store i32 %236, i32* %249, align 4
  %250 = load [64 x i32]*, [64 x i32]** %8, align 8
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [64 x i32], [64 x i32]* %250, i64 %252
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 9
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 0
  %257 = load i64*, i64** %256, align 8
  %258 = load i32, i32* %13, align 4
  %259 = shl i32 %258, 3
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64, i64* %257, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds [64 x i32], [64 x i32]* %253, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32*, i32** %17, align 8
  %266 = load i32, i32* %13, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  store i32 %264, i32* %268, align 4
  %269 = load i32, i32* %20, align 4
  %270 = load i32*, i32** %17, align 8
  %271 = load i32, i32* %13, align 4
  %272 = add nsw i32 %271, 8
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  store i32 %269, i32* %274, align 4
  br label %275

275:                                              ; preds = %204
  %276 = load i32, i32* %13, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %13, align 4
  br label %201

278:                                              ; preds = %201
  br label %279

279:                                              ; preds = %278, %199
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 10
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 0
  %283 = load i64*, i64** %282, align 8
  %284 = load i64**, i64*** %10, align 8
  %285 = load i32, i32* %14, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i64*, i64** %284, i64 %286
  store i64* %283, i64** %287, align 8
  br label %480

288:                                              ; preds = %36
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 8
  %292 = sub nsw i32 %291, 1
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 8
  %299 = mul nsw i32 %295, %298
  %300 = add nsw i32 %292, %299
  store i32 %300, i32* %21, align 4
  %301 = load i32*, i32** %16, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 -16
  store i32* %302, i32** %16, align 8
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %323, label %307

307:                                              ; preds = %288
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 7
  %310 = load i32, i32* %309, align 8
  %311 = load i32*, i32** %15, align 8
  %312 = load i32, i32* %21, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = icmp eq i32 %310, %315
  br i1 %316, label %323, label %317

317:                                              ; preds = %307
  %318 = load i32, i32* %14, align 4
  %319 = icmp eq i32 %318, 1
  br i1 %319, label %323, label %320

320:                                              ; preds = %317
  %321 = load i32, i32* %14, align 4
  %322 = icmp eq i32 %321, 3
  br i1 %322, label %323, label %392

323:                                              ; preds = %320, %317, %307, %288
  store i32 1, i32* %13, align 4
  br label %324

324:                                              ; preds = %388, %323
  %325 = load i32, i32* %13, align 4
  %326 = icmp slt i32 %325, 8
  br i1 %326, label %327, label %391

327:                                              ; preds = %324
  %328 = load [64 x i32]*, [64 x i32]** %8, align 8
  %329 = load i32, i32* %14, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [64 x i32], [64 x i32]* %328, i64 %330
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 9
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 0
  %335 = load i64*, i64** %334, align 8
  %336 = load i32, i32* %13, align 4
  %337 = shl i32 %336, 3
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i64, i64* %335, i64 %338
  %340 = load i64, i64* %339, align 8
  %341 = getelementptr inbounds [64 x i32], [64 x i32]* %331, i64 0, i64 %340
  %342 = load i32, i32* %341, align 4
  store i32 %342, i32* %22, align 4
  %343 = load i32, i32* %22, align 4
  %344 = load i32*, i32** %16, align 8
  %345 = load i32, i32* %13, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = sub nsw i32 %343, %348
  %350 = load [64 x i32]*, [64 x i32]** %8, align 8
  %351 = load i32, i32* %14, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [64 x i32], [64 x i32]* %350, i64 %352
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 9
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 0
  %357 = load i64*, i64** %356, align 8
  %358 = load i32, i32* %13, align 4
  %359 = shl i32 %358, 3
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i64, i64* %357, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = getelementptr inbounds [64 x i32], [64 x i32]* %353, i64 0, i64 %362
  store i32 %349, i32* %363, align 4
  %364 = load i32, i32* %22, align 4
  %365 = load i32*, i32** %17, align 8
  %366 = load i32, i32* %13, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  store i32 %364, i32* %368, align 4
  %369 = load [64 x i32]*, [64 x i32]** %8, align 8
  %370 = load i32, i32* %14, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [64 x i32], [64 x i32]* %369, i64 %371
  %373 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %373, i32 0, i32 9
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 0
  %376 = load i64*, i64** %375, align 8
  %377 = load i32, i32* %13, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i64, i64* %376, i64 %378
  %380 = load i64, i64* %379, align 8
  %381 = getelementptr inbounds [64 x i32], [64 x i32]* %372, i64 0, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = load i32*, i32** %17, align 8
  %384 = load i32, i32* %13, align 4
  %385 = add nsw i32 %384, 8
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %383, i64 %386
  store i32 %382, i32* %387, align 4
  br label %388

388:                                              ; preds = %327
  %389 = load i32, i32* %13, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %13, align 4
  br label %324

391:                                              ; preds = %324
  br label %471

392:                                              ; preds = %320
  store i32 1, i32* %13, align 4
  br label %393

393:                                              ; preds = %467, %392
  %394 = load i32, i32* %13, align 4
  %395 = icmp slt i32 %394, 8
  br i1 %395, label %396, label %470

396:                                              ; preds = %393
  %397 = load [64 x i32]*, [64 x i32]** %8, align 8
  %398 = load i32, i32* %14, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [64 x i32], [64 x i32]* %397, i64 %399
  %401 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %401, i32 0, i32 9
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 0, i32 0
  %404 = load i64*, i64** %403, align 8
  %405 = load i32, i32* %13, align 4
  %406 = shl i32 %405, 3
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i64, i64* %404, i64 %407
  %409 = load i64, i64* %408, align 8
  %410 = getelementptr inbounds [64 x i32], [64 x i32]* %400, i64 0, i64 %409
  %411 = load i32, i32* %410, align 4
  store i32 %411, i32* %23, align 4
  %412 = load i32, i32* %23, align 4
  %413 = load i32*, i32** %16, align 8
  %414 = load i32, i32* %13, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %413, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = load i32*, i32** %15, align 8
  %419 = load i32, i32* %21, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = mul nsw i32 %417, %422
  %424 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %425 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %424, i32 0, i32 7
  %426 = load i32, i32* %425, align 8
  %427 = call i32 @ROUNDED_DIV(i32 %423, i32 %426)
  %428 = sub nsw i32 %412, %427
  %429 = load [64 x i32]*, [64 x i32]** %8, align 8
  %430 = load i32, i32* %14, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [64 x i32], [64 x i32]* %429, i64 %431
  %433 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %434 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %433, i32 0, i32 9
  %435 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %434, i32 0, i32 0
  %436 = load i64*, i64** %435, align 8
  %437 = load i32, i32* %13, align 4
  %438 = shl i32 %437, 3
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i64, i64* %436, i64 %439
  %441 = load i64, i64* %440, align 8
  %442 = getelementptr inbounds [64 x i32], [64 x i32]* %432, i64 0, i64 %441
  store i32 %428, i32* %442, align 4
  %443 = load i32, i32* %23, align 4
  %444 = load i32*, i32** %17, align 8
  %445 = load i32, i32* %13, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %444, i64 %446
  store i32 %443, i32* %447, align 4
  %448 = load [64 x i32]*, [64 x i32]** %8, align 8
  %449 = load i32, i32* %14, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [64 x i32], [64 x i32]* %448, i64 %450
  %452 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %453 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %452, i32 0, i32 9
  %454 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %453, i32 0, i32 0
  %455 = load i64*, i64** %454, align 8
  %456 = load i32, i32* %13, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i64, i64* %455, i64 %457
  %459 = load i64, i64* %458, align 8
  %460 = getelementptr inbounds [64 x i32], [64 x i32]* %451, i64 0, i64 %459
  %461 = load i32, i32* %460, align 4
  %462 = load i32*, i32** %17, align 8
  %463 = load i32, i32* %13, align 4
  %464 = add nsw i32 %463, 8
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %462, i64 %465
  store i32 %461, i32* %466, align 4
  br label %467

467:                                              ; preds = %396
  %468 = load i32, i32* %13, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %13, align 4
  br label %393

470:                                              ; preds = %393
  br label %471

471:                                              ; preds = %470, %391
  %472 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %473 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %472, i32 0, i32 8
  %474 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %473, i32 0, i32 0
  %475 = load i64*, i64** %474, align 8
  %476 = load i64**, i64*** %10, align 8
  %477 = load i32, i32* %14, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i64*, i64** %476, i64 %478
  store i64* %475, i64** %479, align 8
  br label %480

480:                                              ; preds = %471, %279
  store i32 63, i32* %13, align 4
  br label %481

481:                                              ; preds = %503, %480
  %482 = load i32, i32* %13, align 4
  %483 = icmp sgt i32 %482, 0
  br i1 %483, label %484, label %506

484:                                              ; preds = %481
  %485 = load [64 x i32]*, [64 x i32]** %8, align 8
  %486 = load i32, i32* %14, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [64 x i32], [64 x i32]* %485, i64 %487
  %489 = load i64**, i64*** %10, align 8
  %490 = load i32, i32* %14, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i64*, i64** %489, i64 %491
  %493 = load i64*, i64** %492, align 8
  %494 = load i32, i32* %13, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i64, i64* %493, i64 %495
  %497 = load i64, i64* %496, align 8
  %498 = getelementptr inbounds [64 x i32], [64 x i32]* %488, i64 0, i64 %497
  %499 = load i32, i32* %498, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %502

501:                                              ; preds = %484
  br label %506

502:                                              ; preds = %484
  br label %503

503:                                              ; preds = %502
  %504 = load i32, i32* %13, align 4
  %505 = add nsw i32 %504, -1
  store i32 %505, i32* %13, align 4
  br label %481

506:                                              ; preds = %501, %481
  %507 = load i32, i32* %13, align 4
  %508 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %509 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %508, i32 0, i32 0
  %510 = load i32*, i32** %509, align 8
  %511 = load i32, i32* %14, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32, i32* %510, i64 %512
  store i32 %507, i32* %513, align 4
  %514 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %515 = load [64 x i32]*, [64 x i32]** %8, align 8
  %516 = load i32, i32* %14, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds [64 x i32], [64 x i32]* %515, i64 %517
  %519 = getelementptr inbounds [64 x i32], [64 x i32]* %518, i64 0, i64 0
  %520 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %521 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %520, i32 0, i32 0
  %522 = load i32*, i32** %521, align 8
  %523 = load i32, i32* %14, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %522, i64 %524
  %526 = load i32, i32* %525, align 4
  %527 = load i64**, i64*** %10, align 8
  %528 = load i32, i32* %14, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i64*, i64** %527, i64 %529
  %531 = load i64*, i64** %530, align 8
  %532 = call i64 @get_block_rate(%struct.TYPE_15__* %514, i32* %519, i32 %526, i64* %531)
  %533 = load i32, i32* %12, align 4
  %534 = sext i32 %533 to i64
  %535 = add nsw i64 %534, %532
  %536 = trunc i64 %535 to i32
  store i32 %536, i32* %12, align 4
  br label %537

537:                                              ; preds = %506
  %538 = load i32, i32* %14, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %14, align 4
  br label %33

540:                                              ; preds = %33
  %541 = load i32, i32* %12, align 4
  %542 = icmp slt i32 %541, 0
  br i1 %542, label %543, label %544

543:                                              ; preds = %540
  store i32 1, i32* %6, align 4
  br label %552

544:                                              ; preds = %540
  %545 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %546 = load [64 x i32]*, [64 x i32]** %8, align 8
  %547 = bitcast [64 x i32]* %546 to i32**
  %548 = load i32*, i32** %9, align 8
  %549 = load i64**, i64*** %10, align 8
  %550 = load i32*, i32** %11, align 8
  %551 = call i32 @restore_ac_coeffs(%struct.TYPE_15__* %545, i32** %547, i32* %548, i64** %549, i32* %550)
  store i32 0, i32* %6, align 4
  br label %552

552:                                              ; preds = %544, %543
  %553 = load i32, i32* %6, align 4
  ret i32 %553
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @get_block_rate(%struct.TYPE_15__*, i32*, i32, i64*) #1

declare dso_local i32 @ROUNDED_DIV(i32, i32) #1

declare dso_local i32 @restore_ac_coeffs(%struct.TYPE_15__*, i32**, i32*, i64**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
