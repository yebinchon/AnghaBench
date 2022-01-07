; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_bitreader.c_FLAC__bitreader_read_rice_signed_block.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_bitreader.c_FLAC__bitreader_read_rice_signed_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, i32 }

@FLAC__BITS_PER_WORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FLAC__bitreader_read_rice_signed_block(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
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
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = icmp ne %struct.TYPE_6__* null, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @FLAC__ASSERT(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* null, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @FLAC__ASSERT(i32 %28)
  %30 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %31 = icmp sge i32 %30, 32
  %32 = zext i1 %31 to i32
  %33 = call i32 @FLAC__ASSERT(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ult i32 %34, 32
  %36 = zext i1 %35 to i32
  %37 = call i32 @FLAC__ASSERT(i32 %36)
  %38 = load i32*, i32** %7, align 8
  store i32* %38, i32** %18, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32* %42, i32** %19, align 8
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %4
  br label %46

46:                                               ; preds = %55, %45
  %47 = load i32*, i32** %18, align 8
  %48 = load i32*, i32** %19, align 8
  %49 = icmp ult i32* %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = call i32 @FLAC__bitreader_read_unary_unsigned(%struct.TYPE_6__* %51, i32* %13)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %334

55:                                               ; preds = %50
  %56 = load i32, i32* %13, align 4
  %57 = lshr i32 %56, 1
  %58 = load i32, i32* %13, align 4
  %59 = and i32 %58, 1
  %60 = sub nsw i32 0, %59
  %61 = xor i32 %57, %60
  %62 = load i32*, i32** %18, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %18, align 8
  store i32 %61, i32* %62, align 4
  br label %46

64:                                               ; preds = %46
  store i32 1, i32* %5, align 4
  br label %334

65:                                               ; preds = %4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ugt i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @FLAC__ASSERT(i32 %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %10, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp uge i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  store i32 0, i32* %14, align 4
  br label %223

80:                                               ; preds = %65
  %81 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %81, %84
  store i32 %85, i32* %16, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = shl i32 %92, %95
  store i32 %96, i32* %17, align 4
  br label %97

97:                                               ; preds = %305, %208, %80
  %98 = load i32*, i32** %18, align 8
  %99 = load i32*, i32** %19, align 8
  %100 = icmp ult i32* %98, %99
  br i1 %100, label %101, label %306

101:                                              ; preds = %97
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @COUNT_ZERO_MSBS2(i32 %102)
  store i32 %103, i32* %15, align 4
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %142

107:                                              ; preds = %101
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %137, %107
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %10, align 4
  %116 = zext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @crc16_update_word_(%struct.TYPE_6__* %110, i32 %118)
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp uge i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %109
  br label %226

124:                                              ; preds = %109
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @COUNT_ZERO_MSBS2(i32 %132)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %14, align 4
  %136 = add i32 %135, %134
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %124
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %109, label %141

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %141, %101
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %17, align 4
  %145 = shl i32 %144, %143
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %17, align 4
  %147 = shl i32 %146, 1
  store i32 %147, i32* %17, align 4
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %14, align 4
  %150 = sub i32 %148, %149
  %151 = sub i32 %150, 1
  %152 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %153 = urem i32 %151, %152
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %14, align 4
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %157 = load i32, i32* %9, align 4
  %158 = sub i32 %156, %157
  %159 = lshr i32 %155, %158
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %16, align 4
  %162 = icmp ule i32 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %142
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %16, align 4
  %166 = sub i32 %165, %164
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %17, align 4
  %169 = shl i32 %168, %167
  store i32 %169, i32* %17, align 4
  br label %208

170:                                              ; preds = %142
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %10, align 4
  %177 = zext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @crc16_update_word_(%struct.TYPE_6__* %171, i32 %179)
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp uge i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %170
  br label %242

185:                                              ; preds = %170
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %17, align 4
  %193 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %194 = load i32, i32* %9, align 4
  %195 = sub i32 %193, %194
  %196 = load i32, i32* %16, align 4
  %197 = add i32 %196, %195
  store i32 %197, i32* %16, align 4
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* %16, align 4
  %200 = lshr i32 %198, %199
  %201 = load i32, i32* %14, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %14, align 4
  %203 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %204 = load i32, i32* %16, align 4
  %205 = sub i32 %203, %204
  %206 = load i32, i32* %17, align 4
  %207 = shl i32 %206, %205
  store i32 %207, i32* %17, align 4
  br label %208

208:                                              ; preds = %185, %163
  %209 = load i32, i32* %14, align 4
  store i32 %209, i32* %12, align 4
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %9, align 4
  %212 = shl i32 %210, %211
  %213 = load i32, i32* %12, align 4
  %214 = or i32 %212, %213
  store i32 %214, i32* %14, align 4
  %215 = load i32, i32* %14, align 4
  %216 = lshr i32 %215, 1
  %217 = load i32, i32* %14, align 4
  %218 = and i32 %217, 1
  %219 = sub nsw i32 0, %218
  %220 = xor i32 %216, %219
  %221 = load i32*, i32** %18, align 8
  %222 = getelementptr inbounds i32, i32* %221, i32 1
  store i32* %222, i32** %18, align 8
  store i32 %220, i32* %221, align 4
  br label %97

223:                                              ; preds = %79
  br label %224

224:                                              ; preds = %303, %223
  br i1 false, label %225, label %232

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %225, %123
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 3
  store i32 0, i32* %228, align 8
  %229 = load i32, i32* %10, align 4
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 8
  br label %232

232:                                              ; preds = %226, %224
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %234 = call i32 @FLAC__bitreader_read_unary_unsigned(%struct.TYPE_6__* %233, i32* %13)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %232
  store i32 0, i32* %5, align 4
  br label %334

237:                                              ; preds = %232
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %13, align 4
  %240 = add i32 %239, %238
  store i32 %240, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br i1 false, label %241, label %248

241:                                              ; preds = %237
  br label %242

242:                                              ; preds = %241, %184
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 3
  store i32 0, i32* %244, align 8
  %245 = load i32, i32* %10, align 4
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 8
  br label %248

248:                                              ; preds = %242, %237
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %16, align 4
  %252 = sub i32 %250, %251
  %253 = call i32 @FLAC__bitreader_read_raw_uint32(%struct.TYPE_6__* %249, i32* %12, i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %248
  store i32 0, i32* %5, align 4
  br label %334

256:                                              ; preds = %248
  %257 = load i32, i32* %14, align 4
  %258 = load i32, i32* %12, align 4
  %259 = or i32 %257, %258
  store i32 %259, i32* %12, align 4
  %260 = load i32, i32* %13, align 4
  %261 = load i32, i32* %9, align 4
  %262 = shl i32 %260, %261
  %263 = load i32, i32* %12, align 4
  %264 = or i32 %262, %263
  store i32 %264, i32* %14, align 4
  %265 = load i32, i32* %14, align 4
  %266 = lshr i32 %265, 1
  %267 = load i32, i32* %14, align 4
  %268 = and i32 %267, 1
  %269 = sub nsw i32 0, %268
  %270 = xor i32 %266, %269
  %271 = load i32*, i32** %18, align 8
  %272 = getelementptr inbounds i32, i32* %271, i32 1
  store i32* %272, i32** %18, align 8
  store i32 %270, i32* %271, align 4
  store i32 0, i32* %14, align 4
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  store i32 %275, i32* %10, align 4
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  store i32 %278, i32* %11, align 4
  %279 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = sub nsw i32 %279, %282
  store i32 %283, i32* %16, align 4
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %10, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 8
  %294 = shl i32 %290, %293
  store i32 %294, i32* %17, align 4
  br label %295

295:                                              ; preds = %256
  %296 = load i32, i32* %10, align 4
  %297 = load i32, i32* %11, align 4
  %298 = icmp uge i32 %296, %297
  br i1 %298, label %299, label %303

299:                                              ; preds = %295
  %300 = load i32*, i32** %18, align 8
  %301 = load i32*, i32** %19, align 8
  %302 = icmp ult i32* %300, %301
  br label %303

303:                                              ; preds = %299, %295
  %304 = phi i1 [ false, %295 ], [ %302, %299 ]
  br i1 %304, label %224, label %305

305:                                              ; preds = %303
  br label %97

306:                                              ; preds = %97
  %307 = load i32, i32* %16, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %325

309:                                              ; preds = %306
  %310 = load i32, i32* %10, align 4
  %311 = load i32, i32* %11, align 4
  %312 = icmp ult i32 %310, %311
  br i1 %312, label %313, label %325

313:                                              ; preds = %309
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %315 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %10, align 4
  %319 = add i32 %318, 1
  store i32 %319, i32* %10, align 4
  %320 = zext i32 %318 to i64
  %321 = getelementptr inbounds i32, i32* %317, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @crc16_update_word_(%struct.TYPE_6__* %314, i32 %322)
  %324 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  store i32 %324, i32* %16, align 4
  br label %325

325:                                              ; preds = %313, %309, %306
  %326 = load i32, i32* @FLAC__BITS_PER_WORD, align 4
  %327 = load i32, i32* %16, align 4
  %328 = sub i32 %326, %327
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 3
  store i32 %328, i32* %330, align 8
  %331 = load i32, i32* %10, align 4
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 1
  store i32 %331, i32* %333, align 8
  store i32 1, i32* %5, align 4
  br label %334

334:                                              ; preds = %325, %255, %236, %64, %54
  %335 = load i32, i32* %5, align 4
  ret i32 %335
}

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32 @FLAC__bitreader_read_unary_unsigned(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @COUNT_ZERO_MSBS2(i32) #1

declare dso_local i32 @crc16_update_word_(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @FLAC__bitreader_read_raw_uint32(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
