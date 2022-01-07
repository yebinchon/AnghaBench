; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow.c_halfpel_interpol.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow.c_halfpel_interpol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32*, i32** }

@EDGE_WIDTH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, [4 x i32*]*, %struct.TYPE_8__*)* @halfpel_interpol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halfpel_interpol(%struct.TYPE_7__* %0, [4 x i32*]* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca [4 x i32*]*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store [4 x i32*]* %1, [4 x i32*]** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %455, %3
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %458

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @AV_CEIL_RSHIFT(i32 %38, i32 %41)
  br label %49

43:                                               ; preds = %25
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %43, %33
  %50 = phi i32 [ %42, %33 ], [ %48, %43 ]
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @AV_CEIL_RSHIFT(i32 %58, i32 %61)
  br label %69

63:                                               ; preds = %49
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  br label %69

69:                                               ; preds = %63, %53
  %70 = phi i32 [ %62, %53 ], [ %68, %63 ]
  store i32 %70, i32* %13, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %14, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %15, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @EDGE_WIDTH, align 4
  %88 = mul nsw i32 2, %87
  %89 = add nsw i32 %86, %88
  %90 = call i32* @av_malloc_array(i32 %85, i32 %89)
  %91 = load [4 x i32*]*, [4 x i32*]** %6, align 8
  %92 = getelementptr inbounds [4 x i32*], [4 x i32*]* %91, i64 1
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [4 x i32*], [4 x i32*]* %92, i64 0, i64 %94
  store i32* %90, i32** %95, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @EDGE_WIDTH, align 4
  %99 = mul nsw i32 2, %98
  %100 = add nsw i32 %97, %99
  %101 = call i32* @av_malloc_array(i32 %96, i32 %100)
  %102 = load [4 x i32*]*, [4 x i32*]** %6, align 8
  %103 = getelementptr inbounds [4 x i32*], [4 x i32*]* %102, i64 2
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x i32*], [4 x i32*]* %103, i64 0, i64 %105
  store i32* %101, i32** %106, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @EDGE_WIDTH, align 4
  %110 = mul nsw i32 2, %109
  %111 = add nsw i32 %108, %110
  %112 = call i32* @av_malloc_array(i32 %107, i32 %111)
  %113 = load [4 x i32*]*, [4 x i32*]** %6, align 8
  %114 = getelementptr inbounds [4 x i32*], [4 x i32*]* %113, i64 3
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x i32*], [4 x i32*]* %114, i64 0, i64 %116
  store i32* %112, i32** %117, align 8
  %118 = load [4 x i32*]*, [4 x i32*]** %6, align 8
  %119 = getelementptr inbounds [4 x i32*], [4 x i32*]* %118, i64 1
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i32*], [4 x i32*]* %119, i64 0, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %141

125:                                              ; preds = %69
  %126 = load [4 x i32*]*, [4 x i32*]** %6, align 8
  %127 = getelementptr inbounds [4 x i32*], [4 x i32*]* %126, i64 2
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [4 x i32*], [4 x i32*]* %127, i64 0, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %125
  %134 = load [4 x i32*]*, [4 x i32*]** %6, align 8
  %135 = getelementptr inbounds [4 x i32*], [4 x i32*]* %134, i64 3
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [4 x i32*], [4 x i32*]* %135, i64 0, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %162, label %141

141:                                              ; preds = %133, %125, %69
  %142 = load [4 x i32*]*, [4 x i32*]** %6, align 8
  %143 = getelementptr inbounds [4 x i32*], [4 x i32*]* %142, i64 1
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [4 x i32*], [4 x i32*]* %143, i64 0, i64 %145
  %147 = call i32 @av_freep(i32** %146)
  %148 = load [4 x i32*]*, [4 x i32*]** %6, align 8
  %149 = getelementptr inbounds [4 x i32*], [4 x i32*]* %148, i64 2
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [4 x i32*], [4 x i32*]* %149, i64 0, i64 %151
  %153 = call i32 @av_freep(i32** %152)
  %154 = load [4 x i32*]*, [4 x i32*]** %6, align 8
  %155 = getelementptr inbounds [4 x i32*], [4 x i32*]* %154, i64 3
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [4 x i32*], [4 x i32*]* %155, i64 0, i64 %157
  %159 = call i32 @av_freep(i32** %158)
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = call i32 @AVERROR(i32 %160)
  store i32 %161, i32* %4, align 4
  br label %459

