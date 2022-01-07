; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_block.c_vorbis_synthesis_blockin.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_block.c_vorbis_synthesis_blockin.c"
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
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 11
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %6, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %7, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 10
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %8, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %2
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @OV_EINVAL, align 4
  store i32 %50, i32* %3, align 4
  br label %619

51:                                               ; preds = %44, %2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  store i32 -1, i32* %63, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %77, label %68

68:                                               ; preds = %51
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %68, %51
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 6
  store i32 -1, i32* %79, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i32 -1, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %68
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 4
  %90 = load i64**, i64*** %89, align 8
  %91 = icmp ne i64** %90, null
  br i1 %91, label %92, label %432

92:                                               ; preds = %82
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %100, 2
  store i32 %101, i32* %11, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %106, 2
  store i32 %107, i32* %12, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = sdiv i32 %112, 2
  store i32 %113, i32* %13, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %92
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %122

120:                                              ; preds = %92
  store i32 0, i32* %14, align 4
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %120, %118
  store i32 0, i32* %10, align 4
  br label %123

123:                                              ; preds = %377, %122
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %380

129:                                              ; preds = %123
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %225

134:                                              ; preds = %129
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %177

139:                                              ; preds = %134
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 9
  %142 = load i64**, i64*** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64*, i64** %142, i64 %144
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  store i64* %149, i64** %16, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 4
  %152 = load i64**, i64*** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64*, i64** %152, i64 %154
  %156 = load i64*, i64** %155, align 8
  store i64* %156, i64** %17, align 8
  store i32 0, i32* %9, align 4
  br label %157

157:                                              ; preds = %173, %139
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %157
  %162 = load i64*, i64** %17, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load i64*, i64** %16, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, %166
  store i64 %172, i64* %170, align 8
  br label %173

173:                                              ; preds = %161
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %157

176:                                              ; preds = %157
  br label %224

177:                                              ; preds = %134
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 9
  %180 = load i64**, i64*** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64*, i64** %180, i64 %182
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %15, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i32, i32* %13, align 4
  %189 = sdiv i32 %188, 2
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %187, i64 %190
  %192 = load i32, i32* %12, align 4
  %193 = sdiv i32 %192, 2
  %194 = sext i32 %193 to i64
  %195 = sub i64 0, %194
  %196 = getelementptr inbounds i64, i64* %191, i64 %195
  store i64* %196, i64** %18, align 8
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 4
  %199 = load i64**, i64*** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64*, i64** %199, i64 %201
  %203 = load i64*, i64** %202, align 8
  store i64* %203, i64** %19, align 8
  store i32 0, i32* %9, align 4
  br label %204

204:                                              ; preds = %220, %177
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %12, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %223

208:                                              ; preds = %204
  %209 = load i64*, i64** %19, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %209, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = load i64*, i64** %18, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, %213
  store i64 %219, i64* %217, align 8
  br label %220

220:                                              ; preds = %208
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %9, align 4
  br label %204

223:                                              ; preds = %204
  br label %224

224:                                              ; preds = %223, %176
  br label %338

225:                                              ; preds = %129
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %299

230:                                              ; preds = %225
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 9
  %233 = load i64**, i64*** %232, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i64*, i64** %233, i64 %235
  %237 = load i64*, i64** %236, align 8
  %238 = load i32, i32* %15, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64, i64* %237, i64 %239
  store i64* %240, i64** %20, align 8
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 4
  %243 = load i64**, i64*** %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64*, i64** %243, i64 %245
  %247 = load i64*, i64** %246, align 8
  %248 = load i32, i32* %13, align 4
  %249 = sdiv i32 %248, 2
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %247, i64 %250
  %252 = load i32, i32* %12, align 4
  %253 = sdiv i32 %252, 2
  %254 = sext i32 %253 to i64
  %255 = sub i64 0, %254
  %256 = getelementptr inbounds i64, i64* %251, i64 %255
  store i64* %256, i64** %21, align 8
  store i32 0, i32* %9, align 4
  br label %257

257:                                              ; preds = %273, %230
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* %12, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %276

261:                                              ; preds = %257
  %262 = load i64*, i64** %21, align 8
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i64, i64* %262, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = load i64*, i64** %20, align 8
  %268 = load i32, i32* %9, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i64, i64* %267, i64 %269
  %271 = load i64, i64* %270, align 8
  %272 = add nsw i64 %271, %266
  store i64 %272, i64* %270, align 8
  br label %273

