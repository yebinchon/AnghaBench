; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fmvc.c_decode_type2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fmvc.c_decode_type2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @decode_type2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_type2(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %629, %499, %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @bytestream2_get_bytes_left(i32* %13)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %630

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %442, %316, %243, %120, %45, %16
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @bytestream2_get_bytes_left(i32* %18)
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %443

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %124

24:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @bytestream2_peek_byte(i32* %25)
  %27 = icmp sgt i32 %26, 17
  br i1 %27, label %28, label %123

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @bytestream2_get_byte(i32* %29)
  %31 = sub nsw i32 %30, 17
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %42, %34
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @bytestream2_get_byte(i32* %37)
  %39 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %36, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %35, label %45

45:                                               ; preds = %42
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @bytestream2_peek_byte(i32* %46)
  store i32 %47, i32* %7, align 4
  br label %17

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %56, %48
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @bytestream2_get_byte(i32* %51)
  %53 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %50, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %49, label %59

59:                                               ; preds = %56
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @bytestream2_peek_byte(i32* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ult i32 %62, 16
  br i1 %63, label %64, label %121

64:                                               ; preds = %59
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @bytestream2_skip(i32* %65, i32 1)
  %67 = load i32, i32* %7, align 4
  %68 = lshr i32 %67, 2
  %69 = sub i32 0, %68
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @bytestream2_get_byte(i32* %70)
  %72 = mul nsw i32 4, %71
  %73 = sub i32 %69, %72
  %74 = sub i32 %73, 2049
  store i32 %74, i32* %10, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %80, %83
  %85 = call i32 @bytestream2_init(i32* %11, i64 %77, i64 %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = call i32 @bytestream2_tell_p(%struct.TYPE_6__* %86)
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* @SEEK_SET, align 4
  %91 = call i32 @bytestream2_seek(i32* %11, i32 %89, i32 %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = call i32 @bytestream2_get_byte(i32* %11)
  %94 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %92, i32 %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = call i32 @bytestream2_get_byte(i32* %11)
  %97 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %95, i32 %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = call i32 @bytestream2_get_byte(i32* %11)
  %100 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %98, i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %101, 3
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %64
  store i32 1, i32* %5, align 4
  br label %120

106:                                              ; preds = %64
  br label %107

107:                                              ; preds = %114, %106
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @bytestream2_get_byte(i32* %109)
  %111 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %108, i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %107, label %117

117:                                              ; preds = %114
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @bytestream2_peek_byte(i32* %118)
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %117, %105
  br label %17

121:                                              ; preds = %59
  br label %122

122:                                              ; preds = %121
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %24
  store i32 1, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %21
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %246

127:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @bytestream2_peek_byte(i32* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ult i32 %130, 16
  br i1 %131, label %132, label %245

132:                                              ; preds = %127
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @bytestream2_skip(i32* %133, i32 1)
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %164, label %137

137:                                              ; preds = %132
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @bytestream2_peek_byte(i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %158, label %141

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %155, %141
  %143 = load i32*, i32** %3, align 8
  %144 = call i32 @bytestream2_skip(i32* %143, i32 1)
  %145 = load i32, i32* %7, align 4
  %146 = add i32 %145, 255
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %142
  %148 = load i32*, i32** %3, align 8
  %149 = call i32 @bytestream2_peek_byte(i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load i32*, i32** %3, align 8
  %153 = call i64 @bytestream2_get_bytes_left(i32* %152)
  %154 = icmp sgt i64 %153, 0
  br label %155

155:                                              ; preds = %151, %147
  %156 = phi i1 [ false, %147 ], [ %154, %151 ]
  br i1 %156, label %142, label %157

157:                                              ; preds = %155
  br label %158

158:                                              ; preds = %157, %137
  %159 = load i32*, i32** %3, align 8
  %160 = call i32 @bytestream2_get_byte(i32* %159)
  %161 = add nsw i32 %160, 15
  %162 = load i32, i32* %7, align 4
  %163 = add i32 %162, %161
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %158, %132
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %166 = load i32*, i32** %3, align 8
  %167 = call i32 @bytestream2_get_le32(i32* %166)
  %168 = call i32 @bytestream2_put_le32(%struct.TYPE_6__* %165, i32 %167)
  %169 = load i32, i32* %7, align 4
  %170 = sub i32 %169, 1
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %179, %164
  %172 = load i32, i32* %8, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %171
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %176 = load i32*, i32** %3, align 8
  %177 = call i32 @bytestream2_get_byte(i32* %176)
  %178 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %175, i32 %177)
  br label %179

179:                                              ; preds = %174
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %8, align 4
  br label %171

182:                                              ; preds = %171
  %183 = load i32*, i32** %3, align 8
  %184 = call i32 @bytestream2_peek_byte(i32* %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ult i32 %185, 16
  br i1 %186, label %187, label %244

187:                                              ; preds = %182
  %188 = load i32*, i32** %3, align 8
  %189 = call i32 @bytestream2_skip(i32* %188, i32 1)
  %190 = load i32, i32* %7, align 4
  %191 = lshr i32 %190, 2
  %192 = sub i32 0, %191
  %193 = load i32*, i32** %3, align 8
  %194 = call i32 @bytestream2_get_byte(i32* %193)
  %195 = mul nsw i32 4, %194
  %196 = sub i32 %192, %195
  %197 = sub i32 %196, 2049
  store i32 %197, i32* %10, align 4
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = sub nsw i64 %203, %206
  %208 = call i32 @bytestream2_init(i32* %11, i64 %200, i64 %207)
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %210 = call i32 @bytestream2_tell_p(%struct.TYPE_6__* %209)
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %210, %211
  %213 = load i32, i32* @SEEK_SET, align 4
  %214 = call i32 @bytestream2_seek(i32* %11, i32 %212, i32 %213)
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %216 = call i32 @bytestream2_get_byte(i32* %11)
  %217 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %215, i32 %216)
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %219 = call i32 @bytestream2_get_byte(i32* %11)
  %220 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %218, i32 %219)
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %222 = call i32 @bytestream2_get_byte(i32* %11)
  %223 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %221, i32 %222)
  %224 = load i32, i32* %7, align 4
  %225 = and i32 %224, 3
  store i32 %225, i32* %9, align 4
  %226 = load i32, i32* %9, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %187
  store i32 1, i32* %5, align 4
  br label %243

229:                                              ; preds = %187
  br label %230

230:                                              ; preds = %237, %229
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %232 = load i32*, i32** %3, align 8
  %233 = call i32 @bytestream2_get_byte(i32* %232)
  %234 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %231, i32 %233)
  %235 = load i32, i32* %9, align 4
  %236 = add nsw i32 %235, -1
  store i32 %236, i32* %9, align 4
  br label %237

237:                                              ; preds = %230
  %238 = load i32, i32* %9, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %230, label %240

240:                                              ; preds = %237
  %241 = load i32*, i32** %3, align 8
  %242 = call i32 @bytestream2_peek_byte(i32* %241)
  store i32 %242, i32* %7, align 4
  br label %243

243:                                              ; preds = %240, %228
  br label %17

244:                                              ; preds = %182
  br label %245

245:                                              ; preds = %244, %127
  br label %246

246:                                              ; preds = %245, %124
  %247 = load i32, i32* %7, align 4
  %248 = icmp uge i32 %247, 64
  br i1 %248, label %249, label %317

249:                                              ; preds = %246
  %250 = load i32*, i32** %3, align 8
  %251 = call i32 @bytestream2_skip(i32* %250, i32 1)
  %252 = load i32, i32* %7, align 4
  %253 = lshr i32 %252, 2
  %254 = and i32 %253, 7
  %255 = sub i32 0, %254
  %256 = sub i32 %255, 1
  %257 = load i32*, i32** %3, align 8
  %258 = call i32 @bytestream2_get_byte(i32* %257)
  %259 = mul nsw i32 8, %258
  %260 = sub i32 %256, %259
  store i32 %260, i32* %10, align 4
  %261 = load i32, i32* %7, align 4
  %262 = lshr i32 %261, 5
  %263 = sub i32 %262, 1
  store i32 %263, i32* %9, align 4
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = sub nsw i64 %269, %272
  %274 = call i32 @bytestream2_init(i32* %11, i64 %266, i64 %273)
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %276 = call i32 @bytestream2_tell_p(%struct.TYPE_6__* %275)
  %277 = load i32, i32* %10, align 4
  %278 = add nsw i32 %276, %277
  %279 = load i32, i32* @SEEK_SET, align 4
  %280 = call i32 @bytestream2_seek(i32* %11, i32 %278, i32 %279)
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %282 = call i32 @bytestream2_get_byte(i32* %11)
  %283 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %281, i32 %282)
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %285 = call i32 @bytestream2_get_byte(i32* %11)
  %286 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %284, i32 %285)
  br label %287

287:                                              ; preds = %293, %249
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %289 = call i32 @bytestream2_get_byte(i32* %11)
  %290 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %288, i32 %289)
  %291 = load i32, i32* %9, align 4
  %292 = add nsw i32 %291, -1
  store i32 %292, i32* %9, align 4
  br label %293

