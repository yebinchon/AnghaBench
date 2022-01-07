; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_avg_bilin_64v_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_avg_bilin_64v_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vp9_bilinear_filters_msa = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_bilin_64v_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %55 = load i32**, i32*** @vp9_bilinear_filters_msa, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %55, i64 %58
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %16, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = call i64 @LD_UH(i32* %61)
  store i64 %62, i64* %54, align 8
  %63 = load i64, i64* %54, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i64 @__msa_splati_h(i32 %64, i32 0)
  store i64 %65, i64* %29, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i64, i64* %17, align 8
  %68 = load i64, i64* %20, align 8
  %69 = load i64, i64* %23, align 8
  %70 = load i64, i64* %26, align 8
  %71 = call i32 @LD_UB4(i32* %66, i32 16, i64 %67, i64 %68, i64 %69, i64 %70)
  %72 = load i32, i32* %11, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %10, align 8
  %76 = load i32, i32* %12, align 4
  %77 = ashr i32 %76, 1
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %82, %7
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %15, align 4
  %81 = icmp ne i32 %79, 0
  br i1 %81, label %82, label %361

82:                                               ; preds = %78
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i64, i64* %18, align 8
  %86 = load i64, i64* %19, align 8
  %87 = call i32 @LD_UB2(i32* %83, i32 %84, i64 %85, i64 %86)
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i64, i64* %30, align 8
  %91 = load i64, i64* %31, align 8
  %92 = call i32 @LD_UB2(i32* %88, i32 %89, i64 %90, i64 %91)
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 16
  %95 = load i32, i32* %11, align 4
  %96 = load i64, i64* %21, align 8
  %97 = load i64, i64* %22, align 8
  %98 = call i32 @LD_UB2(i32* %94, i32 %95, i64 %96, i64 %97)
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 16
  %101 = load i32, i32* %9, align 4
  %102 = load i64, i64* %32, align 8
  %103 = load i64, i64* %33, align 8
  %104 = call i32 @LD_UB2(i32* %100, i32 %101, i64 %102, i64 %103)
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 32
  %107 = load i32, i32* %11, align 4
  %108 = load i64, i64* %24, align 8
  %109 = load i64, i64* %25, align 8
  %110 = call i32 @LD_UB2(i32* %106, i32 %107, i64 %108, i64 %109)
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 32
  %113 = load i32, i32* %9, align 4
  %114 = load i64, i64* %34, align 8
  %115 = load i64, i64* %35, align 8
  %116 = call i32 @LD_UB2(i32* %112, i32 %113, i64 %114, i64 %115)
  %117 = load i32*, i32** %10, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 48
  %119 = load i32, i32* %11, align 4
  %120 = load i64, i64* %27, align 8
  %121 = load i64, i64* %28, align 8
  %122 = call i32 @LD_UB2(i32* %118, i32 %119, i64 %120, i64 %121)
  %123 = load i32*, i32** %8, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 48
  %125 = load i32, i32* %9, align 4
  %126 = load i64, i64* %36, align 8
  %127 = load i64, i64* %37, align 8
  %128 = call i32 @LD_UB2(i32* %124, i32 %125, i64 %126, i64 %127)
  %129 = load i32, i32* %11, align 4
  %130 = mul nsw i32 2, %129
  %131 = load i32*, i32** %10, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %10, align 8
  %134 = load i64, i64* %18, align 8
  %135 = load i64, i64* %17, align 8
  %136 = load i64, i64* %19, align 8
  %137 = load i64, i64* %18, align 8
  %138 = load i64, i64* %38, align 8
  %139 = load i64, i64* %40, align 8
  %140 = call i32 @ILVR_B2_UB(i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139)
  %141 = load i64, i64* %18, align 8
  %142 = load i64, i64* %17, align 8
  %143 = load i64, i64* %19, align 8
  %144 = load i64, i64* %18, align 8
  %145 = load i64, i64* %39, align 8
  %146 = load i64, i64* %41, align 8
  %147 = call i32 @ILVL_B2_UB(i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146)
  %148 = load i64, i64* %38, align 8
  %149 = load i64, i64* %39, align 8
  %150 = load i64, i64* %29, align 8
  %151 = load i64, i64* %29, align 8
  %152 = load i64, i64* %46, align 8
  %153 = load i64, i64* %47, align 8
  %154 = call i32 @DOTP_UB2_UH(i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153)
  %155 = load i64, i64* %46, align 8
  %156 = load i64, i64* %47, align 8
  %157 = call i32 @SRARI_H2_UH(i64 %155, i64 %156, i32 7)
  %158 = load i64, i64* %46, align 8
  %159 = load i64, i64* %47, align 8
  %160 = call i32 @SAT_UH2_UH(i64 %158, i64 %159, i32 7)
  %161 = load i64, i64* %47, align 8
  %162 = load i64, i64* %46, align 8
  %163 = load i64, i64* %30, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = call i32 @PCKEV_AVG_ST_UB(i64 %161, i64 %162, i64 %163, i32* %164)
  %166 = load i64, i64* %40, align 8
  %167 = load i64, i64* %41, align 8
  %168 = load i64, i64* %29, align 8
  %169 = load i64, i64* %29, align 8
  %170 = load i64, i64* %48, align 8
  %171 = load i64, i64* %49, align 8
  %172 = call i32 @DOTP_UB2_UH(i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171)
  %173 = load i64, i64* %48, align 8
  %174 = load i64, i64* %49, align 8
  %175 = call i32 @SRARI_H2_UH(i64 %173, i64 %174, i32 7)
  %176 = load i64, i64* %48, align 8
  %177 = load i64, i64* %49, align 8
  %178 = call i32 @SAT_UH2_UH(i64 %176, i64 %177, i32 7)
  %179 = load i64, i64* %49, align 8
  %180 = load i64, i64* %48, align 8
  %181 = load i64, i64* %31, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = call i32 @PCKEV_AVG_ST_UB(i64 %179, i64 %180, i64 %181, i32* %185)
  %187 = load i64, i64* %21, align 8
  %188 = load i64, i64* %20, align 8
  %189 = load i64, i64* %22, align 8
  %190 = load i64, i64* %21, align 8
  %191 = load i64, i64* %42, align 8
  %192 = load i64, i64* %44, align 8
  %193 = call i32 @ILVR_B2_UB(i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192)
  %194 = load i64, i64* %21, align 8
  %195 = load i64, i64* %20, align 8
  %196 = load i64, i64* %22, align 8
  %197 = load i64, i64* %21, align 8
  %198 = load i64, i64* %43, align 8
  %199 = load i64, i64* %45, align 8
  %200 = call i32 @ILVL_B2_UB(i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199)
  %201 = load i64, i64* %42, align 8
  %202 = load i64, i64* %43, align 8
  %203 = load i64, i64* %29, align 8
  %204 = load i64, i64* %29, align 8
  %205 = load i64, i64* %50, align 8
  %206 = load i64, i64* %51, align 8
  %207 = call i32 @DOTP_UB2_UH(i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206)
  %208 = load i64, i64* %50, align 8
  %209 = load i64, i64* %51, align 8
  %210 = call i32 @SRARI_H2_UH(i64 %208, i64 %209, i32 7)
  %211 = load i64, i64* %50, align 8
  %212 = load i64, i64* %51, align 8
  %213 = call i32 @SAT_UH2_UH(i64 %211, i64 %212, i32 7)
  %214 = load i64, i64* %51, align 8
  %215 = load i64, i64* %50, align 8
  %216 = load i64, i64* %32, align 8
  %217 = load i32*, i32** %8, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 16
  %219 = call i32 @PCKEV_AVG_ST_UB(i64 %214, i64 %215, i64 %216, i32* %218)
  %220 = load i64, i64* %44, align 8
  %221 = load i64, i64* %45, align 8
  %222 = load i64, i64* %29, align 8
  %223 = load i64, i64* %29, align 8
  %224 = load i64, i64* %52, align 8
  %225 = load i64, i64* %53, align 8
  %226 = call i32 @DOTP_UB2_UH(i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225)
  %227 = load i64, i64* %52, align 8
  %228 = load i64, i64* %53, align 8
  %229 = call i32 @SRARI_H2_UH(i64 %227, i64 %228, i32 7)
  %230 = load i64, i64* %52, align 8
  %231 = load i64, i64* %53, align 8
  %232 = call i32 @SAT_UH2_UH(i64 %230, i64 %231, i32 7)
  %233 = load i64, i64* %53, align 8
  %234 = load i64, i64* %52, align 8
  %235 = load i64, i64* %33, align 8
  %236 = load i32*, i32** %8, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 16
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = call i32 @PCKEV_AVG_ST_UB(i64 %233, i64 %234, i64 %235, i32* %240)
  %242 = load i64, i64* %24, align 8
  %243 = load i64, i64* %23, align 8
  %244 = load i64, i64* %25, align 8
  %245 = load i64, i64* %24, align 8
  %246 = load i64, i64* %38, align 8
  %247 = load i64, i64* %40, align 8
  %248 = call i32 @ILVR_B2_UB(i64 %242, i64 %243, i64 %244, i64 %245, i64 %246, i64 %247)
  %249 = load i64, i64* %24, align 8
  %250 = load i64, i64* %23, align 8
  %251 = load i64, i64* %25, align 8
  %252 = load i64, i64* %24, align 8
  %253 = load i64, i64* %39, align 8
  %254 = load i64, i64* %41, align 8
  %255 = call i32 @ILVL_B2_UB(i64 %249, i64 %250, i64 %251, i64 %252, i64 %253, i64 %254)
  %256 = load i64, i64* %38, align 8
  %257 = load i64, i64* %39, align 8
  %258 = load i64, i64* %29, align 8
  %259 = load i64, i64* %29, align 8
  %260 = load i64, i64* %46, align 8
  %261 = load i64, i64* %47, align 8
  %262 = call i32 @DOTP_UB2_UH(i64 %256, i64 %257, i64 %258, i64 %259, i64 %260, i64 %261)
  %263 = load i64, i64* %46, align 8
  %264 = load i64, i64* %47, align 8
  %265 = call i32 @SRARI_H2_UH(i64 %263, i64 %264, i32 7)
  %266 = load i64, i64* %46, align 8
  %267 = load i64, i64* %47, align 8
  %268 = call i32 @SAT_UH2_UH(i64 %266, i64 %267, i32 7)
  %269 = load i64, i64* %47, align 8
  %270 = load i64, i64* %46, align 8
  %271 = load i64, i64* %34, align 8
  %272 = load i32*, i32** %8, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 32
  %274 = call i32 @PCKEV_AVG_ST_UB(i64 %269, i64 %270, i64 %271, i32* %273)
  %275 = load i64, i64* %40, align 8
  %276 = load i64, i64* %41, align 8
  %277 = load i64, i64* %29, align 8
  %278 = load i64, i64* %29, align 8
  %279 = load i64, i64* %48, align 8
  %280 = load i64, i64* %49, align 8
  %281 = call i32 @DOTP_UB2_UH(i64 %275, i64 %276, i64 %277, i64 %278, i64 %279, i64 %280)
  %282 = load i64, i64* %48, align 8
  %283 = load i64, i64* %49, align 8
  %284 = call i32 @SRARI_H2_UH(i64 %282, i64 %283, i32 7)
  %285 = load i64, i64* %48, align 8
  %286 = load i64, i64* %49, align 8
  %287 = call i32 @SAT_UH2_UH(i64 %285, i64 %286, i32 7)
  %288 = load i64, i64* %49, align 8
  %289 = load i64, i64* %48, align 8
  %290 = load i64, i64* %35, align 8
  %291 = load i32*, i32** %8, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 32
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = call i32 @PCKEV_AVG_ST_UB(i64 %288, i64 %289, i64 %290, i32* %295)
  %297 = load i64, i64* %27, align 8
  %298 = load i64, i64* %26, align 8
  %299 = load i64, i64* %28, align 8
  %300 = load i64, i64* %27, align 8
  %301 = load i64, i64* %42, align 8
  %302 = load i64, i64* %44, align 8
  %303 = call i32 @ILVR_B2_UB(i64 %297, i64 %298, i64 %299, i64 %300, i64 %301, i64 %302)
  %304 = load i64, i64* %27, align 8
  %305 = load i64, i64* %26, align 8
  %306 = load i64, i64* %28, align 8
  %307 = load i64, i64* %27, align 8
  %308 = load i64, i64* %43, align 8
  %309 = load i64, i64* %45, align 8
  %310 = call i32 @ILVL_B2_UB(i64 %304, i64 %305, i64 %306, i64 %307, i64 %308, i64 %309)
  %311 = load i64, i64* %42, align 8
  %312 = load i64, i64* %43, align 8
  %313 = load i64, i64* %29, align 8
  %314 = load i64, i64* %29, align 8
  %315 = load i64, i64* %50, align 8
  %316 = load i64, i64* %51, align 8
  %317 = call i32 @DOTP_UB2_UH(i64 %311, i64 %312, i64 %313, i64 %314, i64 %315, i64 %316)
  %318 = load i64, i64* %50, align 8
  %319 = load i64, i64* %51, align 8
  %320 = call i32 @SRARI_H2_UH(i64 %318, i64 %319, i32 7)
  %321 = load i64, i64* %50, align 8
  %322 = load i64, i64* %51, align 8
  %323 = call i32 @SAT_UH2_UH(i64 %321, i64 %322, i32 7)
  %324 = load i64, i64* %51, align 8
  %325 = load i64, i64* %50, align 8
  %326 = load i64, i64* %36, align 8
  %327 = load i32*, i32** %8, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 48
  %329 = call i32 @PCKEV_AVG_ST_UB(i64 %324, i64 %325, i64 %326, i32* %328)
  %330 = load i64, i64* %44, align 8
  %331 = load i64, i64* %45, align 8
  %332 = load i64, i64* %29, align 8
  %333 = load i64, i64* %29, align 8
  %334 = load i64, i64* %52, align 8
  %335 = load i64, i64* %53, align 8
  %336 = call i32 @DOTP_UB2_UH(i64 %330, i64 %331, i64 %332, i64 %333, i64 %334, i64 %335)
  %337 = load i64, i64* %52, align 8
  %338 = load i64, i64* %53, align 8
  %339 = call i32 @SRARI_H2_UH(i64 %337, i64 %338, i32 7)
  %340 = load i64, i64* %52, align 8
  %341 = load i64, i64* %53, align 8
  %342 = call i32 @SAT_UH2_UH(i64 %340, i64 %341, i32 7)
  %343 = load i64, i64* %53, align 8
  %344 = load i64, i64* %52, align 8
  %345 = load i64, i64* %37, align 8
  %346 = load i32*, i32** %8, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 48
  %348 = load i32, i32* %9, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = call i32 @PCKEV_AVG_ST_UB(i64 %343, i64 %344, i64 %345, i32* %350)
  %352 = load i32, i32* %9, align 4
  %353 = mul nsw i32 2, %352
  %354 = load i32*, i32** %8, align 8
  %355 = sext i32 %353 to i64
  %356 = getelementptr inbounds i32, i32* %354, i64 %355
  store i32* %356, i32** %8, align 8
  %357 = load i64, i64* %19, align 8
  store i64 %357, i64* %17, align 8
  %358 = load i64, i64* %22, align 8
  store i64 %358, i64* %20, align 8
  %359 = load i64, i64* %25, align 8
  store i64 %359, i64* %23, align 8
  %360 = load i64, i64* %28, align 8
  store i64 %360, i64* %26, align 8
  br label %78

361:                                              ; preds = %78
  ret void
}

declare dso_local i64 @LD_UH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_UB2(i32*, i32, i64, i64) #1

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