273:                                              ; preds = %261
  %274 = load i32, i32* %9, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %9, align 4
  br label %257

276:                                              ; preds = %257
  br label %277

277:                                              ; preds = %295, %276
  %278 = load i32, i32* %9, align 4
  %279 = load i32, i32* %13, align 4
  %280 = sdiv i32 %279, 2
  %281 = load i32, i32* %12, align 4
  %282 = sdiv i32 %281, 2
  %283 = add nsw i32 %280, %282
  %284 = icmp slt i32 %278, %283
  br i1 %284, label %285, label %298

285:                                              ; preds = %277
  %286 = load i64*, i64** %21, align 8
  %287 = load i32, i32* %9, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i64, i64* %286, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = load i64*, i64** %20, align 8
  %292 = load i32, i32* %9, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i64, i64* %291, i64 %293
  store i64 %290, i64* %294, align 8
  br label %295

295:                                              ; preds = %285
  %296 = load i32, i32* %9, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %9, align 4
  br label %277

298:                                              ; preds = %277
  br label %337

299:                                              ; preds = %225
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 9
  %302 = load i64**, i64*** %301, align 8
  %303 = load i32, i32* %10, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i64*, i64** %302, i64 %304
  %306 = load i64*, i64** %305, align 8
  %307 = load i32, i32* %15, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i64, i64* %306, i64 %308
  store i64* %309, i64** %22, align 8
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 4
  %312 = load i64**, i64*** %311, align 8
  %313 = load i32, i32* %10, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i64*, i64** %312, i64 %314
  %316 = load i64*, i64** %315, align 8
  store i64* %316, i64** %23, align 8
  store i32 0, i32* %9, align 4
  br label %317

317:                                              ; preds = %333, %299
  %318 = load i32, i32* %9, align 4
  %319 = load i32, i32* %12, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %336

321:                                              ; preds = %317
  %322 = load i64*, i64** %23, align 8
  %323 = load i32, i32* %9, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i64, i64* %322, i64 %324
  %326 = load i64, i64* %325, align 8
  %327 = load i64*, i64** %22, align 8
  %328 = load i32, i32* %9, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i64, i64* %327, i64 %329
  %331 = load i64, i64* %330, align 8
  %332 = add nsw i64 %331, %326
  store i64 %332, i64* %330, align 8
  br label %333

333:                                              ; preds = %321
  %334 = load i32, i32* %9, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %9, align 4
  br label %317

336:                                              ; preds = %317
  br label %337

337:                                              ; preds = %336, %298
  br label %338

338:                                              ; preds = %337, %224
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 9
  %341 = load i64**, i64*** %340, align 8
  %342 = load i32, i32* %10, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i64*, i64** %341, i64 %343
  %345 = load i64*, i64** %344, align 8
  %346 = load i32, i32* %14, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i64, i64* %345, i64 %347
  store i64* %348, i64** %24, align 8
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 4
  %351 = load i64**, i64*** %350, align 8
  %352 = load i32, i32* %10, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i64*, i64** %351, i64 %353
  %355 = load i64*, i64** %354, align 8
  %356 = load i32, i32* %11, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i64, i64* %355, i64 %357
  store i64* %358, i64** %25, align 8
  store i32 0, i32* %9, align 4
  br label %359

359:                                              ; preds = %373, %338
  %360 = load i32, i32* %9, align 4
  %361 = load i32, i32* %11, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %376

363:                                              ; preds = %359
  %364 = load i64*, i64** %25, align 8
  %365 = load i32, i32* %9, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i64, i64* %364, i64 %366
  %368 = load i64, i64* %367, align 8
  %369 = load i64*, i64** %24, align 8
  %370 = load i32, i32* %9, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i64, i64* %369, i64 %371
  store i64 %368, i64* %372, align 8
  br label %373

373:                                              ; preds = %363
  %374 = load i32, i32* %9, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %9, align 4
  br label %359

376:                                              ; preds = %359
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* %10, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %10, align 4
  br label %123

380:                                              ; preds = %123
  %381 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 7
  %383 = load i32, i32* %382, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %388

385:                                              ; preds = %380
  %386 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 7
  store i32 0, i32* %387, align 4
  br label %392

