; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_hv_bil_and_aver_dst_16w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_hv_bil_and_aver_dst_16w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @common_hv_bil_and_aver_dst_16w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hv_bil_and_aver_dst_16w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca i32, align 4
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  %80 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = ashr i32 %81, 3
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %87, %5
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %11, align 4
  %86 = icmp ne i32 %84, 0
  br i1 %86, label %87, label %363

87:                                               ; preds = %83
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %19, align 4
  %98 = call i32 @LD_UB8(i32* %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %22, align 4
  %104 = load i32, i32* %23, align 4
  %105 = load i32, i32* %24, align 4
  %106 = load i32, i32* %25, align 4
  %107 = load i32, i32* %26, align 4
  %108 = load i32, i32* %27, align 4
  %109 = load i32, i32* %28, align 4
  %110 = call i32 @LD_UB8(i32* %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* %7, align 4
  %112 = mul nsw i32 8, %111
  %113 = load i32*, i32** %6, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32* %115, i32** %6, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @LD_UB(i32* %116)
  store i32 %117, i32* %20, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = call i32 @LD_UB(i32* %119)
  store i32 %120, i32* %29, align 4
  %121 = load i32, i32* %21, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %30, align 4
  %124 = load i32, i32* %39, align 4
  %125 = call i32 @ILVRL_B2_UB(i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %22, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %31, align 4
  %129 = load i32, i32* %40, align 4
  %130 = call i32 @ILVRL_B2_UB(i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %32, align 4
  %134 = load i32, i32* %41, align 4
  %135 = call i32 @ILVRL_B2_UB(i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %24, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %33, align 4
  %139 = load i32, i32* %42, align 4
  %140 = call i32 @ILVRL_B2_UB(i32 %136, i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %25, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %34, align 4
  %144 = load i32, i32* %43, align 4
  %145 = call i32 @ILVRL_B2_UB(i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %26, align 4
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* %35, align 4
  %149 = load i32, i32* %44, align 4
  %150 = call i32 @ILVRL_B2_UB(i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %27, align 4
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %36, align 4
  %154 = load i32, i32* %45, align 4
  %155 = call i32 @ILVRL_B2_UB(i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %28, align 4
  %157 = load i32, i32* %19, align 4
  %158 = load i32, i32* %37, align 4
  %159 = load i32, i32* %46, align 4
  %160 = call i32 @ILVRL_B2_UB(i32 %156, i32 %157, i32 %158, i32 %159)
  %161 = load i32, i32* %29, align 4
  %162 = load i32, i32* %20, align 4
  %163 = load i32, i32* %38, align 4
  %164 = load i32, i32* %47, align 4
  %165 = call i32 @ILVRL_B2_UB(i32 %161, i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* %30, align 4
  %167 = load i32, i32* %31, align 4
  %168 = load i32, i32* %32, align 4
  %169 = load i32, i32* %72, align 4
  %170 = load i32, i32* %73, align 4
  %171 = load i32, i32* %74, align 4
  %172 = call i32 @HADD_UB3_UH(i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171)
  %173 = load i32, i32* %33, align 4
  %174 = load i32, i32* %34, align 4
  %175 = load i32, i32* %35, align 4
  %176 = load i32, i32* %75, align 4
  %177 = load i32, i32* %76, align 4
  %178 = load i32, i32* %77, align 4
  %179 = call i32 @HADD_UB3_UH(i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %36, align 4
  %181 = load i32, i32* %37, align 4
  %182 = load i32, i32* %38, align 4
  %183 = load i32, i32* %78, align 4
  %184 = load i32, i32* %79, align 4
  %185 = load i32, i32* %80, align 4
  %186 = call i32 @HADD_UB3_UH(i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185)
  %187 = load i32, i32* %72, align 4
  %188 = load i32, i32* %73, align 4
  %189 = load i32, i32* %73, align 4
  %190 = load i32, i32* %74, align 4
  %191 = load i32, i32* %74, align 4
  %192 = load i32, i32* %75, align 4
  %193 = load i32, i32* %75, align 4
  %194 = load i32, i32* %76, align 4
  %195 = load i32, i32* %56, align 4
  %196 = load i32, i32* %57, align 4
  %197 = load i32, i32* %58, align 4
  %198 = load i32, i32* %59, align 4
  %199 = call i32 @ADD4(i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198)
  %200 = load i32, i32* %76, align 4
  %201 = load i32, i32* %77, align 4
  %202 = load i32, i32* %77, align 4
  %203 = load i32, i32* %78, align 4
  %204 = load i32, i32* %78, align 4
  %205 = load i32, i32* %79, align 4
  %206 = load i32, i32* %79, align 4
  %207 = load i32, i32* %80, align 4
  %208 = load i32, i32* %60, align 4
  %209 = load i32, i32* %61, align 4
  %210 = load i32, i32* %62, align 4
  %211 = load i32, i32* %63, align 4
  %212 = call i32 @ADD4(i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* %39, align 4
  %214 = load i32, i32* %40, align 4
  %215 = load i32, i32* %41, align 4
  %216 = load i32, i32* %72, align 4
  %217 = load i32, i32* %73, align 4
  %218 = load i32, i32* %74, align 4
  %219 = call i32 @HADD_UB3_UH(i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218)
  %220 = load i32, i32* %42, align 4
  %221 = load i32, i32* %43, align 4
  %222 = load i32, i32* %44, align 4
  %223 = load i32, i32* %75, align 4
  %224 = load i32, i32* %76, align 4
  %225 = load i32, i32* %77, align 4
  %226 = call i32 @HADD_UB3_UH(i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, i32 %225)
  %227 = load i32, i32* %45, align 4
  %228 = load i32, i32* %46, align 4
  %229 = load i32, i32* %47, align 4
  %230 = load i32, i32* %78, align 4
  %231 = load i32, i32* %79, align 4
  %232 = load i32, i32* %80, align 4
  %233 = call i32 @HADD_UB3_UH(i32 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232)
  %234 = load i32, i32* %72, align 4
  %235 = load i32, i32* %73, align 4
  %236 = load i32, i32* %73, align 4
  %237 = load i32, i32* %74, align 4
  %238 = load i32, i32* %74, align 4
  %239 = load i32, i32* %75, align 4
  %240 = load i32, i32* %75, align 4
  %241 = load i32, i32* %76, align 4
  %242 = load i32, i32* %64, align 4
  %243 = load i32, i32* %65, align 4
  %244 = load i32, i32* %66, align 4
  %245 = load i32, i32* %67, align 4
  %246 = call i32 @ADD4(i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245)
  %247 = load i32, i32* %76, align 4
  %248 = load i32, i32* %77, align 4
  %249 = load i32, i32* %77, align 4
  %250 = load i32, i32* %78, align 4
  %251 = load i32, i32* %78, align 4
  %252 = load i32, i32* %79, align 4
  %253 = load i32, i32* %79, align 4
  %254 = load i32, i32* %80, align 4
  %255 = load i32, i32* %68, align 4
  %256 = load i32, i32* %69, align 4
  %257 = load i32, i32* %70, align 4
  %258 = load i32, i32* %71, align 4
  %259 = call i32 @ADD4(i32 %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i32 %258)
  %260 = load i32, i32* %56, align 4
  %261 = load i32, i32* %57, align 4
  %262 = load i32, i32* %58, align 4
  %263 = load i32, i32* %59, align 4
  %264 = call i32 @SRARI_H4_UH(i32 %260, i32 %261, i32 %262, i32 %263, i32 2)
  %265 = load i32, i32* %60, align 4
  %266 = load i32, i32* %61, align 4
  %267 = load i32, i32* %62, align 4
  %268 = load i32, i32* %63, align 4
  %269 = call i32 @SRARI_H4_UH(i32 %265, i32 %266, i32 %267, i32 %268, i32 2)
  %270 = load i32, i32* %64, align 4
  %271 = load i32, i32* %65, align 4
  %272 = load i32, i32* %66, align 4
  %273 = load i32, i32* %67, align 4
  %274 = call i32 @SRARI_H4_UH(i32 %270, i32 %271, i32 %272, i32 %273, i32 2)
  %275 = load i32, i32* %68, align 4
  %276 = load i32, i32* %69, align 4
  %277 = load i32, i32* %70, align 4
  %278 = load i32, i32* %71, align 4
  %279 = call i32 @SRARI_H4_UH(i32 %275, i32 %276, i32 %277, i32 %278, i32 2)
  %280 = load i32*, i32** %8, align 8
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* %48, align 4
  %283 = load i32, i32* %49, align 4
  %284 = load i32, i32* %50, align 4
  %285 = load i32, i32* %51, align 4
  %286 = load i32, i32* %52, align 4
  %287 = load i32, i32* %53, align 4
  %288 = load i32, i32* %54, align 4
  %289 = load i32, i32* %55, align 4
  %290 = call i32 @LD_UB8(i32* %280, i32 %281, i32 %282, i32 %283, i32 %284, i32 %285, i32 %286, i32 %287, i32 %288, i32 %289)
  %291 = load i32, i32* %64, align 4
  %292 = load i32, i32* %56, align 4
  %293 = load i32, i32* %48, align 4
  %294 = load i32*, i32** %8, align 8
  %295 = call i32 @PCKEV_AVG_ST_UB(i32 %291, i32 %292, i32 %293, i32* %294)
  %296 = load i32, i32* %9, align 4
  %297 = load i32*, i32** %8, align 8
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i32, i32* %297, i64 %298
  store i32* %299, i32** %8, align 8
  %300 = load i32, i32* %65, align 4
  %301 = load i32, i32* %57, align 4
  %302 = load i32, i32* %49, align 4
  %303 = load i32*, i32** %8, align 8
  %304 = call i32 @PCKEV_AVG_ST_UB(i32 %300, i32 %301, i32 %302, i32* %303)
  %305 = load i32, i32* %9, align 4
  %306 = load i32*, i32** %8, align 8
  %307 = sext i32 %305 to i64
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  store i32* %308, i32** %8, align 8
  %309 = load i32, i32* %66, align 4
  %310 = load i32, i32* %58, align 4
  %311 = load i32, i32* %50, align 4
  %312 = load i32*, i32** %8, align 8
  %313 = call i32 @PCKEV_AVG_ST_UB(i32 %309, i32 %310, i32 %311, i32* %312)
  %314 = load i32, i32* %9, align 4
  %315 = load i32*, i32** %8, align 8
  %316 = sext i32 %314 to i64
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  store i32* %317, i32** %8, align 8
  %318 = load i32, i32* %67, align 4
  %319 = load i32, i32* %59, align 4
  %320 = load i32, i32* %51, align 4
  %321 = load i32*, i32** %8, align 8
  %322 = call i32 @PCKEV_AVG_ST_UB(i32 %318, i32 %319, i32 %320, i32* %321)
  %323 = load i32, i32* %9, align 4
  %324 = load i32*, i32** %8, align 8
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i32, i32* %324, i64 %325
  store i32* %326, i32** %8, align 8
  %327 = load i32, i32* %68, align 4
  %328 = load i32, i32* %60, align 4
  %329 = load i32, i32* %52, align 4
  %330 = load i32*, i32** %8, align 8
  %331 = call i32 @PCKEV_AVG_ST_UB(i32 %327, i32 %328, i32 %329, i32* %330)
  %332 = load i32, i32* %9, align 4
  %333 = load i32*, i32** %8, align 8
  %334 = sext i32 %332 to i64
  %335 = getelementptr inbounds i32, i32* %333, i64 %334
  store i32* %335, i32** %8, align 8
  %336 = load i32, i32* %69, align 4
  %337 = load i32, i32* %61, align 4
  %338 = load i32, i32* %53, align 4
  %339 = load i32*, i32** %8, align 8
  %340 = call i32 @PCKEV_AVG_ST_UB(i32 %336, i32 %337, i32 %338, i32* %339)
  %341 = load i32, i32* %9, align 4
  %342 = load i32*, i32** %8, align 8
  %343 = sext i32 %341 to i64
  %344 = getelementptr inbounds i32, i32* %342, i64 %343
  store i32* %344, i32** %8, align 8
  %345 = load i32, i32* %70, align 4
  %346 = load i32, i32* %62, align 4
  %347 = load i32, i32* %54, align 4
  %348 = load i32*, i32** %8, align 8
  %349 = call i32 @PCKEV_AVG_ST_UB(i32 %345, i32 %346, i32 %347, i32* %348)
  %350 = load i32, i32* %9, align 4
  %351 = load i32*, i32** %8, align 8
  %352 = sext i32 %350 to i64
  %353 = getelementptr inbounds i32, i32* %351, i64 %352
  store i32* %353, i32** %8, align 8
  %354 = load i32, i32* %71, align 4
  %355 = load i32, i32* %63, align 4
  %356 = load i32, i32* %55, align 4
  %357 = load i32*, i32** %8, align 8
  %358 = call i32 @PCKEV_AVG_ST_UB(i32 %354, i32 %355, i32 %356, i32* %357)
  %359 = load i32, i32* %9, align 4
  %360 = load i32*, i32** %8, align 8
  %361 = sext i32 %359 to i64
  %362 = getelementptr inbounds i32, i32* %360, i64 %361
  store i32* %362, i32** %8, align 8
  br label %83

363:                                              ; preds = %83
  ret void
}

declare dso_local i32 @LD_UB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_UB(i32*) #1

declare dso_local i32 @ILVRL_B2_UB(i32, i32, i32, i32) #1

declare dso_local i32 @HADD_UB3_UH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ADD4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_UH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_AVG_ST_UB(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