293:                                              ; preds = %287
  %294 = load i32, i32* %9, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %287, label %296

296:                                              ; preds = %293
  %297 = load i32, i32* %7, align 4
  %298 = and i32 %297, 3
  store i32 %298, i32* %9, align 4
  %299 = load i32, i32* %9, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %302, label %301

301:                                              ; preds = %296
  store i32 1, i32* %5, align 4
  br label %316

302:                                              ; preds = %296
  br label %303

303:                                              ; preds = %310, %302
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %305 = load i32*, i32** %3, align 8
  %306 = call i32 @bytestream2_get_byte(i32* %305)
  %307 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %304, i32 %306)
  %308 = load i32, i32* %9, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %9, align 4
  br label %310

310:                                              ; preds = %303
  %311 = load i32, i32* %9, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %303, label %313

313:                                              ; preds = %310
  %314 = load i32*, i32** %3, align 8
  %315 = call i32 @bytestream2_peek_byte(i32* %314)
  store i32 %315, i32* %7, align 4
  br label %316

316:                                              ; preds = %313, %301
  br label %17

317:                                              ; preds = %246
  %318 = load i32, i32* %7, align 4
  %319 = icmp ult i32 %318, 32
  br i1 %319, label %320, label %321

320:                                              ; preds = %317
  br label %443

