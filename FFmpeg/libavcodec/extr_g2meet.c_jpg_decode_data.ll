; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g2meet.c_jpg_decode_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g2meet.c_jpg_decode_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32**, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32 (i32*)* }
%struct.TYPE_6__ = type { i32 (i32*)* }

@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32)* @jpg_decode_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpg_decode_data(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6, i32* %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32* %3, i32** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32* %5, i32** %18, align 8
  store i32 %6, i32* %19, align 4
  store i32* %7, i32** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %40 = load i32, i32* %23, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 2, i32 0
  store i32 %43, i32* %35, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 4
  %46 = load i32, i32* %17, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @av_reallocp(i32* %45, i64 %49)
  store i32 %50, i32* %34, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %11
  %53 = load i32, i32* %34, align 4
  store i32 %53, i32* %12, align 4
  br label %387

54:                                               ; preds = %11
  %55 = load i32*, i32** %16, align 8
  %56 = load i32, i32* %17, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @jpg_unescape(i32* %55, i32 %56, i32 %59, i32* %33)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %33, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %67 = call i32 @memset(i32 %65, i32 0, i64 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %33, align 4
  %72 = call i32 @init_get_bits8(i32* %24, i32 %70, i32 %71)
  store i32 %72, i32* %34, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %54
  %75 = load i32, i32* %34, align 4
  store i32 %75, i32* %12, align 4
  br label %387

76:                                               ; preds = %54
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @FFALIGN(i32 %77, i32 16)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = ashr i32 %79, 4
  store i32 %80, i32* %25, align 4
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 15
  %83 = ashr i32 %82, 4
  store i32 %83, i32* %26, align 4
  %84 = load i32, i32* %22, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %76
  %87 = load i32, i32* %25, align 4
  %88 = load i32, i32* %26, align 4
  %89 = mul nsw i32 %87, %88
  %90 = mul nsw i32 %89, 4
  store i32 %90, i32* %22, align 4
  br label %91

91:                                               ; preds = %86, %76
  store i32 0, i32* %29, align 4
  br label %92

92:                                               ; preds = %102, %91
  %93 = load i32, i32* %29, align 4
  %94 = icmp slt i32 %93, 3
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %29, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 1024, i32* %101, align 4
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %29, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %29, align 4
  br label %92

105:                                              ; preds = %92
  store i32 0, i32* %32, align 4
  store i32 0, i32* %31, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32 (i32*)*, i32 (i32*)** %108, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32**, i32*** %111, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 %109(i32* %114)
  store i32 0, i32* %28, align 4
  br label %116

116:                                              ; preds = %383, %105
  %117 = load i32, i32* %28, align 4
  %118 = load i32, i32* %26, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %386

120:                                              ; preds = %116
  store i32 0, i32* %27, align 4
  br label %121

121:                                              ; preds = %368, %120
  %122 = load i32, i32* %27, align 4
  %123 = load i32, i32* %25, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %371

125:                                              ; preds = %121
  %126 = load i32*, i32** %20, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %169

128:                                              ; preds = %125
  %129 = load i32*, i32** %20, align 8
  %130 = load i32, i32* %27, align 4
  %131 = mul nsw i32 %130, 2
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %169, label %136

136:                                              ; preds = %128
  %137 = load i32*, i32** %20, align 8
  %138 = load i32, i32* %27, align 4
  %139 = mul nsw i32 %138, 2
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %169, label %145

145:                                              ; preds = %136
  %146 = load i32*, i32** %20, align 8
  %147 = load i32, i32* %27, align 4
  %148 = mul nsw i32 %147, 2
  %149 = load i32, i32* %21, align 4
  %150 = add nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %146, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %169, label %155

155:                                              ; preds = %145
  %156 = load i32*, i32** %20, align 8
  %157 = load i32, i32* %27, align 4
  %158 = mul nsw i32 %157, 2
  %159 = add nsw i32 %158, 1
  %160 = load i32, i32* %21, align 4
  %161 = add nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %156, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %155
  %167 = load i32, i32* %31, align 4
  %168 = add nsw i32 %167, 16
  store i32 %168, i32* %31, align 4
  br label %368

169:                                              ; preds = %155, %145, %136, %128, %125
  store i32 0, i32* %30, align 4
  br label %170

170:                                              ; preds = %233, %169
  %171 = load i32, i32* %30, align 4
  %172 = icmp slt i32 %171, 2
  br i1 %172, label %173, label %236

173:                                              ; preds = %170
  store i32 0, i32* %29, align 4
  br label %174

174:                                              ; preds = %229, %173
  %175 = load i32, i32* %29, align 4
  %176 = icmp slt i32 %175, 2
  br i1 %176, label %177, label %232

177:                                              ; preds = %174
  %178 = load i32*, i32** %20, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %195

180:                                              ; preds = %177
  %181 = load i32*, i32** %20, align 8
  %182 = load i32, i32* %27, align 4
  %183 = mul nsw i32 %182, 2
  %184 = load i32, i32* %29, align 4
  %185 = add nsw i32 %183, %184
  %186 = load i32, i32* %30, align 4
  %187 = load i32, i32* %21, align 4
  %188 = mul nsw i32 %186, %187
  %189 = add nsw i32 %185, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %181, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %180
  br label %229

195:                                              ; preds = %180, %177
  %196 = load i32, i32* %22, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %22, align 4
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load i32**, i32*** %200, align 8
  %202 = load i32, i32* %29, align 4
  %203 = load i32, i32* %30, align 4
  %204 = mul nsw i32 %203, 2
  %205 = add nsw i32 %202, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32*, i32** %201, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @jpg_decode_block(%struct.TYPE_8__* %198, i32* %24, i32 0, i32* %208)
  store i32 %209, i32* %34, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %195
  %212 = load i32, i32* %34, align 4
  store i32 %212, i32* %12, align 4
  br label %387

213:                                              ; preds = %195
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load i32 (i32*)*, i32 (i32*)** %216, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  %220 = load i32**, i32*** %219, align 8
  %221 = load i32, i32* %29, align 4
  %222 = load i32, i32* %30, align 4
  %223 = mul nsw i32 %222, 2
  %224 = add nsw i32 %221, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32*, i32** %220, i64 %225
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 %217(i32* %227)
  br label %229

229:                                              ; preds = %213, %194
  %230 = load i32, i32* %29, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %29, align 4
  br label %174

232:                                              ; preds = %174
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %30, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %30, align 4
  br label %170

236:                                              ; preds = %170
  store i32 1, i32* %29, align 4
  br label %237

237:                                              ; preds = %269, %236
  %238 = load i32, i32* %29, align 4
  %239 = icmp slt i32 %238, 3
  br i1 %239, label %240, label %272

240:                                              ; preds = %237
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %242 = load i32, i32* %29, align 4
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 1
  %245 = load i32**, i32*** %244, align 8
  %246 = load i32, i32* %29, align 4
  %247 = add nsw i32 %246, 3
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32*, i32** %245, i64 %248
  %250 = load i32*, i32** %249, align 8
  %251 = call i32 @jpg_decode_block(%struct.TYPE_8__* %241, i32* %24, i32 %242, i32* %250)
  store i32 %251, i32* %34, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %240
  %254 = load i32, i32* %34, align 4
  store i32 %254, i32* %12, align 4
  br label %387

255:                                              ; preds = %240
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  %259 = load i32 (i32*)*, i32 (i32*)** %258, align 8
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 1
  %262 = load i32**, i32*** %261, align 8
  %263 = load i32, i32* %29, align 4
  %264 = add nsw i32 %263, 3
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32*, i32** %262, i64 %265
  %267 = load i32*, i32** %266, align 8
  %268 = call i32 %259(i32* %267)
  br label %269

269:                                              ; preds = %255
  %270 = load i32, i32* %29, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %29, align 4
  br label %237

272:                                              ; preds = %237
  store i32 0, i32* %30, align 4
  br label %273

273:                                              ; preds = %358, %272
  %274 = load i32, i32* %30, align 4
  %275 = icmp slt i32 %274, 16
  br i1 %275, label %276, label %361

276:                                              ; preds = %273
  %277 = load i32*, i32** %18, align 8
  %278 = load i32, i32* %31, align 4
  %279 = mul nsw i32 %278, 3
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %277, i64 %280
  %282 = load i32, i32* %32, align 4
  %283 = load i32, i32* %30, align 4
  %284 = add nsw i32 %282, %283
  %285 = load i32, i32* %19, align 4
  %286 = mul nsw i32 %284, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %281, i64 %287
  store i32* %288, i32** %36, align 8
  store i32 0, i32* %29, align 4
  br label %289

289:                                              ; preds = %354, %276
  %290 = load i32, i32* %29, align 4
  %291 = icmp slt i32 %290, 16
  br i1 %291, label %292, label %357

292:                                              ; preds = %289
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 1
  %295 = load i32**, i32*** %294, align 8
  %296 = load i32, i32* %30, align 4
  %297 = ashr i32 %296, 3
  %298 = mul nsw i32 %297, 2
  %299 = load i32, i32* %29, align 4
  %300 = ashr i32 %299, 3
  %301 = add nsw i32 %298, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32*, i32** %295, i64 %302
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %29, align 4
  %306 = and i32 %305, 7
  %307 = load i32, i32* %30, align 4
  %308 = and i32 %307, 7
  %309 = mul nsw i32 %308, 8
  %310 = add nsw i32 %306, %309
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %304, i64 %311
  %313 = load i32, i32* %312, align 4
  store i32 %313, i32* %37, align 4
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 1
  %316 = load i32**, i32*** %315, align 8
  %317 = getelementptr inbounds i32*, i32** %316, i64 4
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %29, align 4
  %320 = ashr i32 %319, 1
  %321 = load i32, i32* %30, align 4
  %322 = ashr i32 %321, 1
  %323 = mul nsw i32 %322, 8
  %324 = add nsw i32 %320, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %318, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = sub nsw i32 %327, 128
  store i32 %328, i32* %38, align 4
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 1
  %331 = load i32**, i32*** %330, align 8
  %332 = getelementptr inbounds i32*, i32** %331, i64 5
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %29, align 4
  %335 = ashr i32 %334, 1
  %336 = load i32, i32* %30, align 4
  %337 = ashr i32 %336, 1
  %338 = mul nsw i32 %337, 8
  %339 = add nsw i32 %335, %338
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %333, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = sub nsw i32 %342, 128
  store i32 %343, i32* %39, align 4
  %344 = load i32*, i32** %36, align 8
  %345 = load i32, i32* %29, align 4
  %346 = mul nsw i32 %345, 3
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %344, i64 %347
  %349 = load i32, i32* %35, align 4
  %350 = load i32, i32* %37, align 4
  %351 = load i32, i32* %38, align 4
  %352 = load i32, i32* %39, align 4
  %353 = call i32 @yuv2rgb(i32* %348, i32 %349, i32 %350, i32 %351, i32 %352)
  br label %354

354:                                              ; preds = %292
  %355 = load i32, i32* %29, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %29, align 4
  br label %289

357:                                              ; preds = %289
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %30, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %30, align 4
  br label %273

361:                                              ; preds = %273
  %362 = load i32, i32* %22, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %365, label %364

364:                                              ; preds = %361
  store i32 0, i32* %12, align 4
  br label %387

365:                                              ; preds = %361
  %366 = load i32, i32* %31, align 4
  %367 = add nsw i32 %366, 16
  store i32 %367, i32* %31, align 4
  br label %368

368:                                              ; preds = %365, %166
  %369 = load i32, i32* %27, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %27, align 4
  br label %121

371:                                              ; preds = %121
  store i32 0, i32* %31, align 4
  %372 = load i32, i32* %32, align 4
  %373 = add nsw i32 %372, 16
  store i32 %373, i32* %32, align 4
  %374 = load i32*, i32** %20, align 8
  %375 = icmp ne i32* %374, null
  br i1 %375, label %376, label %382

376:                                              ; preds = %371
  %377 = load i32, i32* %21, align 4
  %378 = mul nsw i32 %377, 2
  %379 = load i32*, i32** %20, align 8
  %380 = sext i32 %378 to i64
  %381 = getelementptr inbounds i32, i32* %379, i64 %380
  store i32* %381, i32** %20, align 8
  br label %382

382:                                              ; preds = %376, %371
  br label %383

383:                                              ; preds = %382
  %384 = load i32, i32* %28, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %28, align 4
  br label %116

386:                                              ; preds = %116
  store i32 0, i32* %12, align 4
  br label %387

387:                                              ; preds = %386, %364, %253, %211, %74, %52
  %388 = load i32, i32* %12, align 4
  ret i32 %388
}

declare dso_local i32 @av_reallocp(i32*, i64) #1

declare dso_local i32 @jpg_unescape(i32*, i32, i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @init_get_bits8(i32*, i32, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @jpg_decode_block(%struct.TYPE_8__*, i32*, i32, i32*) #1

declare dso_local i32 @yuv2rgb(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
