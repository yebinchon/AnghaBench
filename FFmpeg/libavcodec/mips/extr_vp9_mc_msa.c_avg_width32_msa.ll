; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_avg_width32_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_avg_width32_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @avg_width32_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avg_width32_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
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
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %45 = load i32*, i32** %8, align 8
  store i32* %45, i32** %12, align 8
  %46 = load i32, i32* %10, align 4
  %47 = srem i32 %46, 8
  %48 = icmp eq i32 0, %47
  br i1 %48, label %49, label %230

49:                                               ; preds = %5
  %50 = load i32, i32* %10, align 4
  %51 = sdiv i32 %50, 8
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %56, %49
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %11, align 4
  %55 = icmp ne i32 %53, 0
  br i1 %55, label %56, label %229

56:                                               ; preds = %52
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %19, align 4
  %63 = call i32 @LD_UB4(i32* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 16
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %20, align 4
  %71 = call i32 @LD_UB4(i32* %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 4, %72
  %74 = load i32*, i32** %6, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %6, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %29, align 4
  %80 = load i32, i32* %31, align 4
  %81 = load i32, i32* %33, align 4
  %82 = load i32, i32* %35, align 4
  %83 = call i32 @LD_UB4(i32* %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32*, i32** %12, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 16
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %30, align 4
  %88 = load i32, i32* %32, align 4
  %89 = load i32, i32* %34, align 4
  %90 = load i32, i32* %36, align 4
  %91 = call i32 @LD_UB4(i32* %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = mul nsw i32 4, %92
  %94 = load i32*, i32** %12, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %12, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %23, align 4
  %101 = load i32, i32* %25, align 4
  %102 = load i32, i32* %27, align 4
  %103 = call i32 @LD_UB4(i32* %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 16
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %24, align 4
  %109 = load i32, i32* %26, align 4
  %110 = load i32, i32* %28, align 4
  %111 = call i32 @LD_UB4(i32* %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = mul nsw i32 4, %112
  %114 = load i32*, i32** %6, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %6, align 8
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %37, align 4
  %120 = load i32, i32* %39, align 4
  %121 = load i32, i32* %41, align 4
  %122 = load i32, i32* %43, align 4
  %123 = call i32 @LD_UB4(i32* %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32*, i32** %12, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 16
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %38, align 4
  %128 = load i32, i32* %40, align 4
  %129 = load i32, i32* %42, align 4
  %130 = load i32, i32* %44, align 4
  %131 = call i32 @LD_UB4(i32* %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = mul nsw i32 4, %132
  %134 = load i32*, i32** %12, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32* %136, i32** %12, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %29, align 4
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %30, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %31, align 4
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %32, align 4
  %145 = load i32, i32* %29, align 4
  %146 = load i32, i32* %30, align 4
  %147 = load i32, i32* %31, align 4
  %148 = load i32, i32* %32, align 4
  %149 = call i32 @AVER_UB4_UB(i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %33, align 4
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %34, align 4
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %35, align 4
  %156 = load i32, i32* %20, align 4
  %157 = load i32, i32* %36, align 4
  %158 = load i32, i32* %33, align 4
  %159 = load i32, i32* %34, align 4
  %160 = load i32, i32* %35, align 4
  %161 = load i32, i32* %36, align 4
  %162 = call i32 @AVER_UB4_UB(i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* %21, align 4
  %164 = load i32, i32* %37, align 4
  %165 = load i32, i32* %22, align 4
  %166 = load i32, i32* %38, align 4
  %167 = load i32, i32* %23, align 4
  %168 = load i32, i32* %39, align 4
  %169 = load i32, i32* %24, align 4
  %170 = load i32, i32* %40, align 4
  %171 = load i32, i32* %37, align 4
  %172 = load i32, i32* %38, align 4
  %173 = load i32, i32* %39, align 4
  %174 = load i32, i32* %40, align 4
  %175 = call i32 @AVER_UB4_UB(i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174)
  %176 = load i32, i32* %25, align 4
  %177 = load i32, i32* %41, align 4
  %178 = load i32, i32* %26, align 4
  %179 = load i32, i32* %42, align 4
  %180 = load i32, i32* %27, align 4
  %181 = load i32, i32* %43, align 4
  %182 = load i32, i32* %28, align 4
  %183 = load i32, i32* %44, align 4
  %184 = load i32, i32* %41, align 4
  %185 = load i32, i32* %42, align 4
  %186 = load i32, i32* %43, align 4
  %187 = load i32, i32* %44, align 4
  %188 = call i32 @AVER_UB4_UB(i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187)
  %189 = load i32, i32* %29, align 4
  %190 = load i32, i32* %31, align 4
  %191 = load i32, i32* %33, align 4
  %192 = load i32, i32* %35, align 4
  %193 = load i32*, i32** %8, align 8
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @ST_UB4(i32 %189, i32 %190, i32 %191, i32 %192, i32* %193, i32 %194)
  %196 = load i32, i32* %30, align 4
  %197 = load i32, i32* %32, align 4
  %198 = load i32, i32* %34, align 4
  %199 = load i32, i32* %36, align 4
  %200 = load i32*, i32** %8, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 16
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @ST_UB4(i32 %196, i32 %197, i32 %198, i32 %199, i32* %201, i32 %202)
  %204 = load i32, i32* %9, align 4
  %205 = mul nsw i32 4, %204
  %206 = load i32*, i32** %8, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32* %208, i32** %8, align 8
  %209 = load i32, i32* %37, align 4
  %210 = load i32, i32* %39, align 4
  %211 = load i32, i32* %41, align 4
  %212 = load i32, i32* %43, align 4
  %213 = load i32*, i32** %8, align 8
  %214 = load i32, i32* %9, align 4
  %215 = call i32 @ST_UB4(i32 %209, i32 %210, i32 %211, i32 %212, i32* %213, i32 %214)
  %216 = load i32, i32* %38, align 4
  %217 = load i32, i32* %40, align 4
  %218 = load i32, i32* %42, align 4
  %219 = load i32, i32* %44, align 4
  %220 = load i32*, i32** %8, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 16
  %222 = load i32, i32* %9, align 4
  %223 = call i32 @ST_UB4(i32 %216, i32 %217, i32 %218, i32 %219, i32* %221, i32 %222)
  %224 = load i32, i32* %9, align 4
  %225 = mul nsw i32 4, %224
  %226 = load i32*, i32** %8, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32* %228, i32** %8, align 8
  br label %52

229:                                              ; preds = %52
  br label %330

230:                                              ; preds = %5
  %231 = load i32, i32* %10, align 4
  %232 = srem i32 %231, 4
  %233 = icmp eq i32 0, %232
  br i1 %233, label %234, label %329

234:                                              ; preds = %230
  %235 = load i32, i32* %10, align 4
  %236 = sdiv i32 %235, 4
  store i32 %236, i32* %11, align 4
  br label %237

237:                                              ; preds = %241, %234
  %238 = load i32, i32* %11, align 4
  %239 = add nsw i32 %238, -1
  store i32 %239, i32* %11, align 4
  %240 = icmp ne i32 %238, 0
  br i1 %240, label %241, label %328

241:                                              ; preds = %237
  %242 = load i32*, i32** %6, align 8
  %243 = load i32, i32* %7, align 4
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* %15, align 4
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* %19, align 4
  %248 = call i32 @LD_UB4(i32* %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247)
  %249 = load i32*, i32** %6, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 16
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* %14, align 4
  %253 = load i32, i32* %16, align 4
  %254 = load i32, i32* %18, align 4
  %255 = load i32, i32* %20, align 4
  %256 = call i32 @LD_UB4(i32* %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255)
  %257 = load i32, i32* %7, align 4
  %258 = mul nsw i32 4, %257
  %259 = load i32*, i32** %6, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  store i32* %261, i32** %6, align 8
  %262 = load i32*, i32** %12, align 8
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* %29, align 4
  %265 = load i32, i32* %31, align 4
  %266 = load i32, i32* %33, align 4
  %267 = load i32, i32* %35, align 4
  %268 = call i32 @LD_UB4(i32* %262, i32 %263, i32 %264, i32 %265, i32 %266, i32 %267)
  %269 = load i32*, i32** %12, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 16
  %271 = load i32, i32* %9, align 4
  %272 = load i32, i32* %30, align 4
  %273 = load i32, i32* %32, align 4
  %274 = load i32, i32* %34, align 4
  %275 = load i32, i32* %36, align 4
  %276 = call i32 @LD_UB4(i32* %270, i32 %271, i32 %272, i32 %273, i32 %274, i32 %275)
  %277 = load i32, i32* %9, align 4
  %278 = mul nsw i32 4, %277
  %279 = load i32*, i32** %12, align 8
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  store i32* %281, i32** %12, align 8
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* %29, align 4
  %284 = load i32, i32* %14, align 4
  %285 = load i32, i32* %30, align 4
  %286 = load i32, i32* %15, align 4
  %287 = load i32, i32* %31, align 4
  %288 = load i32, i32* %16, align 4
  %289 = load i32, i32* %32, align 4
  %290 = load i32, i32* %29, align 4
  %291 = load i32, i32* %30, align 4
  %292 = load i32, i32* %31, align 4
  %293 = load i32, i32* %32, align 4
  %294 = call i32 @AVER_UB4_UB(i32 %282, i32 %283, i32 %284, i32 %285, i32 %286, i32 %287, i32 %288, i32 %289, i32 %290, i32 %291, i32 %292, i32 %293)
  %295 = load i32, i32* %17, align 4
  %296 = load i32, i32* %33, align 4
  %297 = load i32, i32* %18, align 4
  %298 = load i32, i32* %34, align 4
  %299 = load i32, i32* %19, align 4
  %300 = load i32, i32* %35, align 4
  %301 = load i32, i32* %20, align 4
  %302 = load i32, i32* %36, align 4
  %303 = load i32, i32* %33, align 4
  %304 = load i32, i32* %34, align 4
  %305 = load i32, i32* %35, align 4
  %306 = load i32, i32* %36, align 4
  %307 = call i32 @AVER_UB4_UB(i32 %295, i32 %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 %302, i32 %303, i32 %304, i32 %305, i32 %306)
  %308 = load i32, i32* %29, align 4
  %309 = load i32, i32* %31, align 4
  %310 = load i32, i32* %33, align 4
  %311 = load i32, i32* %35, align 4
  %312 = load i32*, i32** %8, align 8
  %313 = load i32, i32* %9, align 4
  %314 = call i32 @ST_UB4(i32 %308, i32 %309, i32 %310, i32 %311, i32* %312, i32 %313)
  %315 = load i32, i32* %30, align 4
  %316 = load i32, i32* %32, align 4
  %317 = load i32, i32* %34, align 4
  %318 = load i32, i32* %36, align 4
  %319 = load i32*, i32** %8, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 16
  %321 = load i32, i32* %9, align 4
  %322 = call i32 @ST_UB4(i32 %315, i32 %316, i32 %317, i32 %318, i32* %320, i32 %321)
  %323 = load i32, i32* %9, align 4
  %324 = mul nsw i32 4, %323
  %325 = load i32*, i32** %8, align 8
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds i32, i32* %325, i64 %326
  store i32* %327, i32** %8, align 8
  br label %237

328:                                              ; preds = %237
  br label %329

329:                                              ; preds = %328, %230
  br label %330

330:                                              ; preds = %329, %229
  ret void
}

declare dso_local i32 @LD_UB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AVER_UB4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
