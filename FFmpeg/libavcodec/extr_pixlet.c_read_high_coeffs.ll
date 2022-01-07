; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pixlet.c_read_high_coeffs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pixlet.c_read_high_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i32, i32, i32, i32, i32, i32)* @read_high_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_high_coeffs(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_4__*, align 8
  %21 = alloca i32*, align 8
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
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %20, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32* %43, i32** %21, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %36, align 4
  store i32 3, i32* %37, align 4
  %44 = load i32*, i32** %21, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @bytestream2_get_bytes_left(i32* %47)
  %49 = call i32 @init_get_bits8(i32* %44, i32* %45, i32 %48)
  store i32 %49, i32* %30, align 4
  %50 = load i32, i32* %30, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %9
  %53 = load i32, i32* %30, align 4
  store i32 %53, i32* %10, align 4
  br label %325

54:                                               ; preds = %9
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = ashr i32 %56, 31
  %58 = xor i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = ashr i32 %62, 31
  %64 = xor i32 %61, %63
  %65 = call i32 @ff_clz(i32 %64)
  %66 = sub nsw i32 33, %65
  store i32 %66, i32* %25, align 4
  %67 = load i32, i32* %25, align 4
  %68 = icmp ugt i32 %67, 16
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %70, i32* %10, align 4
  br label %325

71:                                               ; preds = %60
  br label %73

72:                                               ; preds = %54
  store i32 1, i32* %25, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, i32* %25, align 4
  %75 = sub i32 25, %74
  store i32 %75, i32* %26, align 4
  br label %76

76:                                               ; preds = %314, %205, %73
  %77 = load i32, i32* %27, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %319

80:                                               ; preds = %76
  %81 = load i32, i32* %37, align 4
  %82 = ashr i32 %81, 8
  %83 = icmp ne i32 %82, -3
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i32, i32* %37, align 4
  %86 = ashr i32 %85, 8
  %87 = add nsw i32 %86, 3
  %88 = call i32 @ff_clz(i32 %87)
  %89 = xor i32 %88, 31
  store i32 %89, i32* %33, align 4
  br label %91

90:                                               ; preds = %80
  store i32 -1, i32* %33, align 4
  br label %91

91:                                               ; preds = %90, %84
  %92 = load i32*, i32** %21, align 8
  %93 = load i32, i32* %26, align 4
  %94 = call i32 @get_unary(i32* %92, i32 0, i32 %93)
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* %26, align 4
  %97 = icmp uge i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load i32*, i32** %21, align 8
  %100 = load i32, i32* %25, align 4
  %101 = call i8* @get_bits(i32* %99, i32 %100)
  %102 = ptrtoint i8* %101 to i32
  store i32 %102, i32* %22, align 4
  br label %144

103:                                              ; preds = %91
  %104 = load i32, i32* %33, align 4
  %105 = sub nsw i32 %104, 14
  %106 = ashr i32 %105, 32
  %107 = load i32, i32* %33, align 4
  %108 = sub nsw i32 %107, 14
  %109 = and i32 %106, %108
  %110 = add nsw i32 14, %109
  store i32 %110, i32* %32, align 4
  %111 = load i32, i32* %32, align 4
  %112 = icmp slt i32 %111, 1
  br i1 %112, label %116, label %113

113:                                              ; preds = %103
  %114 = load i32, i32* %32, align 4
  %115 = icmp sgt i32 %114, 25
  br i1 %115, label %116, label %118

116:                                              ; preds = %113, %103
  %117 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %117, i32* %10, align 4
  br label %325

118:                                              ; preds = %113
  %119 = load i32, i32* %32, align 4
  %120 = shl i32 1, %119
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* %22, align 4
  %123 = mul i32 %122, %121
  store i32 %123, i32* %22, align 4
  %124 = load i32*, i32** %21, align 8
  %125 = load i32, i32* %32, align 4
  %126 = call i8* @show_bits(i32* %124, i32 %125)
  %127 = ptrtoint i8* %126 to i32
  store i32 %127, i32* %23, align 4
  %128 = load i32, i32* %23, align 4
  %129 = icmp ule i32 %128, 1
  br i1 %129, label %130, label %135

130:                                              ; preds = %118
  %131 = load i32*, i32** %21, align 8
  %132 = load i32, i32* %32, align 4
  %133 = sub nsw i32 %132, 1
  %134 = call i32 @skip_bits(i32* %131, i32 %133)
  br label %143

135:                                              ; preds = %118
  %136 = load i32*, i32** %21, align 8
  %137 = load i32, i32* %32, align 4
  %138 = call i32 @skip_bits(i32* %136, i32 %137)
  %139 = load i32, i32* %23, align 4
  %140 = sub i32 %139, 1
  %141 = load i32, i32* %22, align 4
  %142 = add i32 %141, %140
  store i32 %142, i32* %22, align 4
  br label %143

143:                                              ; preds = %135, %130
  br label %144

144:                                              ; preds = %143, %98
  %145 = load i32, i32* %36, align 4
  %146 = load i32, i32* %22, align 4
  %147 = add i32 %145, %146
  store i32 %147, i32* %35, align 4
  %148 = load i32, i32* %35, align 4
  store i32 %148, i32* %34, align 4
  %149 = load i32, i32* %36, align 4
  %150 = load i32, i32* %22, align 4
  %151 = add i32 %149, %150
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  store i32 0, i32* %33, align 4
  br label %171

154:                                              ; preds = %144
  %155 = load i32, i32* %35, align 4
  %156 = and i32 %155, 1
  store i32 %156, i32* %35, align 4
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %34, align 4
  %159 = add nsw i32 %158, 1
  %160 = ashr i32 %159, 1
  %161 = mul nsw i32 %157, %160
  %162 = load i32, i32* %15, align 4
  %163 = ashr i32 %162, 1
  %164 = add nsw i32 %161, %163
  store i32 %164, i32* %38, align 4
  %165 = load i32, i32* %35, align 4
  %166 = load i32, i32* %38, align 4
  %167 = load i32, i32* %35, align 4
  %168 = sub nsw i32 0, %167
  %169 = xor i32 %166, %168
  %170 = add nsw i32 %165, %169
  store i32 %170, i32* %33, align 4
  br label %171

171:                                              ; preds = %154, %153
  %172 = load i32, i32* %27, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %27, align 4
  %174 = load i32, i32* %33, align 4
  %175 = load i32*, i32** %13, align 8
  %176 = load i32, i32* %28, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %28, align 4
  %178 = zext i32 %176 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  store i32 %174, i32* %179, align 4
  %180 = load i32, i32* %28, align 4
  %181 = load i32, i32* %18, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %171
  store i32 0, i32* %28, align 4
  %184 = load i32, i32* %19, align 4
  %185 = load i32*, i32** %13, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32* %187, i32** %13, align 8
  br label %188

188:                                              ; preds = %183, %171
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* %34, align 4
  %191 = mul nsw i32 %189, %190
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %37, align 4
  %194 = mul nsw i32 %192, %193
  %195 = ashr i32 %194, 8
  %196 = sub nsw i32 %191, %195
  %197 = load i32, i32* %37, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %37, align 4
  store i32 0, i32* %36, align 4
  %199 = load i32, i32* %37, align 4
  %200 = icmp sgt i32 %199, 63
  br i1 %200, label %205, label %201

201:                                              ; preds = %188
  %202 = load i32, i32* %27, align 4
  %203 = load i32, i32* %14, align 4
  %204 = icmp uge i32 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %201, %188
  br label %76

206:                                              ; preds = %201
  %207 = load i32, i32* %37, align 4
  %208 = add nsw i32 %207, 8
  %209 = ashr i32 %208, 5
  %210 = load i32, i32* %37, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = load i32, i32* %37, align 4
  %214 = call i32 @ff_clz(i32 %213)
  br label %216

215:                                              ; preds = %206
  br label %216

216:                                              ; preds = %215, %212
  %217 = phi i32 [ %214, %212 ], [ 32, %215 ]
  %218 = add nsw i32 %209, %217
  %219 = sub nsw i32 %218, 24
  store i32 %219, i32* %32, align 4
  %220 = load i32, i32* %32, align 4
  %221 = call i32 @av_mod_uintp2(i32 16383, i32 %220)
  store i32 %221, i32* %31, align 4
  %222 = load i32*, i32** %21, align 8
  %223 = call i32 @get_unary(i32* %222, i32 0, i32 8)
  store i32 %223, i32* %22, align 4
  %224 = load i32, i32* %22, align 4
  %225 = icmp ult i32 %224, 8
  br i1 %225, label %226, label %260

226:                                              ; preds = %216
  %227 = load i32, i32* %32, align 4
  %228 = icmp slt i32 %227, 1
  br i1 %228, label %232, label %229

229:                                              ; preds = %226
  %230 = load i32, i32* %32, align 4
  %231 = icmp sgt i32 %230, 25
  br i1 %231, label %232, label %234

232:                                              ; preds = %229, %226
  %233 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %233, i32* %10, align 4
  br label %325

234:                                              ; preds = %229
  %235 = load i32*, i32** %21, align 8
  %236 = load i32, i32* %32, align 4
  %237 = call i8* @show_bits(i32* %235, i32 %236)
  %238 = ptrtoint i8* %237 to i32
  store i32 %238, i32* %33, align 4
  %239 = load i32, i32* %33, align 4
  %240 = icmp sgt i32 %239, 1
  br i1 %240, label %241, label %251

241:                                              ; preds = %234
  %242 = load i32*, i32** %21, align 8
  %243 = load i32, i32* %32, align 4
  %244 = call i32 @skip_bits(i32* %242, i32 %243)
  %245 = load i32, i32* %33, align 4
  %246 = load i32, i32* %31, align 4
  %247 = load i32, i32* %22, align 4
  %248 = mul i32 %246, %247
  %249 = add i32 %245, %248
  %250 = sub i32 %249, 1
  store i32 %250, i32* %24, align 4
  br label %259

251:                                              ; preds = %234
  %252 = load i32*, i32** %21, align 8
  %253 = load i32, i32* %32, align 4
  %254 = sub nsw i32 %253, 1
  %255 = call i32 @skip_bits(i32* %252, i32 %254)
  %256 = load i32, i32* %31, align 4
  %257 = load i32, i32* %22, align 4
  %258 = mul i32 %256, %257
  store i32 %258, i32* %24, align 4
  br label %259

259:                                              ; preds = %251, %241
  br label %277

260:                                              ; preds = %216
  %261 = load i32*, i32** %21, align 8
  %262 = call i64 @get_bits1(i32* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %260
  %265 = load i32*, i32** %21, align 8
  %266 = call i8* @get_bits(i32* %265, i32 16)
  %267 = ptrtoint i8* %266 to i32
  store i32 %267, i32* %33, align 4
  br label %272

268:                                              ; preds = %260
  %269 = load i32*, i32** %21, align 8
  %270 = call i8* @get_bits(i32* %269, i32 8)
  %271 = ptrtoint i8* %270 to i32
  store i32 %271, i32* %33, align 4
  br label %272

272:                                              ; preds = %268, %264
  %273 = load i32, i32* %33, align 4
  %274 = load i32, i32* %31, align 4
  %275 = mul nsw i32 8, %274
  %276 = add nsw i32 %273, %275
  store i32 %276, i32* %24, align 4
  br label %277

277:                                              ; preds = %272, %259
  %278 = load i32, i32* %24, align 4
  %279 = icmp ugt i32 %278, 65535
  br i1 %279, label %286, label %280

280:                                              ; preds = %277
  %281 = load i32, i32* %27, align 4
  %282 = load i32, i32* %24, align 4
  %283 = add i32 %281, %282
  %284 = load i32, i32* %14, align 4
  %285 = icmp ugt i32 %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %280, %277
  %287 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %287, i32* %10, align 4
  br label %325

288:                                              ; preds = %280
  %289 = load i32, i32* %24, align 4
  %290 = load i32, i32* %27, align 4
  %291 = add i32 %290, %289
  store i32 %291, i32* %27, align 4
  store i32 0, i32* %29, align 4
  br label %292

292:                                              ; preds = %311, %288
  %293 = load i32, i32* %29, align 4
  %294 = load i32, i32* %24, align 4
  %295 = icmp ult i32 %293, %294
  br i1 %295, label %296, label %314

296:                                              ; preds = %292
  %297 = load i32*, i32** %13, align 8
  %298 = load i32, i32* %28, align 4
  %299 = add i32 %298, 1
  store i32 %299, i32* %28, align 4
  %300 = zext i32 %298 to i64
  %301 = getelementptr inbounds i32, i32* %297, i64 %300
  store i32 0, i32* %301, align 4
  %302 = load i32, i32* %28, align 4
  %303 = load i32, i32* %18, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %310

305:                                              ; preds = %296
  store i32 0, i32* %28, align 4
  %306 = load i32, i32* %19, align 4
  %307 = load i32*, i32** %13, align 8
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  store i32* %309, i32** %13, align 8
  br label %310

310:                                              ; preds = %305, %296
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %29, align 4
  %313 = add i32 %312, 1
  store i32 %313, i32* %29, align 4
  br label %292

314:                                              ; preds = %292
  store i32 0, i32* %37, align 4
  %315 = load i32, i32* %24, align 4
  %316 = icmp ult i32 %315, 65535
  %317 = zext i1 %316 to i64
  %318 = select i1 %316, i32 1, i32 0
  store i32 %318, i32* %36, align 4
  br label %76

319:                                              ; preds = %76
  %320 = load i32*, i32** %21, align 8
  %321 = call i32 @align_get_bits(i32* %320)
  %322 = load i32*, i32** %21, align 8
  %323 = call i32 @get_bits_count(i32* %322)
  %324 = ashr i32 %323, 3
  store i32 %324, i32* %10, align 4
  br label %325

325:                                              ; preds = %319, %286, %232, %116, %69, %52
  %326 = load i32, i32* %10, align 4
  ret i32 %326
}

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @ff_clz(i32) #1

declare dso_local i32 @get_unary(i32*, i32, i32) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i8* @show_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @av_mod_uintp2(i32, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @align_get_bits(i32*) #1

declare dso_local i32 @get_bits_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
