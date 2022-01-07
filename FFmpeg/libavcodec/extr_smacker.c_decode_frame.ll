; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_smacker.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_smacker.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32*, i64*, i32 }
%struct.TYPE_10__ = type { i32, i64 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@block_runs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32*, %struct.TYPE_10__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_11__* %0, i8* %1, i32* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
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
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %10, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sle i32 %39, 769
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %42, i32* %5, align 4
  br label %607

43:                                               ; preds = %4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = call i32 @ff_reget_buffer(%struct.TYPE_11__* %44, %struct.TYPE_12__* %47, i32 0)
  store i32 %48, i32* %20, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %20, align 4
  store i32 %51, i32* %5, align 4
  br label %607

52:                                               ; preds = %43
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %12, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @bytestream2_init(i32* %13, i64 %63, i32 %66)
  %68 = call i32 @bytestream2_get_byteu(i32* %13)
  store i32 %68, i32* %22, align 4
  %69 = load i32, i32* %22, align 4
  %70 = and i32 %69, 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 8
  %75 = load i32, i32* %22, align 4
  %76 = and i32 %75, 2
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  store i32 %80, i32* %84, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %52
  %92 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 4
  store i32 %92, i32* %96, align 8
  br label %103

97:                                               ; preds = %52
  %98 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 4
  store i32 %98, i32* %102, align 8
  br label %103

103:                                              ; preds = %97, %91
  store i32 0, i32* %19, align 4
  br label %104

104:                                              ; preds = %112, %103
  %105 = load i32, i32* %19, align 4
  %106 = icmp slt i32 %105, 256
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = call i32 @bytestream2_get_be24u(i32* %13)
  %109 = or i32 -16777216, %108
  %110 = load i32*, i32** %12, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %12, align 8
  store i32 %109, i32* %110, align 4
  br label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %19, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %19, align 4
  br label %104

115:                                              ; preds = %104
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @last_reset(i32 %118, i32 %121)
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @last_reset(i32 %125, i32 %128)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @last_reset(i32 %132, i32 %135)
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @last_reset(i32 %139, i32 %142)
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 769
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, 769
  %152 = call i32 @init_get_bits8(i32* %14, i64 %147, i32 %151)
  store i32 %152, i32* %20, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %115
  %155 = load i32, i32* %20, align 4
  store i32 %155, i32* %5, align 4
  br label %607

156:                                              ; preds = %115
  store i32 0, i32* %16, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = ashr i32 %159, 2
  store i32 %160, i32* %17, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = ashr i32 %163, 2
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* %18, align 4
  %167 = mul nsw i32 %165, %166
  store i32 %167, i32* %15, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %21, align 4
  br label %175

175:                                              ; preds = %592, %156
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %15, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %593

179:                                              ; preds = %175
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @smk_get_code(i32* %14, i32 %182, i32 %185)
  store i32 %186, i32* %23, align 4
  %187 = load i32*, i32** @block_runs, align 8
  %188 = load i32, i32* %23, align 4
  %189 = ashr i32 %188, 2
  %190 = and i32 %189, 63
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %187, i64 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %24, align 4
  %194 = load i32, i32* %23, align 4
  %195 = and i32 %194, 3
  switch i32 %195, label %592 [
    i32 129, label %196
    i32 130, label %313
    i32 128, label %522
    i32 131, label %537
  ]

196:                                              ; preds = %179
  br label %197

197:                                              ; preds = %309, %196
  %198 = load i32, i32* %24, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %24, align 4
  %200 = icmp ne i32 %198, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* %15, align 4
  %204 = icmp slt i32 %202, %203
  br label %205

205:                                              ; preds = %201, %197
  %206 = phi i1 [ false, %197 ], [ %204, %201 ]
  br i1 %206, label %207, label %312

207:                                              ; preds = %205
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @smk_get_code(i32* %14, i32 %210, i32 %213)
  store i32 %214, i32* %27, align 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @smk_get_code(i32* %14, i32 %217, i32 %220)
  store i32 %221, i32* %28, align 4
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 3
  %226 = load i64*, i64** %225, align 8
  %227 = getelementptr inbounds i64, i64* %226, i64 0
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* %16, align 4
  %230 = load i32, i32* %17, align 4
  %231 = sdiv i32 %229, %230
  %232 = load i32, i32* %21, align 4
  %233 = mul nsw i32 %232, 4
  %234 = mul nsw i32 %231, %233
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %228, %235
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* %17, align 4
  %239 = srem i32 %237, %238
  %240 = mul nsw i32 %239, 4
  %241 = sext i32 %240 to i64
  %242 = add nsw i64 %236, %241
  %243 = inttoptr i64 %242 to i32*
  store i32* %243, i32** %11, align 8
  %244 = load i32, i32* %27, align 4
  %245 = ashr i32 %244, 8
  store i32 %245, i32* %29, align 4
  %246 = load i32, i32* %27, align 4
  %247 = and i32 %246, 255
  store i32 %247, i32* %30, align 4
  store i32 0, i32* %19, align 4
  br label %248

248:                                              ; preds = %306, %207
  %249 = load i32, i32* %19, align 4
  %250 = icmp slt i32 %249, 4
  br i1 %250, label %251, label %309

251:                                              ; preds = %248
  %252 = load i32, i32* %28, align 4
  %253 = and i32 %252, 1
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %251
  %256 = load i32, i32* %29, align 4
  %257 = load i32*, i32** %11, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  store i32 %256, i32* %258, align 4
  br label %263

259:                                              ; preds = %251
  %260 = load i32, i32* %30, align 4
  %261 = load i32*, i32** %11, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  store i32 %260, i32* %262, align 4
  br label %263

263:                                              ; preds = %259, %255
  %264 = load i32, i32* %28, align 4
  %265 = and i32 %264, 2
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %263
  %268 = load i32, i32* %29, align 4
  %269 = load i32*, i32** %11, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  store i32 %268, i32* %270, align 4
  br label %275

271:                                              ; preds = %263
  %272 = load i32, i32* %30, align 4
  %273 = load i32*, i32** %11, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  store i32 %272, i32* %274, align 4
  br label %275

275:                                              ; preds = %271, %267
  %276 = load i32, i32* %28, align 4
  %277 = and i32 %276, 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %275
  %280 = load i32, i32* %29, align 4
  %281 = load i32*, i32** %11, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 2
  store i32 %280, i32* %282, align 4
  br label %287

283:                                              ; preds = %275
  %284 = load i32, i32* %30, align 4
  %285 = load i32*, i32** %11, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 2
  store i32 %284, i32* %286, align 4
  br label %287

287:                                              ; preds = %283, %279
  %288 = load i32, i32* %28, align 4
  %289 = and i32 %288, 8
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %287
  %292 = load i32, i32* %29, align 4
  %293 = load i32*, i32** %11, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 3
  store i32 %292, i32* %294, align 4
  br label %299

295:                                              ; preds = %287
  %296 = load i32, i32* %30, align 4
  %297 = load i32*, i32** %11, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 3
  store i32 %296, i32* %298, align 4
  br label %299

299:                                              ; preds = %295, %291
  %300 = load i32, i32* %28, align 4
  %301 = ashr i32 %300, 4
  store i32 %301, i32* %28, align 4
  %302 = load i32, i32* %21, align 4
  %303 = load i32*, i32** %11, align 8
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds i32, i32* %303, i64 %304
  store i32* %305, i32** %11, align 8
  br label %306

306:                                              ; preds = %299
  %307 = load i32, i32* %19, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %19, align 4
  br label %248

309:                                              ; preds = %248
  %310 = load i32, i32* %16, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %16, align 4
  br label %197

312:                                              ; preds = %205
  br label %592

313:                                              ; preds = %179
  store i32 0, i32* %25, align 4
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @MKTAG(i8 signext 83, i8 signext 77, i8 signext 75, i8 signext 52)
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %329

319:                                              ; preds = %313
  %320 = call i32 @get_bits1(i32* %14)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %319
  store i32 1, i32* %25, align 4
  br label %328

323:                                              ; preds = %319
  %324 = call i32 @get_bits1(i32* %14)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %323
  store i32 2, i32* %25, align 4
  br label %327

327:                                              ; preds = %326, %323
  br label %328

328:                                              ; preds = %327, %322
  br label %329

329:                                              ; preds = %328, %313
  br label %330

330:                                              ; preds = %518, %329
  %331 = load i32, i32* %24, align 4
  %332 = add nsw i32 %331, -1
  store i32 %332, i32* %24, align 4
  %333 = icmp ne i32 %331, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %330
  %335 = load i32, i32* %16, align 4
  %336 = load i32, i32* %15, align 4
  %337 = icmp slt i32 %335, %336
  br label %338

338:                                              ; preds = %334, %330
  %339 = phi i1 [ false, %330 ], [ %337, %334 ]
  br i1 %339, label %340, label %521

340:                                              ; preds = %338
  %341 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 0
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 3
  %345 = load i64*, i64** %344, align 8
  %346 = getelementptr inbounds i64, i64* %345, i64 0
  %347 = load i64, i64* %346, align 8
  %348 = load i32, i32* %16, align 4
  %349 = load i32, i32* %17, align 4
  %350 = sdiv i32 %348, %349
  %351 = load i32, i32* %21, align 4
  %352 = mul nsw i32 %351, 4
  %353 = mul nsw i32 %350, %352
  %354 = sext i32 %353 to i64
  %355 = add nsw i64 %347, %354
  %356 = load i32, i32* %16, align 4
  %357 = load i32, i32* %17, align 4
  %358 = srem i32 %356, %357
  %359 = mul nsw i32 %358, 4
  %360 = sext i32 %359 to i64
  %361 = add nsw i64 %355, %360
  %362 = inttoptr i64 %361 to i32*
  store i32* %362, i32** %11, align 8
  %363 = load i32, i32* %25, align 4
  switch i32 %363, label %518 [
    i32 0, label %364
    i32 1, label %398
    i32 2, label %473
  ]

364:                                              ; preds = %340
  store i32 0, i32* %19, align 4
  br label %365

365:                                              ; preds = %394, %364
  %366 = load i32, i32* %19, align 4
  %367 = icmp slt i32 %366, 4
  br i1 %367, label %368, label %397

368:                                              ; preds = %365
  %369 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @smk_get_code(i32* %14, i32 %371, i32 %374)
  store i32 %375, i32* %26, align 4
  %376 = load i32*, i32** %11, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 2
  %378 = load i32, i32* %26, align 4
  %379 = call i32 @AV_WL16(i32* %377, i32 %378)
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 8
  %386 = call i32 @smk_get_code(i32* %14, i32 %382, i32 %385)
  store i32 %386, i32* %26, align 4
  %387 = load i32*, i32** %11, align 8
  %388 = load i32, i32* %26, align 4
  %389 = call i32 @AV_WL16(i32* %387, i32 %388)
  %390 = load i32, i32* %21, align 4
  %391 = load i32*, i32** %11, align 8
  %392 = sext i32 %390 to i64
  %393 = getelementptr inbounds i32, i32* %391, i64 %392
  store i32* %393, i32** %11, align 8
  br label %394

394:                                              ; preds = %368
  %395 = load i32, i32* %19, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %19, align 4
  br label %365

397:                                              ; preds = %365
  br label %518

398:                                              ; preds = %340
  %399 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 8
  %405 = call i32 @smk_get_code(i32* %14, i32 %401, i32 %404)
  store i32 %405, i32* %26, align 4
  %406 = load i32, i32* %26, align 4
  %407 = and i32 %406, 255
  %408 = load i32*, i32** %11, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 1
  store i32 %407, i32* %409, align 4
  %410 = load i32*, i32** %11, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 0
  store i32 %407, i32* %411, align 4
  %412 = load i32, i32* %26, align 4
  %413 = ashr i32 %412, 8
  %414 = load i32*, i32** %11, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 3
  store i32 %413, i32* %415, align 4
  %416 = load i32*, i32** %11, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 2
  store i32 %413, i32* %417, align 4
  %418 = load i32, i32* %21, align 4
  %419 = load i32*, i32** %11, align 8
  %420 = sext i32 %418 to i64
  %421 = getelementptr inbounds i32, i32* %419, i64 %420
  store i32* %421, i32** %11, align 8
  %422 = load i32, i32* %26, align 4
  %423 = and i32 %422, 255
  %424 = load i32*, i32** %11, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 1
  store i32 %423, i32* %425, align 4
  %426 = load i32*, i32** %11, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 0
  store i32 %423, i32* %427, align 4
  %428 = load i32, i32* %26, align 4
  %429 = ashr i32 %428, 8
  %430 = load i32*, i32** %11, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 3
  store i32 %429, i32* %431, align 4
  %432 = load i32*, i32** %11, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 2
  store i32 %429, i32* %433, align 4
  %434 = load i32, i32* %21, align 4
  %435 = load i32*, i32** %11, align 8
  %436 = sext i32 %434 to i64
  %437 = getelementptr inbounds i32, i32* %435, i64 %436
  store i32* %437, i32** %11, align 8
  %438 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %439 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %442 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 8
  %444 = call i32 @smk_get_code(i32* %14, i32 %440, i32 %443)
  store i32 %444, i32* %26, align 4
  %445 = load i32, i32* %26, align 4
  %446 = and i32 %445, 255
  %447 = load i32*, i32** %11, align 8
  %448 = getelementptr inbounds i32, i32* %447, i64 1
  store i32 %446, i32* %448, align 4
  %449 = load i32*, i32** %11, align 8
  %450 = getelementptr inbounds i32, i32* %449, i64 0
  store i32 %446, i32* %450, align 4
  %451 = load i32, i32* %26, align 4
  %452 = ashr i32 %451, 8
  %453 = load i32*, i32** %11, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 3
  store i32 %452, i32* %454, align 4
  %455 = load i32*, i32** %11, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 2
  store i32 %452, i32* %456, align 4
  %457 = load i32, i32* %21, align 4
  %458 = load i32*, i32** %11, align 8
  %459 = sext i32 %457 to i64
  %460 = getelementptr inbounds i32, i32* %458, i64 %459
  store i32* %460, i32** %11, align 8
  %461 = load i32, i32* %26, align 4
  %462 = and i32 %461, 255
  %463 = load i32*, i32** %11, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 1
  store i32 %462, i32* %464, align 4
  %465 = load i32*, i32** %11, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 0
  store i32 %462, i32* %466, align 4
  %467 = load i32, i32* %26, align 4
  %468 = ashr i32 %467, 8
  %469 = load i32*, i32** %11, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 3
  store i32 %468, i32* %470, align 4
  %471 = load i32*, i32** %11, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 2
  store i32 %468, i32* %472, align 4
  br label %518

473:                                              ; preds = %340
  store i32 0, i32* %19, align 4
  br label %474

474:                                              ; preds = %514, %473
  %475 = load i32, i32* %19, align 4
  %476 = icmp slt i32 %475, 2
  br i1 %476, label %477, label %517

477:                                              ; preds = %474
  %478 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %479 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %478, i32 0, i32 2
  %480 = load i32, i32* %479, align 4
  %481 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %482 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 8
  %484 = call i32 @smk_get_code(i32* %14, i32 %480, i32 %483)
  store i32 %484, i32* %32, align 4
  %485 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %486 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 4
  %488 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %489 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 8
  %491 = call i32 @smk_get_code(i32* %14, i32 %487, i32 %490)
  store i32 %491, i32* %31, align 4
  %492 = load i32*, i32** %11, align 8
  %493 = load i32, i32* %31, align 4
  %494 = call i32 @AV_WL16(i32* %492, i32 %493)
  %495 = load i32*, i32** %11, align 8
  %496 = getelementptr inbounds i32, i32* %495, i64 2
  %497 = load i32, i32* %32, align 4
  %498 = call i32 @AV_WL16(i32* %496, i32 %497)
  %499 = load i32, i32* %21, align 4
  %500 = load i32*, i32** %11, align 8
  %501 = sext i32 %499 to i64
  %502 = getelementptr inbounds i32, i32* %500, i64 %501
  store i32* %502, i32** %11, align 8
  %503 = load i32*, i32** %11, align 8
  %504 = load i32, i32* %31, align 4
  %505 = call i32 @AV_WL16(i32* %503, i32 %504)
  %506 = load i32*, i32** %11, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 2
  %508 = load i32, i32* %32, align 4
  %509 = call i32 @AV_WL16(i32* %507, i32 %508)
  %510 = load i32, i32* %21, align 4
  %511 = load i32*, i32** %11, align 8
  %512 = sext i32 %510 to i64
  %513 = getelementptr inbounds i32, i32* %511, i64 %512
  store i32* %513, i32** %11, align 8
  br label %514

514:                                              ; preds = %477
  %515 = load i32, i32* %19, align 4
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %19, align 4
  br label %474

517:                                              ; preds = %474
  br label %518

518:                                              ; preds = %340, %517, %398, %397
  %519 = load i32, i32* %16, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %16, align 4
  br label %330

521:                                              ; preds = %338
  br label %592

522:                                              ; preds = %179
  br label %523

523:                                              ; preds = %533, %522
  %524 = load i32, i32* %24, align 4
  %525 = add nsw i32 %524, -1
  store i32 %525, i32* %24, align 4
  %526 = icmp ne i32 %524, 0
  br i1 %526, label %527, label %531

527:                                              ; preds = %523
  %528 = load i32, i32* %16, align 4
  %529 = load i32, i32* %15, align 4
  %530 = icmp slt i32 %528, %529
  br label %531

531:                                              ; preds = %527, %523
  %532 = phi i1 [ false, %523 ], [ %530, %527 ]
  br i1 %532, label %533, label %536

533:                                              ; preds = %531
  %534 = load i32, i32* %16, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %16, align 4
  br label %523

536:                                              ; preds = %531
  br label %592

537:                                              ; preds = %179
  %538 = load i32, i32* %23, align 4
  %539 = ashr i32 %538, 8
  store i32 %539, i32* %25, align 4
  br label %540

540:                                              ; preds = %588, %537
  %541 = load i32, i32* %24, align 4
  %542 = add nsw i32 %541, -1
  store i32 %542, i32* %24, align 4
  %543 = icmp ne i32 %541, 0
  br i1 %543, label %544, label %548

544:                                              ; preds = %540
  %545 = load i32, i32* %16, align 4
  %546 = load i32, i32* %15, align 4
  %547 = icmp slt i32 %545, %546
  br label %548

548:                                              ; preds = %544, %540
  %549 = phi i1 [ false, %540 ], [ %547, %544 ]
  br i1 %549, label %550, label %591

550:                                              ; preds = %548
  %551 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %552 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %551, i32 0, i32 0
  %553 = load %struct.TYPE_12__*, %struct.TYPE_12__** %552, align 8
  %554 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %553, i32 0, i32 3
  %555 = load i64*, i64** %554, align 8
  %556 = getelementptr inbounds i64, i64* %555, i64 0
  %557 = load i64, i64* %556, align 8
  %558 = load i32, i32* %16, align 4
  %559 = load i32, i32* %17, align 4
  %560 = sdiv i32 %558, %559
  %561 = load i32, i32* %21, align 4
  %562 = mul nsw i32 %561, 4
  %563 = mul nsw i32 %560, %562
  %564 = sext i32 %563 to i64
  %565 = add nsw i64 %557, %564
  %566 = load i32, i32* %16, align 4
  %567 = load i32, i32* %17, align 4
  %568 = srem i32 %566, %567
  %569 = mul nsw i32 %568, 4
  %570 = sext i32 %569 to i64
  %571 = add nsw i64 %565, %570
  %572 = inttoptr i64 %571 to i32*
  store i32* %572, i32** %11, align 8
  %573 = load i32, i32* %25, align 4
  %574 = mul i32 %573, 16843009
  store i32 %574, i32* %33, align 4
  store i32 0, i32* %19, align 4
  br label %575

575:                                              ; preds = %585, %550
  %576 = load i32, i32* %19, align 4
  %577 = icmp slt i32 %576, 4
  br i1 %577, label %578, label %588

578:                                              ; preds = %575
  %579 = load i32, i32* %33, align 4
  %580 = load i32*, i32** %11, align 8
  store i32 %579, i32* %580, align 4
  %581 = load i32, i32* %21, align 4
  %582 = load i32*, i32** %11, align 8
  %583 = sext i32 %581 to i64
  %584 = getelementptr inbounds i32, i32* %582, i64 %583
  store i32* %584, i32** %11, align 8
  br label %585

585:                                              ; preds = %578
  %586 = load i32, i32* %19, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %19, align 4
  br label %575

588:                                              ; preds = %575
  %589 = load i32, i32* %16, align 4
  %590 = add nsw i32 %589, 1
  store i32 %590, i32* %16, align 4
  br label %540

591:                                              ; preds = %548
  br label %592

592:                                              ; preds = %179, %591, %536, %521, %312
  br label %175

593:                                              ; preds = %175
  %594 = load i8*, i8** %7, align 8
  %595 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %596 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %595, i32 0, i32 0
  %597 = load %struct.TYPE_12__*, %struct.TYPE_12__** %596, align 8
  %598 = call i32 @av_frame_ref(i8* %594, %struct.TYPE_12__* %597)
  store i32 %598, i32* %20, align 4
  %599 = icmp slt i32 %598, 0
  br i1 %599, label %600, label %602

600:                                              ; preds = %593
  %601 = load i32, i32* %20, align 4
  store i32 %601, i32* %5, align 4
  br label %607

602:                                              ; preds = %593
  %603 = load i32*, i32** %8, align 8
  store i32 1, i32* %603, align 4
  %604 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %605 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %604, i32 0, i32 0
  %606 = load i32, i32* %605, align 8
  store i32 %606, i32* %5, align 4
  br label %607

607:                                              ; preds = %602, %600, %154, %50, %41
  %608 = load i32, i32* %5, align 4
  ret i32 %608
}

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_11__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i64, i32) #1

declare dso_local i32 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @bytestream2_get_be24u(i32*) #1

declare dso_local i32 @last_reset(i32, i32) #1

declare dso_local i32 @init_get_bits8(i32*, i64, i32) #1

declare dso_local i32 @smk_get_code(i32*, i32, i32) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @AV_WL16(i32*, i32) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
