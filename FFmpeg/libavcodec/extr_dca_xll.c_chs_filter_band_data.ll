; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_xll.c_chs_filter_band_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_xll.c_chs_filter_band_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32**, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32*, i32*, i32, i32)* }
%struct.TYPE_9__ = type { i32, i32, i64*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32**, i32*, i32**, i32*, i32*, i64*, i64 }

@DCA_XLL_ADAPT_PRED_ORDER_MAX = common dso_local global i32 0, align 4
@DCA_XLL_CHANNELS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, i32)* @chs_filter_band_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chs_filter_band_data(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 %27
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %7, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %213, %3
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %216

38:                                               ; preds = %32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %12, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %175

55:                                               ; preds = %38
  %56 = load i32, i32* @DCA_XLL_ADAPT_PRED_ORDER_MAX, align 4
  %57 = zext i32 %56 to i64
  %58 = call i8* @llvm.stacksave()
  store i8* %58, i8** %14, align 8
  %59 = alloca i32, i64 %57, align 16
  store i64 %57, i64* %15, align 8
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %121, %55
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %124

64:                                               ; preds = %60
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %16, align 4
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %113, %64
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  %80 = sdiv i32 %79, 2
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %116

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %59, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %87, %88
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %59, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %18, align 4
  %97 = call i32 @mul16(i32 %95, i32 %96)
  %98 = add nsw i32 %94, %97
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %59, i64 %100
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %17, align 4
  %105 = call i32 @mul16(i32 %103, i32 %104)
  %106 = add nsw i32 %102, %105
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 %107, %108
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %59, i64 %111
  store i32 %106, i32* %112, align 4
  br label %113

113:                                              ; preds = %82
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %76

116:                                              ; preds = %76
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %59, i64 %119
  store i32 %117, i32* %120, align 4
  br label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %60

124:                                              ; preds = %60
  store i32 0, i32* %10, align 4
  br label %125

125:                                              ; preds = %170, %124
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %13, align 4
  %129 = sub nsw i32 %127, %128
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %173

131:                                              ; preds = %125
  store i32 0, i32* %19, align 4
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %154, %131
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %157

136:                                              ; preds = %132
  %137 = load i32*, i32** %12, align 8
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %11, align 4
  %146 = sub nsw i32 %144, %145
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %59, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %143, %150
  %152 = load i32, i32* %19, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %19, align 4
  br label %154

154:                                              ; preds = %136
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %132

157:                                              ; preds = %132
  %158 = load i32, i32* %19, align 4
  %159 = call i32 @norm16(i32 %158)
  %160 = call i64 @clip23(i32 %159)
  %161 = trunc i64 %160 to i32
  %162 = load i32*, i32** %12, align 8
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %162, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = sub i32 %168, %161
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %157
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %125

173:                                              ; preds = %125
  %174 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %174)
  br label %212

175:                                              ; preds = %38
  store i32 0, i32* %10, align 4
  br label %176

176:                                              ; preds = %208, %175
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %177, %184
  br i1 %185, label %186, label %211

186:                                              ; preds = %176
  store i32 1, i32* %11, align 4
  br label %187

187:                                              ; preds = %204, %186
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %207

191:                                              ; preds = %187
  %192 = load i32*, i32** %12, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %12, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = add i32 %202, %197
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %191
  %205 = load i32, i32* %11, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %11, align 4
  br label %187

207:                                              ; preds = %187
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %10, align 4
  br label %176

211:                                              ; preds = %176
  br label %212

212:                                              ; preds = %211, %173
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %32

216:                                              ; preds = %32
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 6
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %322

221:                                              ; preds = %216
  %222 = load i32, i32* @DCA_XLL_CHANNELS_MAX, align 4
  %223 = zext i32 %222 to i64
  %224 = call i8* @llvm.stacksave()
  store i8* %224, i8** %20, align 8
  %225 = alloca i32*, i64 %223, align 16
  store i64 %223, i64* %21, align 8
  store i32 0, i32* %9, align 4
  br label %226

