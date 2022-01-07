; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2dec.c_parse_mb_skip.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2dec.c_parse_mb_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@MB_TYPE_16x16 = common dso_local global i32 0, align 4
@MB_TYPE_L0 = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@MB_TYPE_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @parse_mb_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mb_skip(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %18 = call i32 @get_bits(i32* %17, i32 2)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %292 [
    i32 129, label %24
    i32 130, label %60
    i32 128, label %120
    i32 131, label %206
  ]

24:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %56, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %52, %31
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %32
  %39 = load i32, i32* @MB_TYPE_16x16, align 4
  %40 = load i32, i32* @MB_TYPE_L0, align 4
  %41 = or i32 %39, %40
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %43, %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %42, i64 %50
  store i32 %41, i32* %51, align 4
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %32

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %25

59:                                               ; preds = %25
  br label %292

60:                                               ; preds = %1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = call i32 @get_bits_left(i32* %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = icmp slt i32 %63, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %73, i32* %2, align 4
  br label %340

74:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %116, %74
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %119

81:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %112, %81
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %115

88:                                               ; preds = %82
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = call i32 @get_bits1(i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @MB_TYPE_SKIP, align 4
  br label %96

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i32 [ %94, %93 ], [ 0, %95 ]
  %98 = load i32, i32* @MB_TYPE_16x16, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @MB_TYPE_L0, align 4
  %101 = or i32 %99, %100
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %103, %106
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %102, i64 %110
  store i32 %101, i32* %111, align 4
  br label %112

112:                                              ; preds = %96
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %82

115:                                              ; preds = %82
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %75

119:                                              ; preds = %75
  br label %292

120:                                              ; preds = %1
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %202, %120
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %205

127:                                              ; preds = %121
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  %130 = call i32 @get_bits_left(i32* %129)
  %131 = icmp slt i32 %130, 1
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %133, i32* %2, align 4
  br label %340

134:                                              ; preds = %127
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  %137 = call i32 @get_bits1(i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %166

139:                                              ; preds = %134
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %162, %139
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %165

146:                                              ; preds = %140
  %147 = load i32, i32* @MB_TYPE_SKIP, align 4
  %148 = load i32, i32* @MB_TYPE_16x16, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @MB_TYPE_L0, align 4
  %151 = or i32 %149, %150
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = mul nsw i32 %153, %156
  %158 = load i32, i32* %4, align 4
  %159 = add nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %152, i64 %160
  store i32 %151, i32* %161, align 4
  br label %162

162:                                              ; preds = %146
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %4, align 4
  br label %140

165:                                              ; preds = %140
  br label %201

166:                                              ; preds = %134
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %197, %166
  %168 = load i32, i32* %4, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %200

173:                                              ; preds = %167
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 3
  %176 = call i32 @get_bits1(i32* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = load i32, i32* @MB_TYPE_SKIP, align 4
  br label %181

180:                                              ; preds = %173
  br label %181

181:                                              ; preds = %180, %178
  %182 = phi i32 [ %179, %178 ], [ 0, %180 ]
  %183 = load i32, i32* @MB_TYPE_16x16, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @MB_TYPE_L0, align 4
  %186 = or i32 %184, %185
  %187 = load i32*, i32** %8, align 8
  %188 = load i32, i32* %5, align 4
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = mul nsw i32 %188, %191
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %187, i64 %195
  store i32 %186, i32* %196, align 4
  br label %197

197:                                              ; preds = %181
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %4, align 4
  br label %167

200:                                              ; preds = %167
  br label %201

201:                                              ; preds = %200, %165
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %5, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %5, align 4
  br label %121

205:                                              ; preds = %121
  br label %292

206:                                              ; preds = %1
  store i32 0, i32* %4, align 4
  br label %207

207:                                              ; preds = %288, %206
  %208 = load i32, i32* %4, align 4
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %213, label %291

213:                                              ; preds = %207
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 3
  %216 = call i32 @get_bits_left(i32* %215)
  %217 = icmp slt i32 %216, 1
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %219, i32* %2, align 4
  br label %340

220:                                              ; preds = %213
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 3
  %223 = call i32 @get_bits1(i32* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %252

225:                                              ; preds = %220
  store i32 0, i32* %5, align 4
  br label %226

226:                                              ; preds = %248, %225
  %227 = load i32, i32* %5, align 4
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp slt i32 %227, %230
  br i1 %231, label %232, label %251

232:                                              ; preds = %226
  %233 = load i32, i32* @MB_TYPE_SKIP, align 4
  %234 = load i32, i32* @MB_TYPE_16x16, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @MB_TYPE_L0, align 4
  %237 = or i32 %235, %236
  %238 = load i32*, i32** %8, align 8
  %239 = load i32, i32* %5, align 4
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = mul nsw i32 %239, %242
  %244 = load i32, i32* %4, align 4
  %245 = add nsw i32 %243, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %238, i64 %246
  store i32 %237, i32* %247, align 4
  br label %248

248:                                              ; preds = %232
  %249 = load i32, i32* %5, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %5, align 4
  br label %226

251:                                              ; preds = %226
  br label %287

252:                                              ; preds = %220
  store i32 0, i32* %5, align 4
  br label %253

253:                                              ; preds = %283, %252
  %254 = load i32, i32* %5, align 4
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp slt i32 %254, %257
  br i1 %258, label %259, label %286

259:                                              ; preds = %253
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 3
  %262 = call i32 @get_bits1(i32* %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = load i32, i32* @MB_TYPE_SKIP, align 4
  br label %267

266:                                              ; preds = %259
  br label %267

267:                                              ; preds = %266, %264
  %268 = phi i32 [ %265, %264 ], [ 0, %266 ]
  %269 = load i32, i32* @MB_TYPE_16x16, align 4
  %270 = or i32 %268, %269
  %271 = load i32, i32* @MB_TYPE_L0, align 4
  %272 = or i32 %270, %271
  %273 = load i32*, i32** %8, align 8
  %274 = load i32, i32* %5, align 4
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = mul nsw i32 %274, %277
  %279 = load i32, i32* %4, align 4
  %280 = add nsw i32 %278, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %273, i64 %281
  store i32 %272, i32* %282, align 4
  br label %283

283:                                              ; preds = %267
  %284 = load i32, i32* %5, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %5, align 4
  br label %253

286:                                              ; preds = %253
  br label %287

287:                                              ; preds = %286, %251
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %4, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %4, align 4
  br label %207

291:                                              ; preds = %207
  br label %292

292:                                              ; preds = %1, %291, %205, %119, %59
  store i32 0, i32* %5, align 4
  br label %293

293:                                              ; preds = %328, %292
  %294 = load i32, i32* %5, align 4
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp slt i32 %294, %297
  br i1 %298, label %299, label %331

299:                                              ; preds = %293
  store i32 0, i32* %4, align 4
  br label %300

300:                                              ; preds = %324, %299
  %301 = load i32, i32* %4, align 4
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = icmp slt i32 %301, %304
  br i1 %305, label %306, label %327

306:                                              ; preds = %300
  %307 = load i32*, i32** %8, align 8
  %308 = load i32, i32* %5, align 4
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = mul nsw i32 %308, %311
  %313 = load i32, i32* %4, align 4
  %314 = add nsw i32 %312, %313
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %307, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @IS_SKIP(i32 %317)
  %319 = icmp ne i32 %318, 0
  %320 = xor i1 %319, true
  %321 = zext i1 %320 to i32
  %322 = load i32, i32* %6, align 4
  %323 = add nsw i32 %322, %321
  store i32 %323, i32* %6, align 4
  br label %324

324:                                              ; preds = %306
  %325 = load i32, i32* %4, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %4, align 4
  br label %300

327:                                              ; preds = %300
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %5, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %5, align 4
  br label %293

331:                                              ; preds = %293
  %332 = load i32, i32* %6, align 4
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 3
  %335 = call i32 @get_bits_left(i32* %334)
  %336 = icmp sgt i32 %332, %335
  br i1 %336, label %337, label %339

337:                                              ; preds = %331
  %338 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %338, i32* %2, align 4
  br label %340

339:                                              ; preds = %331
  store i32 0, i32* %2, align 4
  br label %340

340:                                              ; preds = %339, %337, %218, %132, %72
  %341 = load i32, i32* %2, align 4
  ret i32 %341
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @IS_SKIP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