162:                                              ; preds = %133
  %163 = load i32, i32* @EDGE_WIDTH, align 4
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 1, %164
  %166 = mul nsw i32 %163, %165
  %167 = load [4 x i32*]*, [4 x i32*]** %6, align 8
  %168 = getelementptr inbounds [4 x i32*], [4 x i32*]* %167, i64 1
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [4 x i32*], [4 x i32*]* %168, i64 0, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = sext i32 %166 to i64
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32* %174, i32** %171, align 8
  %175 = load i32, i32* @EDGE_WIDTH, align 4
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 1, %176
  %178 = mul nsw i32 %175, %177
  %179 = load [4 x i32*]*, [4 x i32*]** %6, align 8
  %180 = getelementptr inbounds [4 x i32*], [4 x i32*]* %179, i64 2
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [4 x i32*], [4 x i32*]* %180, i64 0, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = sext i32 %178 to i64
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32* %186, i32** %183, align 8
  %187 = load i32, i32* @EDGE_WIDTH, align 4
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 1, %188
  %190 = mul nsw i32 %187, %189
  %191 = load [4 x i32*]*, [4 x i32*]** %6, align 8
  %192 = getelementptr inbounds [4 x i32*], [4 x i32*]* %191, i64 3
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [4 x i32*], [4 x i32*]* %192, i64 0, i64 %194
  %196 = load i32*, i32** %195, align 8
  %197 = sext i32 %190 to i64
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32* %198, i32** %195, align 8
  %199 = load i32*, i32** %15, align 8
  %200 = load [4 x i32*]*, [4 x i32*]** %6, align 8
  %201 = getelementptr inbounds [4 x i32*], [4 x i32*]* %200, i64 0
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [4 x i32*], [4 x i32*]* %201, i64 0, i64 %203
  store i32* %199, i32** %204, align 8
  store i32 0, i32* %10, align 4
  br label %205

205:                                              ; preds = %277, %162
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %13, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %280

209:                                              ; preds = %205
  store i32 0, i32* %9, align 4
  br label %210

210:                                              ; preds = %273, %209
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %12, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %276

214:                                              ; preds = %210
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* %14, align 4
  %217 = mul nsw i32 %215, %216
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %217, %218
  store i32 %219, i32* %16, align 4
  %220 = load i32*, i32** %15, align 8
  %221 = load i32, i32* %16, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** %15, align 8
  %226 = load i32, i32* %16, align 4
  %227 = add nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %224, %230
  %232 = mul nsw i32 20, %231
  %233 = load i32*, i32** %15, align 8
  %234 = load i32, i32* %16, align 4
  %235 = sub nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %233, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %15, align 8
  %240 = load i32, i32* %16, align 4
  %241 = add nsw i32 %240, 2
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %239, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %238, %244
  %246 = mul nsw i32 5, %245
  %247 = sub nsw i32 %232, %246
  %248 = load i32*, i32** %15, align 8
  %249 = load i32, i32* %16, align 4
  %250 = sub nsw i32 %249, 2
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %248, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load i32*, i32** %15, align 8
  %255 = load i32, i32* %16, align 4
  %256 = add nsw i32 %255, 3
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %253, %259
  %261 = add nsw i32 %247, %260
  %262 = add nsw i32 %261, 16
  %263 = ashr i32 %262, 5
  %264 = load [4 x i32*]*, [4 x i32*]** %6, align 8
  %265 = getelementptr inbounds [4 x i32*], [4 x i32*]* %264, i64 1
  %266 = load i32, i32* %8, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [4 x i32*], [4 x i32*]* %265, i64 0, i64 %267
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %16, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  store i32 %263, i32* %272, align 4
  br label %273

273:                                              ; preds = %214
  %274 = load i32, i32* %9, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %9, align 4
  br label %210

276:                                              ; preds = %210
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %10, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %10, align 4
  br label %205

280:                                              ; preds = %205
  store i32 0, i32* %10, align 4
  br label %281

281:                                              ; preds = %361, %280
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* %13, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %364

285:                                              ; preds = %281
  store i32 0, i32* %9, align 4
  br label %286

286:                                              ; preds = %357, %285
  %287 = load i32, i32* %9, align 4
  %288 = load i32, i32* %12, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %360

290:                                              ; preds = %286
  %291 = load i32, i32* %10, align 4
  %292 = load i32, i32* %14, align 4
  %293 = mul nsw i32 %291, %292
  %294 = load i32, i32* %9, align 4
  %295 = add nsw i32 %293, %294
  store i32 %295, i32* %17, align 4
  %296 = load i32*, i32** %15, align 8
  %297 = load i32, i32* %17, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32*, i32** %15, align 8
  %302 = load i32, i32* %17, align 4
  %303 = load i32, i32* %14, align 4
  %304 = add nsw i32 %302, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %301, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = add nsw i32 %300, %307
  %309 = mul nsw i32 20, %308
  %310 = load i32*, i32** %15, align 8
  %311 = load i32, i32* %17, align 4
  %312 = load i32, i32* %14, align 4
  %313 = sub nsw i32 %311, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %310, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = load i32*, i32** %15, align 8
  %318 = load i32, i32* %17, align 4
  %319 = load i32, i32* %14, align 4
  %320 = mul nsw i32 2, %319
  %321 = add nsw i32 %318, %320
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %317, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %316, %324
  %326 = mul nsw i32 5, %325
  %327 = sub nsw i32 %309, %326
  %328 = load i32*, i32** %15, align 8
  %329 = load i32, i32* %17, align 4
  %330 = load i32, i32* %14, align 4
  %331 = mul nsw i32 2, %330
  %332 = sub nsw i32 %329, %331
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %328, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load i32*, i32** %15, align 8
  %337 = load i32, i32* %17, align 4
  %338 = load i32, i32* %14, align 4
  %339 = mul nsw i32 3, %338
  %340 = add nsw i32 %337, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %336, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = add nsw i32 %335, %343
  %345 = add nsw i32 %327, %344
  %346 = add nsw i32 %345, 16
  %347 = ashr i32 %346, 5
  %348 = load [4 x i32*]*, [4 x i32*]** %6, align 8
  %349 = getelementptr inbounds [4 x i32*], [4 x i32*]* %348, i64 2
  %350 = load i32, i32* %8, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [4 x i32*], [4 x i32*]* %349, i64 0, i64 %351
  %353 = load i32*, i32** %352, align 8
  %354 = load i32, i32* %17, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  store i32 %347, i32* %356, align 4
  br label %357