321:                                              ; preds = %317
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %7, align 4
  %324 = and i32 %323, 31
  store i32 %324, i32* %9, align 4
  %325 = load i32*, i32** %3, align 8
  %326 = call i32 @bytestream2_skip(i32* %325, i32 1)
  %327 = load i32, i32* %9, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %356, label %329

329:                                              ; preds = %322
  %330 = load i32*, i32** %3, align 8
  %331 = call i32 @bytestream2_peek_byte(i32* %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %350, label %333

333:                                              ; preds = %329
  br label %334

334:                                              ; preds = %347, %333
  %335 = load i32*, i32** %3, align 8
  %336 = call i32 @bytestream2_skip(i32* %335, i32 1)
  %337 = load i32, i32* %9, align 4
  %338 = add nsw i32 %337, 255
  store i32 %338, i32* %9, align 4
  br label %339

339:                                              ; preds = %334
  %340 = load i32*, i32** %3, align 8
  %341 = call i32 @bytestream2_peek_byte(i32* %340)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %347, label %343

343:                                              ; preds = %339
  %344 = load i32*, i32** %3, align 8
  %345 = call i64 @bytestream2_get_bytes_left(i32* %344)
  %346 = icmp sgt i64 %345, 0
  br label %347

347:                                              ; preds = %343, %339
  %348 = phi i1 [ false, %339 ], [ %346, %343 ]
  br i1 %348, label %334, label %349

349:                                              ; preds = %347
  br label %350

350:                                              ; preds = %349, %329
  %351 = load i32*, i32** %3, align 8
  %352 = call i32 @bytestream2_get_byte(i32* %351)
  %353 = add nsw i32 %352, 31
  %354 = load i32, i32* %9, align 4
  %355 = add nsw i32 %354, %353
  store i32 %355, i32* %9, align 4
  br label %356

356:                                              ; preds = %350, %322
  %357 = load i32*, i32** %3, align 8
  %358 = call i32 @bytestream2_get_le16(i32* %357)
  store i32 %358, i32* %8, align 4
  %359 = load i32, i32* %8, align 4
  %360 = ashr i32 %359, 2
  %361 = sub nsw i32 0, %360
  %362 = sub nsw i32 %361, 1
  store i32 %362, i32* %10, align 4
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = sub nsw i64 %368, %371
  %373 = call i32 @bytestream2_init(i32* %11, i64 %365, i64 %372)
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %375 = call i32 @bytestream2_tell_p(%struct.TYPE_6__* %374)
  %376 = load i32, i32* %10, align 4
  %377 = add nsw i32 %375, %376
  %378 = load i32, i32* @SEEK_SET, align 4
  %379 = call i32 @bytestream2_seek(i32* %11, i32 %377, i32 %378)
  %380 = load i32, i32* %9, align 4
  %381 = icmp slt i32 %380, 6
  br i1 %381, label %388, label %382

382:                                              ; preds = %356
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %384 = call i32 @bytestream2_tell_p(%struct.TYPE_6__* %383)
  %385 = call i32 @bytestream2_tell(i32* %11)
  %386 = sub nsw i32 %384, %385
  %387 = icmp slt i32 %386, 4
  br i1 %387, label %388, label %405

388:                                              ; preds = %382, %356
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %390 = call i32 @bytestream2_get_byte(i32* %11)
  %391 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %389, i32 %390)
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %393 = call i32 @bytestream2_get_byte(i32* %11)
  %394 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %392, i32 %393)
  br label %395

