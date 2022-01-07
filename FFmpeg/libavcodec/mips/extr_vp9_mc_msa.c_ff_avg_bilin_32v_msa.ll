; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_avg_bilin_32v_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_avg_bilin_32v_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vp9_bilinear_filters_msa = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_bilin_32v_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %49 = load i32**, i32*** @vp9_bilinear_filters_msa, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %49, i64 %52
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %16, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = call i64 @LD_UH(i32* %55)
  store i64 %56, i64* %48, align 8
  %57 = load i64, i64* %48, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i64 @__msa_splati_h(i32 %58, i32 0)
  store i64 %59, i64* %43, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* %22, align 8
  %63 = call i32 @LD_UB2(i32* %60, i32 16, i64 %61, i64 %62)
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %10, align 8
  %68 = load i32, i32* %12, align 4
  %69 = ashr i32 %68, 2
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %74, %7
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %15, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %343

74:                                               ; preds = %70
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* %19, align 8
  %79 = load i64, i64* %20, align 8
  %80 = load i64, i64* %21, align 8
  %81 = call i32 @LD_UB4(i32* %75, i32 %76, i64 %77, i64 %78, i64 %79, i64 %80)
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i64, i64* %27, align 8
  %85 = load i64, i64* %28, align 8
  %86 = load i64, i64* %29, align 8
  %87 = load i64, i64* %30, align 8
  %88 = call i32 @LD_UB4(i32* %82, i32 %83, i64 %84, i64 %85, i64 %86, i64 %87)
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* %19, align 8
  %92 = load i64, i64* %18, align 8
  %93 = load i64, i64* %35, align 8
  %94 = load i64, i64* %37, align 8
  %95 = call i32 @ILVR_B2_UB(i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94)
  %96 = load i64, i64* %18, align 8
  %97 = load i64, i64* %17, align 8
  %98 = load i64, i64* %19, align 8
  %99 = load i64, i64* %18, align 8
  %100 = load i64, i64* %36, align 8
  %101 = load i64, i64* %38, align 8
  %102 = call i32 @ILVL_B2_UB(i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101)
  %103 = load i32*, i32** %10, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 16
  %105 = load i32, i32* %11, align 4
  %106 = load i64, i64* %23, align 8
  %107 = load i64, i64* %24, align 8
  %108 = load i64, i64* %25, align 8
  %109 = load i64, i64* %26, align 8
  %110 = call i32 @LD_UB4(i32* %104, i32 %105, i64 %106, i64 %107, i64 %108, i64 %109)
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 16
  %113 = load i32, i32* %9, align 4
  %114 = load i64, i64* %31, align 8
  %115 = load i64, i64* %32, align 8
  %116 = load i64, i64* %33, align 8
  %117 = load i64, i64* %34, align 8
  %118 = call i32 @LD_UB4(i32* %112, i32 %113, i64 %114, i64 %115, i64 %116, i64 %117)
  %119 = load i32, i32* %11, align 4
  %120 = mul nsw i32 4, %119
  %121 = load i32*, i32** %10, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %10, align 8
  %124 = load i64, i64* %35, align 8
  %125 = load i64, i64* %36, align 8
  %126 = load i64, i64* %43, align 8
  %127 = load i64, i64* %43, align 8
  %128 = load i64, i64* %44, align 8
  %129 = load i64, i64* %45, align 8
  %130 = call i32 @DOTP_UB2_UH(i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129)
  %131 = load i64, i64* %44, align 8
  %132 = load i64, i64* %45, align 8
  %133 = call i32 @SRARI_H2_UH(i64 %131, i64 %132, i32 7)
  %134 = load i64, i64* %44, align 8
  %135 = load i64, i64* %45, align 8
  %136 = call i32 @SAT_UH2_UH(i64 %134, i64 %135, i32 7)
  %137 = load i64, i64* %45, align 8
  %138 = load i64, i64* %44, align 8
  %139 = load i64, i64* %27, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @PCKEV_AVG_ST_UB(i64 %137, i64 %138, i64 %139, i32* %140)
  %142 = load i64, i64* %37, align 8
  %143 = load i64, i64* %38, align 8
  %144 = load i64, i64* %43, align 8
  %145 = load i64, i64* %43, align 8
  %146 = load i64, i64* %46, align 8
  %147 = load i64, i64* %47, align 8
  %148 = call i32 @DOTP_UB2_UH(i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147)
  %149 = load i64, i64* %46, align 8
  %150 = load i64, i64* %47, align 8
  %151 = call i32 @SRARI_H2_UH(i64 %149, i64 %150, i32 7)
  %152 = load i64, i64* %46, align 8
  %153 = load i64, i64* %47, align 8
  %154 = call i32 @SAT_UH2_UH(i64 %152, i64 %153, i32 7)
  %155 = load i64, i64* %47, align 8
  %156 = load i64, i64* %46, align 8
  %157 = load i64, i64* %28, align 8
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = call i32 @PCKEV_AVG_ST_UB(i64 %155, i64 %156, i64 %157, i32* %161)
  %163 = load i64, i64* %20, align 8
  %164 = load i64, i64* %19, align 8
  %165 = load i64, i64* %21, align 8
  %166 = load i64, i64* %20, align 8
  %167 = load i64, i64* %39, align 8
  %168 = load i64, i64* %41, align 8
  %169 = call i32 @ILVR_B2_UB(i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168)
  %170 = load i64, i64* %20, align 8
  %171 = load i64, i64* %19, align 8
  %172 = load i64, i64* %21, align 8
  %173 = load i64, i64* %20, align 8
  %174 = load i64, i64* %40, align 8
  %175 = load i64, i64* %42, align 8
  %176 = call i32 @ILVL_B2_UB(i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175)
  %177 = load i64, i64* %39, align 8
  %178 = load i64, i64* %40, align 8
  %179 = load i64, i64* %43, align 8
  %180 = load i64, i64* %43, align 8
  %181 = load i64, i64* %44, align 8
  %182 = load i64, i64* %45, align 8
  %183 = call i32 @DOTP_UB2_UH(i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182)
  %184 = load i64, i64* %44, align 8
  %185 = load i64, i64* %45, align 8
  %186 = call i32 @SRARI_H2_UH(i64 %184, i64 %185, i32 7)
  %187 = load i64, i64* %44, align 8
  %188 = load i64, i64* %45, align 8
  %189 = call i32 @SAT_UH2_UH(i64 %187, i64 %188, i32 7)
  %190 = load i64, i64* %45, align 8
  %191 = load i64, i64* %44, align 8
  %192 = load i64, i64* %29, align 8
  %193 = load i32*, i32** %8, align 8
  %194 = load i32, i32* %9, align 4
  %195 = mul nsw i32 2, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  %198 = call i32 @PCKEV_AVG_ST_UB(i64 %190, i64 %191, i64 %192, i32* %197)
  %199 = load i64, i64* %41, align 8
  %200 = load i64, i64* %42, align 8
  %201 = load i64, i64* %43, align 8
  %202 = load i64, i64* %43, align 8
  %203 = load i64, i64* %46, align 8
  %204 = load i64, i64* %47, align 8
  %205 = call i32 @DOTP_UB2_UH(i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204)
  %206 = load i64, i64* %46, align 8
  %207 = load i64, i64* %47, align 8
  %208 = call i32 @SRARI_H2_UH(i64 %206, i64 %207, i32 7)
  %209 = load i64, i64* %46, align 8
  %210 = load i64, i64* %47, align 8
  %211 = call i32 @SAT_UH2_UH(i64 %209, i64 %210, i32 7)
  %212 = load i64, i64* %47, align 8
  %213 = load i64, i64* %46, align 8
  %214 = load i64, i64* %30, align 8
  %215 = load i32*, i32** %8, align 8
  %216 = load i32, i32* %9, align 4
  %217 = mul nsw i32 3, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  %220 = call i32 @PCKEV_AVG_ST_UB(i64 %212, i64 %213, i64 %214, i32* %219)
  %221 = load i64, i64* %23, align 8
  %222 = load i64, i64* %22, align 8
  %223 = load i64, i64* %24, align 8
  %224 = load i64, i64* %23, align 8
  %225 = load i64, i64* %35, align 8
  %226 = load i64, i64* %37, align 8
  %227 = call i32 @ILVR_B2_UB(i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226)
  %228 = load i64, i64* %23, align 8
  %229 = load i64, i64* %22, align 8
  %230 = load i64, i64* %24, align 8
  %231 = load i64, i64* %23, align 8
  %232 = load i64, i64* %36, align 8
  %233 = load i64, i64* %38, align 8
  %234 = call i32 @ILVL_B2_UB(i64 %228, i64 %229, i64 %230, i64 %231, i64 %232, i64 %233)
  %235 = load i64, i64* %35, align 8
  %236 = load i64, i64* %36, align 8
  %237 = load i64, i64* %43, align 8
  %238 = load i64, i64* %43, align 8
  %239 = load i64, i64* %44, align 8
  %240 = load i64, i64* %45, align 8
  %241 = call i32 @DOTP_UB2_UH(i64 %235, i64 %236, i64 %237, i64 %238, i64 %239, i64 %240)
  %242 = load i64, i64* %44, align 8
  %243 = load i64, i64* %45, align 8
  %244 = call i32 @SRARI_H2_UH(i64 %242, i64 %243, i32 7)
  %245 = load i64, i64* %44, align 8
  %246 = load i64, i64* %45, align 8
  %247 = call i32 @SAT_UH2_UH(i64 %245, i64 %246, i32 7)
  %248 = load i64, i64* %45, align 8
  %249 = load i64, i64* %44, align 8
  %250 = load i64, i64* %31, align 8
  %251 = load i32*, i32** %8, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 16
  %253 = call i32 @PCKEV_AVG_ST_UB(i64 %248, i64 %249, i64 %250, i32* %252)
  %254 = load i64, i64* %37, align 8
  %255 = load i64, i64* %38, align 8
  %256 = load i64, i64* %43, align 8
  %257 = load i64, i64* %43, align 8
  %258 = load i64, i64* %46, align 8
  %259 = load i64, i64* %47, align 8
  %260 = call i32 @DOTP_UB2_UH(i64 %254, i64 %255, i64 %256, i64 %257, i64 %258, i64 %259)
  %261 = load i64, i64* %46, align 8
  %262 = load i64, i64* %47, align 8
  %263 = call i32 @SRARI_H2_UH(i64 %261, i64 %262, i32 7)
  %264 = load i64, i64* %46, align 8
  %265 = load i64, i64* %47, align 8
  %266 = call i32 @SAT_UH2_UH(i64 %264, i64 %265, i32 7)
  %267 = load i64, i64* %47, align 8
  %268 = load i64, i64* %46, align 8
  %269 = load i64, i64* %32, align 8
  %270 = load i32*, i32** %8, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 16
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = call i32 @PCKEV_AVG_ST_UB(i64 %267, i64 %268, i64 %269, i32* %274)
  %276 = load i64, i64* %25, align 8
  %277 = load i64, i64* %24, align 8
  %278 = load i64, i64* %26, align 8
  %279 = load i64, i64* %25, align 8
  %280 = load i64, i64* %39, align 8
  %281 = load i64, i64* %41, align 8
  %282 = call i32 @ILVR_B2_UB(i64 %276, i64 %277, i64 %278, i64 %279, i64 %280, i64 %281)
  %283 = load i64, i64* %25, align 8
  %284 = load i64, i64* %24, align 8
  %285 = load i64, i64* %26, align 8
  %286 = load i64, i64* %25, align 8
  %287 = load i64, i64* %40, align 8
  %288 = load i64, i64* %42, align 8
  %289 = call i32 @ILVL_B2_UB(i64 %283, i64 %284, i64 %285, i64 %286, i64 %287, i64 %288)
  %290 = load i64, i64* %39, align 8
  %291 = load i64, i64* %40, align 8
  %292 = load i64, i64* %43, align 8
  %293 = load i64, i64* %43, align 8
  %294 = load i64, i64* %44, align 8
  %295 = load i64, i64* %45, align 8
  %296 = call i32 @DOTP_UB2_UH(i64 %290, i64 %291, i64 %292, i64 %293, i64 %294, i64 %295)
  %297 = load i64, i64* %44, align 8
  %298 = load i64, i64* %45, align 8
  %299 = call i32 @SRARI_H2_UH(i64 %297, i64 %298, i32 7)
  %300 = load i64, i64* %44, align 8
  %301 = load i64, i64* %45, align 8
  %302 = call i32 @SAT_UH2_UH(i64 %300, i64 %301, i32 7)
  %303 = load i64, i64* %45, align 8
  %304 = load i64, i64* %44, align 8
  %305 = load i64, i64* %33, align 8
  %306 = load i32*, i32** %8, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 16
  %308 = load i32, i32* %9, align 4
  %309 = mul nsw i32 2, %308
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  %312 = call i32 @PCKEV_AVG_ST_UB(i64 %303, i64 %304, i64 %305, i32* %311)
  %313 = load i64, i64* %41, align 8
  %314 = load i64, i64* %42, align 8
  %315 = load i64, i64* %43, align 8
  %316 = load i64, i64* %43, align 8
  %317 = load i64, i64* %46, align 8
  %318 = load i64, i64* %47, align 8
  %319 = call i32 @DOTP_UB2_UH(i64 %313, i64 %314, i64 %315, i64 %316, i64 %317, i64 %318)
  %320 = load i64, i64* %46, align 8
  %321 = load i64, i64* %47, align 8
  %322 = call i32 @SRARI_H2_UH(i64 %320, i64 %321, i32 7)
  %323 = load i64, i64* %46, align 8
  %324 = load i64, i64* %47, align 8
  %325 = call i32 @SAT_UH2_UH(i64 %323, i64 %324, i32 7)
  %326 = load i64, i64* %47, align 8
  %327 = load i64, i64* %46, align 8
  %328 = load i64, i64* %34, align 8
  %329 = load i32*, i32** %8, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 16
  %331 = load i32, i32* %9, align 4
  %332 = mul nsw i32 3, %331
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %330, i64 %333
  %335 = call i32 @PCKEV_AVG_ST_UB(i64 %326, i64 %327, i64 %328, i32* %334)
  %336 = load i32, i32* %9, align 4
  %337 = mul nsw i32 4, %336
  %338 = load i32*, i32** %8, align 8
  %339 = sext i32 %337 to i64
  %340 = getelementptr inbounds i32, i32* %338, i64 %339
  store i32* %340, i32** %8, align 8
  %341 = load i64, i64* %21, align 8
  store i64 %341, i64* %17, align 8
  %342 = load i64, i64* %26, align 8
  store i64 %342, i64* %22, align 8
  br label %70

343:                                              ; preds = %70
  ret void
}

declare dso_local i64 @LD_UH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_UB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVL_B2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DOTP_UB2_UH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H2_UH(i64, i64, i32) #1

declare dso_local i32 @SAT_UH2_UH(i64, i64, i32) #1

declare dso_local i32 @PCKEV_AVG_ST_UB(i64, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
