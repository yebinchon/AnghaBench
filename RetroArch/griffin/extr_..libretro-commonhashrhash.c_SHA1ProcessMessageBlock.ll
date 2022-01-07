; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonhashrhash.c_SHA1ProcessMessageBlock.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonhashrhash.c_SHA1ProcessMessageBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64, i64* }

@__const.SHA1ProcessMessageBlock.K = private unnamed_addr constant [4 x i32] [i32 1518500249, i32 1859775393, i32 -1894007588, i32 -899497514], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @SHA1ProcessMessageBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHA1ProcessMessageBlock(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [80 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %12 = bitcast [4 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([4 x i32]* @__const.SHA1ProcessMessageBlock.K to i8*), i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %77, %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 16
  br i1 %15, label %16, label %80

16:                                               ; preds = %13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 24
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [80 x i32], [80 x i32]* %6, i64 0, i64 %28
  store i32 %26, i32* %29, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = mul nsw i32 %33, 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %32, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 %39, 16
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [80 x i32], [80 x i32]* %6, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %40
  store i32 %45, i32* %43, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = mul nsw i32 %49, 4
  %51 = add nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %48, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = shl i32 %55, 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [80 x i32], [80 x i32]* %6, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %56
  store i32 %61, i32* %59, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = mul nsw i32 %65, 4
  %67 = add nsw i32 %66, 3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %64, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [80 x i32], [80 x i32]* %6, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %16
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %13

80:                                               ; preds = %13
  store i32 16, i32* %4, align 4
  br label %81

81:                                               ; preds = %112, %80
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %82, 80
  br i1 %83, label %84, label %115

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = sub nsw i32 %85, 3
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [80 x i32], [80 x i32]* %6, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %4, align 4
  %91 = sub nsw i32 %90, 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [80 x i32], [80 x i32]* %6, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = xor i32 %89, %94
  %96 = load i32, i32* %4, align 4
  %97 = sub nsw i32 %96, 14
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [80 x i32], [80 x i32]* %6, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %95, %100
  %102 = load i32, i32* %4, align 4
  %103 = sub nsw i32 %102, 16
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [80 x i32], [80 x i32]* %6, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = xor i32 %101, %106
  %108 = call i32 @SHA1CircularShift(i32 1, i32 %107)
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [80 x i32], [80 x i32]* %6, i64 0, i64 %110
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %84
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %81

115:                                              ; preds = %81
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %7, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %8, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %9, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %10, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 4
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %11, align 4
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %173, %115
  %142 = load i32, i32* %4, align 4
  %143 = icmp slt i32 %142, 20
  br i1 %143, label %144, label %176

144:                                              ; preds = %141
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @SHA1CircularShift(i32 5, i32 %145)
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %9, align 4
  %149 = and i32 %147, %148
  %150 = load i32, i32* %8, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %10, align 4
  %153 = and i32 %151, %152
  %154 = or i32 %149, %153
  %155 = add i32 %146, %154
  %156 = load i32, i32* %11, align 4
  %157 = add i32 %155, %156
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [80 x i32], [80 x i32]* %6, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = add i32 %157, %161
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %164 = load i32, i32* %163, align 16
  %165 = add i32 %162, %164
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %9, align 4
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @SHA1CircularShift(i32 30, i32 %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %5, align 4
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %144
  %174 = load i32, i32* %4, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %4, align 4
  br label %141

176:                                              ; preds = %141
  store i32 20, i32* %4, align 4
  br label %177

177:                                              ; preds = %206, %176
  %178 = load i32, i32* %4, align 4
  %179 = icmp slt i32 %178, 40
  br i1 %179, label %180, label %209

180:                                              ; preds = %177
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @SHA1CircularShift(i32 5, i32 %181)
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %9, align 4
  %185 = xor i32 %183, %184
  %186 = load i32, i32* %10, align 4
  %187 = xor i32 %185, %186
  %188 = add i32 %182, %187
  %189 = load i32, i32* %11, align 4
  %190 = add i32 %188, %189
  %191 = load i32, i32* %4, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [80 x i32], [80 x i32]* %6, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = add i32 %190, %194
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = add i32 %195, %197
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* %5, align 4
  store i32 %199, i32* %5, align 4
  %200 = load i32, i32* %10, align 4
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %9, align 4
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @SHA1CircularShift(i32 30, i32 %202)
  store i32 %203, i32* %9, align 4
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %5, align 4
  store i32 %205, i32* %7, align 4
  br label %206

206:                                              ; preds = %180
  %207 = load i32, i32* %4, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %4, align 4
  br label %177

209:                                              ; preds = %177
  store i32 40, i32* %4, align 4
  br label %210

210:                                              ; preds = %245, %209
  %211 = load i32, i32* %4, align 4
  %212 = icmp slt i32 %211, 60
  br i1 %212, label %213, label %248

213:                                              ; preds = %210
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @SHA1CircularShift(i32 5, i32 %214)
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* %9, align 4
  %218 = and i32 %216, %217
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* %10, align 4
  %221 = and i32 %219, %220
  %222 = or i32 %218, %221
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %10, align 4
  %225 = and i32 %223, %224
  %226 = or i32 %222, %225
  %227 = add i32 %215, %226
  %228 = load i32, i32* %11, align 4
  %229 = add i32 %227, %228
  %230 = load i32, i32* %4, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [80 x i32], [80 x i32]* %6, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = add i32 %229, %233
  %235 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %236 = load i32, i32* %235, align 8
  %237 = add i32 %234, %236
  store i32 %237, i32* %5, align 4
  %238 = load i32, i32* %5, align 4
  store i32 %238, i32* %5, align 4
  %239 = load i32, i32* %10, align 4
  store i32 %239, i32* %11, align 4
  %240 = load i32, i32* %9, align 4
  store i32 %240, i32* %10, align 4
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @SHA1CircularShift(i32 30, i32 %241)
  store i32 %242, i32* %9, align 4
  %243 = load i32, i32* %7, align 4
  store i32 %243, i32* %8, align 4
  %244 = load i32, i32* %5, align 4
  store i32 %244, i32* %7, align 4
  br label %245

245:                                              ; preds = %213
  %246 = load i32, i32* %4, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %4, align 4
  br label %210

248:                                              ; preds = %210
  store i32 60, i32* %4, align 4
  br label %249

249:                                              ; preds = %278, %248
  %250 = load i32, i32* %4, align 4
  %251 = icmp slt i32 %250, 80
  br i1 %251, label %252, label %281

252:                                              ; preds = %249
  %253 = load i32, i32* %7, align 4
  %254 = call i32 @SHA1CircularShift(i32 5, i32 %253)
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* %9, align 4
  %257 = xor i32 %255, %256
  %258 = load i32, i32* %10, align 4
  %259 = xor i32 %257, %258
  %260 = add i32 %254, %259
  %261 = load i32, i32* %11, align 4
  %262 = add i32 %260, %261
  %263 = load i32, i32* %4, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [80 x i32], [80 x i32]* %6, i64 0, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = add i32 %262, %266
  %268 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %269 = load i32, i32* %268, align 4
  %270 = add i32 %267, %269
  store i32 %270, i32* %5, align 4
  %271 = load i32, i32* %5, align 4
  store i32 %271, i32* %5, align 4
  %272 = load i32, i32* %10, align 4
  store i32 %272, i32* %11, align 4
  %273 = load i32, i32* %9, align 4
  store i32 %273, i32* %10, align 4
  %274 = load i32, i32* %8, align 4
  %275 = call i32 @SHA1CircularShift(i32 30, i32 %274)
  store i32 %275, i32* %9, align 4
  %276 = load i32, i32* %7, align 4
  store i32 %276, i32* %8, align 4
  %277 = load i32, i32* %5, align 4
  store i32 %277, i32* %7, align 4
  br label %278

278:                                              ; preds = %252
  %279 = load i32, i32* %4, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %4, align 4
  br label %249

281:                                              ; preds = %249
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %7, align 4
  %288 = add i32 %286, %287
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 0
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  store i32 %288, i32* %292, align 4
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %8, align 4
  %299 = add i32 %297, %298
  %300 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 1
  store i32 %299, i32* %303, align 4
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 2
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %9, align 4
  %310 = add i32 %308, %309
  %311 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 2
  store i32 %310, i32* %314, align 4
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 3
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %10, align 4
  %321 = add i32 %319, %320
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 0
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 3
  store i32 %321, i32* %325, align 4
  %326 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 4
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* %11, align 4
  %332 = add i32 %330, %331
  %333 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 0
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 4
  store i32 %332, i32* %336, align 4
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 1
  store i64 0, i64* %338, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SHA1CircularShift(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