395:                                              ; preds = %401, %388
  %396 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %397 = call i32 @bytestream2_get_byte(i32* %11)
  %398 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %396, i32 %397)
  %399 = load i32, i32* %9, align 4
  %400 = add nsw i32 %399, -1
  store i32 %400, i32* %9, align 4
  br label %401

401:                                              ; preds = %395
  %402 = load i32, i32* %9, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %395, label %404

404:                                              ; preds = %401
  br label %422

405:                                              ; preds = %382
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %407 = call i32 @bytestream2_get_le32(i32* %11)
  %408 = call i32 @bytestream2_put_le32(%struct.TYPE_6__* %406, i32 %407)
  %409 = load i32, i32* %9, align 4
  %410 = sub nsw i32 %409, 2
  store i32 %410, i32* %9, align 4
  br label %411

411:                                              ; preds = %418, %405
  %412 = load i32, i32* %9, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %421

414:                                              ; preds = %411
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %416 = call i32 @bytestream2_get_byte(i32* %11)
  %417 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %415, i32 %416)
  br label %418

418:                                              ; preds = %414
  %419 = load i32, i32* %9, align 4
  %420 = add nsw i32 %419, -1
  store i32 %420, i32* %9, align 4
  br label %411

421:                                              ; preds = %411
  br label %422

422:                                              ; preds = %421, %404
  %423 = load i32, i32* %8, align 4
  %424 = and i32 %423, 3
  store i32 %424, i32* %9, align 4
  %425 = load i32, i32* %9, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %428, label %427

427:                                              ; preds = %422
  store i32 1, i32* %5, align 4
  br label %442

428:                                              ; preds = %422
  br label %429

429:                                              ; preds = %436, %428
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %431 = load i32*, i32** %3, align 8
  %432 = call i32 @bytestream2_get_byte(i32* %431)
  %433 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %430, i32 %432)
  %434 = load i32, i32* %9, align 4
  %435 = add nsw i32 %434, -1
  store i32 %435, i32* %9, align 4
  br label %436

436:                                              ; preds = %429
  %437 = load i32, i32* %9, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %429, label %439

439:                                              ; preds = %436
  %440 = load i32*, i32** %3, align 8
  %441 = call i32 @bytestream2_peek_byte(i32* %440)
  store i32 %441, i32* %7, align 4
  br label %442

442:                                              ; preds = %439, %427
  br label %17

443:                                              ; preds = %320, %17
  %444 = load i32*, i32** %3, align 8
  %445 = call i32 @bytestream2_skip(i32* %444, i32 1)
  %446 = load i32, i32* %7, align 4
  %447 = icmp ult i32 %446, 16
  br i1 %447, label %448, label %500

