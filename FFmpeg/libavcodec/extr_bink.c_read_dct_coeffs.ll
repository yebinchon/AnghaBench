; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bink.c_read_dct_coeffs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bink.c_read_dct_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"quant_index %d out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i64*, i32*, i32*, i32)* @read_dct_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_dct_coeffs(%struct.TYPE_3__* %0, i32* %1, i32* %2, i64* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [128 x i32], align 16
  %17 = alloca [128 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64* %3, i64** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 64, i32* %24, align 4
  store i32 64, i32* %25, align 4
  store i32 0, i32* %27, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @get_bits_left(i32* %29)
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %34

32:                                               ; preds = %7
  %33 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %33, i32* %8, align 4
  br label %294

34:                                               ; preds = %7
  %35 = load i32, i32* %25, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %36
  store i32 4, i32* %37, align 4
  %38 = load i32, i32* %25, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %25, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 %40
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %25, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %43
  store i32 24, i32* %44, align 4
  %45 = load i32, i32* %25, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %25, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 %47
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %25, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %50
  store i32 44, i32* %51, align 4
  %52 = load i32, i32* %25, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %25, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 %54
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* %25, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %57
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* %25, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %25, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 %61
  store i32 3, i32* %62, align 4
  %63 = load i32, i32* %25, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %64
  store i32 2, i32* %65, align 4
  %66 = load i32, i32* %25, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %25, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 %68
  store i32 3, i32* %69, align 4
  %70 = load i32, i32* %25, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %71
  store i32 3, i32* %72, align 4
  %73 = load i32, i32* %25, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %25, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 %75
  store i32 3, i32* %76, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @get_bits(i32* %77, i32 4)
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %20, align 4
  br label %80

80:                                               ; preds = %268, %34
  %81 = load i32, i32* %20, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %271

83:                                               ; preds = %80
  %84 = load i32, i32* %24, align 4
  store i32 %84, i32* %26, align 4
  br label %85

85:                                               ; preds = %266, %104, %83
  %86 = load i32, i32* %26, align 4
  %87 = load i32, i32* %25, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %267

89:                                               ; preds = %85
  %90 = load i32, i32* %26, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %26, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %93, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %89
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @get_bits1(i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100, %89
  %105 = load i32, i32* %26, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %26, align 4
  br label %85

107:                                              ; preds = %100
  %108 = load i32, i32* %26, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* %26, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %22, align 4
  %116 = load i32, i32* %22, align 4
  switch i32 %116, label %266 [
    i32 0, label %117
    i32 2, label %126
    i32 1, label %199
    i32 3, label %221
  ]

117:                                              ; preds = %107
  %118 = load i32, i32* %21, align 4
  %119 = add nsw i32 %118, 4
  %120 = load i32, i32* %26, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %121
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* %26, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 %124
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %107, %117
  %127 = load i32, i32* %22, align 4
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i32, i32* %26, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %131
  store i32 0, i32* %132, align 4
  %133 = load i32, i32* %26, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %26, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 %135
  store i32 0, i32* %136, align 4
  br label %137

137:                                              ; preds = %129, %126
  store i32 0, i32* %18, align 4
  br label %138

138:                                              ; preds = %193, %137
  %139 = load i32, i32* %18, align 4
  %140 = icmp slt i32 %139, 4
  br i1 %140, label %141, label %198

141:                                              ; preds = %138
  %142 = load i32*, i32** %10, align 8
  %143 = call i32 @get_bits1(i32* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load i32, i32* %21, align 4
  %147 = load i32, i32* %24, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %24, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %149
  store i32 %146, i32* %150, align 4
  %151 = load i32, i32* %24, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 %152
  store i32 3, i32* %153, align 4
  br label %192

154:                                              ; preds = %141
  %155 = load i32, i32* %20, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %154
  %158 = load i32*, i32** %10, align 8
  %159 = call i32 @get_bits1(i32* %158)
  %160 = shl i32 %159, 1
  %161 = sub nsw i32 1, %160
  store i32 %161, i32* %19, align 4
  br label %177

162:                                              ; preds = %154
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* %20, align 4
  %165 = call i32 @get_bits(i32* %163, i32 %164)
  %166 = load i32, i32* %20, align 4
  %167 = shl i32 1, %166
  %168 = or i32 %165, %167
  store i32 %168, i32* %19, align 4
  %169 = load i32*, i32** %10, align 8
  %170 = call i32 @get_bits1(i32* %169)
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %23, align 4
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %23, align 4
  %174 = xor i32 %172, %173
  %175 = load i32, i32* %23, align 4
  %176 = sub nsw i32 %174, %175
  store i32 %176, i32* %19, align 4
  br label %177

177:                                              ; preds = %162, %157
  %178 = load i32, i32* %19, align 4
  %179 = load i32*, i32** %11, align 8
  %180 = load i64*, i64** %12, align 8
  %181 = load i32, i32* %21, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i32, i32* %179, i64 %184
  store i32 %178, i32* %185, align 4
  %186 = load i32, i32* %21, align 4
  %187 = load i32*, i32** %14, align 8
  %188 = load i32, i32* %27, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %27, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  store i32 %186, i32* %191, align 4
  br label %192

192:                                              ; preds = %177, %145
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %18, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %18, align 4
  %196 = load i32, i32* %21, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %21, align 4
  br label %138

198:                                              ; preds = %138
  br label %266

199:                                              ; preds = %107
  %200 = load i32, i32* %26, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 %201
  store i32 2, i32* %202, align 4
  store i32 0, i32* %18, align 4
  br label %203

203:                                              ; preds = %217, %199
  %204 = load i32, i32* %18, align 4
  %205 = icmp slt i32 %204, 3
  br i1 %205, label %206, label %220

206:                                              ; preds = %203
  %207 = load i32, i32* %21, align 4
  %208 = add nsw i32 %207, 4
  store i32 %208, i32* %21, align 4
  %209 = load i32, i32* %21, align 4
  %210 = load i32, i32* %25, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %211
  store i32 %209, i32* %212, align 4
  %213 = load i32, i32* %25, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %25, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 %215
  store i32 2, i32* %216, align 4
  br label %217

217:                                              ; preds = %206
  %218 = load i32, i32* %18, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %18, align 4
  br label %203

220:                                              ; preds = %203
  br label %266

221:                                              ; preds = %107
  %222 = load i32, i32* %20, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %221
  %225 = load i32*, i32** %10, align 8
  %226 = call i32 @get_bits1(i32* %225)
  %227 = shl i32 %226, 1
  %228 = sub nsw i32 1, %227
  store i32 %228, i32* %19, align 4
  br label %244

229:                                              ; preds = %221
  %230 = load i32*, i32** %10, align 8
  %231 = load i32, i32* %20, align 4
  %232 = call i32 @get_bits(i32* %230, i32 %231)
  %233 = load i32, i32* %20, align 4
  %234 = shl i32 1, %233
  %235 = or i32 %232, %234
  store i32 %235, i32* %19, align 4
  %236 = load i32*, i32** %10, align 8
  %237 = call i32 @get_bits1(i32* %236)
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %23, align 4
  %239 = load i32, i32* %19, align 4
  %240 = load i32, i32* %23, align 4
  %241 = xor i32 %239, %240
  %242 = load i32, i32* %23, align 4
  %243 = sub nsw i32 %241, %242
  store i32 %243, i32* %19, align 4
  br label %244

244:                                              ; preds = %229, %224
  %245 = load i32, i32* %19, align 4
  %246 = load i32*, i32** %11, align 8
  %247 = load i64*, i64** %12, align 8
  %248 = load i32, i32* %21, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %247, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds i32, i32* %246, i64 %251
  store i32 %245, i32* %252, align 4
  %253 = load i32, i32* %21, align 4
  %254 = load i32*, i32** %14, align 8
  %255 = load i32, i32* %27, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %27, align 4
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  store i32 %253, i32* %258, align 4
  %259 = load i32, i32* %26, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %260
  store i32 0, i32* %261, align 4
  %262 = load i32, i32* %26, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %26, align 4
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 %264
  store i32 0, i32* %265, align 4
  br label %266

266:                                              ; preds = %107, %244, %220, %198
  br label %85

267:                                              ; preds = %85
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %20, align 4
  %270 = add nsw i32 %269, -1
  store i32 %270, i32* %20, align 4
  br label %80

271:                                              ; preds = %80
  %272 = load i32, i32* %15, align 4
  %273 = icmp eq i32 %272, -1
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = load i32*, i32** %10, align 8
  %276 = call i32 @get_bits(i32* %275, i32 4)
  store i32 %276, i32* %28, align 4
  br label %290

277:                                              ; preds = %271
  %278 = load i32, i32* %15, align 4
  store i32 %278, i32* %28, align 4
  %279 = load i32, i32* %28, align 4
  %280 = icmp ugt i32 %279, 15
  br i1 %280, label %281, label %289

281:                                              ; preds = %277
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @AV_LOG_ERROR, align 4
  %286 = load i32, i32* %28, align 4
  %287 = call i32 @av_log(i32 %284, i32 %285, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %286)
  %288 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %288, i32* %8, align 4
  br label %294

289:                                              ; preds = %277
  br label %290

290:                                              ; preds = %289, %274
  %291 = load i32, i32* %27, align 4
  %292 = load i32*, i32** %13, align 8
  store i32 %291, i32* %292, align 4
  %293 = load i32, i32* %28, align 4
  store i32 %293, i32* %8, align 4
  br label %294

294:                                              ; preds = %290, %281, %32
  %295 = load i32, i32* %8, align 4
  ret i32 %295
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
