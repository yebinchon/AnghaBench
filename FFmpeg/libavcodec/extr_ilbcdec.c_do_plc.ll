; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_do_plc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_do_plc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32* }

@BLOCKL_MAX = common dso_local global i32 0, align 4
@kPlcPerSqr = common dso_local global i32* null, align 8
@kPlcPitchFact = common dso_local global i32* null, align 8
@kPlcPfSlope = common dso_local global i32* null, align 8
@LPC_FILTERORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*, i32*, i32, %struct.TYPE_3__*)* @do_plc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_plc(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32 %5, %struct.TYPE_3__* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
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
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i8*, align 8
  %52 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %14, align 8
  store i32 0, i32* %20, align 4
  %53 = load i32, i32* @BLOCKL_MAX, align 4
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %51, align 8
  %56 = alloca i32, i64 %54, align 16
  store i64 %54, i64* %52, align 8
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %579

59:                                               ; preds = %7
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %284

68:                                               ; preds = %59
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @max_abs_value_w16(i32* %71, i32 %74)
  store i32 %75, i32* %24, align 4
  %76 = load i32, i32* %24, align 4
  %77 = call i32 @get_size_in_bits(i32 %76)
  %78 = shl i32 %77, 1
  %79 = sub nsw i32 %78, 25
  store i32 %79, i32* %36, align 4
  %80 = load i32, i32* %36, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  store i32 0, i32* %36, align 4
  br label %83

83:                                               ; preds = %82, %68
  %84 = load i32, i32* %36, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %13, align 4
  %88 = sub nsw i32 %87, 3
  store i32 %88, i32* %28, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 3
  %94 = sub nsw i32 %91, %93
  %95 = call i32 @FFMIN(i32 60, i32 %94)
  store i32 %95, i32* %37, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %28, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %37, align 4
  %104 = load i32, i32* %36, align 4
  %105 = call i32 @correlation(i32* %17, i32* %18, i32* %98, i32 %99, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @FFABS(i32 %106)
  %108 = call i32 @get_size_in_bits(i32 %107)
  %109 = sub nsw i32 %108, 15
  store i32 %109, i32* %35, align 4
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %35, align 4
  %112 = sub nsw i32 0, %111
  %113 = call i32 @SPL_SHIFT_W32(i32 %110, i32 %112)
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %35, align 4
  %116 = sub nsw i32 0, %115
  %117 = call i32 @SPL_SHIFT_W32(i32 %114, i32 %116)
  %118 = call i32 @SPL_MUL_16_16_RSFT(i32 %113, i32 %117, i32 15)
  store i32 %118, i32* %25, align 4
  %119 = load i32, i32* %13, align 4
  %120 = sub nsw i32 %119, 2
  store i32 %120, i32* %27, align 4
  br label %121

121:                                              ; preds = %214, %83
  %122 = load i32, i32* %27, align 4
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 3
  %125 = icmp sle i32 %122, %124
  br i1 %125, label %126, label %217

126:                                              ; preds = %121
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %27, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %37, align 4
  %135 = load i32, i32* %36, align 4
  %136 = call i32 @correlation(i32* %19, i32* %20, i32* %129, i32 %130, i32 %133, i32 %134, i32 %135)
  %137 = load i32, i32* %19, align 4
  %138 = call i32 @FFABS(i32 %137)
  %139 = call i32 @get_size_in_bits(i32 %138)
  %140 = sub nsw i32 %139, 15
  store i32 %140, i32* %32, align 4
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* %32, align 4
  %143 = sub nsw i32 0, %142
  %144 = call i32 @SPL_SHIFT_W32(i32 %141, i32 %143)
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %32, align 4
  %147 = sub nsw i32 0, %146
  %148 = call i32 @SPL_SHIFT_W32(i32 %145, i32 %147)
  %149 = call i32 @SPL_MUL_16_16_RSFT(i32 %144, i32 %148, i32 15)
  store i32 %149, i32* %26, align 4
  %150 = load i32, i32* %18, align 4
  %151 = call i32 @get_size_in_bits(i32 %150)
  %152 = sub nsw i32 %151, 15
  store i32 %152, i32* %33, align 4
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %33, align 4
  %155 = sub nsw i32 0, %154
  %156 = call i32 @SPL_SHIFT_W32(i32 %153, i32 %155)
  %157 = load i32, i32* %26, align 4
  %158 = call i32 @SPL_MUL_16_16(i32 %156, i32 %157)
  store i32 %158, i32* %21, align 4
  %159 = load i32, i32* %20, align 4
  %160 = call i32 @get_size_in_bits(i32 %159)
  %161 = sub nsw i32 %160, 15
  store i32 %161, i32* %34, align 4
  %162 = load i32, i32* %20, align 4
  %163 = load i32, i32* %34, align 4
  %164 = sub nsw i32 0, %163
  %165 = call i32 @SPL_SHIFT_W32(i32 %162, i32 %164)
  %166 = load i32, i32* %25, align 4
  %167 = call i32 @SPL_MUL_16_16(i32 %165, i32 %166)
  store i32 %167, i32* %22, align 4
  %168 = load i32, i32* %35, align 4
  %169 = shl i32 %168, 1
  %170 = load i32, i32* %34, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i32, i32* %32, align 4
  %173 = shl i32 %172, 1
  %174 = load i32, i32* %33, align 4
  %175 = add nsw i32 %173, %174
  %176 = icmp sgt i32 %171, %175
  br i1 %176, label %177, label %188

177:                                              ; preds = %126
  %178 = load i32, i32* %35, align 4
  %179 = shl i32 %178, 1
  %180 = load i32, i32* %34, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %32, align 4
  %183 = shl i32 %182, 1
  %184 = sub nsw i32 %181, %183
  %185 = load i32, i32* %33, align 4
  %186 = sub nsw i32 %184, %185
  %187 = call i32 @FFMIN(i32 31, i32 %186)
  store i32 %187, i32* %29, align 4
  store i32 0, i32* %30, align 4
  br label %199

188:                                              ; preds = %126
  store i32 0, i32* %29, align 4
  %189 = load i32, i32* %32, align 4
  %190 = shl i32 %189, 1
  %191 = load i32, i32* %33, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %35, align 4
  %194 = shl i32 %193, 1
  %195 = sub nsw i32 %192, %194
  %196 = load i32, i32* %34, align 4
  %197 = sub nsw i32 %195, %196
  %198 = call i32 @FFMIN(i32 31, i32 %197)
  store i32 %198, i32* %30, align 4
  br label %199

199:                                              ; preds = %188, %177
  %200 = load i32, i32* %21, align 4
  %201 = load i32, i32* %29, align 4
  %202 = ashr i32 %200, %201
  %203 = load i32, i32* %22, align 4
  %204 = load i32, i32* %30, align 4
  %205 = ashr i32 %203, %204
  %206 = icmp sgt i32 %202, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %199
  %208 = load i32, i32* %27, align 4
  store i32 %208, i32* %28, align 4
  %209 = load i32, i32* %26, align 4
  store i32 %209, i32* %25, align 4
  %210 = load i32, i32* %19, align 4
  store i32 %210, i32* %17, align 4
  %211 = load i32, i32* %32, align 4
  store i32 %211, i32* %35, align 4
  %212 = load i32, i32* %20, align 4
  store i32 %212, i32* %18, align 4
  br label %213

213:                                              ; preds = %207, %199
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %27, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %27, align 4
  br label %121

217:                                              ; preds = %121
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %37, align 4
  %225 = sub nsw i32 %223, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %220, i64 %226
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %37, align 4
  %235 = sub nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %230, i64 %236
  %238 = load i32, i32* %37, align 4
  %239 = load i32, i32* %36, align 4
  %240 = call i32 @scale_dot_product(i32* %227, i32* %237, i32 %238, i32 %239)
  store i32 %240, i32* %39, align 4
  %241 = load i32, i32* %39, align 4
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %282

243:                                              ; preds = %217
  %244 = load i32, i32* %20, align 4
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %282

246:                                              ; preds = %243
  %247 = load i32, i32* %39, align 4
  %248 = call i32 @norm_w32(i32 %247)
  %249 = sub nsw i32 %248, 16
  store i32 %249, i32* %43, align 4
  %250 = load i32, i32* %39, align 4
  %251 = load i32, i32* %43, align 4
  %252 = call i32 @SPL_SHIFT_W32(i32 %250, i32 %251)
  store i32 %252, i32* %29, align 4
  %253 = load i32, i32* %18, align 4
  %254 = call i32 @norm_w32(i32 %253)
  %255 = sub nsw i32 %254, 16
  store i32 %255, i32* %44, align 4
  %256 = load i32, i32* %18, align 4
  %257 = load i32, i32* %44, align 4
  %258 = call i32 @SPL_SHIFT_W32(i32 %256, i32 %257)
  store i32 %258, i32* %30, align 4
  %259 = load i32, i32* %29, align 4
  %260 = load i32, i32* %30, align 4
  %261 = call i32 @SPL_MUL_16_16_RSFT(i32 %259, i32 %260, i32 16)
  store i32 %261, i32* %47, align 4
  %262 = load i32, i32* %43, align 4
  %263 = load i32, i32* %44, align 4
  %264 = add nsw i32 %262, %263
  %265 = sub nsw i32 %264, 1
  store i32 %265, i32* %45, align 4
  %266 = load i32, i32* %17, align 4
  %267 = load i32, i32* %45, align 4
  %268 = ashr i32 %267, 1
  %269 = call i32 @SPL_SHIFT_W32(i32 %266, i32 %268)
  store i32 %269, i32* %29, align 4
  %270 = load i32, i32* %17, align 4
  %271 = load i32, i32* %45, align 4
  %272 = load i32, i32* %45, align 4
  %273 = ashr i32 %272, 1
  %274 = sub nsw i32 %271, %273
  %275 = call i32 @SPL_SHIFT_W32(i32 %270, i32 %274)
  store i32 %275, i32* %30, align 4
  %276 = load i32, i32* %29, align 4
  %277 = load i32, i32* %30, align 4
  %278 = call i32 @SPL_MUL_16_16(i32 %276, i32 %277)
  store i32 %278, i32* %46, align 4
  %279 = load i32, i32* %46, align 4
  %280 = load i32, i32* %47, align 4
  %281 = call i32 @div_w32_w16(i32 %279, i32 %280)
  store i32 %281, i32* %42, align 4
  br label %283

282:                                              ; preds = %243, %217
  store i32 0, i32* %42, align 4
  br label %283

283:                                              ; preds = %282, %246
  br label %291

284:                                              ; preds = %59
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  store i32 %287, i32* %28, align 4
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %42, align 4
  br label %291

291:                                              ; preds = %284, %283
  store i32 32767, i32* %40, align 4
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = mul nsw i32 %294, %297
  %299 = icmp sgt i32 %298, 320
  br i1 %299, label %300, label %301

300:                                              ; preds = %291
  store i32 29491, i32* %40, align 4
  br label %334

301:                                              ; preds = %291
  %302 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = mul nsw i32 %304, %307
  %309 = icmp sgt i32 %308, 640
  br i1 %309, label %310, label %311

310:                                              ; preds = %301
  store i32 22938, i32* %40, align 4
  br label %333

311:                                              ; preds = %301
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = mul nsw i32 %314, %317
  %319 = icmp sgt i32 %318, 960
  br i1 %319, label %320, label %321

320:                                              ; preds = %311
  store i32 16384, i32* %40, align 4
  br label %332

321:                                              ; preds = %311
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 8
  %328 = mul nsw i32 %324, %327
  %329 = icmp sgt i32 %328, 1280
  br i1 %329, label %330, label %331

330:                                              ; preds = %321
  store i32 0, i32* %40, align 4
  br label %331

331:                                              ; preds = %330, %321
  br label %332

332:                                              ; preds = %331, %320
  br label %333

333:                                              ; preds = %332, %310
  br label %334

334:                                              ; preds = %333, %300
  %335 = load i32, i32* %42, align 4
  %336 = icmp sgt i32 %335, 7868
  br i1 %336, label %337, label %338

337:                                              ; preds = %334
  store i32 32767, i32* %48, align 4
  br label %382

338:                                              ; preds = %334
  %339 = load i32, i32* %42, align 4
  %340 = icmp sgt i32 %339, 839
  br i1 %340, label %341, label %380

341:                                              ; preds = %338
  store i32 5, i32* %50, align 4
  br label %342

342:                                              ; preds = %355, %341
  %343 = load i32, i32* %42, align 4
  %344 = load i32*, i32** @kPlcPerSqr, align 8
  %345 = load i32, i32* %50, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = icmp slt i32 %343, %348
  br i1 %349, label %350, label %353

350:                                              ; preds = %342
  %351 = load i32, i32* %50, align 4
  %352 = icmp sgt i32 %351, 0
  br label %353

353:                                              ; preds = %350, %342
  %354 = phi i1 [ false, %342 ], [ %352, %350 ]
  br i1 %354, label %355, label %358

355:                                              ; preds = %353
  %356 = load i32, i32* %50, align 4
  %357 = add nsw i32 %356, -1
  store i32 %357, i32* %50, align 4
  br label %342

358:                                              ; preds = %353
  %359 = load i32*, i32** @kPlcPitchFact, align 8
  %360 = load i32, i32* %50, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = load i32*, i32** @kPlcPfSlope, align 8
  %365 = load i32, i32* %50, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %42, align 4
  %370 = load i32*, i32** @kPlcPerSqr, align 8
  %371 = load i32, i32* %50, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = sub nsw i32 %369, %374
  %376 = call i32 @SPL_MUL_16_16_RSFT(i32 %368, i32 %375, i32 11)
  %377 = add nsw i32 %363, %376
  store i32 %377, i32* %38, align 4
  %378 = load i32, i32* %38, align 4
  %379 = call i32 @FFMIN(i32 %378, i32 32767)
  store i32 %379, i32* %48, align 4
  br label %381

380:                                              ; preds = %338
  store i32 0, i32* %48, align 4
  br label %381

381:                                              ; preds = %380, %358
  br label %382

382:                                              ; preds = %381, %337
  %383 = load i32, i32* %28, align 4
  store i32 %383, i32* %49, align 4
  %384 = load i32, i32* %28, align 4
  %385 = icmp slt i32 %384, 80
  br i1 %385, label %386, label %389

386:                                              ; preds = %382
  %387 = load i32, i32* %28, align 4
  %388 = mul nsw i32 2, %387
  store i32 %388, i32* %49, align 4
  br label %389

389:                                              ; preds = %386, %382
  store i32 0, i32* %23, align 4
  store i32 0, i32* %15, align 4
  br label %390

390:                                              ; preds = %528, %389
  %391 = load i32, i32* %15, align 4
  %392 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %393 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %392, i32 0, i32 3
  %394 = load i32, i32* %393, align 8
  %395 = icmp slt i32 %391, %394
  br i1 %395, label %396, label %531

396:                                              ; preds = %390
  %397 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %398 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %397, i32 0, i32 7
  %399 = load i32, i32* %398, align 8
  %400 = call i32 @SPL_MUL_16_16(i32 %399, i32 31821)
  %401 = add nsw i32 %400, 13849
  %402 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %403 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %402, i32 0, i32 7
  store i32 %401, i32* %403, align 8
  %404 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i32 0, i32 7
  %406 = load i32, i32* %405, align 8
  %407 = and i32 %406, 63
  %408 = add nsw i32 53, %407
  store i32 %408, i32* %31, align 4
  %409 = load i32, i32* %15, align 4
  %410 = load i32, i32* %31, align 4
  %411 = sub nsw i32 %409, %410
  store i32 %411, i32* %16, align 4
  %412 = load i32, i32* %16, align 4
  %413 = icmp slt i32 %412, 0
  br i1 %413, label %414, label %429

414:                                              ; preds = %396
  %415 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %416 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %415, i32 0, i32 2
  %417 = load i32*, i32** %416, align 8
  %418 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %418, i32 0, i32 3
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* %16, align 4
  %422 = add nsw i32 %420, %421
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %417, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* %15, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %56, i64 %427
  store i32 %425, i32* %428, align 4
  br label %440

429:                                              ; preds = %396
  %430 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %431 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %430, i32 0, i32 2
  %432 = load i32*, i32** %431, align 8
  %433 = load i32, i32* %16, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* %15, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %56, i64 %438
  store i32 %436, i32* %439, align 4
  br label %440

440:                                              ; preds = %429, %414
  %441 = load i32, i32* %15, align 4
  %442 = load i32, i32* %49, align 4
  %443 = sub nsw i32 %441, %442
  store i32 %443, i32* %16, align 4
  %444 = load i32, i32* %16, align 4
  %445 = icmp slt i32 %444, 0
  br i1 %445, label %446, label %462

446:                                              ; preds = %440
  %447 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %448 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %447, i32 0, i32 2
  %449 = load i32*, i32** %448, align 8
  %450 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %451 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %450, i32 0, i32 3
  %452 = load i32, i32* %451, align 8
  %453 = load i32, i32* %16, align 4
  %454 = add nsw i32 %452, %453
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %449, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = load i32*, i32** %8, align 8
  %459 = load i32, i32* %15, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  store i32 %457, i32* %461, align 4
  br label %472

462:                                              ; preds = %440
  %463 = load i32*, i32** %8, align 8
  %464 = load i32, i32* %16, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %463, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = load i32*, i32** %8, align 8
  %469 = load i32, i32* %15, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32, i32* %468, i64 %470
  store i32 %467, i32* %471, align 4
  br label %472

472:                                              ; preds = %462, %446
  %473 = load i32, i32* %15, align 4
  %474 = icmp slt i32 %473, 80
  br i1 %474, label %475, label %477

475:                                              ; preds = %472
  %476 = load i32, i32* %40, align 4
  store i32 %476, i32* %41, align 4
  br label %487

477:                                              ; preds = %472
  %478 = load i32, i32* %15, align 4
  %479 = icmp slt i32 %478, 160
  br i1 %479, label %480, label %483

480:                                              ; preds = %477
  %481 = load i32, i32* %40, align 4
  %482 = call i32 @SPL_MUL_16_16_RSFT(i32 31130, i32 %481, i32 15)
  store i32 %482, i32* %41, align 4
  br label %486

483:                                              ; preds = %477
  %484 = load i32, i32* %40, align 4
  %485 = call i32 @SPL_MUL_16_16_RSFT(i32 29491, i32 %484, i32 15)
  store i32 %485, i32* %41, align 4
  br label %486

486:                                              ; preds = %483, %480
  br label %487

487:                                              ; preds = %486, %475
  %488 = load i32, i32* %41, align 4
  %489 = load i32, i32* %48, align 4
  %490 = load i32*, i32** %8, align 8
  %491 = load i32, i32* %15, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %490, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = mul nsw i32 %489, %494
  %496 = load i32, i32* %48, align 4
  %497 = sub nsw i32 32767, %496
  %498 = load i32, i32* %15, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32, i32* %56, i64 %499
  %501 = load i32, i32* %500, align 4
  %502 = mul nsw i32 %497, %501
  %503 = add nsw i32 %495, %502
  %504 = add nsw i32 %503, 16384
  %505 = ashr i32 %504, 15
  %506 = call i32 @SPL_MUL_16_16_RSFT(i32 %488, i32 %505, i32 15)
  %507 = load i32*, i32** %8, align 8
  %508 = load i32, i32* %15, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %507, i64 %509
  store i32 %506, i32* %510, align 4
  %511 = load i32*, i32** %8, align 8
  %512 = load i32, i32* %15, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %511, i64 %513
  %515 = load i32, i32* %514, align 4
  %516 = load i32*, i32** %8, align 8
  %517 = load i32, i32* %15, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %516, i64 %518
  %520 = load i32, i32* %519, align 4
  %521 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %522 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %521, i32 0, i32 4
  %523 = load i32, i32* %522, align 4
  %524 = add nsw i32 %523, 1
  %525 = call i32 @SPL_MUL_16_16_RSFT(i32 %515, i32 %520, i32 %524)
  %526 = load i32, i32* %23, align 4
  %527 = add nsw i32 %526, %525
  store i32 %527, i32* %23, align 4
  br label %528

528:                                              ; preds = %487
  %529 = load i32, i32* %15, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %15, align 4
  br label %390

531:                                              ; preds = %390
  %532 = load i32, i32* %23, align 4
  %533 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %534 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %533, i32 0, i32 3
  %535 = load i32, i32* %534, align 8
  %536 = mul nsw i32 %535, 900
  %537 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %538 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %537, i32 0, i32 4
  %539 = load i32, i32* %538, align 4
  %540 = sub nsw i32 0, %539
  %541 = sub nsw i32 %540, 1
  %542 = call i32 @SPL_SHIFT_W32(i32 %536, i32 %541)
  %543 = icmp slt i32 %532, %542
  br i1 %543, label %544, label %564

544:                                              ; preds = %531
  store i32 0, i32* %23, align 4
  store i32 0, i32* %15, align 4
  br label %545

545:                                              ; preds = %560, %544
  %546 = load i32, i32* %15, align 4
  %547 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %548 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %547, i32 0, i32 3
  %549 = load i32, i32* %548, align 8
  %550 = icmp slt i32 %546, %549
  br i1 %550, label %551, label %563

551:                                              ; preds = %545
  %552 = load i32, i32* %15, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i32, i32* %56, i64 %553
  %555 = load i32, i32* %554, align 4
  %556 = load i32*, i32** %8, align 8
  %557 = load i32, i32* %15, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32, i32* %556, i64 %558
  store i32 %555, i32* %559, align 4
  br label %560

560:                                              ; preds = %551
  %561 = load i32, i32* %15, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %15, align 4
  br label %545

563:                                              ; preds = %545
  br label %564

564:                                              ; preds = %563, %531
  %565 = load i32*, i32** %9, align 8
  %566 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %567 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %566, i32 0, i32 8
  %568 = load i32*, i32** %567, align 8
  %569 = load i32, i32* @LPC_FILTERORDER, align 4
  %570 = add nsw i32 %569, 1
  %571 = mul nsw i32 %570, 2
  %572 = call i32 @memcpy(i32* %565, i32* %568, i32 %571)
  %573 = load i32, i32* %28, align 4
  %574 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %575 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %574, i32 0, i32 5
  store i32 %573, i32* %575, align 8
  %576 = load i32, i32* %42, align 4
  %577 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %578 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %577, i32 0, i32 6
  store i32 %576, i32* %578, align 4
  br label %595

579:                                              ; preds = %7
  %580 = load i32*, i32** %8, align 8
  %581 = load i32*, i32** %11, align 8
  %582 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %583 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %582, i32 0, i32 3
  %584 = load i32, i32* %583, align 8
  %585 = mul nsw i32 %584, 2
  %586 = call i32 @memcpy(i32* %580, i32* %581, i32 %585)
  %587 = load i32*, i32** %9, align 8
  %588 = load i32*, i32** %12, align 8
  %589 = load i32, i32* @LPC_FILTERORDER, align 4
  %590 = add nsw i32 %589, 1
  %591 = mul nsw i32 %590, 2
  %592 = call i32 @memcpy(i32* %587, i32* %588, i32 %591)
  %593 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %594 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %593, i32 0, i32 0
  store i32 0, i32* %594, align 8
  br label %595

595:                                              ; preds = %579, %564
  %596 = load i32, i32* %10, align 4
  %597 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %598 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %597, i32 0, i32 1
  store i32 %596, i32* %598, align 4
  %599 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %600 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %599, i32 0, i32 8
  %601 = load i32*, i32** %600, align 8
  %602 = load i32*, i32** %9, align 8
  %603 = load i32, i32* @LPC_FILTERORDER, align 4
  %604 = add nsw i32 %603, 1
  %605 = mul nsw i32 %604, 2
  %606 = call i32 @memcpy(i32* %601, i32* %602, i32 %605)
  %607 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %608 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %607, i32 0, i32 2
  %609 = load i32*, i32** %608, align 8
  %610 = load i32*, i32** %8, align 8
  %611 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %612 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %611, i32 0, i32 3
  %613 = load i32, i32* %612, align 8
  %614 = mul nsw i32 %613, 2
  %615 = call i32 @memcpy(i32* %609, i32* %610, i32 %614)
  %616 = load i8*, i8** %51, align 8
  call void @llvm.stackrestore(i8* %616)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @max_abs_value_w16(i32*, i32) #2

declare dso_local i32 @get_size_in_bits(i32) #2

declare dso_local i32 @FFMIN(i32, i32) #2

declare dso_local i32 @correlation(i32*, i32*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @FFABS(i32) #2

declare dso_local i32 @SPL_MUL_16_16_RSFT(i32, i32, i32) #2

declare dso_local i32 @SPL_SHIFT_W32(i32, i32) #2

declare dso_local i32 @SPL_MUL_16_16(i32, i32) #2

declare dso_local i32 @scale_dot_product(i32*, i32*, i32, i32) #2

declare dso_local i32 @norm_w32(i32) #2

declare dso_local i32 @div_w32_w16(i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