448:                                              ; preds = %443
  %449 = load i32, i32* %7, align 4
  %450 = lshr i32 %449, 2
  %451 = sub i32 0, %450
  %452 = sub i32 %451, 1
  %453 = load i32*, i32** %3, align 8
  %454 = call i32 @bytestream2_get_byte(i32* %453)
  %455 = mul nsw i32 4, %454
  %456 = sub i32 %452, %455
  store i32 %456, i32* %10, align 4
  %457 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 1
  %462 = load i64, i64* %461, align 8
  %463 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %463, i32 0, i32 0
  %465 = load i64, i64* %464, align 8
  %466 = sub nsw i64 %462, %465
  %467 = call i32 @bytestream2_init(i32* %11, i64 %459, i64 %466)
  %468 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %469 = call i32 @bytestream2_tell_p(%struct.TYPE_6__* %468)
  %470 = load i32, i32* %10, align 4
  %471 = add nsw i32 %469, %470
  %472 = load i32, i32* @SEEK_SET, align 4
  %473 = call i32 @bytestream2_seek(i32* %11, i32 %471, i32 %472)
  %474 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %475 = call i32 @bytestream2_get_byte(i32* %11)
  %476 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %474, i32 %475)
  %477 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %478 = call i32 @bytestream2_get_byte(i32* %11)
  %479 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %477, i32 %478)
  %480 = load i32, i32* %7, align 4
  %481 = and i32 %480, 3
  store i32 %481, i32* %9, align 4
  %482 = load i32, i32* %9, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %485, label %484

484:                                              ; preds = %448
  store i32 1, i32* %5, align 4
  br label %499

485:                                              ; preds = %448
  br label %486

486:                                              ; preds = %493, %485
  %487 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %488 = load i32*, i32** %3, align 8
  %489 = call i32 @bytestream2_get_byte(i32* %488)
  %490 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %487, i32 %489)
  %491 = load i32, i32* %9, align 4
  %492 = add nsw i32 %491, -1
  store i32 %492, i32* %9, align 4
  br label %493

493:                                              ; preds = %486
  %494 = load i32, i32* %9, align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %486, label %496

496:                                              ; preds = %493
  %497 = load i32*, i32** %3, align 8
  %498 = call i32 @bytestream2_peek_byte(i32* %497)
  store i32 %498, i32* %7, align 4
  br label %499

499:                                              ; preds = %496, %484
  br label %12

500:                                              ; preds = %443
  %501 = load i32, i32* %7, align 4
  %502 = and i32 %501, 7
  store i32 %502, i32* %9, align 4
  %503 = load i32, i32* %9, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %532, label %505

505:                                              ; preds = %500
  %506 = load i32*, i32** %3, align 8
  %507 = call i32 @bytestream2_peek_byte(i32* %506)
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %526, label %509

509:                                              ; preds = %505
  br label %510

510:                                              ; preds = %523, %509
  %511 = load i32*, i32** %3, align 8
  %512 = call i32 @bytestream2_skip(i32* %511, i32 1)
  %513 = load i32, i32* %9, align 4
  %514 = add nsw i32 %513, 255
  store i32 %514, i32* %9, align 4
  br label %515

515:                                              ; preds = %510
  %516 = load i32*, i32** %3, align 8
  %517 = call i32 @bytestream2_peek_byte(i32* %516)
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %523, label %519

519:                                              ; preds = %515
  %520 = load i32*, i32** %3, align 8
  %521 = call i64 @bytestream2_get_bytes_left(i32* %520)
  %522 = icmp sgt i64 %521, 0
  br label %523

523:                                              ; preds = %519, %515
  %524 = phi i1 [ false, %515 ], [ %522, %519 ]
  br i1 %524, label %510, label %525

525:                                              ; preds = %523
  br label %526

526:                                              ; preds = %525, %505
  %527 = load i32*, i32** %3, align 8
  %528 = call i32 @bytestream2_get_byte(i32* %527)
  %529 = add nsw i32 %528, 7
  %530 = load i32, i32* %9, align 4
  %531 = add nsw i32 %530, %529
  store i32 %531, i32* %9, align 4
  br label %532

532:                                              ; preds = %526, %500
  %533 = load i32*, i32** %3, align 8
  %534 = call i32 @bytestream2_get_le16(i32* %533)
  store i32 %534, i32* %8, align 4
  %535 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %536 = call i32 @bytestream2_tell_p(%struct.TYPE_6__* %535)
  %537 = load i32, i32* %7, align 4
  %538 = and i32 %537, 8
  %539 = mul i32 2048, %538
  %540 = sub i32 %536, %539
  store i32 %540, i32* %10, align 4
  %541 = load i32, i32* %10, align 4
  %542 = load i32, i32* %8, align 4
  %543 = ashr i32 %542, 2
  %544 = sub nsw i32 %541, %543
  store i32 %544, i32* %10, align 4
  %545 = load i32, i32* %10, align 4
  %546 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %547 = call i32 @bytestream2_tell_p(%struct.TYPE_6__* %546)
  %548 = icmp eq i32 %545, %547
  br i1 %548, label %549, label %550

