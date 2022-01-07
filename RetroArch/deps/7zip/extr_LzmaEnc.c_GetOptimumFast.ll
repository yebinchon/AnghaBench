; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_GetOptimumFast.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_GetOptimumFast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i8**, i32, i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* (i32)* }

@LZMA_MATCH_LEN_MAX = common dso_local global i32 0, align 4
@LZMA_NUM_REPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @GetOptimumFast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetOptimumFast(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = call i8* @ReadMatchDistances(%struct.TYPE_7__* %26, i32* %9)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %7, align 4
  br label %36

29:                                               ; preds = %2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %29, %25
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %6, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 -1, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %430

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @LZMA_MATCH_LEN_MAX, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @LZMA_MATCH_LEN_MAX, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i8* (i32)*, i8* (i32)** %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = call i8* %54(i32 %57)
  %59 = getelementptr inbounds i8, i8* %58, i64 -1
  store i8* %59, i8** %13, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %145, %50
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @LZMA_NUM_REPS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %148

64:                                               ; preds = %60
  %65 = load i8*, i8** %13, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = ptrtoint i8* %65 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sub nsw i64 %75, 1
  %77 = inttoptr i64 %76 to i8*
  store i8* %77, i8** %16, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8*, i8** %16, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp ne i32 %81, %85
  br i1 %86, label %97, label %87

87:                                               ; preds = %64
  %88 = load i8*, i8** %13, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8*, i8** %16, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp ne i32 %91, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %87, %64
  br label %145

98:                                               ; preds = %87
  store i32 2, i32* %15, align 4
  br label %99

99:                                               ; preds = %120, %98
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = load i8*, i8** %13, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = load i8*, i8** %16, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %109, %115
  br label %117

117:                                              ; preds = %103, %99
  %118 = phi i1 [ false, %99 ], [ %116, %103 ]
  br i1 %118, label %119, label %123

119:                                              ; preds = %117
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %15, align 4
  br label %99

123:                                              ; preds = %117
  %124 = load i32, i32* %15, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = icmp sge i32 %124, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %123
  %130 = load i32, i32* %12, align 4
  %131 = load i32*, i32** %5, align 8
  store i32 %130, i32* %131, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sub nsw i32 %133, 1
  %135 = call i32 @MovePos(%struct.TYPE_7__* %132, i32 %134)
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %3, align 4
  br label %430

137:                                              ; preds = %123
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %15, align 4
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %141, %137
  br label %145

145:                                              ; preds = %144, %97
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  br label %60

148:                                              ; preds = %60
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 6
  %151 = load i32*, i32** %150, align 8
  store i32* %151, i32** %14, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = icmp sge i32 %152, %155
  br i1 %156, label %157, label %172

157:                                              ; preds = %148
  %158 = load i32*, i32** %14, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @LZMA_NUM_REPS, align 4
  %165 = add nsw i32 %163, %164
  %166 = load i32*, i32** %5, align 8
  store i32 %165, i32* %166, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sub nsw i32 %168, 1
  %170 = call i32 @MovePos(%struct.TYPE_7__* %167, i32 %169)
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %3, align 4
  br label %430

172:                                              ; preds = %148
  store i32 0, i32* %8, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp sge i32 %173, 2
  br i1 %174, label %175, label %231

175:                                              ; preds = %172
  %176 = load i32*, i32** %14, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %8, align 4
  br label %182

182:                                              ; preds = %208, %175
  %183 = load i32, i32* %9, align 4
  %184 = icmp sgt i32 %183, 2
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  %186 = load i32, i32* %7, align 4
  %187 = load i32*, i32** %14, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sub nsw i32 %188, 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  %194 = icmp eq i32 %186, %193
  br label %195

195:                                              ; preds = %185, %182
  %196 = phi i1 [ false, %182 ], [ %194, %185 ]
  br i1 %196, label %197, label %223

197:                                              ; preds = %195
  %198 = load i32*, i32** %14, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sub nsw i32 %199, 3
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %8, align 4
  %205 = call i64 @ChangePair(i32 %203, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %197
  br label %223

208:                                              ; preds = %197
  %209 = load i32, i32* %9, align 4
  %210 = sub nsw i32 %209, 2
  store i32 %210, i32* %9, align 4
  %211 = load i32*, i32** %14, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sub nsw i32 %212, 2
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %7, align 4
  %217 = load i32*, i32** %14, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %8, align 4
  br label %182

223:                                              ; preds = %207, %195
  %224 = load i32, i32* %7, align 4
  %225 = icmp eq i32 %224, 2
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i32, i32* %8, align 4
  %228 = icmp sge i32 %227, 128
  br i1 %228, label %229, label %230

229:                                              ; preds = %226
  store i32 1, i32* %7, align 4
  br label %230

230:                                              ; preds = %229, %226, %223
  br label %231

231:                                              ; preds = %230, %172
  %232 = load i32, i32* %11, align 4
  %233 = icmp sge i32 %232, 2
  br i1 %233, label %234, label %263

234:                                              ; preds = %231
  %235 = load i32, i32* %11, align 4
  %236 = add nsw i32 %235, 1
  %237 = load i32, i32* %7, align 4
  %238 = icmp sge i32 %236, %237
  br i1 %238, label %255, label %239

239:                                              ; preds = %234
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %240, 2
  %242 = load i32, i32* %7, align 4
  %243 = icmp sge i32 %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  %245 = load i32, i32* %8, align 4
  %246 = icmp sge i32 %245, 512
  br i1 %246, label %255, label %247

247:                                              ; preds = %244, %239
  %248 = load i32, i32* %11, align 4
  %249 = add nsw i32 %248, 3
  %250 = load i32, i32* %7, align 4
  %251 = icmp sge i32 %249, %250
  br i1 %251, label %252, label %263

252:                                              ; preds = %247
  %253 = load i32, i32* %8, align 4
  %254 = icmp sge i32 %253, 32768
  br i1 %254, label %255, label %263

255:                                              ; preds = %252, %244, %234
  %256 = load i32, i32* %10, align 4
  %257 = load i32*, i32** %5, align 8
  store i32 %256, i32* %257, align 4
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %259 = load i32, i32* %11, align 4
  %260 = sub nsw i32 %259, 1
  %261 = call i32 @MovePos(%struct.TYPE_7__* %258, i32 %260)
  %262 = load i32, i32* %11, align 4
  store i32 %262, i32* %3, align 4
  br label %430

263:                                              ; preds = %252, %247, %231
  %264 = load i32, i32* %7, align 4
  %265 = icmp slt i32 %264, 2
  br i1 %265, label %269, label %266

266:                                              ; preds = %263
  %267 = load i32, i32* %6, align 4
  %268 = icmp sle i32 %267, 2
  br i1 %268, label %269, label %270

269:                                              ; preds = %266, %263
  store i32 1, i32* %3, align 4
  br label %430

270:                                              ; preds = %266
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 2
  %274 = call i8* @ReadMatchDistances(%struct.TYPE_7__* %271, i32* %273)
  %275 = ptrtoint i8* %274 to i32
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 1
  store i32 %275, i32* %277, align 8
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = icmp sge i32 %280, 2
  br i1 %281, label %282, label %336

282:                                              ; preds = %270
  %283 = load i32*, i32** %14, align 8
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %283, i64 %288
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %17, align 4
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* %7, align 4
  %295 = icmp sge i32 %293, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %282
  %297 = load i32, i32* %17, align 4
  %298 = load i32, i32* %8, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %334, label %300

300:                                              ; preds = %296, %282
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* %7, align 4
  %305 = add nsw i32 %304, 1
  %306 = icmp eq i32 %303, %305
  br i1 %306, label %307, label %312

307:                                              ; preds = %300
  %308 = load i32, i32* %8, align 4
  %309 = load i32, i32* %17, align 4
  %310 = call i64 @ChangePair(i32 %308, i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %334

312:                                              ; preds = %307, %300
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* %7, align 4
  %317 = add nsw i32 %316, 1
  %318 = icmp sgt i32 %315, %317
  br i1 %318, label %334, label %319

319:                                              ; preds = %312
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = add nsw i32 %322, 1
  %324 = load i32, i32* %7, align 4
  %325 = icmp sge i32 %323, %324
  br i1 %325, label %326, label %335

326:                                              ; preds = %319
  %327 = load i32, i32* %7, align 4
  %328 = icmp sge i32 %327, 3
  br i1 %328, label %329, label %335

329:                                              ; preds = %326
  %330 = load i32, i32* %17, align 4
  %331 = load i32, i32* %8, align 4
  %332 = call i64 @ChangePair(i32 %330, i32 %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %329, %312, %307, %296
  store i32 1, i32* %3, align 4
  br label %430

335:                                              ; preds = %329, %326, %319
  br label %336

336:                                              ; preds = %335, %270
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 8
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 0
  %340 = load i8* (i32)*, i8* (i32)** %339, align 8
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 7
  %343 = load i32, i32* %342, align 8
  %344 = call i8* %340(i32 %343)
  %345 = getelementptr inbounds i8, i8* %344, i64 -1
  store i8* %345, i8** %13, align 8
  store i32 0, i32* %12, align 4
  br label %346

346:                                              ; preds = %417, %336
  %347 = load i32, i32* %12, align 4
  %348 = load i32, i32* @LZMA_NUM_REPS, align 4
  %349 = icmp slt i32 %347, %348
  br i1 %349, label %350, label %420

350:                                              ; preds = %346
  %351 = load i8*, i8** %13, align 8
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 4
  %354 = load i8**, i8*** %353, align 8
  %355 = load i32, i32* %12, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8*, i8** %354, i64 %356
  %358 = load i8*, i8** %357, align 8
  %359 = ptrtoint i8* %351 to i64
  %360 = ptrtoint i8* %358 to i64
  %361 = sub i64 %359, %360
  %362 = sub nsw i64 %361, 1
  %363 = inttoptr i64 %362 to i8*
  store i8* %363, i8** %20, align 8
  %364 = load i8*, i8** %13, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 0
  %366 = load i8, i8* %365, align 1
  %367 = zext i8 %366 to i32
  %368 = load i8*, i8** %20, align 8
  %369 = getelementptr inbounds i8, i8* %368, i64 0
  %370 = load i8, i8* %369, align 1
  %371 = zext i8 %370 to i32
  %372 = icmp ne i32 %367, %371
  br i1 %372, label %383, label %373

373:                                              ; preds = %350
  %374 = load i8*, i8** %13, align 8
  %375 = getelementptr inbounds i8, i8* %374, i64 1
  %376 = load i8, i8* %375, align 1
  %377 = zext i8 %376 to i32
  %378 = load i8*, i8** %20, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 1
  %380 = load i8, i8* %379, align 1
  %381 = zext i8 %380 to i32
  %382 = icmp ne i32 %377, %381
  br i1 %382, label %383, label %384

383:                                              ; preds = %373, %350
  br label %417

384:                                              ; preds = %373
  %385 = load i32, i32* %7, align 4
  %386 = sub nsw i32 %385, 1
  store i32 %386, i32* %19, align 4
  store i32 2, i32* %18, align 4
  br label %387

387:                                              ; preds = %408, %384
  %388 = load i32, i32* %18, align 4
  %389 = load i32, i32* %19, align 4
  %390 = icmp slt i32 %388, %389
  br i1 %390, label %391, label %405

391:                                              ; preds = %387
  %392 = load i8*, i8** %13, align 8
  %393 = load i32, i32* %18, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8, i8* %392, i64 %394
  %396 = load i8, i8* %395, align 1
  %397 = zext i8 %396 to i32
  %398 = load i8*, i8** %20, align 8
  %399 = load i32, i32* %18, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8, i8* %398, i64 %400
  %402 = load i8, i8* %401, align 1
  %403 = zext i8 %402 to i32
  %404 = icmp eq i32 %397, %403
  br label %405

405:                                              ; preds = %391, %387
  %406 = phi i1 [ false, %387 ], [ %404, %391 ]
  br i1 %406, label %407, label %411

407:                                              ; preds = %405
  br label %408

408:                                              ; preds = %407
  %409 = load i32, i32* %18, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %18, align 4
  br label %387

411:                                              ; preds = %405
  %412 = load i32, i32* %18, align 4
  %413 = load i32, i32* %19, align 4
  %414 = icmp sge i32 %412, %413
  br i1 %414, label %415, label %416

415:                                              ; preds = %411
  store i32 1, i32* %3, align 4
  br label %430

416:                                              ; preds = %411
  br label %417

417:                                              ; preds = %416, %383
  %418 = load i32, i32* %12, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %12, align 4
  br label %346

420:                                              ; preds = %346
  %421 = load i32, i32* %8, align 4
  %422 = load i32, i32* @LZMA_NUM_REPS, align 4
  %423 = add nsw i32 %421, %422
  %424 = load i32*, i32** %5, align 8
  store i32 %423, i32* %424, align 4
  %425 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %426 = load i32, i32* %7, align 4
  %427 = sub nsw i32 %426, 2
  %428 = call i32 @MovePos(%struct.TYPE_7__* %425, i32 %427)
  %429 = load i32, i32* %7, align 4
  store i32 %429, i32* %3, align 4
  br label %430

430:                                              ; preds = %420, %415, %334, %269, %255, %157, %129, %43
  %431 = load i32, i32* %3, align 4
  ret i32 %431
}

declare dso_local i8* @ReadMatchDistances(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @MovePos(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @ChangePair(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
