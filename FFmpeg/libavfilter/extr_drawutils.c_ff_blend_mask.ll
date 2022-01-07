; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_ff_blend_mask.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_ff_blend_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32*, i32*, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i32* }

@AV_PIX_FMT_FLAG_ALPHA = common dso_local global i32 0, align 4
@FF_DRAW_PROCESS_ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_blend_mask(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32** %2, i32* %3, i32 %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
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
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i32*, align 8
  %48 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %16, align 8
  store i32** %2, i32*** %17, align 8
  store i32* %3, i32** %18, align 8
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32* %6, i32** %21, align 8
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  %49 = load i32, i32* %19, align 4
  %50 = call i32 @clip_interval(i32 %49, i32* %27, i32* %23, i32* %34)
  %51 = load i32, i32* %20, align 4
  %52 = call i32 @clip_interval(i32 %51, i32* %28, i32* %24, i32* %35)
  %53 = load i32, i32* %35, align 4
  %54 = load i32, i32* %22, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32*, i32** %21, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %21, align 8
  %59 = load i32, i32* %23, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %14
  %62 = load i32, i32* %24, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64, %61, %14
  br label %578

72:                                               ; preds = %64
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sle i32 %80, 8
  br i1 %81, label %82, label %91

82:                                               ; preds = %72
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 66311, %87
  %89 = add nsw i32 %88, 3
  %90 = ashr i32 %89, 8
  store i32 %90, i32* %29, align 4
  br label %100

91:                                               ; preds = %72
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 257, %96
  %98 = add nsw i32 %97, 2
  %99 = ashr i32 %98, 8
  store i32 %99, i32* %29, align 4
  br label %100

100:                                              ; preds = %91, %82
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @AV_PIX_FMT_FLAG_ALPHA, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %100
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @FF_DRAW_PROCESS_ALPHA, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %112, %100
  %121 = phi i1 [ false, %100 ], [ %119, %112 ]
  %122 = xor i1 %121, true
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = sub nsw i32 %103, %124
  store i32 %125, i32* %30, align 4
  %126 = load i32, i32* %30, align 4
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %30, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* %30, align 4
  store i32 0, i32* %32, align 4
  br label %132

132:                                              ; preds = %575, %120
  %133 = load i32, i32* %32, align 4
  %134 = load i32, i32* %30, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %578

136:                                              ; preds = %132
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %32, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %31, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %145 = load i32**, i32*** %17, align 8
  %146 = load i32*, i32** %18, align 8
  %147 = load i32, i32* %32, align 4
  %148 = load i32, i32* %27, align 4
  %149 = load i32, i32* %28, align 4
  %150 = call i32* @pointer_at(%struct.TYPE_13__* %144, i32** %145, i32* %146, i32 %147, i32 %148, i32 %149)
  store i32* %150, i32** %45, align 8
  %151 = load i32, i32* %23, align 4
  store i32 %151, i32* %36, align 4
  %152 = load i32, i32* %24, align 4
  store i32 %152, i32* %37, align 4
  %153 = load i32, i32* %27, align 4
  store i32 %153, i32* %38, align 4
  %154 = load i32, i32* %28, align 4
  store i32 %154, i32* %39, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %32, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @subsampling_bounds(i32 %161, i32* %38, i32* %36, i32* %40, i32* %41)
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %32, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @subsampling_bounds(i32 %169, i32* %39, i32* %37, i32* %42, i32* %43)
  store i32 0, i32* %33, align 4
  br label %171

171:                                              ; preds = %571, %136
  %172 = load i32, i32* %33, align 4
  %173 = load i32, i32* %31, align 4
  %174 = icmp ult i32 %172, %173
  br i1 %174, label %175, label %574

175:                                              ; preds = %171
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 5
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = load i32, i32* %33, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %48, align 4
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %187 = load i32, i32* %32, align 4
  %188 = load i32, i32* %33, align 4
  %189 = call i32 @component_used(%struct.TYPE_13__* %186, i32 %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %175
  br label %571

192:                                              ; preds = %175
  %193 = load i32*, i32** %45, align 8
  %194 = load i32, i32* %33, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  store i32* %196, i32** %46, align 8
  %197 = load i32*, i32** %21, align 8
  store i32* %197, i32** %47, align 8
  %198 = load i32, i32* %42, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %308

200:                                              ; preds = %192
  %201 = load i32, i32* %48, align 4
  %202 = icmp sle i32 %201, 8
  br i1 %202, label %203, label %248

203:                                              ; preds = %200
  %204 = load i32*, i32** %46, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %32, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %213, align 8
  %215 = load i32, i32* %32, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %33, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %29, align 4
  %225 = load i32*, i32** %47, align 8
  %226 = load i32, i32* %22, align 4
  %227 = load i32, i32* %25, align 4
  %228 = load i32, i32* %36, align 4
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %32, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %32, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %34, align 4
  %244 = load i32, i32* %40, align 4
  %245 = load i32, i32* %41, align 4
  %246 = load i32, i32* %42, align 4
  %247 = call i32 @blend_line_hv(i32* %204, i32 %211, i32 %223, i32 %224, i32* %225, i32 %226, i32 %227, i32 %228, i32 %235, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246)
  br label %293

248:                                              ; preds = %200
  %249 = load i32*, i32** %46, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 2
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %32, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %258, align 8
  %260 = load i32, i32* %32, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %33, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %29, align 4
  %270 = load i32*, i32** %47, align 8
  %271 = load i32, i32* %22, align 4
  %272 = load i32, i32* %25, align 4
  %273 = load i32, i32* %36, align 4
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 3
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %32, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 4
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %32, align 4
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %34, align 4
  %289 = load i32, i32* %40, align 4
  %290 = load i32, i32* %41, align 4
  %291 = load i32, i32* %42, align 4
  %292 = call i32 @blend_line_hv16(i32* %249, i32 %256, i32 %268, i32 %269, i32* %270, i32 %271, i32 %272, i32 %273, i32 %280, i32 %287, i32 %288, i32 %289, i32 %290, i32 %291)
  br label %293

293:                                              ; preds = %248, %203
  %294 = load i32*, i32** %18, align 8
  %295 = load i32, i32* %32, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load i32*, i32** %46, align 8
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  store i32* %301, i32** %46, align 8
  %302 = load i32, i32* %42, align 4
  %303 = load i32, i32* %22, align 4
  %304 = mul nsw i32 %302, %303
  %305 = load i32*, i32** %47, align 8
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds i32, i32* %305, i64 %306
  store i32* %307, i32** %47, align 8
  br label %308

308:                                              ; preds = %293, %192
  %309 = load i32, i32* %48, align 4
  %310 = icmp sle i32 %309, 8
  br i1 %310, label %311, label %392

311:                                              ; preds = %308
  store i32 0, i32* %44, align 4
  br label %312

312:                                              ; preds = %388, %311
  %313 = load i32, i32* %44, align 4
  %314 = load i32, i32* %37, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %391

316:                                              ; preds = %312
  %317 = load i32*, i32** %46, align 8
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 2
  %320 = load i32*, i32** %319, align 8
  %321 = load i32, i32* %32, align 4
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** %326, align 8
  %328 = load i32, i32* %32, align 4
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %33, align 4
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* %29, align 4
  %338 = load i32*, i32** %47, align 8
  %339 = load i32, i32* %22, align 4
  %340 = load i32, i32* %25, align 4
  %341 = load i32, i32* %36, align 4
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 3
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* %32, align 4
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 4
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* %32, align 4
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* %34, align 4
  %357 = load i32, i32* %40, align 4
  %358 = load i32, i32* %41, align 4
  %359 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i32 0, i32 4
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %32, align 4
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = shl i32 1, %365
  %367 = call i32 @blend_line_hv(i32* %317, i32 %324, i32 %336, i32 %337, i32* %338, i32 %339, i32 %340, i32 %341, i32 %348, i32 %355, i32 %356, i32 %357, i32 %358, i32 %366)
  %368 = load i32*, i32** %18, align 8
  %369 = load i32, i32* %32, align 4
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = load i32*, i32** %46, align 8
  %374 = sext i32 %372 to i64
  %375 = getelementptr inbounds i32, i32* %373, i64 %374
  store i32* %375, i32** %46, align 8
  %376 = load i32, i32* %22, align 4
  %377 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 4
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %32, align 4
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = shl i32 %376, %383
  %385 = load i32*, i32** %47, align 8
  %386 = sext i32 %384 to i64
  %387 = getelementptr inbounds i32, i32* %385, i64 %386
  store i32* %387, i32** %47, align 8
  br label %388

388:                                              ; preds = %316
  %389 = load i32, i32* %44, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %44, align 4
  br label %312

391:                                              ; preds = %312
  br label %473

392:                                              ; preds = %308
  store i32 0, i32* %44, align 4
  br label %393

393:                                              ; preds = %469, %392
  %394 = load i32, i32* %44, align 4
  %395 = load i32, i32* %37, align 4
  %396 = icmp slt i32 %394, %395
  br i1 %396, label %397, label %472

397:                                              ; preds = %393
  %398 = load i32*, i32** %46, align 8
  %399 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %399, i32 0, i32 2
  %401 = load i32*, i32** %400, align 8
  %402 = load i32, i32* %32, align 4
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 1
  %408 = load %struct.TYPE_12__*, %struct.TYPE_12__** %407, align 8
  %409 = load i32, i32* %32, align 4
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %408, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 0
  %413 = load i32*, i32** %412, align 8
  %414 = load i32, i32* %33, align 4
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %413, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* %29, align 4
  %419 = load i32*, i32** %47, align 8
  %420 = load i32, i32* %22, align 4
  %421 = load i32, i32* %25, align 4
  %422 = load i32, i32* %36, align 4
  %423 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %424 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %423, i32 0, i32 3
  %425 = load i32*, i32** %424, align 8
  %426 = load i32, i32* %32, align 4
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 4
  %432 = load i32*, i32** %431, align 8
  %433 = load i32, i32* %32, align 4
  %434 = zext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* %34, align 4
  %438 = load i32, i32* %40, align 4
  %439 = load i32, i32* %41, align 4
  %440 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %441 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %440, i32 0, i32 4
  %442 = load i32*, i32** %441, align 8
  %443 = load i32, i32* %32, align 4
  %444 = zext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %442, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = shl i32 1, %446
  %448 = call i32 @blend_line_hv16(i32* %398, i32 %405, i32 %417, i32 %418, i32* %419, i32 %420, i32 %421, i32 %422, i32 %429, i32 %436, i32 %437, i32 %438, i32 %439, i32 %447)
  %449 = load i32*, i32** %18, align 8
  %450 = load i32, i32* %32, align 4
  %451 = zext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %449, i64 %451
  %453 = load i32, i32* %452, align 4
  %454 = load i32*, i32** %46, align 8
  %455 = sext i32 %453 to i64
  %456 = getelementptr inbounds i32, i32* %454, i64 %455
  store i32* %456, i32** %46, align 8
  %457 = load i32, i32* %22, align 4
  %458 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %459 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %458, i32 0, i32 4
  %460 = load i32*, i32** %459, align 8
  %461 = load i32, i32* %32, align 4
  %462 = zext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %460, i64 %462
  %464 = load i32, i32* %463, align 4
  %465 = shl i32 %457, %464
  %466 = load i32*, i32** %47, align 8
  %467 = sext i32 %465 to i64
  %468 = getelementptr inbounds i32, i32* %466, i64 %467
  store i32* %468, i32** %47, align 8
  br label %469

469:                                              ; preds = %397
  %470 = load i32, i32* %44, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %44, align 4
  br label %393

472:                                              ; preds = %393
  br label %473

473:                                              ; preds = %472, %391
  %474 = load i32, i32* %43, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %570

476:                                              ; preds = %473
  %477 = load i32, i32* %48, align 4
  %478 = icmp sle i32 %477, 8
  br i1 %478, label %479, label %524

479:                                              ; preds = %476
  %480 = load i32*, i32** %46, align 8
  %481 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %482 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %481, i32 0, i32 2
  %483 = load i32*, i32** %482, align 8
  %484 = load i32, i32* %32, align 4
  %485 = zext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %483, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %489 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %488, i32 0, i32 1
  %490 = load %struct.TYPE_12__*, %struct.TYPE_12__** %489, align 8
  %491 = load i32, i32* %32, align 4
  %492 = zext i32 %491 to i64
  %493 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %490, i64 %492
  %494 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %493, i32 0, i32 1
  %495 = load i32*, i32** %494, align 8
  %496 = load i32, i32* %33, align 4
  %497 = zext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %495, i64 %497
  %499 = load i32, i32* %498, align 4
  %500 = load i32, i32* %29, align 4
  %501 = load i32*, i32** %47, align 8
  %502 = load i32, i32* %22, align 4
  %503 = load i32, i32* %25, align 4
  %504 = load i32, i32* %36, align 4
  %505 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %506 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %505, i32 0, i32 3
  %507 = load i32*, i32** %506, align 8
  %508 = load i32, i32* %32, align 4
  %509 = zext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %507, i64 %509
  %511 = load i32, i32* %510, align 4
  %512 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %513 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %512, i32 0, i32 4
  %514 = load i32*, i32** %513, align 8
  %515 = load i32, i32* %32, align 4
  %516 = zext i32 %515 to i64
  %517 = getelementptr inbounds i32, i32* %514, i64 %516
  %518 = load i32, i32* %517, align 4
  %519 = load i32, i32* %34, align 4
  %520 = load i32, i32* %40, align 4
  %521 = load i32, i32* %41, align 4
  %522 = load i32, i32* %43, align 4
  %523 = call i32 @blend_line_hv(i32* %480, i32 %487, i32 %499, i32 %500, i32* %501, i32 %502, i32 %503, i32 %504, i32 %511, i32 %518, i32 %519, i32 %520, i32 %521, i32 %522)
  br label %569

524:                                              ; preds = %476
  %525 = load i32*, i32** %46, align 8
  %526 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %527 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %526, i32 0, i32 2
  %528 = load i32*, i32** %527, align 8
  %529 = load i32, i32* %32, align 4
  %530 = zext i32 %529 to i64
  %531 = getelementptr inbounds i32, i32* %528, i64 %530
  %532 = load i32, i32* %531, align 4
  %533 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %534 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %533, i32 0, i32 1
  %535 = load %struct.TYPE_12__*, %struct.TYPE_12__** %534, align 8
  %536 = load i32, i32* %32, align 4
  %537 = zext i32 %536 to i64
  %538 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %535, i64 %537
  %539 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %538, i32 0, i32 0
  %540 = load i32*, i32** %539, align 8
  %541 = load i32, i32* %33, align 4
  %542 = zext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %540, i64 %542
  %544 = load i32, i32* %543, align 4
  %545 = load i32, i32* %29, align 4
  %546 = load i32*, i32** %47, align 8
  %547 = load i32, i32* %22, align 4
  %548 = load i32, i32* %25, align 4
  %549 = load i32, i32* %36, align 4
  %550 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %551 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %550, i32 0, i32 3
  %552 = load i32*, i32** %551, align 8
  %553 = load i32, i32* %32, align 4
  %554 = zext i32 %553 to i64
  %555 = getelementptr inbounds i32, i32* %552, i64 %554
  %556 = load i32, i32* %555, align 4
  %557 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %558 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %557, i32 0, i32 4
  %559 = load i32*, i32** %558, align 8
  %560 = load i32, i32* %32, align 4
  %561 = zext i32 %560 to i64
  %562 = getelementptr inbounds i32, i32* %559, i64 %561
  %563 = load i32, i32* %562, align 4
  %564 = load i32, i32* %34, align 4
  %565 = load i32, i32* %40, align 4
  %566 = load i32, i32* %41, align 4
  %567 = load i32, i32* %43, align 4
  %568 = call i32 @blend_line_hv16(i32* %525, i32 %532, i32 %544, i32 %545, i32* %546, i32 %547, i32 %548, i32 %549, i32 %556, i32 %563, i32 %564, i32 %565, i32 %566, i32 %567)
  br label %569

569:                                              ; preds = %524, %479
  br label %570

570:                                              ; preds = %569, %473
  br label %571

571:                                              ; preds = %570, %191
  %572 = load i32, i32* %33, align 4
  %573 = add i32 %572, 1
  store i32 %573, i32* %33, align 4
  br label %171

574:                                              ; preds = %171
  br label %575

575:                                              ; preds = %574
  %576 = load i32, i32* %32, align 4
  %577 = add i32 %576, 1
  store i32 %577, i32* %32, align 4
  br label %132

578:                                              ; preds = %71, %132
  ret void
}

declare dso_local i32 @clip_interval(i32, i32*, i32*, i32*) #1

declare dso_local i32* @pointer_at(%struct.TYPE_13__*, i32**, i32*, i32, i32, i32) #1

declare dso_local i32 @subsampling_bounds(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @component_used(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @blend_line_hv(i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @blend_line_hv16(i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