549:                                              ; preds = %532
  br label %630

550:                                              ; preds = %532
  %551 = load i32, i32* %10, align 4
  %552 = sub nsw i32 %551, 16384
  store i32 %552, i32* %10, align 4
  %553 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %554 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %553, i32 0, i32 0
  %555 = load i64, i64* %554, align 8
  %556 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %557 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %556, i32 0, i32 1
  %558 = load i64, i64* %557, align 8
  %559 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %560 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %559, i32 0, i32 0
  %561 = load i64, i64* %560, align 8
  %562 = sub nsw i64 %558, %561
  %563 = call i32 @bytestream2_init(i32* %11, i64 %555, i64 %562)
  %564 = load i32, i32* %10, align 4
  %565 = load i32, i32* @SEEK_SET, align 4
  %566 = call i32 @bytestream2_seek(i32* %11, i32 %564, i32 %565)
  %567 = load i32, i32* %9, align 4
  %568 = icmp slt i32 %567, 6
  br i1 %568, label %575, label %569

569:                                              ; preds = %550
  %570 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %571 = call i32 @bytestream2_tell_p(%struct.TYPE_6__* %570)
  %572 = call i32 @bytestream2_tell(i32* %11)
  %573 = sub nsw i32 %571, %572
  %574 = icmp slt i32 %573, 4
  br i1 %574, label %575, label %592

575:                                              ; preds = %569, %550
  %576 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %577 = call i32 @bytestream2_get_byte(i32* %11)
  %578 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %576, i32 %577)
  %579 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %580 = call i32 @bytestream2_get_byte(i32* %11)
  %581 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %579, i32 %580)
  br label %582

582:                                              ; preds = %588, %575
  %583 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %584 = call i32 @bytestream2_get_byte(i32* %11)
  %585 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %583, i32 %584)
  %586 = load i32, i32* %9, align 4
  %587 = add nsw i32 %586, -1
  store i32 %587, i32* %9, align 4
  br label %588

588:                                              ; preds = %582
  %589 = load i32, i32* %9, align 4
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %582, label %591

591:                                              ; preds = %588
  br label %609

592:                                              ; preds = %569
  %593 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %594 = call i32 @bytestream2_get_le32(i32* %11)
  %595 = call i32 @bytestream2_put_le32(%struct.TYPE_6__* %593, i32 %594)
  %596 = load i32, i32* %9, align 4
  %597 = sub nsw i32 %596, 2
  store i32 %597, i32* %9, align 4
  br label %598

598:                                              ; preds = %605, %592
  %599 = load i32, i32* %9, align 4
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %608

601:                                              ; preds = %598
  %602 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %603 = call i32 @bytestream2_get_byte(i32* %11)
  %604 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %602, i32 %603)
  br label %605

605:                                              ; preds = %601
  %606 = load i32, i32* %9, align 4
  %607 = add nsw i32 %606, -1
  store i32 %607, i32* %9, align 4
  br label %598

608:                                              ; preds = %598
  br label %609

609:                                              ; preds = %608, %591
  %610 = load i32, i32* %8, align 4
  %611 = and i32 %610, 3
  store i32 %611, i32* %9, align 4
  %612 = load i32, i32* %9, align 4
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %615, label %614

614:                                              ; preds = %609
  store i32 1, i32* %5, align 4
  br label %629

615:                                              ; preds = %609
  br label %616

616:                                              ; preds = %623, %615
  %617 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %618 = load i32*, i32** %3, align 8
  %619 = call i32 @bytestream2_get_byte(i32* %618)
  %620 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %617, i32 %619)
  %621 = load i32, i32* %9, align 4
  %622 = add nsw i32 %621, -1
  store i32 %622, i32* %9, align 4
  br label %623

623:                                              ; preds = %616
  %624 = load i32, i32* %9, align 4
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %616, label %626

626:                                              ; preds = %623
  %627 = load i32*, i32** %3, align 8
  %628 = call i32 @bytestream2_peek_byte(i32* %627)
  store i32 %628, i32* %7, align 4
  br label %629

629:                                              ; preds = %626, %614
  br label %12

630:                                              ; preds = %549, %12
  ret i32 0
}

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_peek_byte(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_put_byte(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i64, i64) #1

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_tell_p(%struct.TYPE_6__*) #1

declare dso_local i32 @bytestream2_put_le32(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