388:                                              ; preds = %380
  %389 = load i32, i32* %13, align 4
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 7
  store i32 %389, i32* %391, align 4
  br label %392

392:                                              ; preds = %388, %385
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = icmp eq i32 %395, -1
  br i1 %396, label %397, label %404

397:                                              ; preds = %392
  %398 = load i32, i32* %14, align 4
  %399 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 1
  store i32 %398, i32* %400, align 4
  %401 = load i32, i32* %14, align 4
  %402 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 0
  store i32 %401, i32* %403, align 8
  br label %431

404:                                              ; preds = %392
  %405 = load i32, i32* %15, align 4
  %406 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %406, i32 0, i32 1
  store i32 %405, i32* %407, align 4
  %408 = load i32, i32* %15, align 4
  %409 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i32 0, i32 0
  %411 = load i32*, i32** %410, align 8
  %412 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %412, i32 0, i32 2
  %414 = load i64, i64* %413, align 8
  %415 = getelementptr inbounds i32, i32* %411, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = sdiv i32 %416, 4
  %418 = add nsw i32 %408, %417
  %419 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %420 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %419, i32 0, i32 0
  %421 = load i32*, i32** %420, align 8
  %422 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %422, i32 0, i32 3
  %424 = load i64, i64* %423, align 8
  %425 = getelementptr inbounds i32, i32* %421, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = sdiv i32 %426, 4
  %428 = add nsw i32 %418, %427
  %429 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i32 0, i32 0
  store i32 %428, i32* %430, align 8
  br label %431

431:                                              ; preds = %404, %397
  br label %432

432:                                              ; preds = %431, %82
  %433 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = icmp eq i32 %435, -1
  br i1 %436, label %437, label %440

437:                                              ; preds = %432
  %438 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %439 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %438, i32 0, i32 0
  store i32 0, i32* %439, align 4
  br label %464

440:                                              ; preds = %432
  %441 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %442 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %441, i32 0, i32 0
  %443 = load i32*, i32** %442, align 8
  %444 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %445 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %444, i32 0, i32 2
  %446 = load i64, i64* %445, align 8
  %447 = getelementptr inbounds i32, i32* %443, i64 %446
  %448 = load i32, i32* %447, align 4
  %449 = sdiv i32 %448, 4
  %450 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %451 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %450, i32 0, i32 0
  %452 = load i32*, i32** %451, align 8
  %453 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %454 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %453, i32 0, i32 3
  %455 = load i64, i64* %454, align 8
  %456 = getelementptr inbounds i32, i32* %452, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = sdiv i32 %457, 4
  %459 = add nsw i32 %449, %458
  %460 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = add nsw i32 %462, %459
  store i32 %463, i32* %461, align 4
  br label %464

464:                                              ; preds = %440, %437
  %465 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %466 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %465, i32 0, i32 6
  %467 = load i32, i32* %466, align 8
  %468 = icmp eq i32 %467, -1
  br i1 %468, label %469, label %533

469:                                              ; preds = %464
  %470 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 4
  %473 = icmp ne i32 %472, -1
  br i1 %473, label %474, label %532

474:                                              ; preds = %469
  %475 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %475, i32 0, i32 2
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %479 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %478, i32 0, i32 6
  store i32 %477, i32* %479, align 8
  %480 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %481 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %483, i32 0, i32 6
  %485 = load i32, i32* %484, align 8
  %486 = icmp sgt i32 %482, %485
  br i1 %486, label %487, label %531

487:                                              ; preds = %474
  %488 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %489 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %488, i32 0, i32 3
  %490 = load i64, i64* %489, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %504

492:                                              ; preds = %487
  %493 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %494 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 4
  %496 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %496, i32 0, i32 6
  %498 = load i32, i32* %497, align 8
  %499 = sub nsw i32 %495, %498
  %500 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %501 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 8
  %503 = sub nsw i32 %502, %499
  store i32 %503, i32* %501, align 8
  br label %530

504:                                              ; preds = %487
  %505 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %506 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 4
  %508 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %509 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %508, i32 0, i32 6
  %510 = load i32, i32* %509, align 8
  %511 = sub nsw i32 %507, %510
  %512 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %513 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %512, i32 0, i32 1
  %514 = load i32, i32* %513, align 4
  %515 = add nsw i32 %514, %511
  store i32 %515, i32* %513, align 4
  %516 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %517 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %516, i32 0, i32 1
  %518 = load i32, i32* %517, align 4
  %519 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %520 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = icmp sgt i32 %518, %521
  br i1 %522, label %523, label %529

