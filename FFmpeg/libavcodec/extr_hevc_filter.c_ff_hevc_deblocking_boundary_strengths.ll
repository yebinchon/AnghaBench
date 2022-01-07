; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_filter.c_ff_hevc_deblocking_boundary_strengths.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_filter.c_ff_hevc_deblocking_boundary_strengths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32*, i32, i32*, %struct.TYPE_21__*, i64*, %struct.TYPE_17__, %struct.TYPE_14__, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i32*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@PF_INTRA = common dso_local global i64 0, align 8
@BOUNDARY_UPPER_SLICE = common dso_local global i32 0, align 4
@BOUNDARY_UPPER_TILE = common dso_local global i32 0, align 4
@BOUNDARY_LEFT_SLICE = common dso_local global i32 0, align 4
@BOUNDARY_LEFT_TILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_hevc_deblocking_boundary_strengths(%struct.TYPE_20__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
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
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_18__*, align 8
  %29 = alloca %struct.TYPE_18__*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.TYPE_18__*, align 8
  %40 = alloca %struct.TYPE_18__*, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca %struct.TYPE_18__*, align 8
  %48 = alloca %struct.TYPE_18__*, align 8
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca %struct.TYPE_18__*, align 8
  %53 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 7
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  store %struct.TYPE_19__* %56, %struct.TYPE_19__** %9, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  store %struct.TYPE_18__* %61, %struct.TYPE_18__** %10, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %11, align 4
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %12, align 4
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %13, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %14, align 4
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %11, align 4
  %89 = ashr i32 %87, %88
  %90 = load i32, i32* %13, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %11, align 4
  %94 = ashr i32 %92, %93
  %95 = add nsw i32 %91, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PF_INTRA, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %4
  %106 = load i32, i32* %7, align 4
  %107 = and i32 %106, 7
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  br label %110

110:                                              ; preds = %105, %4
  %111 = phi i1 [ false, %4 ], [ %109, %105 ]
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %166

115:                                              ; preds = %110
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %139, label %121

121:                                              ; preds = %115
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @BOUNDARY_UPPER_SLICE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %121
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 1, %135
  %137 = srem i32 %129, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %165, label %139

139:                                              ; preds = %128, %121, %115
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %166, label %147

147:                                              ; preds = %139
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @BOUNDARY_UPPER_TILE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %147
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 1, %161
  %163 = srem i32 %155, %162
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %154, %128
  store i32 0, i32* %16, align 4
  br label %166

166:                                              ; preds = %165, %154, %147, %139, %110
  %167 = load i32, i32* %16, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %308

169:                                              ; preds = %166
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @BOUNDARY_UPPER_SLICE, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %169
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %7, align 4
  %183 = sub nsw i32 %182, 1
  %184 = call i32* @ff_hevc_get_ref_list(%struct.TYPE_20__* %177, %struct.TYPE_21__* %180, i32 %181, i32 %183)
  br label %191

185:                                              ; preds = %169
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  br label %191

191:                                              ; preds = %185, %176
  %192 = phi i32* [ %184, %176 ], [ %190, %185 ]
  store i32* %192, i32** %21, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sub nsw i32 %193, 1
  %195 = load i32, i32* %11, align 4
  %196 = ashr i32 %194, %195
  store i32 %196, i32* %22, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* %11, align 4
  %199 = ashr i32 %197, %198
  store i32 %199, i32* %23, align 4
  %200 = load i32, i32* %7, align 4
  %201 = sub nsw i32 %200, 1
  %202 = load i32, i32* %12, align 4
  %203 = ashr i32 %201, %202
  store i32 %203, i32* %24, align 4
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* %12, align 4
  %206 = ashr i32 %204, %205
  store i32 %206, i32* %25, align 4
  store i32 0, i32* %18, align 4
  br label %207

207:                                              ; preds = %304, %191
  %208 = load i32, i32* %18, align 4
  %209 = load i32, i32* %8, align 4
  %210 = shl i32 1, %209
  %211 = icmp slt i32 %208, %210
  br i1 %211, label %212, label %307

212:                                              ; preds = %207
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* %18, align 4
  %215 = add nsw i32 %213, %214
  %216 = load i32, i32* %11, align 4
  %217 = ashr i32 %215, %216
  store i32 %217, i32* %26, align 4
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* %18, align 4
  %220 = add nsw i32 %218, %219
  %221 = load i32, i32* %12, align 4
  %222 = ashr i32 %220, %221
  store i32 %222, i32* %27, align 4
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %224 = load i32, i32* %22, align 4
  %225 = load i32, i32* %13, align 4
  %226 = mul nsw i32 %224, %225
  %227 = load i32, i32* %26, align 4
  %228 = add nsw i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i64 %229
  store %struct.TYPE_18__* %230, %struct.TYPE_18__** %28, align 8
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %232 = load i32, i32* %23, align 4
  %233 = load i32, i32* %13, align 4
  %234 = mul nsw i32 %232, %233
  %235 = load i32, i32* %26, align 4
  %236 = add nsw i32 %234, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i64 %237
  store %struct.TYPE_18__* %238, %struct.TYPE_18__** %29, align 8
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 4
  %241 = load i64*, i64** %240, align 8
  %242 = load i32, i32* %24, align 4
  %243 = load i32, i32* %14, align 4
  %244 = mul nsw i32 %242, %243
  %245 = load i32, i32* %27, align 4
  %246 = add nsw i32 %244, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64, i64* %241, i64 %247
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %30, align 8
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 4
  %252 = load i64*, i64** %251, align 8
  %253 = load i32, i32* %25, align 4
  %254 = load i32, i32* %14, align 4
  %255 = mul nsw i32 %253, %254
  %256 = load i32, i32* %27, align 4
  %257 = add nsw i32 %255, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %252, i64 %258
  %260 = load i64, i64* %259, align 8
  store i64 %260, i64* %31, align 8
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @PF_INTRA, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %272, label %266

266:                                              ; preds = %212
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @PF_INTRA, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %266, %212
  store i32 2, i32* %20, align 4
  br label %287

273:                                              ; preds = %266
  %274 = load i64, i64* %31, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %273
  %277 = load i64, i64* %30, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %276, %273
  store i32 1, i32* %20, align 4
  br label %286

280:                                              ; preds = %276
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %284 = load i32*, i32** %21, align 8
  %285 = call i32 @boundary_strength(%struct.TYPE_20__* %281, %struct.TYPE_18__* %282, %struct.TYPE_18__* %283, i32* %284)
  store i32 %285, i32* %20, align 4
  br label %286

286:                                              ; preds = %280, %279
  br label %287

287:                                              ; preds = %286, %272
  %288 = load i32, i32* %20, align 4
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 0
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %6, align 4
  %293 = load i32, i32* %18, align 4
  %294 = add nsw i32 %292, %293
  %295 = load i32, i32* %7, align 4
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = mul nsw i32 %295, %298
  %300 = add nsw i32 %294, %299
  %301 = ashr i32 %300, 2
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %291, i64 %302
  store i32 %288, i32* %303, align 4
  br label %304

304:                                              ; preds = %287
  %305 = load i32, i32* %18, align 4
  %306 = add nsw i32 %305, 4
  store i32 %306, i32* %18, align 4
  br label %207

307:                                              ; preds = %207
  br label %308

308:                                              ; preds = %307, %166
  %309 = load i32, i32* %6, align 4
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %308
  %312 = load i32, i32* %6, align 4
  %313 = and i32 %312, 7
  %314 = icmp ne i32 %313, 0
  %315 = xor i1 %314, true
  br label %316

316:                                              ; preds = %311, %308
  %317 = phi i1 [ false, %308 ], [ %315, %311 ]
  %318 = zext i1 %317 to i32
  store i32 %318, i32* %17, align 4
  %319 = load i32, i32* %17, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %372

321:                                              ; preds = %316
  %322 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 6
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %345, label %327

327:                                              ; preds = %321
  %328 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @BOUNDARY_LEFT_SLICE, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %345

334:                                              ; preds = %327
  %335 = load i32, i32* %6, align 4
  %336 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %336, i32 0, i32 5
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 4
  %342 = shl i32 1, %341
  %343 = srem i32 %335, %342
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %371, label %345

345:                                              ; preds = %334, %327, %321
  %346 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %346, i32 0, i32 5
  %348 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %347, i32 0, i32 1
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %372, label %353

353:                                              ; preds = %345
  %354 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @BOUNDARY_LEFT_TILE, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %372

360:                                              ; preds = %353
  %361 = load i32, i32* %6, align 4
  %362 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %362, i32 0, i32 5
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 4
  %367 = load i32, i32* %366, align 4
  %368 = shl i32 1, %367
  %369 = srem i32 %361, %368
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %360, %334
  store i32 0, i32* %17, align 4
  br label %372

372:                                              ; preds = %371, %360, %353, %345, %316
  %373 = load i32, i32* %17, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %514

375:                                              ; preds = %372
  %376 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @BOUNDARY_LEFT_SLICE, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %391

382:                                              ; preds = %375
  %383 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %384 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %384, i32 0, i32 3
  %386 = load %struct.TYPE_21__*, %struct.TYPE_21__** %385, align 8
  %387 = load i32, i32* %6, align 4
  %388 = sub nsw i32 %387, 1
  %389 = load i32, i32* %7, align 4
  %390 = call i32* @ff_hevc_get_ref_list(%struct.TYPE_20__* %383, %struct.TYPE_21__* %386, i32 %388, i32 %389)
  br label %397

391:                                              ; preds = %375
  %392 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %392, i32 0, i32 3
  %394 = load %struct.TYPE_21__*, %struct.TYPE_21__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %394, i32 0, i32 0
  %396 = load i32*, i32** %395, align 8
  br label %397

397:                                              ; preds = %391, %382
  %398 = phi i32* [ %390, %382 ], [ %396, %391 ]
  store i32* %398, i32** %32, align 8
  %399 = load i32, i32* %6, align 4
  %400 = sub nsw i32 %399, 1
  %401 = load i32, i32* %11, align 4
  %402 = ashr i32 %400, %401
  store i32 %402, i32* %33, align 4
  %403 = load i32, i32* %6, align 4
  %404 = load i32, i32* %11, align 4
  %405 = ashr i32 %403, %404
  store i32 %405, i32* %34, align 4
  %406 = load i32, i32* %6, align 4
  %407 = sub nsw i32 %406, 1
  %408 = load i32, i32* %12, align 4
  %409 = ashr i32 %407, %408
  store i32 %409, i32* %35, align 4
  %410 = load i32, i32* %6, align 4
  %411 = load i32, i32* %12, align 4
  %412 = ashr i32 %410, %411
  store i32 %412, i32* %36, align 4
  store i32 0, i32* %18, align 4
  br label %413

413:                                              ; preds = %510, %397
  %414 = load i32, i32* %18, align 4
  %415 = load i32, i32* %8, align 4
  %416 = shl i32 1, %415
  %417 = icmp slt i32 %414, %416
  br i1 %417, label %418, label %513

418:                                              ; preds = %413
  %419 = load i32, i32* %7, align 4
  %420 = load i32, i32* %18, align 4
  %421 = add nsw i32 %419, %420
  %422 = load i32, i32* %11, align 4
  %423 = ashr i32 %421, %422
  store i32 %423, i32* %37, align 4
  %424 = load i32, i32* %7, align 4
  %425 = load i32, i32* %18, align 4
  %426 = add nsw i32 %424, %425
  %427 = load i32, i32* %12, align 4
  %428 = ashr i32 %426, %427
  store i32 %428, i32* %38, align 4
  %429 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %430 = load i32, i32* %37, align 4
  %431 = load i32, i32* %13, align 4
  %432 = mul nsw i32 %430, %431
  %433 = load i32, i32* %33, align 4
  %434 = add nsw i32 %432, %433
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %429, i64 %435
  store %struct.TYPE_18__* %436, %struct.TYPE_18__** %39, align 8
  %437 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %438 = load i32, i32* %37, align 4
  %439 = load i32, i32* %13, align 4
  %440 = mul nsw i32 %438, %439
  %441 = load i32, i32* %34, align 4
  %442 = add nsw i32 %440, %441
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %437, i64 %443
  store %struct.TYPE_18__* %444, %struct.TYPE_18__** %40, align 8
  %445 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %446 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %445, i32 0, i32 4
  %447 = load i64*, i64** %446, align 8
  %448 = load i32, i32* %38, align 4
  %449 = load i32, i32* %14, align 4
  %450 = mul nsw i32 %448, %449
  %451 = load i32, i32* %35, align 4
  %452 = add nsw i32 %450, %451
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i64, i64* %447, i64 %453
  %455 = load i64, i64* %454, align 8
  store i64 %455, i64* %41, align 8
  %456 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %456, i32 0, i32 4
  %458 = load i64*, i64** %457, align 8
  %459 = load i32, i32* %38, align 4
  %460 = load i32, i32* %14, align 4
  %461 = mul nsw i32 %459, %460
  %462 = load i32, i32* %36, align 4
  %463 = add nsw i32 %461, %462
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i64, i64* %458, i64 %464
  %466 = load i64, i64* %465, align 8
  store i64 %466, i64* %42, align 8
  %467 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %468 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = load i64, i64* @PF_INTRA, align 8
  %471 = icmp eq i64 %469, %470
  br i1 %471, label %478, label %472

472:                                              ; preds = %418
  %473 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %474 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %473, i32 0, i32 0
  %475 = load i64, i64* %474, align 8
  %476 = load i64, i64* @PF_INTRA, align 8
  %477 = icmp eq i64 %475, %476
  br i1 %477, label %478, label %479

478:                                              ; preds = %472, %418
  store i32 2, i32* %20, align 4
  br label %493

479:                                              ; preds = %472
  %480 = load i64, i64* %42, align 8
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %485, label %482

482:                                              ; preds = %479
  %483 = load i64, i64* %41, align 8
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %486

485:                                              ; preds = %482, %479
  store i32 1, i32* %20, align 4
  br label %492

486:                                              ; preds = %482
  %487 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %488 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %489 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %490 = load i32*, i32** %32, align 8
  %491 = call i32 @boundary_strength(%struct.TYPE_20__* %487, %struct.TYPE_18__* %488, %struct.TYPE_18__* %489, i32* %490)
  store i32 %491, i32* %20, align 4
  br label %492

492:                                              ; preds = %486, %485
  br label %493

493:                                              ; preds = %492, %478
  %494 = load i32, i32* %20, align 4
  %495 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %496 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %495, i32 0, i32 2
  %497 = load i32*, i32** %496, align 8
  %498 = load i32, i32* %6, align 4
  %499 = load i32, i32* %7, align 4
  %500 = load i32, i32* %18, align 4
  %501 = add nsw i32 %499, %500
  %502 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %503 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 8
  %505 = mul nsw i32 %501, %504
  %506 = add nsw i32 %498, %505
  %507 = ashr i32 %506, 2
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32, i32* %497, i64 %508
  store i32 %494, i32* %509, align 4
  br label %510

510:                                              ; preds = %493
  %511 = load i32, i32* %18, align 4
  %512 = add nsw i32 %511, 4
  store i32 %512, i32* %18, align 4
  br label %413

513:                                              ; preds = %413
  br label %514

514:                                              ; preds = %513, %372
  %515 = load i32, i32* %8, align 4
  %516 = load i32, i32* %11, align 4
  %517 = icmp sgt i32 %515, %516
  br i1 %517, label %518, label %677

518:                                              ; preds = %514
  %519 = load i32, i32* %15, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %677, label %521

521:                                              ; preds = %518
  %522 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %523 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %522, i32 0, i32 3
  %524 = load %struct.TYPE_21__*, %struct.TYPE_21__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %524, i32 0, i32 0
  %526 = load i32*, i32** %525, align 8
  store i32* %526, i32** %43, align 8
  store i32 8, i32* %19, align 4
  br label %527

527:                                              ; preds = %598, %521
  %528 = load i32, i32* %19, align 4
  %529 = load i32, i32* %8, align 4
  %530 = shl i32 1, %529
  %531 = icmp slt i32 %528, %530
  br i1 %531, label %532, label %601

532:                                              ; preds = %527
  %533 = load i32, i32* %7, align 4
  %534 = load i32, i32* %19, align 4
  %535 = add nsw i32 %533, %534
  %536 = sub nsw i32 %535, 1
  %537 = load i32, i32* %11, align 4
  %538 = ashr i32 %536, %537
  store i32 %538, i32* %44, align 4
  %539 = load i32, i32* %7, align 4
  %540 = load i32, i32* %19, align 4
  %541 = add nsw i32 %539, %540
  %542 = load i32, i32* %11, align 4
  %543 = ashr i32 %541, %542
  store i32 %543, i32* %45, align 4
  store i32 0, i32* %18, align 4
  br label %544

544:                                              ; preds = %594, %532
  %545 = load i32, i32* %18, align 4
  %546 = load i32, i32* %8, align 4
  %547 = shl i32 1, %546
  %548 = icmp slt i32 %545, %547
  br i1 %548, label %549, label %597

549:                                              ; preds = %544
  %550 = load i32, i32* %6, align 4
  %551 = load i32, i32* %18, align 4
  %552 = add nsw i32 %550, %551
  %553 = load i32, i32* %11, align 4
  %554 = ashr i32 %552, %553
  store i32 %554, i32* %46, align 4
  %555 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %556 = load i32, i32* %44, align 4
  %557 = load i32, i32* %13, align 4
  %558 = mul nsw i32 %556, %557
  %559 = load i32, i32* %46, align 4
  %560 = add nsw i32 %558, %559
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %555, i64 %561
  store %struct.TYPE_18__* %562, %struct.TYPE_18__** %47, align 8
  %563 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %564 = load i32, i32* %45, align 4
  %565 = load i32, i32* %13, align 4
  %566 = mul nsw i32 %564, %565
  %567 = load i32, i32* %46, align 4
  %568 = add nsw i32 %566, %567
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %563, i64 %569
  store %struct.TYPE_18__* %570, %struct.TYPE_18__** %48, align 8
  %571 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %572 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %573 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %574 = load i32*, i32** %43, align 8
  %575 = call i32 @boundary_strength(%struct.TYPE_20__* %571, %struct.TYPE_18__* %572, %struct.TYPE_18__* %573, i32* %574)
  store i32 %575, i32* %20, align 4
  %576 = load i32, i32* %20, align 4
  %577 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %578 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %577, i32 0, i32 0
  %579 = load i32*, i32** %578, align 8
  %580 = load i32, i32* %6, align 4
  %581 = load i32, i32* %18, align 4
  %582 = add nsw i32 %580, %581
  %583 = load i32, i32* %7, align 4
  %584 = load i32, i32* %19, align 4
  %585 = add nsw i32 %583, %584
  %586 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %587 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %586, i32 0, i32 1
  %588 = load i32, i32* %587, align 8
  %589 = mul nsw i32 %585, %588
  %590 = add nsw i32 %582, %589
  %591 = ashr i32 %590, 2
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i32, i32* %579, i64 %592
  store i32 %576, i32* %593, align 4
  br label %594

594:                                              ; preds = %549
  %595 = load i32, i32* %18, align 4
  %596 = add nsw i32 %595, 4
  store i32 %596, i32* %18, align 4
  br label %544

597:                                              ; preds = %544
  br label %598

598:                                              ; preds = %597
  %599 = load i32, i32* %19, align 4
  %600 = add nsw i32 %599, 8
  store i32 %600, i32* %19, align 4
  br label %527

601:                                              ; preds = %527
  store i32 0, i32* %19, align 4
  br label %602

602:                                              ; preds = %673, %601
  %603 = load i32, i32* %19, align 4
  %604 = load i32, i32* %8, align 4
  %605 = shl i32 1, %604
  %606 = icmp slt i32 %603, %605
  br i1 %606, label %607, label %676

607:                                              ; preds = %602
  %608 = load i32, i32* %7, align 4
  %609 = load i32, i32* %19, align 4
  %610 = add nsw i32 %608, %609
  %611 = load i32, i32* %11, align 4
  %612 = ashr i32 %610, %611
  store i32 %612, i32* %49, align 4
  store i32 8, i32* %18, align 4
  br label %613

613:                                              ; preds = %669, %607
  %614 = load i32, i32* %18, align 4
  %615 = load i32, i32* %8, align 4
  %616 = shl i32 1, %615
  %617 = icmp slt i32 %614, %616
  br i1 %617, label %618, label %672

618:                                              ; preds = %613
  %619 = load i32, i32* %6, align 4
  %620 = load i32, i32* %18, align 4
  %621 = add nsw i32 %619, %620
  %622 = sub nsw i32 %621, 1
  %623 = load i32, i32* %11, align 4
  %624 = ashr i32 %622, %623
  store i32 %624, i32* %50, align 4
  %625 = load i32, i32* %6, align 4
  %626 = load i32, i32* %18, align 4
  %627 = add nsw i32 %625, %626
  %628 = load i32, i32* %11, align 4
  %629 = ashr i32 %627, %628
  store i32 %629, i32* %51, align 4
  %630 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %631 = load i32, i32* %49, align 4
  %632 = load i32, i32* %13, align 4
  %633 = mul nsw i32 %631, %632
  %634 = load i32, i32* %50, align 4
  %635 = add nsw i32 %633, %634
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %630, i64 %636
  store %struct.TYPE_18__* %637, %struct.TYPE_18__** %52, align 8
  %638 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %639 = load i32, i32* %49, align 4
  %640 = load i32, i32* %13, align 4
  %641 = mul nsw i32 %639, %640
  %642 = load i32, i32* %51, align 4
  %643 = add nsw i32 %641, %642
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %638, i64 %644
  store %struct.TYPE_18__* %645, %struct.TYPE_18__** %53, align 8
  %646 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %647 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %648 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %649 = load i32*, i32** %43, align 8
  %650 = call i32 @boundary_strength(%struct.TYPE_20__* %646, %struct.TYPE_18__* %647, %struct.TYPE_18__* %648, i32* %649)
  store i32 %650, i32* %20, align 4
  %651 = load i32, i32* %20, align 4
  %652 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %653 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %652, i32 0, i32 2
  %654 = load i32*, i32** %653, align 8
  %655 = load i32, i32* %6, align 4
  %656 = load i32, i32* %18, align 4
  %657 = add nsw i32 %655, %656
  %658 = load i32, i32* %7, align 4
  %659 = load i32, i32* %19, align 4
  %660 = add nsw i32 %658, %659
  %661 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %662 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %661, i32 0, i32 1
  %663 = load i32, i32* %662, align 8
  %664 = mul nsw i32 %660, %663
  %665 = add nsw i32 %657, %664
  %666 = ashr i32 %665, 2
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds i32, i32* %654, i64 %667
  store i32 %651, i32* %668, align 4
  br label %669

669:                                              ; preds = %618
  %670 = load i32, i32* %18, align 4
  %671 = add nsw i32 %670, 8
  store i32 %671, i32* %18, align 4
  br label %613

672:                                              ; preds = %613
  br label %673

673:                                              ; preds = %672
  %674 = load i32, i32* %19, align 4
  %675 = add nsw i32 %674, 4
  store i32 %675, i32* %19, align 4
  br label %602

676:                                              ; preds = %602
  br label %677

677:                                              ; preds = %676, %518, %514
  ret void
}

declare dso_local i32* @ff_hevc_get_ref_list(%struct.TYPE_20__*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @boundary_strength(%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
