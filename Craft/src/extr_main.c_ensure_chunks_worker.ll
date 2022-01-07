; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_ensure_chunks_worker.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_ensure_chunks_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_15__*, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i64, i32, i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32***, i32*** }

@g = common dso_local global %struct.TYPE_16__* null, align 8
@WORKERS = common dso_local global i32 0, align 4
@MAX_CHUNKS = common dso_local global i64 0, align 8
@WORKER_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ensure_chunks_worker(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca [16 x float], align 16
  %7 = alloca [6 x [4 x float]], align 16
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
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_15__*, align 8
  %29 = alloca %struct.TYPE_11__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_15__*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @set_matrix_3d(float* %37, i32 %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67)
  %69 = getelementptr inbounds [6 x [4 x float]], [6 x [4 x float]]* %7, i64 0, i64 0
  %70 = bitcast [4 x float]* %69 to float**
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 0
  %75 = call i32 @frustum_planes(float** %70, i32 %73, float* %74)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @chunked(i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @chunked(i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %10, align 4
  store i32 268435455, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %182, %2
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %185

94:                                               ; preds = %90
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %178, %94
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %181

101:                                              ; preds = %97
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %105, %106
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %17, align 4
  %109 = call i32 @ABS(i32 %108)
  %110 = load i32, i32* %18, align 4
  %111 = call i32 @ABS(i32 %110)
  %112 = xor i32 %109, %111
  %113 = load i32, i32* @WORKERS, align 4
  %114 = srem i32 %112, %113
  store i32 %114, i32* %19, align 4
  %115 = load i32, i32* %19, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %115, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %101
  br label %178

121:                                              ; preds = %101
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %18, align 4
  %124 = call %struct.TYPE_15__* @find_chunk(i32 %122, i32 %123)
  store %struct.TYPE_15__* %124, %struct.TYPE_15__** %20, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %126 = icmp ne %struct.TYPE_15__* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  br label %178

133:                                              ; preds = %127, %121
  %134 = load i32, i32* %15, align 4
  %135 = call i32 @ABS(i32 %134)
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @ABS(i32 %136)
  %138 = call i32 @MAX(i32 %135, i32 %137)
  store i32 %138, i32* %21, align 4
  %139 = getelementptr inbounds [6 x [4 x float]], [6 x [4 x float]]* %7, i64 0, i64 0
  %140 = bitcast [4 x float]* %139 to float**
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %18, align 4
  %143 = call i32 @chunk_visible(float** %140, i32 %141, i32 %142, i32 0, i32 256)
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %148 = icmp ne %struct.TYPE_15__* %147, null
  br i1 %148, label %149, label %162

149:                                              ; preds = %133
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br label %159

159:                                              ; preds = %154, %149
  %160 = phi i1 [ false, %149 ], [ %158, %154 ]
  %161 = zext i1 %160 to i32
  store i32 %161, i32* %23, align 4
  br label %162

162:                                              ; preds = %159, %133
  %163 = load i32, i32* %22, align 4
  %164 = shl i32 %163, 24
  %165 = load i32, i32* %23, align 4
  %166 = shl i32 %165, 16
  %167 = or i32 %164, %166
  %168 = load i32, i32* %21, align 4
  %169 = or i32 %167, %168
  store i32 %169, i32* %24, align 4
  %170 = load i32, i32* %24, align 4
  %171 = load i32, i32* %12, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %162
  %174 = load i32, i32* %24, align 4
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %17, align 4
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %18, align 4
  store i32 %176, i32* %14, align 4
  br label %177

177:                                              ; preds = %173, %162
  br label %178

178:                                              ; preds = %177, %132, %120
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %16, align 4
  br label %97

181:                                              ; preds = %97
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %15, align 4
  br label %90

185:                                              ; preds = %90
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %343

190:                                              ; preds = %185
  %191 = load i32, i32* %13, align 4
  store i32 %191, i32* %25, align 4
  %192 = load i32, i32* %14, align 4
  store i32 %192, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %193 = load i32, i32* %25, align 4
  %194 = load i32, i32* %26, align 4
  %195 = call %struct.TYPE_15__* @find_chunk(i32 %193, i32 %194)
  store %struct.TYPE_15__* %195, %struct.TYPE_15__** %28, align 8
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %197 = icmp ne %struct.TYPE_15__* %196, null
  br i1 %197, label %219, label %198

198:                                              ; preds = %190
  store i32 1, i32* %27, align 4
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @MAX_CHUNKS, align 8
  %203 = icmp slt i64 %201, %202
  br i1 %203, label %204, label %217

204:                                              ; preds = %198
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %206, align 8
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %210, 1
  store i64 %211, i64* %209, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i64 %210
  store %struct.TYPE_15__* %212, %struct.TYPE_15__** %28, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %214 = load i32, i32* %25, align 4
  %215 = load i32, i32* %26, align 4
  %216 = call i32 @init_chunk(%struct.TYPE_15__* %213, i32 %214, i32 %215)
  br label %218

217:                                              ; preds = %198
  br label %343

218:                                              ; preds = %204
  br label %219

219:                                              ; preds = %218, %190
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 3
  store %struct.TYPE_11__* %221, %struct.TYPE_11__** %29, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %27, align 4
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  store i32 -1, i32* %30, align 4
  br label %235

235:                                              ; preds = %331, %219
  %236 = load i32, i32* %30, align 4
  %237 = icmp sle i32 %236, 1
  br i1 %237, label %238, label %334

238:                                              ; preds = %235
  store i32 -1, i32* %31, align 4
  br label %239

239:                                              ; preds = %327, %238
  %240 = load i32, i32* %31, align 4
  %241 = icmp sle i32 %240, 1
  br i1 %241, label %242, label %330

242:                                              ; preds = %239
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  store %struct.TYPE_15__* %243, %struct.TYPE_15__** %32, align 8
  %244 = load i32, i32* %30, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %242
  %247 = load i32, i32* %31, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %261

249:                                              ; preds = %246, %242
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* %30, align 4
  %254 = add nsw i32 %252, %253
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %31, align 4
  %259 = add nsw i32 %257, %258
  %260 = call %struct.TYPE_15__* @find_chunk(i32 %254, i32 %259)
  store %struct.TYPE_15__* %260, %struct.TYPE_15__** %32, align 8
  br label %261

261:                                              ; preds = %249, %246
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %263 = icmp ne %struct.TYPE_15__* %262, null
  br i1 %263, label %264, label %301

264:                                              ; preds = %261
  %265 = call i32* @malloc(i32 4)
  store i32* %265, i32** %33, align 8
  %266 = load i32*, i32** %33, align 8
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 4
  %269 = call i32 @map_copy(i32* %266, i32* %268)
  %270 = call i32* @malloc(i32 4)
  store i32* %270, i32** %34, align 8
  %271 = load i32*, i32** %34, align 8
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 3
  %274 = call i32 @map_copy(i32* %271, i32* %273)
  %275 = load i32*, i32** %33, align 8
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 4
  %278 = load i32***, i32**** %277, align 8
  %279 = load i32, i32* %30, align 4
  %280 = add nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32**, i32*** %278, i64 %281
  %283 = load i32**, i32*** %282, align 8
  %284 = load i32, i32* %31, align 4
  %285 = add nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32*, i32** %283, i64 %286
  store i32* %275, i32** %287, align 8
  %288 = load i32*, i32** %34, align 8
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 3
  %291 = load i32***, i32**** %290, align 8
  %292 = load i32, i32* %30, align 4
  %293 = add nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32**, i32*** %291, i64 %294
  %296 = load i32**, i32*** %295, align 8
  %297 = load i32, i32* %31, align 4
  %298 = add nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32*, i32** %296, i64 %299
  store i32* %288, i32** %300, align 8
  br label %326

301:                                              ; preds = %261
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 4
  %304 = load i32***, i32**** %303, align 8
  %305 = load i32, i32* %30, align 4
  %306 = add nsw i32 %305, 1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32**, i32*** %304, i64 %307
  %309 = load i32**, i32*** %308, align 8
  %310 = load i32, i32* %31, align 4
  %311 = add nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32*, i32** %309, i64 %312
  store i32* null, i32** %313, align 8
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 3
  %316 = load i32***, i32**** %315, align 8
  %317 = load i32, i32* %30, align 4
  %318 = add nsw i32 %317, 1
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32**, i32*** %316, i64 %319
  %321 = load i32**, i32*** %320, align 8
  %322 = load i32, i32* %31, align 4
  %323 = add nsw i32 %322, 1
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32*, i32** %321, i64 %324
  store i32* null, i32** %325, align 8
  br label %326

326:                                              ; preds = %301, %264
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %31, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %31, align 4
  br label %239

330:                                              ; preds = %239
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %30, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %30, align 4
  br label %235

334:                                              ; preds = %235
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 2
  store i64 0, i64* %336, align 8
  %337 = load i32, i32* @WORKER_BUSY, align 4
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 2
  store i32 %337, i32* %339, align 8
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 1
  %342 = call i32 @cnd_signal(i32* %341)
  br label %343

343:                                              ; preds = %334, %217, %189
  ret void
}

declare dso_local i32 @set_matrix_3d(float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @frustum_planes(float**, i32, float*) #1

declare dso_local i32 @chunked(i32) #1

declare dso_local i32 @ABS(i32) #1

declare dso_local %struct.TYPE_15__* @find_chunk(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @chunk_visible(float**, i32, i32, i32, i32) #1

declare dso_local i32 @init_chunk(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @map_copy(i32*, i32*) #1

declare dso_local i32 @cnd_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
