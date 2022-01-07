; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_schedule_assign_signals.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_schedule_assign_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_13__*, i32*, %struct.TYPE_12__*, i32)* @_ccv_nnc_graph_schedule_assign_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_graph_schedule_assign_signals(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2, i32* %3, %struct.TYPE_12__* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_12__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_11__*, align 8
  %31 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %11, align 8
  store i32 %5, i32* %12, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %69, %6
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %38
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i64 @ccv_array_get(%struct.TYPE_13__* %45, i32 %46)
  %48 = inttoptr i64 %47 to i32*
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %18, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %51 = load i32, i32* %18, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 %52
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %19, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %17, align 4
  br label %69

69:                                               ; preds = %44
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %38

72:                                               ; preds = %38
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @ccv_max(i32 1, i32 %73)
  %75 = zext i32 %74 to i64
  %76 = call i8* @llvm.stacksave()
  store i8* %76, i8** %20, align 8
  %77 = alloca i32, i64 %75, align 16
  store i64 %75, i64* %21, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %430, %72
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %433

91:                                               ; preds = %85
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i64 @ccv_array_get(%struct.TYPE_13__* %92, i32 %93)
  %95 = inttoptr i64 %94 to i32*
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %22, align 4
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load i32, i32* %22, align 4
  %103 = icmp sge i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %107 = load i32, i32* %22, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i64 %108
  store %struct.TYPE_12__* %109, %struct.TYPE_12__** %23, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  store i32 1, i32* %24, align 4
  store i32 0, i32* %14, align 4
  br label %117

117:                                              ; preds = %181, %91
  %118 = load i32, i32* %24, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %122, %126
  br label %128

128:                                              ; preds = %120, %117
  %129 = phi i1 [ false, %117 ], [ %127, %120 ]
  br i1 %129, label %130, label %184

130:                                              ; preds = %128
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = bitcast %struct.TYPE_14__* %132 to { i64, i64 }*
  %134 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %133, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32* @SCHEDULE_STREAMS(i64 %135, i64 %137)
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %25, align 4
  %143 = load i32, i32* %25, align 4
  %144 = icmp sge i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  store i32 0, i32* %26, align 4
  store i32 0, i32* %15, align 4
  br label %147

147:                                              ; preds = %176, %130
  %148 = load i32, i32* %26, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp slt i64 %152, %156
  br label %158

158:                                              ; preds = %150, %147
  %159 = phi i1 [ false, %147 ], [ %157, %150 ]
  br i1 %159, label %160, label %179

160:                                              ; preds = %158
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = bitcast %struct.TYPE_14__* %162 to { i64, i64 }*
  %164 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %163, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i32* @SCHEDULE_STREAMS(i64 %165, i64 %167)
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %25, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  store i32 %175, i32* %26, align 4
  br label %176

176:                                              ; preds = %160
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %15, align 4
  br label %147

179:                                              ; preds = %158
  %180 = load i32, i32* %26, align 4
  store i32 %180, i32* %24, align 4
  br label %181

181:                                              ; preds = %179
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %14, align 4
  br label %117

184:                                              ; preds = %128
  %185 = load i32, i32* %24, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %430

188:                                              ; preds = %184
  store i32 0, i32* %14, align 4
  br label %189

189:                                              ; preds = %426, %188
  %190 = load i32, i32* %14, align 4
  %191 = sext i32 %190 to i64
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp slt i64 %191, %195
  br i1 %196, label %197, label %429

197:                                              ; preds = %189
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = bitcast %struct.TYPE_14__* %199 to { i64, i64 }*
  %201 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %200, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = call i32* @SCHEDULE_STREAMS(i64 %202, i64 %204)
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %27, align 4
  %210 = load i32, i32* %27, align 4
  %211 = icmp sge i32 %210, 0
  %212 = zext i1 %211 to i32
  %213 = call i32 @assert(i32 %212)
  store i32 0, i32* %28, align 4
  store i32 0, i32* %15, align 4
  br label %214

214:                                              ; preds = %243, %197
  %215 = load i32, i32* %28, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %225, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %15, align 4
  %219 = sext i32 %218 to i64
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp slt i64 %219, %223
  br label %225

225:                                              ; preds = %217, %214
  %226 = phi i1 [ false, %214 ], [ %224, %217 ]
  br i1 %226, label %227, label %246

227:                                              ; preds = %225
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = bitcast %struct.TYPE_14__* %229 to { i64, i64 }*
  %231 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %230, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = call i32* @SCHEDULE_STREAMS(i64 %232, i64 %234)
  %236 = load i32, i32* %15, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %27, align 4
  %241 = icmp eq i32 %239, %240
  %242 = zext i1 %241 to i32
  store i32 %242, i32* %28, align 4
  br label %243

243:                                              ; preds = %227
  %244 = load i32, i32* %15, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %15, align 4
  br label %214

246:                                              ; preds = %225
  %247 = load i32, i32* %28, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %425, label %249

249:                                              ; preds = %246
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = bitcast %struct.TYPE_14__* %251 to { i64, i64 }*
  %253 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %252, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = call i32* @SCHEDULE_SIGNALS(i64 %254, i64 %256)
  %258 = load i32, i32* %14, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %278

263:                                              ; preds = %249
  %264 = load i32*, i32** %10, align 8
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 4
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  %269 = bitcast %struct.TYPE_14__* %268 to { i64, i64 }*
  %270 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %269, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = call i32* @SCHEDULE_SIGNALS(i64 %271, i64 %273)
  %275 = load i32, i32* %14, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  store i32 %265, i32* %277, align 4
  br label %356

278:                                              ; preds = %249
  store i32 0, i32* %29, align 4
  store i32 0, i32* %15, align 4
  br label %279

279:                                              ; preds = %348, %278
  %280 = load i32, i32* %29, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %290, label %282

282:                                              ; preds = %279
  %283 = load i32, i32* %15, align 4
  %284 = sext i32 %283 to i64
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp slt i64 %284, %288
  br label %290

290:                                              ; preds = %282, %279
  %291 = phi i1 [ false, %279 ], [ %289, %282 ]
  br i1 %291, label %292, label %351

292:                                              ; preds = %290
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  %295 = bitcast %struct.TYPE_14__* %294 to { i64, i64 }*
  %296 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %295, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = call i32* @SCHEDULE_STREAMS(i64 %297, i64 %299)
  %301 = load i32, i32* %15, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = icmp sge i32 %304, 0
  %306 = zext i1 %305 to i32
  %307 = call i32 @assert(i32 %306)
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 0
  %311 = bitcast %struct.TYPE_14__* %310 to { i64, i64 }*
  %312 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %311, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = call i32* @SCHEDULE_STREAMS(i64 %313, i64 %315)
  %317 = load i32, i32* %15, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = call i64 @ccv_array_get(%struct.TYPE_13__* %308, i32 %320)
  %322 = inttoptr i64 %321 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %322, %struct.TYPE_11__** %30, align 8
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %345

327:                                              ; preds = %292
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 0
  %333 = bitcast %struct.TYPE_14__* %332 to { i64, i64 }*
  %334 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %333, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = call i32* @SCHEDULE_SIGNALS(i64 %335, i64 %337)
  %339 = load i32, i32* %14, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = call i64 @ccv_array_find_int(i64 %330, i32 %342)
  %344 = icmp ne i64 %343, 0
  br label %345

345:                                              ; preds = %327, %292
  %346 = phi i1 [ false, %292 ], [ %344, %327 ]
  %347 = zext i1 %346 to i32
  store i32 %347, i32* %29, align 4
  br label %348

348:                                              ; preds = %345
  %349 = load i32, i32* %15, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %15, align 4
  br label %279

351:                                              ; preds = %290
  %352 = load i32, i32* %29, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %351
  br label %426

355:                                              ; preds = %351
  br label %356

356:                                              ; preds = %355, %263
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 0
  %359 = bitcast %struct.TYPE_14__* %358 to { i64, i64 }*
  %360 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %359, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = call i32* @SCHEDULE_SIGNALS(i64 %361, i64 %363)
  %365 = load i32, i32* %14, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %16, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %16, align 4
  %371 = sext i32 %369 to i64
  %372 = getelementptr inbounds i32, i32* %77, i64 %371
  store i32 %368, i32* %372, align 4
  store i32 0, i32* %15, align 4
  br label %373

373:                                              ; preds = %421, %356
  %374 = load i32, i32* %15, align 4
  %375 = sext i32 %374 to i64
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = icmp slt i64 %375, %379
  br i1 %380, label %381, label %424

381:                                              ; preds = %373
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 0
  %385 = bitcast %struct.TYPE_14__* %384 to { i64, i64 }*
  %386 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %385, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = call i32* @SCHEDULE_STREAMS(i64 %387, i64 %389)
  %391 = load i32, i32* %15, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = call i64 @ccv_array_get(%struct.TYPE_13__* %382, i32 %394)
  %396 = inttoptr i64 %395 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %396, %struct.TYPE_11__** %31, align 8
  %397 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %405, label %401

401:                                              ; preds = %381
  %402 = call i64 @ccv_array_new(i32 4, i32 0, i32 0)
  %403 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 0
  store i64 %402, i64* %404, align 8
  br label %405

405:                                              ; preds = %401, %381
  %406 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i32 0, i32 0
  %411 = bitcast %struct.TYPE_14__* %410 to { i64, i64 }*
  %412 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %411, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = call i32* @SCHEDULE_SIGNALS(i64 %413, i64 %415)
  %417 = load i32, i32* %14, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  %420 = call i32 @ccv_array_push(i64 %408, i32* %419)
  br label %421

421:                                              ; preds = %405
  %422 = load i32, i32* %15, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %15, align 4
  br label %373

424:                                              ; preds = %373
  br label %425

425:                                              ; preds = %424, %246
  br label %426

426:                                              ; preds = %425, %354
  %427 = load i32, i32* %14, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %14, align 4
  br label %189

429:                                              ; preds = %189
  br label %430

430:                                              ; preds = %429, %187
  %431 = load i32, i32* %13, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %13, align 4
  br label %85

433:                                              ; preds = %85
  %434 = load i32, i32* %16, align 4
  %435 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %436 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %436, i32 0, i32 1
  store i32 %434, i32* %437, align 8
  %438 = load i32, i32* %16, align 4
  %439 = icmp sgt i32 %438, 0
  br i1 %439, label %440, label %476

440:                                              ; preds = %433
  %441 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %442 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %456

446:                                              ; preds = %440
  %447 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %448 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* %16, align 4
  %452 = sext i32 %451 to i64
  %453 = mul i64 4, %452
  %454 = trunc i64 %453 to i32
  %455 = call i32 @ccrealloc(i32 %450, i32 %454)
  br label %462

456:                                              ; preds = %440
  %457 = load i32, i32* %16, align 4
  %458 = sext i32 %457 to i64
  %459 = mul i64 4, %458
  %460 = trunc i64 %459 to i32
  %461 = call i32 @ccmalloc(i32 %460)
  br label %462

462:                                              ; preds = %456, %446
  %463 = phi i32 [ %455, %446 ], [ %461, %456 ]
  %464 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %465 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %465, i32 0, i32 2
  store i32 %463, i32* %466, align 4
  %467 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %468 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %468, i32 0, i32 2
  %470 = load i32, i32* %469, align 4
  %471 = load i32, i32* %16, align 4
  %472 = sext i32 %471 to i64
  %473 = mul i64 4, %472
  %474 = trunc i64 %473 to i32
  %475 = call i32 @memcpy(i32 %470, i32* %77, i32 %474)
  br label %476

476:                                              ; preds = %462, %433
  %477 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %477)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ccv_max(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @SCHEDULE_STREAMS(i64, i64) #1

declare dso_local i32* @SCHEDULE_SIGNALS(i64, i64) #1

declare dso_local i64 @ccv_array_find_int(i64, i32) #1

declare dso_local i64 @ccv_array_new(i32, i32, i32) #1

declare dso_local i32 @ccv_array_push(i64, i32*) #1

declare dso_local i32 @ccrealloc(i32, i32) #1

declare dso_local i32 @ccmalloc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
