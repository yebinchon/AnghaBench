; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_avg_bilin_16h_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_avg_bilin_16h_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vp9_bilinear_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_bilin_16h_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
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
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %48 = load i32**, i32*** @vp9_bilinear_filters_msa, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %48, i64 %51
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %16, align 8
  %54 = load i32*, i32** @mc_filt_mask_arr, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i32 @LD_SB(i32* %55)
  store i32 %56, i32* %25, align 4
  %57 = load i32*, i32** %16, align 8
  %58 = call i64 @LD_UH(i32* %57)
  store i64 %58, i64* %47, align 8
  %59 = load i64, i64* %47, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i64 @__msa_splati_h(i32 %60, i32 0)
  store i64 %61, i64* %26, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %21, align 4
  %67 = load i32, i32* %23, align 4
  %68 = call i32 @LD_SB4(i32* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* %24, align 4
  %76 = call i32 @LD_SB4(i32* %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 4, %77
  %79 = load i32*, i32** %10, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %10, align 8
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %25, align 4
  %87 = load i32, i32* %25, align 4
  %88 = load i64, i64* %31, align 8
  %89 = load i64, i64* %32, align 8
  %90 = call i32 @VSHF_B2_UB(i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i64 %88, i64 %89)
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %25, align 4
  %96 = load i32, i32* %25, align 4
  %97 = load i64, i64* %33, align 8
  %98 = load i64, i64* %34, align 8
  %99 = call i32 @VSHF_B2_UB(i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i64 %97, i64 %98)
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %21, align 4
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* %22, align 4
  %104 = load i32, i32* %25, align 4
  %105 = load i32, i32* %25, align 4
  %106 = load i64, i64* %35, align 8
  %107 = load i64, i64* %36, align 8
  %108 = call i32 @VSHF_B2_UB(i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i64 %106, i64 %107)
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %23, align 4
  %111 = load i32, i32* %24, align 4
  %112 = load i32, i32* %24, align 4
  %113 = load i32, i32* %25, align 4
  %114 = load i32, i32* %25, align 4
  %115 = load i64, i64* %37, align 8
  %116 = load i64, i64* %38, align 8
  %117 = call i32 @VSHF_B2_UB(i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i64 %115, i64 %116)
  %118 = load i64, i64* %31, align 8
  %119 = load i64, i64* %32, align 8
  %120 = load i64, i64* %33, align 8
  %121 = load i64, i64* %34, align 8
  %122 = load i64, i64* %26, align 8
  %123 = load i64, i64* %26, align 8
  %124 = load i64, i64* %26, align 8
  %125 = load i64, i64* %26, align 8
  %126 = load i64, i64* %39, align 8
  %127 = load i64, i64* %40, align 8
  %128 = load i64, i64* %41, align 8
  %129 = load i64, i64* %42, align 8
  %130 = call i32 @DOTP_UB4_UH(i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129)
  %131 = load i64, i64* %35, align 8
  %132 = load i64, i64* %36, align 8
  %133 = load i64, i64* %37, align 8
  %134 = load i64, i64* %38, align 8
  %135 = load i64, i64* %26, align 8
  %136 = load i64, i64* %26, align 8
  %137 = load i64, i64* %26, align 8
  %138 = load i64, i64* %26, align 8
  %139 = load i64, i64* %43, align 8
  %140 = load i64, i64* %44, align 8
  %141 = load i64, i64* %45, align 8
  %142 = load i64, i64* %46, align 8
  %143 = call i32 @DOTP_UB4_UH(i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142)
  %144 = load i64, i64* %39, align 8
  %145 = load i64, i64* %40, align 8
  %146 = load i64, i64* %41, align 8
  %147 = load i64, i64* %42, align 8
  %148 = call i32 @SRARI_H4_UH(i64 %144, i64 %145, i64 %146, i64 %147, i32 7)
  %149 = load i64, i64* %43, align 8
  %150 = load i64, i64* %44, align 8
  %151 = load i64, i64* %45, align 8
  %152 = load i64, i64* %46, align 8
  %153 = call i32 @SRARI_H4_UH(i64 %149, i64 %150, i64 %151, i64 %152, i32 7)
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load i64, i64* %27, align 8
  %157 = load i64, i64* %28, align 8
  %158 = load i64, i64* %29, align 8
  %159 = load i64, i64* %30, align 8
  %160 = call i32 @LD_UB4(i32* %154, i32 %155, i64 %156, i64 %157, i64 %158, i64 %159)
  %161 = load i64, i64* %40, align 8
  %162 = load i64, i64* %39, align 8
  %163 = load i64, i64* %27, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = call i32 @PCKEV_AVG_ST_UB(i64 %161, i64 %162, i64 %163, i32* %164)
  %166 = load i32, i32* %9, align 4
  %167 = load i32*, i32** %8, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %8, align 8
  %170 = load i64, i64* %42, align 8
  %171 = load i64, i64* %41, align 8
  %172 = load i64, i64* %28, align 8
  %173 = load i32*, i32** %8, align 8
  %174 = call i32 @PCKEV_AVG_ST_UB(i64 %170, i64 %171, i64 %172, i32* %173)
  %175 = load i32, i32* %9, align 4
  %176 = load i32*, i32** %8, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32* %178, i32** %8, align 8
  %179 = load i64, i64* %44, align 8
  %180 = load i64, i64* %43, align 8
  %181 = load i64, i64* %29, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = call i32 @PCKEV_AVG_ST_UB(i64 %179, i64 %180, i64 %181, i32* %182)
  %184 = load i32, i32* %9, align 4
  %185 = load i32*, i32** %8, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32* %187, i32** %8, align 8
  %188 = load i64, i64* %46, align 8
  %189 = load i64, i64* %45, align 8
  %190 = load i64, i64* %30, align 8
  %191 = load i32*, i32** %8, align 8
  %192 = call i32 @PCKEV_AVG_ST_UB(i64 %188, i64 %189, i64 %190, i32* %191)
  %193 = load i32, i32* %9, align 4
  %194 = load i32*, i32** %8, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  store i32* %196, i32** %8, align 8
  %197 = load i32, i32* %12, align 4
  %198 = ashr i32 %197, 2
  %199 = sub nsw i32 %198, 1
  store i32 %199, i32* %15, align 4
  br label %200

200:                                              ; preds = %204, %7
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %15, align 4
  %203 = icmp ne i32 %201, 0
  br i1 %203, label %204, label %340

204:                                              ; preds = %200
  %205 = load i32*, i32** %10, align 8
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %19, align 4
  %209 = load i32, i32* %21, align 4
  %210 = load i32, i32* %23, align 4
  %211 = call i32 @LD_SB4(i32* %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load i32*, i32** %10, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 8
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* %18, align 4
  %216 = load i32, i32* %20, align 4
  %217 = load i32, i32* %22, align 4
  %218 = load i32, i32* %24, align 4
  %219 = call i32 @LD_SB4(i32* %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218)
  %220 = load i32, i32* %11, align 4
  %221 = mul nsw i32 4, %220
  %222 = load i32*, i32** %10, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32* %224, i32** %10, align 8
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* %17, align 4
  %227 = load i32, i32* %18, align 4
  %228 = load i32, i32* %18, align 4
  %229 = load i32, i32* %25, align 4
  %230 = load i32, i32* %25, align 4
  %231 = load i64, i64* %31, align 8
  %232 = load i64, i64* %32, align 8
  %233 = call i32 @VSHF_B2_UB(i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i64 %231, i64 %232)
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* %19, align 4
  %236 = load i32, i32* %20, align 4
  %237 = load i32, i32* %20, align 4
  %238 = load i32, i32* %25, align 4
  %239 = load i32, i32* %25, align 4
  %240 = load i64, i64* %33, align 8
  %241 = load i64, i64* %34, align 8
  %242 = call i32 @VSHF_B2_UB(i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i64 %240, i64 %241)
  %243 = load i32, i32* %21, align 4
  %244 = load i32, i32* %21, align 4
  %245 = load i32, i32* %22, align 4
  %246 = load i32, i32* %22, align 4
  %247 = load i32, i32* %25, align 4
  %248 = load i32, i32* %25, align 4
  %249 = load i64, i64* %35, align 8
  %250 = load i64, i64* %36, align 8
  %251 = call i32 @VSHF_B2_UB(i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248, i64 %249, i64 %250)
  %252 = load i32, i32* %23, align 4
  %253 = load i32, i32* %23, align 4
  %254 = load i32, i32* %24, align 4
  %255 = load i32, i32* %24, align 4
  %256 = load i32, i32* %25, align 4
  %257 = load i32, i32* %25, align 4
  %258 = load i64, i64* %37, align 8
  %259 = load i64, i64* %38, align 8
  %260 = call i32 @VSHF_B2_UB(i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i64 %258, i64 %259)
  %261 = load i64, i64* %31, align 8
  %262 = load i64, i64* %32, align 8
  %263 = load i64, i64* %33, align 8
  %264 = load i64, i64* %34, align 8
  %265 = load i64, i64* %26, align 8
  %266 = load i64, i64* %26, align 8
  %267 = load i64, i64* %26, align 8
  %268 = load i64, i64* %26, align 8
  %269 = load i64, i64* %39, align 8
  %270 = load i64, i64* %40, align 8
  %271 = load i64, i64* %41, align 8
  %272 = load i64, i64* %42, align 8
  %273 = call i32 @DOTP_UB4_UH(i64 %261, i64 %262, i64 %263, i64 %264, i64 %265, i64 %266, i64 %267, i64 %268, i64 %269, i64 %270, i64 %271, i64 %272)
  %274 = load i64, i64* %35, align 8
  %275 = load i64, i64* %36, align 8
  %276 = load i64, i64* %37, align 8
  %277 = load i64, i64* %38, align 8
  %278 = load i64, i64* %26, align 8
  %279 = load i64, i64* %26, align 8
  %280 = load i64, i64* %26, align 8
  %281 = load i64, i64* %26, align 8
  %282 = load i64, i64* %43, align 8
  %283 = load i64, i64* %44, align 8
  %284 = load i64, i64* %45, align 8
  %285 = load i64, i64* %46, align 8
  %286 = call i32 @DOTP_UB4_UH(i64 %274, i64 %275, i64 %276, i64 %277, i64 %278, i64 %279, i64 %280, i64 %281, i64 %282, i64 %283, i64 %284, i64 %285)
  %287 = load i64, i64* %39, align 8
  %288 = load i64, i64* %40, align 8
  %289 = load i64, i64* %41, align 8
  %290 = load i64, i64* %42, align 8
  %291 = call i32 @SRARI_H4_UH(i64 %287, i64 %288, i64 %289, i64 %290, i32 7)
  %292 = load i64, i64* %43, align 8
  %293 = load i64, i64* %44, align 8
  %294 = load i64, i64* %45, align 8
  %295 = load i64, i64* %46, align 8
  %296 = call i32 @SRARI_H4_UH(i64 %292, i64 %293, i64 %294, i64 %295, i32 7)
  %297 = load i32*, i32** %8, align 8
  %298 = load i32, i32* %9, align 4
  %299 = load i64, i64* %27, align 8
  %300 = load i64, i64* %28, align 8
  %301 = load i64, i64* %29, align 8
  %302 = load i64, i64* %30, align 8
  %303 = call i32 @LD_UB4(i32* %297, i32 %298, i64 %299, i64 %300, i64 %301, i64 %302)
  %304 = load i64, i64* %40, align 8
  %305 = load i64, i64* %39, align 8
  %306 = load i64, i64* %27, align 8
  %307 = load i32*, i32** %8, align 8
  %308 = call i32 @PCKEV_AVG_ST_UB(i64 %304, i64 %305, i64 %306, i32* %307)
  %309 = load i32, i32* %9, align 4
  %310 = load i32*, i32** %8, align 8
  %311 = sext i32 %309 to i64
  %312 = getelementptr inbounds i32, i32* %310, i64 %311
  store i32* %312, i32** %8, align 8
  %313 = load i64, i64* %42, align 8
  %314 = load i64, i64* %41, align 8
  %315 = load i64, i64* %28, align 8
  %316 = load i32*, i32** %8, align 8
  %317 = call i32 @PCKEV_AVG_ST_UB(i64 %313, i64 %314, i64 %315, i32* %316)
  %318 = load i32, i32* %9, align 4
  %319 = load i32*, i32** %8, align 8
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds i32, i32* %319, i64 %320
  store i32* %321, i32** %8, align 8
  %322 = load i64, i64* %44, align 8
  %323 = load i64, i64* %43, align 8
  %324 = load i64, i64* %29, align 8
  %325 = load i32*, i32** %8, align 8
  %326 = call i32 @PCKEV_AVG_ST_UB(i64 %322, i64 %323, i64 %324, i32* %325)
  %327 = load i32, i32* %9, align 4
  %328 = load i32*, i32** %8, align 8
  %329 = sext i32 %327 to i64
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  store i32* %330, i32** %8, align 8
  %331 = load i64, i64* %46, align 8
  %332 = load i64, i64* %45, align 8
  %333 = load i64, i64* %30, align 8
  %334 = load i32*, i32** %8, align 8
  %335 = call i32 @PCKEV_AVG_ST_UB(i64 %331, i64 %332, i64 %333, i32* %334)
  %336 = load i32, i32* %9, align 4
  %337 = load i32*, i32** %8, align 8
  %338 = sext i32 %336 to i64
  %339 = getelementptr inbounds i32, i32* %337, i64 %338
  store i32* %339, i32** %8, align 8
  br label %200

340:                                              ; preds = %200
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i64 @LD_UH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_UB(i32, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @DOTP_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @PCKEV_AVG_ST_UB(i64, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
