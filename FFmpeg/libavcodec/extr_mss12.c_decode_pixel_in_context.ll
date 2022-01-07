; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss12.c_decode_pixel_in_context.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss12.c_decode_pixel_in_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, i32*)* }
%struct.TYPE_8__ = type { i32** }

@TOP = common dso_local global i64 0, align 8
@LEFT = common dso_local global i64 0, align 8
@TOP_LEFT = common dso_local global i64 0, align 8
@TOP_RIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i64*, i64, i32, i32, i32)* @decode_pixel_in_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_pixel_in_context(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i64* %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4 x i64], align 16
  %17 = alloca [4 x i64], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %19, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %7
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 0
  %28 = load i64*, i64** %11, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 -1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @memset(i64* %27, i64 %30, i32 4)
  br label %83

32:                                               ; preds = %7
  %33 = load i64*, i64** %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TOP, align 8
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %38
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %32
  %43 = load i64, i64* @TOP, align 8
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @LEFT, align 8
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %46
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* @TOP_LEFT, align 8
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %48
  store i64 %45, i64* %49, align 8
  br label %64

50:                                               ; preds = %32
  %51 = load i64*, i64** %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = sub i64 0, %52
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TOP_LEFT, align 8
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %57
  store i64 %56, i64* %58, align 8
  %59 = load i64*, i64** %11, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 -1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @LEFT, align 8
  %63 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %62
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %50, %42
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load i64*, i64** %11, align 8
  %69 = load i64, i64* %12, align 8
  %70 = sub i64 0, %69
  %71 = add i64 %70, 1
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TOP_RIGHT, align 8
  %75 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %74
  store i64 %73, i64* %75, align 8
  br label %82

76:                                               ; preds = %64
  %77 = load i64, i64* @TOP, align 8
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TOP_RIGHT, align 8
  %81 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %80
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %76, %67
  br label %83

83:                                               ; preds = %82, %26
  store i32 0, i32* %20, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp sge i32 %84, 2
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i64*, i64** %11, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 -2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @LEFT, align 8
  %91 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i32 1, i32* %20, align 4
  br label %95

95:                                               ; preds = %94, %86, %83
  %96 = load i32, i32* %14, align 4
  %97 = icmp sge i32 %96, 2
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load i64*, i64** %11, align 8
  %100 = load i64, i64* %12, align 8
  %101 = mul i64 -2, %100
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TOP, align 8
  %105 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load i32, i32* %20, align 4
  %110 = or i32 %109, 2
  store i32 %110, i32* %20, align 4
  br label %111

111:                                              ; preds = %108, %98, %95
  store i32 1, i32* %18, align 4
  %112 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 0
  %113 = load i64, i64* %112, align 16
  %114 = getelementptr inbounds [4 x i64], [4 x i64]* %17, i64 0, i64 0
  store i64 %113, i64* %114, align 16
  store i32 1, i32* %22, align 4
  br label %115

115:                                              ; preds = %152, %111
  %116 = load i32, i32* %22, align 4
  %117 = icmp slt i32 %116, 4
  br i1 %117, label %118, label %155

118:                                              ; preds = %115
  store i32 0, i32* %23, align 4
  br label %119

119:                                              ; preds = %135, %118
  %120 = load i32, i32* %23, align 4
  %121 = load i32, i32* %18, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %119
  %124 = load i32, i32* %23, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [4 x i64], [4 x i64]* %17, i64 0, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %22, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %127, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  br label %138

134:                                              ; preds = %123
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %23, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %23, align 4
  br label %119

138:                                              ; preds = %133, %119
  %139 = load i32, i32* %23, align 4
  %140 = load i32, i32* %18, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load i32, i32* %22, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %18, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %18, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds [4 x i64], [4 x i64]* %17, i64 0, i64 %149
  store i64 %146, i64* %150, align 8
  br label %151

151:                                              ; preds = %142, %138
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %22, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %22, align 4
  br label %115

155:                                              ; preds = %115
  %156 = load i32, i32* %18, align 4
  switch i32 %156, label %271 [
    i32 1, label %157
    i32 2, label %158
    i32 3, label %219
    i32 4, label %270
  ]

157:                                              ; preds = %155
  store i32 0, i32* %19, align 4
  br label %271

158:                                              ; preds = %155
  %159 = load i64, i64* @TOP, align 8
  %160 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @TOP_LEFT, align 8
  %163 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %161, %164
  br i1 %165, label %166, label %187

