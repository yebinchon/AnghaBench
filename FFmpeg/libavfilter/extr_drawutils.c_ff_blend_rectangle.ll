; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_ff_blend_rectangle.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_ff_blend_rectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32*, i32*, %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i32* }

@AV_PIX_FMT_FLAG_ALPHA = common dso_local global i32 0, align 4
@FF_DRAW_PROCESS_ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_blend_rectangle(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32** %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
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
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %12, align 8
  store i32** %2, i32*** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @clip_interval(i32 %38, i32* %17, i32* %19, i32* null)
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @clip_interval(i32 %40, i32* %18, i32* %20, i32* null)
  %42 = load i32, i32* %19, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %10
  %45 = load i32, i32* %20, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47, %44, %10
  br label %446

55:                                               ; preds = %47
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp sle i32 %63, 8
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 66051, %70
  %72 = add nsw i32 %71, 2
  store i32 %72, i32* %21, align 4
  br label %81

73:                                               ; preds = %55
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 257, %78
  %80 = add nsw i32 %79, 2
  store i32 %80, i32* %21, align 4
  br label %81

81:                                               ; preds = %73, %65
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @AV_PIX_FMT_FLAG_ALPHA, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %81
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @FF_DRAW_PROCESS_ALPHA, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  br label %101

101:                                              ; preds = %93, %81
  %102 = phi i1 [ false, %81 ], [ %100, %93 ]
  %103 = xor i1 %102, true
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = sub nsw i32 %84, %105
  store i32 %106, i32* %22, align 4
  %107 = load i32, i32* %22, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %22, align 4
  %112 = add i32 %111, %110
  store i32 %112, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %113

113:                                              ; preds = %443, %101
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* %22, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %446

117:                                              ; preds = %113
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %24, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %23, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %126 = load i32**, i32*** %13, align 8
  %127 = load i32*, i32** %14, align 8
  %128 = load i32, i32* %24, align 4
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %18, align 4
  %131 = call i32* @pointer_at(%struct.TYPE_13__* %125, i32** %126, i32* %127, i32 %128, i32 %129, i32 %130)
  store i32* %131, i32** %35, align 8
  %132 = load i32, i32* %19, align 4
  store i32 %132, i32* %26, align 4
  %133 = load i32, i32* %20, align 4
  store i32 %133, i32* %27, align 4
  %134 = load i32, i32* %17, align 4
  store i32 %134, i32* %28, align 4
  %135 = load i32, i32* %18, align 4
  store i32 %135, i32* %29, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %24, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @subsampling_bounds(i32 %142, i32* %28, i32* %26, i32* %30, i32* %31)
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 5
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %24, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @subsampling_bounds(i32 %150, i32* %29, i32* %27, i32* %32, i32* %33)
  store i32 0, i32* %25, align 4
  br label %152

152:                                              ; preds = %439, %117
  %153 = load i32, i32* %25, align 4
  %154 = load i32, i32* %23, align 4
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %156, label %442

156:                                              ; preds = %152
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = load i32, i32* %25, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %37, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %168 = load i32, i32* %24, align 4
  %169 = load i32, i32* %25, align 4
  %170 = call i32 @component_used(%struct.TYPE_13__* %167, i32 %168, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %156
  br label %439

173:                                              ; preds = %156
  %174 = load i32*, i32** %35, align 8
  %175 = load i32, i32* %25, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32* %177, i32** %36, align 8
  %178 = load i32, i32* %32, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %260

180:                                              ; preds = %173
  %181 = load i32, i32* %37, align 4
  %182 = icmp sle i32 %181, 8
  br i1 %182, label %183, label %217

183:                                              ; preds = %180
  %184 = load i32*, i32** %36, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = load i32, i32* %24, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %25, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %21, align 4
  %198 = lshr i32 %197, 1
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %24, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %26, align 4
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 3
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %24, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %30, align 4
  %215 = load i32, i32* %31, align 4
  %216 = call i32 @blend_line(i32* %184, i32 %196, i32 %198, i32 %205, i32 %206, i32 %213, i32 %214, i32 %215)
  br label %251

217:                                              ; preds = %180
  %218 = load i32*, i32** %36, align 8
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %220, align 8
  %222 = load i32, i32* %24, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %25, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %21, align 4
  %232 = lshr i32 %231, 1
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %24, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %26, align 4
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %24, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %30, align 4
  %249 = load i32, i32* %31, align 4
  %250 = call i32 @blend_line16(i32* %218, i32 %230, i32 %232, i32 %239, i32 %240, i32 %247, i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %217, %183
  %252 = load i32*, i32** %14, align 8
  %253 = load i32, i32* %24, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** %36, align 8
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  store i32* %259, i32** %36, align 8
  br label %260

260:                                              ; preds = %251, %173
  %261 = load i32, i32* %37, align 4
  %262 = icmp sle i32 %261, 8
  br i1 %262, label %263, label %313

263:                                              ; preds = %260
  store i32 0, i32* %34, align 4
  br label %264

264:                                              ; preds = %309, %263
  %265 = load i32, i32* %34, align 4
  %266 = load i32, i32* %27, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %312

268:                                              ; preds = %264
  %269 = load i32*, i32** %36, align 8
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %271, align 8
  %273 = load i32, i32* %24, align 4
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %25, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %21, align 4
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 2
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %24, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %26, align 4
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 3
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %24, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %30, align 4
  %299 = load i32, i32* %31, align 4
  %300 = call i32 @blend_line(i32* %269, i32 %281, i32 %282, i32 %289, i32 %290, i32 %297, i32 %298, i32 %299)
  %301 = load i32*, i32** %14, align 8
  %302 = load i32, i32* %24, align 4
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32*, i32** %36, align 8
  %307 = sext i32 %305 to i64
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  store i32* %308, i32** %36, align 8
  br label %309

309:                                              ; preds = %268
  %310 = load i32, i32* %34, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %34, align 4
  br label %264

312:                                              ; preds = %264
  br label %363

313:                                              ; preds = %260
  store i32 0, i32* %34, align 4
  br label %314

314:                                              ; preds = %359, %313
  %315 = load i32, i32* %34, align 4
  %316 = load i32, i32* %27, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %362

318:                                              ; preds = %314
  %319 = load i32*, i32** %36, align 8
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %321, align 8
  %323 = load i32, i32* %24, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 0
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %25, align 4
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %21, align 4
  %333 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 2
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %24, align 4
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %26, align 4
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 3
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %24, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* %30, align 4
  %349 = load i32, i32* %31, align 4
  %350 = call i32 @blend_line16(i32* %319, i32 %331, i32 %332, i32 %339, i32 %340, i32 %347, i32 %348, i32 %349)
  %351 = load i32*, i32** %14, align 8
  %352 = load i32, i32* %24, align 4
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = load i32*, i32** %36, align 8
  %357 = sext i32 %355 to i64
  %358 = getelementptr inbounds i32, i32* %356, i64 %357
  store i32* %358, i32** %36, align 8
  br label %359

359:                                              ; preds = %318
  %360 = load i32, i32* %34, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %34, align 4
  br label %314

362:                                              ; preds = %314
  br label %363

363:                                              ; preds = %362, %312
  %364 = load i32, i32* %33, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %438

366:                                              ; preds = %363
  %367 = load i32, i32* %37, align 4
  %368 = icmp sle i32 %367, 8
  br i1 %368, label %369, label %403

369:                                              ; preds = %366
  %370 = load i32*, i32** %36, align 8
  %371 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_12__*, %struct.TYPE_12__** %372, align 8
  %374 = load i32, i32* %24, align 4
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 1
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* %25, align 4
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* %21, align 4
  %384 = lshr i32 %383, 1
  %385 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i32 0, i32 2
  %387 = load i32*, i32** %386, align 8
  %388 = load i32, i32* %24, align 4
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %387, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* %26, align 4
  %393 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %394 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %393, i32 0, i32 3
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %24, align 4
  %397 = zext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* %30, align 4
  %401 = load i32, i32* %31, align 4
  %402 = call i32 @blend_line(i32* %370, i32 %382, i32 %384, i32 %391, i32 %392, i32 %399, i32 %400, i32 %401)
  br label %437

403:                                              ; preds = %366
  %404 = load i32*, i32** %36, align 8
  %405 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %406 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %405, i32 0, i32 1
  %407 = load %struct.TYPE_12__*, %struct.TYPE_12__** %406, align 8
  %408 = load i32, i32* %24, align 4
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 0
  %412 = load i32*, i32** %411, align 8
  %413 = load i32, i32* %25, align 4
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* %21, align 4
  %418 = lshr i32 %417, 1
  %419 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %419, i32 0, i32 2
  %421 = load i32*, i32** %420, align 8
  %422 = load i32, i32* %24, align 4
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* %26, align 4
  %427 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %428 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %427, i32 0, i32 3
  %429 = load i32*, i32** %428, align 8
  %430 = load i32, i32* %24, align 4
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %429, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* %30, align 4
  %435 = load i32, i32* %31, align 4
  %436 = call i32 @blend_line16(i32* %404, i32 %416, i32 %418, i32 %425, i32 %426, i32 %433, i32 %434, i32 %435)
  br label %437

437:                                              ; preds = %403, %369
  br label %438

438:                                              ; preds = %437, %363
  br label %439

439:                                              ; preds = %438, %172
  %440 = load i32, i32* %25, align 4
  %441 = add i32 %440, 1
  store i32 %441, i32* %25, align 4
  br label %152

442:                                              ; preds = %152
  br label %443

443:                                              ; preds = %442
  %444 = load i32, i32* %24, align 4
  %445 = add i32 %444, 1
  store i32 %445, i32* %24, align 4
  br label %113

446:                                              ; preds = %54, %113
  ret void
}

declare dso_local i32 @clip_interval(i32, i32*, i32*, i32*) #1

declare dso_local i32* @pointer_at(%struct.TYPE_13__*, i32**, i32*, i32, i32, i32) #1

declare dso_local i32 @subsampling_bounds(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @component_used(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @blend_line(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @blend_line16(i32*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
