; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_codecview.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_codecview.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__**, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_17__ = type { i32**, i32*, i64, i32, i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i32 }

@AV_FRAME_DATA_MOTION_VECTORS = common dso_local global i32 0, align 4
@FRAME_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@FRAME_TYPE_P = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i64 0, align 8
@FRAME_TYPE_B = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@MV_TYPE_FOR = common dso_local global i32 0, align 4
@MV_TYPE_BACK = common dso_local global i32 0, align 4
@MV_P_FOR = common dso_local global i32 0, align 4
@MV_B_FOR = common dso_local global i32 0, align 4
@MV_B_BACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_15__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_15__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %5, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %6, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %38, i64 0
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %7, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %136

45:                                               ; preds = %2
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = call i32* @av_frame_get_qp_table(%struct.TYPE_17__* %46, i32* %8, i32* %9)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %135

50:                                               ; preds = %45
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @AV_CEIL_RSHIFT(i32 %53, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @AV_CEIL_RSHIFT(i32 %60, i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %15, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 2
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %16, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %17, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %18, align 4
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %131, %50
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %134

89:                                               ; preds = %85
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %119, %89
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %122

94:                                               ; preds = %90
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %12, align 4
  %97 = ashr i32 %96, 3
  %98 = load i32, i32* %8, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32, i32* %11, align 4
  %101 = ashr i32 %100, 3
  %102 = add nsw i32 %99, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %95, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @ff_norm_qscale(i32 %105, i32 %106)
  %108 = mul nsw i32 %107, 128
  %109 = sdiv i32 %108, 31
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %19, align 4
  %111 = load i32*, i32** %16, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  %115 = load i32*, i32** %15, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %110, i32* %118, align 4
  br label %119

119:                                              ; preds = %94
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %90

122:                                              ; preds = %90
  %123 = load i32, i32* %17, align 4
  %124 = load i32*, i32** %15, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32* %126, i32** %15, align 8
  %127 = load i32, i32* %18, align 4
  %128 = load i32*, i32** %16, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %16, align 8
  br label %131

131:                                              ; preds = %122
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %85

134:                                              ; preds = %85
  br label %135

135:                                              ; preds = %134, %45
  br label %136

136:                                              ; preds = %135, %2
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %414

146:                                              ; preds = %141, %136
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %148 = load i32, i32* @AV_FRAME_DATA_MOTION_VECTORS, align 4
  %149 = call %struct.TYPE_16__* @av_frame_get_side_data(%struct.TYPE_17__* %147, i32 %148)
  store %struct.TYPE_16__* %149, %struct.TYPE_16__** %20, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %151 = icmp ne %struct.TYPE_16__* %150, null
  br i1 %151, label %152, label %413

152:                                              ; preds = %146
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %156, %struct.TYPE_15__** %22, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @FRAME_TYPE_I, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %152
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %168 = icmp eq i64 %166, %167
  br label %169

169:                                              ; preds = %163, %152
  %170 = phi i1 [ false, %152 ], [ %168, %163 ]
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %23, align 4
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @FRAME_TYPE_P, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %169
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %183 = icmp eq i64 %181, %182
  br label %184

184:                                              ; preds = %178, %169
  %185 = phi i1 [ false, %169 ], [ %183, %178 ]
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %24, align 4
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @FRAME_TYPE_B, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %184
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %198 = icmp eq i64 %196, %197
  br label %199

199:                                              ; preds = %193, %184
  %200 = phi i1 [ false, %184 ], [ %198, %193 ]
  %201 = zext i1 %200 to i32
  store i32 %201, i32* %25, align 4
  store i32 0, i32* %21, align 4
  br label %202

202:                                              ; preds = %409, %199
  %203 = load i32, i32* %21, align 4
  %204 = sext i32 %203 to i64
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = udiv i64 %208, 24
  %210 = icmp ult i64 %204, %209
  br i1 %210, label %211, label %412

211:                                              ; preds = %202
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %213 = load i32, i32* %21, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i64 %214
  store %struct.TYPE_15__* %215, %struct.TYPE_15__** %26, align 8
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp sgt i64 %218, 0
  %220 = zext i1 %219 to i32
  store i32 %220, i32* %27, align 4
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %322

225:                                              ; preds = %211
  %226 = load i32, i32* %27, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @MV_TYPE_FOR, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br label %235

235:                                              ; preds = %228, %225
  %236 = phi i1 [ false, %225 ], [ %234, %228 ]
  %237 = zext i1 %236 to i32
  store i32 %237, i32* %28, align 4
  %238 = load i32, i32* %27, align 4
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %240, label %247

240:                                              ; preds = %235
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @MV_TYPE_BACK, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br label %247

247:                                              ; preds = %240, %235
  %248 = phi i1 [ false, %235 ], [ %246, %240 ]
  %249 = zext i1 %248 to i32
  store i32 %249, i32* %29, align 4
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %260, label %254

254:                                              ; preds = %247
  %255 = load i32, i32* %28, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %290, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* %29, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %290, label %260

260:                                              ; preds = %257, %247
  %261 = load i32, i32* %23, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load i32, i32* %28, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %290, label %266

266:                                              ; preds = %263, %260
  %267 = load i32, i32* %23, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load i32, i32* %29, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %290, label %272

272:                                              ; preds = %269, %266
  %273 = load i32, i32* %24, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load i32, i32* %28, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %290, label %278

278:                                              ; preds = %275, %272
  %279 = load i32, i32* %25, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load i32, i32* %28, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %290, label %284

284:                                              ; preds = %281, %278
  %285 = load i32, i32* %25, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %321

287:                                              ; preds = %284
  %288 = load i32, i32* %29, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %321

290:                                              ; preds = %287, %281, %275, %269, %263, %257, %254
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 0
  %293 = load i32**, i32*** %292, align 8
  %294 = getelementptr inbounds i32*, i32** %293, i64 0
  %295 = load i32*, i32** %294, align 8
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 1
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %27, align 4
  %320 = call i32 @draw_arrow(i32* %295, i32 %298, i32 %301, i32 %304, i32 %307, i32 %310, i32 %313, i32 %318, i32 100, i32 0, i32 %319)
  br label %321

321:                                              ; preds = %290, %287, %284
  br label %408

322:                                              ; preds = %211
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %407

327:                                              ; preds = %322
  %328 = load i32, i32* %27, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %343

330:                                              ; preds = %327
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @MV_P_FOR, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %343

337:                                              ; preds = %330
  %338 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %338, i32 0, i32 2
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %375, label %343

343:                                              ; preds = %337, %330, %327
  %344 = load i32, i32* %27, align 4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %359

346:                                              ; preds = %343
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @MV_B_FOR, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %346
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %354, i32 0, i32 2
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %358 = icmp eq i64 %356, %357
  br i1 %358, label %375, label %359

359:                                              ; preds = %353, %346, %343
  %360 = load i32, i32* %27, align 4
  %361 = icmp eq i32 %360, 1
  br i1 %361, label %362, label %406

362:                                              ; preds = %359
  %363 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @MV_B_BACK, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %406

369:                                              ; preds = %362
  %370 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %370, i32 0, i32 2
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %406

375:                                              ; preds = %369, %353, %337
  %376 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %377 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %376, i32 0, i32 0
  %378 = load i32**, i32*** %377, align 8
  %379 = getelementptr inbounds i32*, i32** %378, i64 0
  %380 = load i32*, i32** %379, align 8
  %381 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %382 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %381, i32 0, i32 4
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %385 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %391 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %393, i32 0, i32 4
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %396, i32 0, i32 3
  %398 = load i32, i32* %397, align 8
  %399 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %399, i32 0, i32 1
  %401 = load i32*, i32** %400, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 0
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* %27, align 4
  %405 = call i32 @draw_arrow(i32* %380, i32 %383, i32 %386, i32 %389, i32 %392, i32 %395, i32 %398, i32 %403, i32 100, i32 0, i32 %404)
  br label %406

406:                                              ; preds = %375, %369, %362, %359
  br label %407

407:                                              ; preds = %406, %322
  br label %408

408:                                              ; preds = %407, %321
  br label %409

409:                                              ; preds = %408
  %410 = load i32, i32* %21, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %21, align 4
  br label %202

412:                                              ; preds = %202
  br label %413

413:                                              ; preds = %412, %146
  br label %414

414:                                              ; preds = %413, %141
  %415 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %416 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %417 = call i32 @ff_filter_frame(%struct.TYPE_18__* %415, %struct.TYPE_17__* %416)
  ret i32 %417
}

declare dso_local i32* @av_frame_get_qp_table(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @ff_norm_qscale(i32, i32) #1

declare dso_local %struct.TYPE_16__* @av_frame_get_side_data(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @draw_arrow(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
