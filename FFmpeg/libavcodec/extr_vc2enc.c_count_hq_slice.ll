; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc2enc.c_count_hq_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc2enc.c_count_hq_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32**, i32, i32, i32, %struct.TYPE_6__*, i64** }
%struct.TYPE_6__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32, i32, i32, i32* }

@MAX_DWT_LEVELS = common dso_local global i32 0, align 4
@ff_dirac_qscale_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @count_hq_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_hq_slice(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %31 = load i32, i32* @MAX_DWT_LEVELS, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %8, align 8
  %34 = alloca [4 x i32], i64 %32, align 16
  store i64 %32, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %14, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %2
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %336

54:                                               ; preds = %2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 8, %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 8
  store i32 %62, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %104, %54
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %107

69:                                               ; preds = %63
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %100, %69
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 4
  br i1 %77, label %78, label %103

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 7
  %83 = load i64**, i64*** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64*, i64** %83, i64 %85
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %80, %91
  %93 = call i32 @FFMAX(i64 %92, i32 0)
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i64 %95
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %96, i64 0, i64 %98
  store i32 %93, i32* %99, align 4
  br label %100

100:                                              ; preds = %78
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %75

103:                                              ; preds = %75
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %63

107:                                              ; preds = %63
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %324, %107
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 3
  br i1 %110, label %111, label %327

111:                                              ; preds = %108
  %112 = load i32, i32* %10, align 4
  %113 = ashr i32 %112, 3
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 8
  store i32 %115, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %289, %111
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %292

122:                                              ; preds = %116
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %285, %122
  %129 = load i32, i32* %13, align 4
  %130 = icmp slt i32 %129, 4
  br i1 %130, label %131, label %288

131:                                              ; preds = %128
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 6
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %139, i64 %141
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i64 %145
  store %struct.TYPE_8__* %146, %struct.TYPE_8__** %20, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i64 %148
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %149, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %21, align 4
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load i32**, i32*** %155, align 8
  %157 = load i32, i32* %21, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = shl i32 %162, 2
  store i32 %163, i32* %22, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  %166 = load i32**, i32*** %165, align 8
  %167 = load i32, i32* %21, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %166, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %23, align 4
  %173 = load i32*, i32** @ff_dirac_qscale_tab, align 8
  %174 = load i32, i32* %21, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @av_log2(i32 %177)
  %179 = add nsw i32 %178, 32
  store i32 %179, i32* %24, align 4
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = mul nsw i32 %182, %185
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = sdiv i32 %186, %189
  store i32 %190, i32* %25, align 4
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 1
  %198 = mul nsw i32 %193, %197
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = sdiv i32 %198, %201
  store i32 %202, i32* %26, align 4
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 %205, %208
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = sdiv i32 %209, %212
  store i32 %213, i32* %27, align 4
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  %221 = mul nsw i32 %216, %220
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = sdiv i32 %221, %224
  store i32 %225, i32* %28, align 4
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %27, align 4
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = mul nsw i32 %229, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %228, i64 %234
  store i32* %235, i32** %29, align 8
  %236 = load i32, i32* %27, align 4
  store i32 %236, i32* %7, align 4
  br label %237

237:                                              ; preds = %281, %131
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* %28, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %284

241:                                              ; preds = %237
  %242 = load i32, i32* %25, align 4
  store i32 %242, i32* %6, align 4
  br label %243

243:                                              ; preds = %271, %241
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* %26, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %274

247:                                              ; preds = %243
  %248 = load i32*, i32** %29, align 8
  %249 = load i32, i32* %6, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @FFABS(i32 %252)
  %254 = load i32, i32* %22, align 4
  %255 = load i32, i32* %23, align 4
  %256 = load i32, i32* %24, align 4
  %257 = call i32 @QUANT(i32 %253, i32 %254, i32 %255, i32 %256)
  store i32 %257, i32* %30, align 4
  %258 = load i32, i32* %30, align 4
  %259 = call i64 @count_vc2_ue_uint(i32 %258)
  %260 = load i32, i32* %10, align 4
  %261 = sext i32 %260 to i64
  %262 = add nsw i64 %261, %259
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %10, align 4
  %264 = load i32, i32* %30, align 4
  %265 = icmp ne i32 %264, 0
  %266 = xor i1 %265, true
  %267 = xor i1 %266, true
  %268 = zext i1 %267 to i32
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, %268
  store i32 %270, i32* %10, align 4
  br label %271

271:                                              ; preds = %247
  %272 = load i32, i32* %6, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %6, align 4
  br label %243

274:                                              ; preds = %243
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load i32*, i32** %29, align 8
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  store i32* %280, i32** %29, align 8
  br label %281

281:                                              ; preds = %274
  %282 = load i32, i32* %7, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %7, align 4
  br label %237

284:                                              ; preds = %237
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %13, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %13, align 4
  br label %128

288:                                              ; preds = %128
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %12, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %12, align 4
  br label %116

292:                                              ; preds = %116
  %293 = load i32, i32* %10, align 4
  %294 = call i32 @FFALIGN(i32 %293, i32 8)
  %295 = load i32, i32* %10, align 4
  %296 = sub nsw i32 %294, %295
  %297 = load i32, i32* %10, align 4
  %298 = add nsw i32 %297, %296
  store i32 %298, i32* %10, align 4
  %299 = load i32, i32* %10, align 4
  %300 = ashr i32 %299, 3
  %301 = load i32, i32* %16, align 4
  %302 = sub nsw i32 %300, %301
  %303 = sub nsw i32 %302, 1
  store i32 %303, i32* %17, align 4
  %304 = load i32, i32* %17, align 4
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 5
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @FFALIGN(i32 %304, i32 %307)
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 8
  %312 = sdiv i32 %308, %311
  store i32 %312, i32* %18, align 4
  %313 = load i32, i32* %18, align 4
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 8
  %317 = mul nsw i32 %313, %316
  %318 = load i32, i32* %17, align 4
  %319 = sub nsw i32 %317, %318
  store i32 %319, i32* %19, align 4
  %320 = load i32, i32* %19, align 4
  %321 = mul nsw i32 %320, 8
  %322 = load i32, i32* %10, align 4
  %323 = add nsw i32 %322, %321
  store i32 %323, i32* %10, align 4
  br label %324

324:                                              ; preds = %292
  %325 = load i32, i32* %11, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %11, align 4
  br label %108

327:                                              ; preds = %108
  %328 = load i32, i32* %10, align 4
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %5, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  store i32 %328, i32* %334, align 4
  %335 = load i32, i32* %10, align 4
  store i32 %335, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %336

336:                                              ; preds = %327, %46
  %337 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %337)
  %338 = load i32, i32* %3, align 4
  ret i32 %338
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FFMAX(i64, i32) #2

declare dso_local i32 @av_log2(i32) #2

declare dso_local i32 @QUANT(i32, i32, i32, i32) #2

declare dso_local i32 @FFABS(i32) #2

declare dso_local i64 @count_vc2_ue_uint(i32) #2

declare dso_local i32 @FFALIGN(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