357:                                              ; preds = %290
  %358 = load i32, i32* %9, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %9, align 4
  br label %286

360:                                              ; preds = %286
  br label %361

361:                                              ; preds = %360
  %362 = load i32, i32* %10, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %10, align 4
  br label %281

364:                                              ; preds = %281
  %365 = load [4 x i32*]*, [4 x i32*]** %6, align 8
  %366 = getelementptr inbounds [4 x i32*], [4 x i32*]* %365, i64 1
  %367 = load i32, i32* %8, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [4 x i32*], [4 x i32*]* %366, i64 0, i64 %368
  %370 = load i32*, i32** %369, align 8
  store i32* %370, i32** %15, align 8
  store i32 0, i32* %10, align 4
  br label %371

371:                                              ; preds = %451, %364
  %372 = load i32, i32* %10, align 4
  %373 = load i32, i32* %13, align 4
  %374 = icmp slt i32 %372, %373
  br i1 %374, label %375, label %454

375:                                              ; preds = %371
  store i32 0, i32* %9, align 4
  br label %376

376:                                              ; preds = %447, %375
  %377 = load i32, i32* %9, align 4
  %378 = load i32, i32* %12, align 4
  %379 = icmp slt i32 %377, %378
  br i1 %379, label %380, label %450

380:                                              ; preds = %376
  %381 = load i32, i32* %10, align 4
  %382 = load i32, i32* %14, align 4
  %383 = mul nsw i32 %381, %382
  %384 = load i32, i32* %9, align 4
  %385 = add nsw i32 %383, %384
  store i32 %385, i32* %18, align 4
  %386 = load i32*, i32** %15, align 8
  %387 = load i32, i32* %18, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = load i32*, i32** %15, align 8
  %392 = load i32, i32* %18, align 4
  %393 = load i32, i32* %14, align 4
  %394 = add nsw i32 %392, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %391, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = add nsw i32 %390, %397
  %399 = mul nsw i32 20, %398
  %400 = load i32*, i32** %15, align 8
  %401 = load i32, i32* %18, align 4
  %402 = load i32, i32* %14, align 4
  %403 = sub nsw i32 %401, %402
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %400, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = load i32*, i32** %15, align 8
  %408 = load i32, i32* %18, align 4
  %409 = load i32, i32* %14, align 4
  %410 = mul nsw i32 2, %409
  %411 = add nsw i32 %408, %410
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %407, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = add nsw i32 %406, %414
  %416 = mul nsw i32 5, %415
  %417 = sub nsw i32 %399, %416
  %418 = load i32*, i32** %15, align 8
  %419 = load i32, i32* %18, align 4
  %420 = load i32, i32* %14, align 4
  %421 = mul nsw i32 2, %420
  %422 = sub nsw i32 %419, %421
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %418, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = load i32*, i32** %15, align 8
  %427 = load i32, i32* %18, align 4
  %428 = load i32, i32* %14, align 4
  %429 = mul nsw i32 3, %428
  %430 = add nsw i32 %427, %429
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %426, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = add nsw i32 %425, %433
  %435 = add nsw i32 %417, %434
  %436 = add nsw i32 %435, 16
  %437 = ashr i32 %436, 5
  %438 = load [4 x i32*]*, [4 x i32*]** %6, align 8
  %439 = getelementptr inbounds [4 x i32*], [4 x i32*]* %438, i64 3
  %440 = load i32, i32* %8, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [4 x i32*], [4 x i32*]* %439, i64 0, i64 %441
  %443 = load i32*, i32** %442, align 8
  %444 = load i32, i32* %18, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %443, i64 %445
  store i32 %437, i32* %446, align 4
  br label %447

447:                                              ; preds = %380
  %448 = load i32, i32* %9, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %9, align 4
  br label %376

450:                                              ; preds = %376
  br label %451

451:                                              ; preds = %450
  %452 = load i32, i32* %10, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %10, align 4
  br label %371

454:                                              ; preds = %371
  br label %455

455:                                              ; preds = %454
  %456 = load i32, i32* %8, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %8, align 4
  br label %19

458:                                              ; preds = %19
  store i32 0, i32* %4, align 4
  br label %459

459:                                              ; preds = %458, %141
  %460 = load i32, i32* %4, align 4
  ret i32 %460
}

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32* @av_malloc_array(i32, i32) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
