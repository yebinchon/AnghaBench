; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sunrastenc.c_sunrast_image_write_image.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sunrastenc.c_sunrast_image_write_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i32 }

@RT_BYTE_ENCODED = common dso_local global i64 0, align 8
@RLE_TRIGGER = common dso_local global i32 0, align 4
@GET_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32*, i32)* @sunrast_image_write_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunrast_image_write_image(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %9, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %75

29:                                               ; preds = %4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %32, 3
  store i32 %33, i32* %17, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @bytestream2_skip_p(i32* %38, i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %16, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @bytestream2_skip_p(i32* %45, i32 %46)
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %71, %29
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %48
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = ashr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = call i32 @bytestream2_put_byteu(i32* %15, i32 %60)
  %62 = load i32, i32* %18, align 4
  %63 = ashr i32 %62, 8
  %64 = and i32 %63, 255
  %65 = call i32 @bytestream2_put_byteu(i32* %16, i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i32, i32* %18, align 4
  %69 = and i32 %68, 255
  %70 = call i32 @bytestream2_put_byteu(i32* %67, i32 %69)
  br label %71

71:                                               ; preds = %52
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %48

74:                                               ; preds = %48
  br label %75

75:                                               ; preds = %74, %4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %78, %81
  %83 = add nsw i32 %82, 7
  %84 = ashr i32 %83, 3
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = and i32 %86, 1
  %88 = add nsw i32 %85, %87
  store i32 %88, i32* %12, align 4
  %89 = load i32*, i32** %6, align 8
  store i32* %89, i32** %10, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @RT_BYTE_ENCODED, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %284

95:                                               ; preds = %75
  %96 = load i32*, i32** %6, align 8
  store i32* %96, i32** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp sge i32 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %122

103:                                              ; preds = %95
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  br label %120

114:                                              ; preds = %103
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  br label %120

120:                                              ; preds = %114, %107
  %121 = phi i32 [ %113, %107 ], [ %119, %114 ]
  br label %122

122:                                              ; preds = %120, %102
  %123 = phi i32 [ 0, %102 ], [ %121, %120 ]
  store i32 %123, i32* %20, align 4
  br label %124

124:                                              ; preds = %272, %122
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %273

130:                                              ; preds = %124
  store i32 1, i32* %21, align 4
  %131 = load i32, i32* %20, align 4
  store i32 %131, i32* %19, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %130
  store i32 0, i32* %13, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32*, i32** %10, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %10, align 8
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  br label %144

144:                                              ; preds = %137, %130
  %145 = load i32, i32* %14, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp sge i32 %145, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %170

151:                                              ; preds = %144
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load i32*, i32** %10, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  br label %168

162:                                              ; preds = %151
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  br label %168

168:                                              ; preds = %162, %155
  %169 = phi i32 [ %161, %155 ], [ %167, %162 ]
  br label %170

170:                                              ; preds = %168, %150
  %171 = phi i32 [ 0, %150 ], [ %169, %168 ]
  store i32 %171, i32* %20, align 4
  br label %172

172:                                              ; preds = %228, %170
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %19, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %172
  %177 = load i32, i32* %21, align 4
  %178 = icmp slt i32 %177, 256
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load i32, i32* %14, align 4
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %180, %183
  br label %185

185:                                              ; preds = %179, %176, %172
  %186 = phi i1 [ false, %176 ], [ false, %172 ], [ %184, %179 ]
  br i1 %186, label %187, label %230

187:                                              ; preds = %185
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* %21, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %21, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp sge i32 %192, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %187
  store i32 0, i32* %13, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load i32*, i32** %10, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  store i32* %199, i32** %10, align 8
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %14, align 4
  br label %202

202:                                              ; preds = %195, %187
  %203 = load i32, i32* %14, align 4
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp sge i32 %203, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  br label %228

209:                                              ; preds = %202
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp sge i32 %210, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %209
  %214 = load i32*, i32** %10, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sub nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  %219 = load i32, i32* %218, align 4
  br label %226

220:                                              ; preds = %209
  %221 = load i32*, i32** %10, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  br label %226

226:                                              ; preds = %220, %213
  %227 = phi i32 [ %219, %213 ], [ %225, %220 ]
  br label %228

228:                                              ; preds = %226, %208
  %229 = phi i32 [ 0, %208 ], [ %227, %226 ]
  store i32 %229, i32* %20, align 4
  br label %172

230:                                              ; preds = %185
  %231 = load i32, i32* %21, align 4
  %232 = icmp sgt i32 %231, 2
  br i1 %232, label %237, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* @RLE_TRIGGER, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %255

237:                                              ; preds = %233, %230
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 4
  %240 = load i32, i32* @RLE_TRIGGER, align 4
  %241 = call i32 @bytestream2_put_byteu(i32* %239, i32 %240)
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 4
  %244 = load i32, i32* %21, align 4
  %245 = sub nsw i32 %244, 1
  %246 = call i32 @bytestream2_put_byteu(i32* %243, i32 %245)
  %247 = load i32, i32* %21, align 4
  %248 = icmp sgt i32 %247, 1
  br i1 %248, label %249, label %254

249:                                              ; preds = %237
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 4
  %252 = load i32, i32* %19, align 4
  %253 = call i32 @bytestream2_put_byteu(i32* %251, i32 %252)
  br label %254

254:                                              ; preds = %249, %237
  br label %272

255:                                              ; preds = %233
  %256 = load i32, i32* %21, align 4
  %257 = icmp eq i32 %256, 1
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 4
  %261 = load i32, i32* %19, align 4
  %262 = call i32 @bytestream2_put_byteu(i32* %260, i32 %261)
  br label %271

263:                                              ; preds = %255
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 4
  %266 = load i32, i32* %19, align 4
  %267 = shl i32 %266, 8
  %268 = load i32, i32* %19, align 4
  %269 = or i32 %267, %268
  %270 = call i32 @bytestream2_put_be16u(i32* %265, i32 %269)
  br label %271

271:                                              ; preds = %263, %258
  br label %272

272:                                              ; preds = %271, %254
  br label %124

273:                                              ; preds = %124
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 4
  %276 = call i32 @bytestream2_tell_p(i32* %275)
  %277 = sub nsw i32 %276, 32
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = sub nsw i32 %277, %280
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 3
  store i32 %281, i32* %283, align 8
  br label %313

284:                                              ; preds = %75
  store i32 0, i32* %14, align 4
  br label %285

285:                                              ; preds = %309, %284
  %286 = load i32, i32* %14, align 4
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = icmp slt i32 %286, %289
  br i1 %290, label %291, label %312

291:                                              ; preds = %285
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 4
  %294 = load i32*, i32** %10, align 8
  %295 = load i32, i32* %11, align 4
  %296 = call i32 @bytestream2_put_buffer(i32* %293, i32* %294, i32 %295)
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* %12, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %304

300:                                              ; preds = %291
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 4
  %303 = call i32 @bytestream2_put_byteu(i32* %302, i32 0)
  br label %304

304:                                              ; preds = %300, %291
  %305 = load i32, i32* %8, align 4
  %306 = load i32*, i32** %10, align 8
  %307 = sext i32 %305 to i64
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  store i32* %308, i32** %10, align 8
  br label %309

309:                                              ; preds = %304
  %310 = load i32, i32* %14, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %14, align 4
  br label %285

312:                                              ; preds = %285
  br label %313

313:                                              ; preds = %312, %273
  ret void
}

declare dso_local i32 @bytestream2_skip_p(i32*, i32) #1

declare dso_local i32 @bytestream2_put_byteu(i32*, i32) #1

declare dso_local i32 @bytestream2_put_be16u(i32*, i32) #1

declare dso_local i32 @bytestream2_tell_p(i32*) #1

declare dso_local i32 @bytestream2_put_buffer(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