226:                                              ; preds = %270, %221
  %227 = load i32, i32* %9, align 4
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = sdiv i32 %230, 2
  %232 = icmp slt i32 %227, %231
  br i1 %232, label %233, label %273

233:                                              ; preds = %226
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 4
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %22, align 4
  %241 = load i32, i32* %22, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %269

243:                                              ; preds = %233
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %247, align 8
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = load i32**, i32*** %250, align 8
  %252 = load i32, i32* %9, align 4
  %253 = mul nsw i32 %252, 2
  %254 = add nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32*, i32** %251, i64 %255
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  %260 = load i32**, i32*** %259, align 8
  %261 = load i32, i32* %9, align 4
  %262 = mul nsw i32 %261, 2
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32*, i32** %260, i64 %263
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %22, align 4
  %267 = load i32, i32* %8, align 4
  %268 = call i32 %248(i32* %257, i32* %265, i32 %266, i32 %267)
  br label %269

269:                                              ; preds = %243, %233
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %9, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %9, align 4
  br label %226

273:                                              ; preds = %226
  store i32 0, i32* %9, align 4
  br label %274

274:                                              ; preds = %291, %273
  %275 = load i32, i32* %9, align 4
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp slt i32 %275, %278
  br i1 %279, label %280, label %294

280:                                              ; preds = %274
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 0
  %283 = load i32**, i32*** %282, align 8
  %284 = load i32, i32* %9, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32*, i32** %283, i64 %285
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %9, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32*, i32** %225, i64 %289
  store i32* %287, i32** %290, align 8
  br label %291

291:                                              ; preds = %280
  %292 = load i32, i32* %9, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %9, align 4
  br label %274

294:                                              ; preds = %274
  store i32 0, i32* %9, align 4
  br label %295

295:                                              ; preds = %317, %294
  %296 = load i32, i32* %9, align 4
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp slt i32 %296, %299
  br i1 %300, label %301, label %320

301:                                              ; preds = %295
  %302 = load i32, i32* %9, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32*, i32** %225, i64 %303
  %305 = load i32*, i32** %304, align 8
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 0
  %308 = load i32**, i32*** %307, align 8
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 5
  %311 = load i64*, i64** %310, align 8
  %312 = load i32, i32* %9, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i64, i64* %311, i64 %313
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds i32*, i32** %308, i64 %315
  store i32* %305, i32** %316, align 8
  br label %317

317:                                              ; preds = %301
  %318 = load i32, i32* %9, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %9, align 4
  br label %295

320:                                              ; preds = %295
  %321 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %321)
  br label %322

322:                                              ; preds = %320, %216
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = icmp eq i32 %325, 1
  br i1 %326, label %327, label %357

327:                                              ; preds = %322
  store i32 0, i32* %9, align 4
  br label %328

328:                                              ; preds = %353, %327
  %329 = load i32, i32* %9, align 4
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = icmp slt i32 %329, %332
  br i1 %333, label %334, label %356

334:                                              ; preds = %328
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 0
  %337 = load i32**, i32*** %336, align 8
  %338 = load i32, i32* %9, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32*, i32** %337, i64 %339
  %341 = load i32*, i32** %340, align 8
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 1
  %344 = load i32**, i32*** %343, align 8
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 2
  %347 = load i64*, i64** %346, align 8
  %348 = load i32, i32* %9, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i64, i64* %347, i64 %349
  %351 = load i64, i64* %350, align 8
  %352 = getelementptr inbounds i32*, i32** %344, i64 %351
  store i32* %341, i32** %352, align 8
  br label %353

353:                                              ; preds = %334
  %354 = load i32, i32* %9, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %9, align 4
  br label %328

356:                                              ; preds = %328
  br label %357

357:                                              ; preds = %356, %322
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mul16(i32, i32) #2

declare dso_local i64 @clip23(i32) #2

declare dso_local i32 @norm16(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
