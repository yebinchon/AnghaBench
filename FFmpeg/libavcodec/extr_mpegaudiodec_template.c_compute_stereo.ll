; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudiodec_template.c_compute_stereo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudiodec_template.c_compute_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (i64*, i64*, i32)* }
%struct.TYPE_9__ = type { i32, i32, i32, i32*, i64* }

@MODE_EXT_I_STEREO = common dso_local global i32 0, align 4
@is_table = common dso_local global i64** null, align 8
@is_table_lsf = common dso_local global i64*** null, align 8
@band_size_short = common dso_local global i32** null, align 8
@FRAC_BITS = common dso_local global i32 0, align 4
@MODE_EXT_MS_STEREO = common dso_local global i32 0, align 4
@ISQRT2 = common dso_local global i64 0, align 8
@band_size_long = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_9__*)* @compute_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_stereo(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [16 x i64]*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca [3 x i32], align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MODE_EXT_I_STEREO, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %417

29:                                               ; preds = %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i64**, i64*** @is_table, align 8
  %36 = bitcast i64** %35 to [16 x i64]*
  store [16 x i64]* %36, [16 x i64]** %15, align 8
  store i32 7, i32* %11, align 4
  br label %47

37:                                               ; preds = %29
  %38 = load i64***, i64**** @is_table_lsf, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64**, i64*** %38, i64 %43
  %45 = load i64**, i64*** %44, align 8
  %46 = bitcast i64** %45 to [16 x i64]*
  store [16 x i64]* %46, [16 x i64]** %15, align 8
  store i32 16, i32* %11, align 4
  br label %47

47:                                               ; preds = %37, %34
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 4
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 576
  store i64* %51, i64** %16, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 4
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 576
  store i64* %55, i64** %17, align 8
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  store i32 0, i32* %58, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 13, %61
  %63 = mul nsw i32 %62, 3
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %63, %66
  %68 = sub nsw i32 %67, 3
  store i32 %68, i32* %9, align 4
  store i32 12, i32* %7, align 4
  br label %69

69:                                               ; preds = %242, %47
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %70, %73
  br i1 %74, label %75, label %245

75:                                               ; preds = %69
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 11
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %79, 3
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32**, i32*** @band_size_short, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32*, i32** %82, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %13, align 4
  store i32 2, i32* %10, align 4
  br label %92

92:                                               ; preds = %238, %81
  %93 = load i32, i32* %10, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %241

95:                                               ; preds = %92
  %96 = load i32, i32* %13, align 4
  %97 = load i64*, i64** %16, align 8
  %98 = sext i32 %96 to i64
  %99 = sub i64 0, %98
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64* %100, i64** %16, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load i64*, i64** %17, align 8
  %103 = sext i32 %101 to i64
  %104 = sub i64 0, %103
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  store i64* %105, i64** %17, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %188, label %111

111:                                              ; preds = %95
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %128, %111
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %112
  %117 = load i64*, i64** %17, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 %125
  store i32 1, i32* %126, align 4
  br label %189

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %112

131:                                              ; preds = %112
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %131
  br label %189

145:                                              ; preds = %131
  %146 = load [16 x i64]*, [16 x i64]** %15, align 8
  %147 = getelementptr inbounds [16 x i64], [16 x i64]* %146, i64 0
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [16 x i64], [16 x i64]* %147, i64 0, i64 %149
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %18, align 8
  %152 = load [16 x i64]*, [16 x i64]** %15, align 8
  %153 = getelementptr inbounds [16 x i64], [16 x i64]* %152, i64 1
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [16 x i64], [16 x i64]* %153, i64 0, i64 %155
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %19, align 8
  store i32 0, i32* %8, align 4
  br label %158

158:                                              ; preds = %184, %145
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %187

162:                                              ; preds = %158
  %163 = load i64*, i64** %16, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %20, align 8
  %168 = load i64, i64* %20, align 8
  %169 = load i64, i64* %18, align 8
  %170 = load i32, i32* @FRAC_BITS, align 4
  %171 = call i64 @MULLx(i64 %168, i64 %169, i32 %170)
  %172 = load i64*, i64** %16, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  store i64 %171, i64* %175, align 8
  %176 = load i64, i64* %20, align 8
  %177 = load i64, i64* %19, align 8
  %178 = load i32, i32* @FRAC_BITS, align 4
  %179 = call i64 @MULLx(i64 %176, i64 %177, i32 %178)
  %180 = load i64*, i64** %17, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  store i64 %179, i64* %183, align 8
  br label %184

184:                                              ; preds = %162
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %158

187:                                              ; preds = %158
  br label %237

188:                                              ; preds = %95
  br label %189

189:                                              ; preds = %188, %144, %123
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @MODE_EXT_MS_STEREO, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %236

196:                                              ; preds = %189
  store i32 0, i32* %8, align 4
  br label %197

197:                                              ; preds = %232, %196
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %13, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %235

201:                                              ; preds = %197
  %202 = load i64*, i64** %16, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %20, align 8
  %207 = load i64*, i64** %17, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %21, align 8
  %212 = load i64, i64* %20, align 8
  %213 = load i64, i64* %21, align 8
  %214 = add nsw i64 %212, %213
  %215 = load i64, i64* @ISQRT2, align 8
  %216 = load i32, i32* @FRAC_BITS, align 4
  %217 = call i64 @MULLx(i64 %214, i64 %215, i32 %216)
  %218 = load i64*, i64** %16, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  store i64 %217, i64* %221, align 8
  %222 = load i64, i64* %20, align 8
  %223 = load i64, i64* %21, align 8
  %224 = sub nsw i64 %222, %223
  %225 = load i64, i64* @ISQRT2, align 8
  %226 = load i32, i32* @FRAC_BITS, align 4
  %227 = call i64 @MULLx(i64 %224, i64 %225, i32 %226)
  %228 = load i64*, i64** %17, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %228, i64 %230
  store i64 %227, i64* %231, align 8
  br label %232

232:                                              ; preds = %201
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %8, align 4
  br label %197

235:                                              ; preds = %197
  br label %236

236:                                              ; preds = %235, %189
  br label %237

237:                                              ; preds = %236, %187
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 %239, -1
  store i32 %240, i32* %10, align 4
  br label %92

241:                                              ; preds = %92
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %7, align 4
  %244 = add nsw i32 %243, -1
  store i32 %244, i32* %7, align 4
  br label %69

245:                                              ; preds = %69
  %246 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %247, %249
  %251 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  %252 = load i32, i32* %251, align 4
  %253 = or i32 %250, %252
  store i32 %253, i32* %14, align 4
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = sub nsw i32 %256, 1
  store i32 %257, i32* %7, align 4
  br label %258

258:                                              ; preds = %413, %245
  %259 = load i32, i32* %7, align 4
  %260 = icmp sge i32 %259, 0
  br i1 %260, label %261, label %416

261:                                              ; preds = %258
  %262 = load i32**, i32*** @band_size_long, align 8
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds i32*, i32** %262, i64 %265
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %7, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* %13, align 4
  %272 = load i32, i32* %13, align 4
  %273 = load i64*, i64** %16, align 8
  %274 = sext i32 %272 to i64
  %275 = sub i64 0, %274
  %276 = getelementptr inbounds i64, i64* %273, i64 %275
  store i64* %276, i64** %16, align 8
  %277 = load i32, i32* %13, align 4
  %278 = load i64*, i64** %17, align 8
  %279 = sext i32 %277 to i64
  %280 = sub i64 0, %279
  %281 = getelementptr inbounds i64, i64* %278, i64 %280
  store i64* %281, i64** %17, align 8
  %282 = load i32, i32* %14, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %363, label %284

284:                                              ; preds = %261
  store i32 0, i32* %8, align 4
  br label %285

285:                                              ; preds = %298, %284
  %286 = load i32, i32* %8, align 4
  %287 = load i32, i32* %13, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %301

289:                                              ; preds = %285
  %290 = load i64*, i64** %17, align 8
  %291 = load i32, i32* %8, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i64, i64* %290, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %289
  store i32 1, i32* %14, align 4
  br label %364

297:                                              ; preds = %289
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %8, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %8, align 4
  br label %285

301:                                              ; preds = %285
  %302 = load i32, i32* %7, align 4
  %303 = icmp eq i32 %302, 21
  br i1 %303, label %304, label %305

304:                                              ; preds = %301
  br label %307

305:                                              ; preds = %301
  %306 = load i32, i32* %7, align 4
  br label %307

307:                                              ; preds = %305, %304
  %308 = phi i32 [ 20, %304 ], [ %306, %305 ]
  store i32 %308, i32* %9, align 4
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 3
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* %9, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  store i32 %315, i32* %12, align 4
  %316 = load i32, i32* %12, align 4
  %317 = load i32, i32* %11, align 4
  %318 = icmp sge i32 %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %307
  br label %364

320:                                              ; preds = %307
  %321 = load [16 x i64]*, [16 x i64]** %15, align 8
  %322 = getelementptr inbounds [16 x i64], [16 x i64]* %321, i64 0
  %323 = load i32, i32* %12, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [16 x i64], [16 x i64]* %322, i64 0, i64 %324
  %326 = load i64, i64* %325, align 8
  store i64 %326, i64* %18, align 8
  %327 = load [16 x i64]*, [16 x i64]** %15, align 8
  %328 = getelementptr inbounds [16 x i64], [16 x i64]* %327, i64 1
  %329 = load i32, i32* %12, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [16 x i64], [16 x i64]* %328, i64 0, i64 %330
  %332 = load i64, i64* %331, align 8
  store i64 %332, i64* %19, align 8
  store i32 0, i32* %8, align 4
  br label %333

333:                                              ; preds = %359, %320
  %334 = load i32, i32* %8, align 4
  %335 = load i32, i32* %13, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %362

337:                                              ; preds = %333
  %338 = load i64*, i64** %16, align 8
  %339 = load i32, i32* %8, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i64, i64* %338, i64 %340
  %342 = load i64, i64* %341, align 8
  store i64 %342, i64* %20, align 8
  %343 = load i64, i64* %20, align 8
  %344 = load i64, i64* %18, align 8
  %345 = load i32, i32* @FRAC_BITS, align 4
  %346 = call i64 @MULLx(i64 %343, i64 %344, i32 %345)
  %347 = load i64*, i64** %16, align 8
  %348 = load i32, i32* %8, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i64, i64* %347, i64 %349
  store i64 %346, i64* %350, align 8
  %351 = load i64, i64* %20, align 8
  %352 = load i64, i64* %19, align 8
  %353 = load i32, i32* @FRAC_BITS, align 4
  %354 = call i64 @MULLx(i64 %351, i64 %352, i32 %353)
  %355 = load i64*, i64** %17, align 8
  %356 = load i32, i32* %8, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i64, i64* %355, i64 %357
  store i64 %354, i64* %358, align 8
  br label %359

359:                                              ; preds = %337
  %360 = load i32, i32* %8, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %8, align 4
  br label %333

362:                                              ; preds = %333
  br label %412

363:                                              ; preds = %261
  br label %364

364:                                              ; preds = %363, %319, %296
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @MODE_EXT_MS_STEREO, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %411

371:                                              ; preds = %364
  store i32 0, i32* %8, align 4
  br label %372

372:                                              ; preds = %407, %371
  %373 = load i32, i32* %8, align 4
  %374 = load i32, i32* %13, align 4
  %375 = icmp slt i32 %373, %374
  br i1 %375, label %376, label %410

376:                                              ; preds = %372
  %377 = load i64*, i64** %16, align 8
  %378 = load i32, i32* %8, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i64, i64* %377, i64 %379
  %381 = load i64, i64* %380, align 8
  store i64 %381, i64* %20, align 8
  %382 = load i64*, i64** %17, align 8
  %383 = load i32, i32* %8, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i64, i64* %382, i64 %384
  %386 = load i64, i64* %385, align 8
  store i64 %386, i64* %21, align 8
  %387 = load i64, i64* %20, align 8
  %388 = load i64, i64* %21, align 8
  %389 = add nsw i64 %387, %388
  %390 = load i64, i64* @ISQRT2, align 8
  %391 = load i32, i32* @FRAC_BITS, align 4
  %392 = call i64 @MULLx(i64 %389, i64 %390, i32 %391)
  %393 = load i64*, i64** %16, align 8
  %394 = load i32, i32* %8, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i64, i64* %393, i64 %395
  store i64 %392, i64* %396, align 8
  %397 = load i64, i64* %20, align 8
  %398 = load i64, i64* %21, align 8
  %399 = sub nsw i64 %397, %398
  %400 = load i64, i64* @ISQRT2, align 8
  %401 = load i32, i32* @FRAC_BITS, align 4
  %402 = call i64 @MULLx(i64 %399, i64 %400, i32 %401)
  %403 = load i64*, i64** %17, align 8
  %404 = load i32, i32* %8, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i64, i64* %403, i64 %405
  store i64 %402, i64* %406, align 8
  br label %407

407:                                              ; preds = %376
  %408 = load i32, i32* %8, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %8, align 4
  br label %372

410:                                              ; preds = %372
  br label %411

411:                                              ; preds = %410, %364
  br label %412

412:                                              ; preds = %411, %362
  br label %413

413:                                              ; preds = %412
  %414 = load i32, i32* %7, align 4
  %415 = add nsw i32 %414, -1
  store i32 %415, i32* %7, align 4
  br label %258

416:                                              ; preds = %258
  br label %464

417:                                              ; preds = %3
  %418 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* @MODE_EXT_MS_STEREO, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %463

424:                                              ; preds = %417
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 4
  %427 = load i64*, i64** %426, align 8
  store i64* %427, i64** %16, align 8
  %428 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %429 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i32 0, i32 4
  %430 = load i64*, i64** %429, align 8
  store i64* %430, i64** %17, align 8
  store i32 0, i32* %7, align 4
  br label %431

431:                                              ; preds = %459, %424
  %432 = load i32, i32* %7, align 4
  %433 = icmp slt i32 %432, 576
  br i1 %433, label %434, label %462

434:                                              ; preds = %431
  %435 = load i64*, i64** %16, align 8
  %436 = load i32, i32* %7, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i64, i64* %435, i64 %437
  %439 = load i64, i64* %438, align 8
  store i64 %439, i64* %20, align 8
  %440 = load i64*, i64** %17, align 8
  %441 = load i32, i32* %7, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i64, i64* %440, i64 %442
  %444 = load i64, i64* %443, align 8
  store i64 %444, i64* %21, align 8
  %445 = load i64, i64* %20, align 8
  %446 = load i64, i64* %21, align 8
  %447 = add nsw i64 %445, %446
  %448 = load i64*, i64** %16, align 8
  %449 = load i32, i32* %7, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i64, i64* %448, i64 %450
  store i64 %447, i64* %451, align 8
  %452 = load i64, i64* %20, align 8
  %453 = load i64, i64* %21, align 8
  %454 = sub nsw i64 %452, %453
  %455 = load i64*, i64** %17, align 8
  %456 = load i32, i32* %7, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i64, i64* %455, i64 %457
  store i64 %454, i64* %458, align 8
  br label %459

459:                                              ; preds = %434
  %460 = load i32, i32* %7, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %7, align 4
  br label %431

462:                                              ; preds = %431
  br label %463

463:                                              ; preds = %462, %417
  br label %464

464:                                              ; preds = %463, %416
  ret void
}

declare dso_local i64 @MULLx(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