166:                                              ; preds = %158
  %167 = load i64, i64* @TOP_RIGHT, align 8
  %168 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @TOP_LEFT, align 8
  %171 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %169, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  store i32 1, i32* %19, align 4
  br label %186

175:                                              ; preds = %166
  %176 = load i64, i64* @LEFT, align 8
  %177 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @TOP_LEFT, align 8
  %180 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %178, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %175
  store i32 2, i32* %19, align 4
  br label %185

184:                                              ; preds = %175
  store i32 3, i32* %19, align 4
  br label %185

185:                                              ; preds = %184, %183
  br label %186

186:                                              ; preds = %185, %174
  br label %218

187:                                              ; preds = %158
  %188 = load i64, i64* @TOP_RIGHT, align 8
  %189 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @TOP_LEFT, align 8
  %192 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = icmp eq i64 %190, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %187
  %196 = load i64, i64* @LEFT, align 8
  %197 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @TOP_LEFT, align 8
  %200 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %198, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %195
  store i32 4, i32* %19, align 4
  br label %205

204:                                              ; preds = %195
  store i32 5, i32* %19, align 4
  br label %205

205:                                              ; preds = %204, %203
  br label %217

206:                                              ; preds = %187
  %207 = load i64, i64* @LEFT, align 8
  %208 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @TOP_LEFT, align 8
  %211 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %209, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  store i32 6, i32* %19, align 4
  br label %216

215:                                              ; preds = %206
  store i32 7, i32* %19, align 4
  br label %216

216:                                              ; preds = %215, %214
  br label %217

217:                                              ; preds = %216, %205
  br label %218

218:                                              ; preds = %217, %186
  br label %271

219:                                              ; preds = %155
  %220 = load i64, i64* @TOP, align 8
  %221 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @TOP_LEFT, align 8
  %224 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %222, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %219
  store i32 8, i32* %19, align 4
  br label %269

228:                                              ; preds = %219
  %229 = load i64, i64* @TOP_RIGHT, align 8
  %230 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @TOP_LEFT, align 8
  %233 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = icmp eq i64 %231, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %228
  store i32 9, i32* %19, align 4
  br label %268

237:                                              ; preds = %228
  %238 = load i64, i64* @LEFT, align 8
  %239 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @TOP_LEFT, align 8
  %242 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %240, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %237
  store i32 10, i32* %19, align 4
  br label %267

246:                                              ; preds = %237
  %247 = load i64, i64* @TOP_RIGHT, align 8
  %248 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @TOP, align 8
  %251 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = icmp eq i64 %249, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %246
  store i32 11, i32* %19, align 4
  br label %266

255:                                              ; preds = %246
  %256 = load i64, i64* @TOP, align 8
  %257 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @LEFT, align 8
  %260 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %258, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %255
  store i32 12, i32* %19, align 4
  br label %265

264:                                              ; preds = %255
  store i32 13, i32* %19, align 4
  br label %265

265:                                              ; preds = %264, %263
  br label %266

266:                                              ; preds = %265, %254
  br label %267

267:                                              ; preds = %266, %245
  br label %268

268:                                              ; preds = %267, %236
  br label %269

269:                                              ; preds = %268, %227
  br label %271

270:                                              ; preds = %155
  store i32 14, i32* %19, align 4
  br label %271

271:                                              ; preds = %155, %270, %269, %218, %157
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 0
  %274 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %273, align 8
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 0
  %278 = load i32**, i32*** %277, align 8
  %279 = load i32, i32* %19, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32*, i32** %278, i64 %280
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %20, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = call i32 %274(%struct.TYPE_9__* %275, i32* %285)
  store i32 %286, i32* %21, align 4
  %287 = load i32, i32* %21, align 4
  %288 = load i32, i32* %18, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %296

290:                                              ; preds = %271
  %291 = load i32, i32* %21, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [4 x i64], [4 x i64]* %17, i64 0, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %8, align 4
  br label %302

296:                                              ; preds = %271
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %299 = getelementptr inbounds [4 x i64], [4 x i64]* %17, i64 0, i64 0
  %300 = load i32, i32* %18, align 4
  %301 = call i32 @decode_pixel(%struct.TYPE_9__* %297, %struct.TYPE_8__* %298, i64* %299, i32 %300, i32 1)
  store i32 %301, i32* %8, align 4
  br label %302

302:                                              ; preds = %296, %290
  %303 = load i32, i32* %8, align 4
  ret i32 %303
}

declare dso_local i32 @memset(i64*, i64, i32) #1

declare dso_local i32 @decode_pixel(%struct.TYPE_9__*, %struct.TYPE_8__*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