523:                                              ; preds = %504
  %524 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %525 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %528 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %527, i32 0, i32 1
  store i32 %526, i32* %528, align 4
  br label %529

529:                                              ; preds = %523, %504
  br label %530

530:                                              ; preds = %529, %492
  br label %531

531:                                              ; preds = %530, %474
  br label %532

532:                                              ; preds = %531, %469
  br label %610

533:                                              ; preds = %464
  %534 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %535 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %534, i32 0, i32 0
  %536 = load i32*, i32** %535, align 8
  %537 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %538 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %537, i32 0, i32 2
  %539 = load i64, i64* %538, align 8
  %540 = getelementptr inbounds i32, i32* %536, i64 %539
  %541 = load i32, i32* %540, align 4
  %542 = sdiv i32 %541, 4
  %543 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %544 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %543, i32 0, i32 0
  %545 = load i32*, i32** %544, align 8
  %546 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %547 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %546, i32 0, i32 3
  %548 = load i64, i64* %547, align 8
  %549 = getelementptr inbounds i32, i32* %545, i64 %548
  %550 = load i32, i32* %549, align 4
  %551 = sdiv i32 %550, 4
  %552 = add nsw i32 %542, %551
  %553 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %554 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %553, i32 0, i32 6
  %555 = load i32, i32* %554, align 8
  %556 = add nsw i32 %555, %552
  store i32 %556, i32* %554, align 8
  %557 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %558 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %557, i32 0, i32 2
  %559 = load i32, i32* %558, align 4
  %560 = icmp ne i32 %559, -1
  br i1 %560, label %561, label %609

561:                                              ; preds = %533
  %562 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %563 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %562, i32 0, i32 6
  %564 = load i32, i32* %563, align 8
  %565 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %566 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %565, i32 0, i32 2
  %567 = load i32, i32* %566, align 4
  %568 = icmp ne i32 %564, %567
  br i1 %568, label %569, label %609

569:                                              ; preds = %561
  %570 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %571 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %570, i32 0, i32 6
  %572 = load i32, i32* %571, align 8
  %573 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %574 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %573, i32 0, i32 2
  %575 = load i32, i32* %574, align 4
  %576 = icmp sgt i32 %572, %575
  br i1 %576, label %577, label %603

577:                                              ; preds = %569
  %578 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %579 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %578, i32 0, i32 6
  %580 = load i32, i32* %579, align 8
  %581 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %582 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %581, i32 0, i32 2
  %583 = load i32, i32* %582, align 4
  %584 = sub nsw i32 %580, %583
  %585 = sext i32 %584 to i64
  store i64 %585, i64* %26, align 8
  %586 = load i64, i64* %26, align 8
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %588, label %602

588:                                              ; preds = %577
  %589 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %590 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %589, i32 0, i32 3
  %591 = load i64, i64* %590, align 8
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %593, label %601

593:                                              ; preds = %588
  %594 = load i64, i64* %26, align 8
  %595 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %596 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %595, i32 0, i32 0
  %597 = load i32, i32* %596, align 8
  %598 = sext i32 %597 to i64
  %599 = sub nsw i64 %598, %594
  %600 = trunc i64 %599 to i32
  store i32 %600, i32* %596, align 8
  br label %601

601:                                              ; preds = %593, %588
  br label %602

602:                                              ; preds = %601, %577
  br label %603

603:                                              ; preds = %602, %569
  %604 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %605 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %604, i32 0, i32 2
  %606 = load i32, i32* %605, align 4
  %607 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %608 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %607, i32 0, i32 6
  store i32 %606, i32* %608, align 8
  br label %609

609:                                              ; preds = %603, %561, %533
  br label %610

610:                                              ; preds = %609, %532
  %611 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %612 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %611, i32 0, i32 3
  %613 = load i64, i64* %612, align 8
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %615, label %618

615:                                              ; preds = %610
  %616 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %617 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %616, i32 0, i32 8
  store i32 1, i32* %617, align 8
  br label %618

618:                                              ; preds = %615, %610
  store i32 0, i32* %3, align 4
  br label %619

619:                                              ; preds = %618, %49
  %620 = load i32, i32* %3, align 4
  ret i32 %620
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
