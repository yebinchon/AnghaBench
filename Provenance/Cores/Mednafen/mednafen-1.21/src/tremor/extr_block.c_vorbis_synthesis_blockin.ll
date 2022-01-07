; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_block.c_vorbis_synthesis_blockin.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_block.c_vorbis_synthesis_blockin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i64**, %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64, i32, i32, i64, i64** }
%struct.TYPE_12__ = type { i32* }

@OV_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vorbis_synthesis_blockin(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 11
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %6, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %7, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 10
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %8, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @OV_EINVAL, align 4
  store i32 %51, i32* %3, align 4
  br label %668

52:                                               ; preds = %45, %2
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 4
  store i32 -1, i32* %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %78, label %69

69:                                               ; preds = %52
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %69, %52
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 6
  store i32 -1, i32* %80, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  store i32 -1, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %69
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 4
  %91 = load i64**, i64*** %90, align 8
  %92 = icmp ne i64** %91, null
  br i1 %92, label %93, label %433

93:                                               ; preds = %83
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %101, 2
  store i32 %102, i32* %11, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = sdiv i32 %107, 2
  store i32 %108, i32* %12, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = sdiv i32 %113, 2
  store i32 %114, i32* %13, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %93
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %123

121:                                              ; preds = %93
  store i32 0, i32* %14, align 4
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %121, %119
  store i32 0, i32* %10, align 4
  br label %124

124:                                              ; preds = %378, %123
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %381

130:                                              ; preds = %124
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %226

135:                                              ; preds = %130
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %178

140:                                              ; preds = %135
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 9
  %143 = load i64**, i64*** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64*, i64** %143, i64 %145
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  store i64* %150, i64** %16, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 4
  %153 = load i64**, i64*** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64*, i64** %153, i64 %155
  %157 = load i64*, i64** %156, align 8
  store i64* %157, i64** %17, align 8
  store i32 0, i32* %9, align 4
  br label %158

158:                                              ; preds = %174, %140
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %177

162:                                              ; preds = %158
  %163 = load i64*, i64** %17, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i64*, i64** %16, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, %167
  store i64 %173, i64* %171, align 8
  br label %174

174:                                              ; preds = %162
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %9, align 4
  br label %158

177:                                              ; preds = %158
  br label %225

178:                                              ; preds = %135
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 9
  %181 = load i64**, i64*** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64*, i64** %181, i64 %183
  %185 = load i64*, i64** %184, align 8
  %186 = load i32, i32* %15, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i32, i32* %13, align 4
  %190 = sdiv i32 %189, 2
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %188, i64 %191
  %193 = load i32, i32* %12, align 4
  %194 = sdiv i32 %193, 2
  %195 = sext i32 %194 to i64
  %196 = sub i64 0, %195
  %197 = getelementptr inbounds i64, i64* %192, i64 %196
  store i64* %197, i64** %18, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 4
  %200 = load i64**, i64*** %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64*, i64** %200, i64 %202
  %204 = load i64*, i64** %203, align 8
  store i64* %204, i64** %19, align 8
  store i32 0, i32* %9, align 4
  br label %205

205:                                              ; preds = %221, %178
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* %12, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %224

209:                                              ; preds = %205
  %210 = load i64*, i64** %19, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = load i64*, i64** %18, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, %214
  store i64 %220, i64* %218, align 8
  br label %221

221:                                              ; preds = %209
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %9, align 4
  br label %205

224:                                              ; preds = %205
  br label %225

225:                                              ; preds = %224, %177
  br label %339

226:                                              ; preds = %130
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %300

231:                                              ; preds = %226
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 9
  %234 = load i64**, i64*** %233, align 8
  %235 = load i32, i32* %10, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64*, i64** %234, i64 %236
  %238 = load i64*, i64** %237, align 8
  %239 = load i32, i32* %15, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  store i64* %241, i64** %20, align 8
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 4
  %244 = load i64**, i64*** %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64*, i64** %244, i64 %246
  %248 = load i64*, i64** %247, align 8
  %249 = load i32, i32* %13, align 4
  %250 = sdiv i32 %249, 2
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64, i64* %248, i64 %251
  %253 = load i32, i32* %12, align 4
  %254 = sdiv i32 %253, 2
  %255 = sext i32 %254 to i64
  %256 = sub i64 0, %255
  %257 = getelementptr inbounds i64, i64* %252, i64 %256
  store i64* %257, i64** %21, align 8
  store i32 0, i32* %9, align 4
  br label %258

258:                                              ; preds = %274, %231
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* %12, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %277

262:                                              ; preds = %258
  %263 = load i64*, i64** %21, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64, i64* %263, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = load i64*, i64** %20, align 8
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %268, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = add nsw i64 %272, %267
  store i64 %273, i64* %271, align 8
  br label %274

274:                                              ; preds = %262
  %275 = load i32, i32* %9, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %9, align 4
  br label %258

277:                                              ; preds = %258
  br label %278

278:                                              ; preds = %296, %277
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* %13, align 4
  %281 = sdiv i32 %280, 2
  %282 = load i32, i32* %12, align 4
  %283 = sdiv i32 %282, 2
  %284 = add nsw i32 %281, %283
  %285 = icmp slt i32 %279, %284
  br i1 %285, label %286, label %299

286:                                              ; preds = %278
  %287 = load i64*, i64** %21, align 8
  %288 = load i32, i32* %9, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64, i64* %287, i64 %289
  %291 = load i64, i64* %290, align 8
  %292 = load i64*, i64** %20, align 8
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64, i64* %292, i64 %294
  store i64 %291, i64* %295, align 8
  br label %296

296:                                              ; preds = %286
  %297 = load i32, i32* %9, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %9, align 4
  br label %278

299:                                              ; preds = %278
  br label %338

300:                                              ; preds = %226
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 9
  %303 = load i64**, i64*** %302, align 8
  %304 = load i32, i32* %10, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i64*, i64** %303, i64 %305
  %307 = load i64*, i64** %306, align 8
  %308 = load i32, i32* %15, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i64, i64* %307, i64 %309
  store i64* %310, i64** %22, align 8
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 4
  %313 = load i64**, i64*** %312, align 8
  %314 = load i32, i32* %10, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i64*, i64** %313, i64 %315
  %317 = load i64*, i64** %316, align 8
  store i64* %317, i64** %23, align 8
  store i32 0, i32* %9, align 4
  br label %318

318:                                              ; preds = %334, %300
  %319 = load i32, i32* %9, align 4
  %320 = load i32, i32* %12, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %337

322:                                              ; preds = %318
  %323 = load i64*, i64** %23, align 8
  %324 = load i32, i32* %9, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i64, i64* %323, i64 %325
  %327 = load i64, i64* %326, align 8
  %328 = load i64*, i64** %22, align 8
  %329 = load i32, i32* %9, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i64, i64* %328, i64 %330
  %332 = load i64, i64* %331, align 8
  %333 = add nsw i64 %332, %327
  store i64 %333, i64* %331, align 8
  br label %334

334:                                              ; preds = %322
  %335 = load i32, i32* %9, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %9, align 4
  br label %318

337:                                              ; preds = %318
  br label %338

338:                                              ; preds = %337, %299
  br label %339

339:                                              ; preds = %338, %225
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 9
  %342 = load i64**, i64*** %341, align 8
  %343 = load i32, i32* %10, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i64*, i64** %342, i64 %344
  %346 = load i64*, i64** %345, align 8
  %347 = load i32, i32* %14, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i64, i64* %346, i64 %348
  store i64* %349, i64** %24, align 8
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 4
  %352 = load i64**, i64*** %351, align 8
  %353 = load i32, i32* %10, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i64*, i64** %352, i64 %354
  %356 = load i64*, i64** %355, align 8
  %357 = load i32, i32* %11, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i64, i64* %356, i64 %358
  store i64* %359, i64** %25, align 8
  store i32 0, i32* %9, align 4
  br label %360

360:                                              ; preds = %374, %339
  %361 = load i32, i32* %9, align 4
  %362 = load i32, i32* %11, align 4
  %363 = icmp slt i32 %361, %362
  br i1 %363, label %364, label %377

364:                                              ; preds = %360
  %365 = load i64*, i64** %25, align 8
  %366 = load i32, i32* %9, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i64, i64* %365, i64 %367
  %369 = load i64, i64* %368, align 8
  %370 = load i64*, i64** %24, align 8
  %371 = load i32, i32* %9, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i64, i64* %370, i64 %372
  store i64 %369, i64* %373, align 8
  br label %374

374:                                              ; preds = %364
  %375 = load i32, i32* %9, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %9, align 4
  br label %360

377:                                              ; preds = %360
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %10, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %10, align 4
  br label %124

381:                                              ; preds = %124
  %382 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 7
  %384 = load i32, i32* %383, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %381
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 7
  store i32 0, i32* %388, align 4
  br label %393

389:                                              ; preds = %381
  %390 = load i32, i32* %13, align 4
  %391 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %391, i32 0, i32 7
  store i32 %390, i32* %392, align 4
  br label %393

393:                                              ; preds = %389, %386
  %394 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = icmp eq i32 %396, -1
  br i1 %397, label %398, label %405

398:                                              ; preds = %393
  %399 = load i32, i32* %14, align 4
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 1
  store i32 %399, i32* %401, align 4
  %402 = load i32, i32* %14, align 4
  %403 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 0
  store i32 %402, i32* %404, align 8
  br label %432

405:                                              ; preds = %393
  %406 = load i32, i32* %15, align 4
  %407 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %407, i32 0, i32 1
  store i32 %406, i32* %408, align 4
  %409 = load i32, i32* %15, align 4
  %410 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 0
  %412 = load i32*, i32** %411, align 8
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i32 0, i32 2
  %415 = load i64, i64* %414, align 8
  %416 = getelementptr inbounds i32, i32* %412, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = sdiv i32 %417, 4
  %419 = add nsw i32 %409, %418
  %420 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 0
  %422 = load i32*, i32** %421, align 8
  %423 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %423, i32 0, i32 3
  %425 = load i64, i64* %424, align 8
  %426 = getelementptr inbounds i32, i32* %422, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = sdiv i32 %427, 4
  %429 = add nsw i32 %419, %428
  %430 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %430, i32 0, i32 0
  store i32 %429, i32* %431, align 8
  br label %432

432:                                              ; preds = %405, %398
  br label %433

433:                                              ; preds = %432, %83
  %434 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %435 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = icmp eq i32 %436, -1
  br i1 %437, label %438, label %441

438:                                              ; preds = %433
  %439 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 0
  store i32 0, i32* %440, align 4
  br label %465

441:                                              ; preds = %433
  %442 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %443 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %442, i32 0, i32 0
  %444 = load i32*, i32** %443, align 8
  %445 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %446 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %445, i32 0, i32 2
  %447 = load i64, i64* %446, align 8
  %448 = getelementptr inbounds i32, i32* %444, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = sdiv i32 %449, 4
  %451 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %452 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %451, i32 0, i32 0
  %453 = load i32*, i32** %452, align 8
  %454 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %455 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %454, i32 0, i32 3
  %456 = load i64, i64* %455, align 8
  %457 = getelementptr inbounds i32, i32* %453, i64 %456
  %458 = load i32, i32* %457, align 4
  %459 = sdiv i32 %458, 4
  %460 = add nsw i32 %450, %459
  %461 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %462 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = add nsw i32 %463, %460
  store i32 %464, i32* %462, align 4
  br label %465

465:                                              ; preds = %441, %438
  %466 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %467 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %466, i32 0, i32 6
  %468 = load i32, i32* %467, align 8
  %469 = icmp eq i32 %468, -1
  br i1 %469, label %470, label %558

470:                                              ; preds = %465
  %471 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %472 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 4
  %474 = icmp ne i32 %473, -1
  br i1 %474, label %475, label %557

475:                                              ; preds = %470
  %476 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %477 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %476, i32 0, i32 2
  %478 = load i32, i32* %477, align 4
  %479 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %480 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %479, i32 0, i32 6
  store i32 %478, i32* %480, align 8
  %481 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %482 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %485 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %484, i32 0, i32 6
  %486 = load i32, i32* %485, align 8
  %487 = icmp sgt i32 %483, %486
  br i1 %487, label %488, label %556

488:                                              ; preds = %475
  %489 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %490 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %493 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %492, i32 0, i32 2
  %494 = load i32, i32* %493, align 4
  %495 = sub nsw i32 %491, %494
  %496 = sext i32 %495 to i64
  store i64 %496, i64* %26, align 8
  %497 = load i64, i64* %26, align 8
  %498 = icmp slt i64 %497, 0
  br i1 %498, label %499, label %500

499:                                              ; preds = %488
  store i64 0, i64* %26, align 8
  br label %500

500:                                              ; preds = %499, %488
  %501 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %502 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %501, i32 0, i32 3
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %505, label %533

505:                                              ; preds = %500
  %506 = load i64, i64* %26, align 8
  %507 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %508 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %511 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 4
  %513 = sub nsw i32 %509, %512
  %514 = sext i32 %513 to i64
  %515 = icmp sgt i64 %506, %514
  br i1 %515, label %516, label %525

516:                                              ; preds = %505
  %517 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %518 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %521 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 4
  %523 = sub nsw i32 %519, %522
  %524 = sext i32 %523 to i64
  store i64 %524, i64* %26, align 8
  br label %525

525:                                              ; preds = %516, %505
  %526 = load i64, i64* %26, align 8
  %527 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %528 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = sext i32 %529 to i64
  %531 = sub nsw i64 %530, %526
  %532 = trunc i64 %531 to i32
  store i32 %532, i32* %528, align 8
  br label %555

533:                                              ; preds = %500
  %534 = load i64, i64* %26, align 8
  %535 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %536 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 4
  %538 = sext i32 %537 to i64
  %539 = add nsw i64 %538, %534
  %540 = trunc i64 %539 to i32
  store i32 %540, i32* %536, align 4
  %541 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %542 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 4
  %544 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %545 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = icmp sgt i32 %543, %546
  br i1 %547, label %548, label %554

548:                                              ; preds = %533
  %549 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %550 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %553 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %552, i32 0, i32 1
  store i32 %551, i32* %553, align 4
  br label %554

554:                                              ; preds = %548, %533
  br label %555

555:                                              ; preds = %554, %525
  br label %556

556:                                              ; preds = %555, %475
  br label %557

557:                                              ; preds = %556, %470
  br label %659

558:                                              ; preds = %465
  %559 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %560 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %559, i32 0, i32 0
  %561 = load i32*, i32** %560, align 8
  %562 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %563 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %562, i32 0, i32 2
  %564 = load i64, i64* %563, align 8
  %565 = getelementptr inbounds i32, i32* %561, i64 %564
  %566 = load i32, i32* %565, align 4
  %567 = sdiv i32 %566, 4
  %568 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %569 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %568, i32 0, i32 0
  %570 = load i32*, i32** %569, align 8
  %571 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %572 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %571, i32 0, i32 3
  %573 = load i64, i64* %572, align 8
  %574 = getelementptr inbounds i32, i32* %570, i64 %573
  %575 = load i32, i32* %574, align 4
  %576 = sdiv i32 %575, 4
  %577 = add nsw i32 %567, %576
  %578 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %579 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %578, i32 0, i32 6
  %580 = load i32, i32* %579, align 8
  %581 = add nsw i32 %580, %577
  store i32 %581, i32* %579, align 8
  %582 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %583 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %582, i32 0, i32 2
  %584 = load i32, i32* %583, align 4
  %585 = icmp ne i32 %584, -1
  br i1 %585, label %586, label %658

586:                                              ; preds = %558
  %587 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %588 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %587, i32 0, i32 6
  %589 = load i32, i32* %588, align 8
  %590 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %591 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %590, i32 0, i32 2
  %592 = load i32, i32* %591, align 4
  %593 = icmp ne i32 %589, %592
  br i1 %593, label %594, label %658

594:                                              ; preds = %586
  %595 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %596 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %595, i32 0, i32 6
  %597 = load i32, i32* %596, align 8
  %598 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %599 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %598, i32 0, i32 2
  %600 = load i32, i32* %599, align 4
  %601 = icmp sgt i32 %597, %600
  br i1 %601, label %602, label %652

602:                                              ; preds = %594
  %603 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %604 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %603, i32 0, i32 6
  %605 = load i32, i32* %604, align 8
  %606 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %607 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %606, i32 0, i32 2
  %608 = load i32, i32* %607, align 4
  %609 = sub nsw i32 %605, %608
  %610 = sext i32 %609 to i64
  store i64 %610, i64* %27, align 8
  %611 = load i64, i64* %27, align 8
  %612 = icmp ne i64 %611, 0
  br i1 %612, label %613, label %651

613:                                              ; preds = %602
  %614 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %615 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %614, i32 0, i32 3
  %616 = load i64, i64* %615, align 8
  %617 = icmp ne i64 %616, 0
  br i1 %617, label %618, label %650

618:                                              ; preds = %613
  %619 = load i64, i64* %27, align 8
  %620 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %621 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %620, i32 0, i32 0
  %622 = load i32, i32* %621, align 8
  %623 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %624 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %623, i32 0, i32 1
  %625 = load i32, i32* %624, align 4
  %626 = sub nsw i32 %622, %625
  %627 = sext i32 %626 to i64
  %628 = icmp sgt i64 %619, %627
  br i1 %628, label %629, label %638

629:                                              ; preds = %618
  %630 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %631 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %630, i32 0, i32 0
  %632 = load i32, i32* %631, align 8
  %633 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %634 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %633, i32 0, i32 1
  %635 = load i32, i32* %634, align 4
  %636 = sub nsw i32 %632, %635
  %637 = sext i32 %636 to i64
  store i64 %637, i64* %27, align 8
  br label %638

638:                                              ; preds = %629, %618
  %639 = load i64, i64* %27, align 8
  %640 = icmp slt i64 %639, 0
  br i1 %640, label %641, label %642

641:                                              ; preds = %638
  store i64 0, i64* %27, align 8
  br label %642

642:                                              ; preds = %641, %638
  %643 = load i64, i64* %27, align 8
  %644 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %645 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %644, i32 0, i32 0
  %646 = load i32, i32* %645, align 8
  %647 = sext i32 %646 to i64
  %648 = sub nsw i64 %647, %643
  %649 = trunc i64 %648 to i32
  store i32 %649, i32* %645, align 8
  br label %650

650:                                              ; preds = %642, %613
  br label %651

651:                                              ; preds = %650, %602
  br label %652

652:                                              ; preds = %651, %594
  %653 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %654 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %653, i32 0, i32 2
  %655 = load i32, i32* %654, align 4
  %656 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %657 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %656, i32 0, i32 6
  store i32 %655, i32* %657, align 8
  br label %658

658:                                              ; preds = %652, %586, %558
  br label %659

659:                                              ; preds = %658, %557
  %660 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %661 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %660, i32 0, i32 3
  %662 = load i64, i64* %661, align 8
  %663 = icmp ne i64 %662, 0
  br i1 %663, label %664, label %667

664:                                              ; preds = %659
  %665 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %666 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %665, i32 0, i32 8
  store i32 1, i32* %666, align 8
  br label %667

667:                                              ; preds = %664, %659
  store i32 0, i32* %3, align 4
  br label %668

668:                                              ; preds = %667, %50
  %669 = load i32, i32* %3, align 4
  ret i32 %669
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
