; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_hevc_hv_uni_4t_8multx4mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_hevc_hv_uni_4t_8multx4mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32, i32)* @hevc_hv_uni_4t_8multx4mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_uni_4t_8multx4mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
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
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %76 = load i32, i32* @ff_hevc_mask_arr, align 4
  %77 = call i64 @LD_SB(i32 %76)
  store i64 %77, i64* %35, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32*, i32** %9, align 8
  %81 = sext i32 %79 to i64
  %82 = sub i64 0, %81
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32* %83, i32** %9, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = call i32 @LD_SH(i32* %84)
  store i32 %85, i32* %34, align 4
  %86 = load i32, i32* %34, align 4
  %87 = load i32, i32* %30, align 4
  %88 = load i32, i32* %31, align 4
  %89 = call i32 @SPLATI_H2_SH(i32 %86, i32 0, i32 1, i32 %87, i32 %88)
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @LD_SH(i32* %90)
  store i32 %91, i32* %34, align 4
  %92 = load i32, i32* %34, align 4
  %93 = load i32, i32* %34, align 4
  %94 = call i32 @UNPCK_R_SB_SH(i32 %92, i32 %93)
  %95 = load i32, i32* %34, align 4
  %96 = load i32, i32* %32, align 4
  %97 = load i32, i32* %33, align 4
  %98 = call i32 @SPLATI_W2_SH(i32 %95, i32 0, i32 %96, i32 %97)
  %99 = load i64, i64* %35, align 8
  %100 = add nsw i64 %99, 2
  store i64 %100, i64* %36, align 8
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %18, align 4
  br label %102

102:                                              ; preds = %370, %8
  %103 = load i32, i32* %18, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %18, align 4
  %105 = icmp ne i32 %103, 0
  br i1 %105, label %106, label %375

106:                                              ; preds = %102
  %107 = load i32*, i32** %9, align 8
  store i32* %107, i32** %19, align 8
  %108 = load i32*, i32** %11, align 8
  store i32* %108, i32** %20, align 8
  %109 = load i32*, i32** %19, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i64, i64* %23, align 8
  %112 = load i64, i64* %24, align 8
  %113 = load i64, i64* %25, align 8
  %114 = call i32 @LD_SB3(i32* %109, i32 %110, i64 %111, i64 %112, i64 %113)
  %115 = load i32, i32* %10, align 4
  %116 = mul nsw i32 3, %115
  %117 = load i32*, i32** %19, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %19, align 8
  %120 = load i64, i64* %23, align 8
  %121 = load i64, i64* %24, align 8
  %122 = load i64, i64* %25, align 8
  %123 = call i32 @XORI_B3_128_SB(i64 %120, i64 %121, i64 %122)
  %124 = load i64, i64* %23, align 8
  %125 = load i64, i64* %23, align 8
  %126 = load i64, i64* %23, align 8
  %127 = load i64, i64* %23, align 8
  %128 = load i64, i64* %35, align 8
  %129 = load i64, i64* %36, align 8
  %130 = load i64, i64* %37, align 8
  %131 = load i64, i64* %38, align 8
  %132 = call i32 @VSHF_B2_SB(i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131)
  %133 = load i64, i64* %24, align 8
  %134 = load i64, i64* %24, align 8
  %135 = load i64, i64* %24, align 8
  %136 = load i64, i64* %24, align 8
  %137 = load i64, i64* %35, align 8
  %138 = load i64, i64* %36, align 8
  %139 = load i64, i64* %39, align 8
  %140 = load i64, i64* %40, align 8
  %141 = call i32 @VSHF_B2_SB(i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140)
  %142 = load i64, i64* %25, align 8
  %143 = load i64, i64* %25, align 8
  %144 = load i64, i64* %25, align 8
  %145 = load i64, i64* %25, align 8
  %146 = load i64, i64* %35, align 8
  %147 = load i64, i64* %36, align 8
  %148 = load i64, i64* %41, align 8
  %149 = load i64, i64* %42, align 8
  %150 = call i32 @VSHF_B2_SB(i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149)
  %151 = load i64, i64* %37, align 8
  %152 = load i64, i64* %38, align 8
  %153 = load i32, i32* %30, align 4
  %154 = load i32, i32* %31, align 4
  %155 = call i32 @HEVC_FILT_4TAP_SH(i64 %151, i64 %152, i32 %153, i32 %154)
  store i32 %155, i32* %45, align 4
  %156 = load i64, i64* %39, align 8
  %157 = load i64, i64* %40, align 8
  %158 = load i32, i32* %30, align 4
  %159 = load i32, i32* %31, align 4
  %160 = call i32 @HEVC_FILT_4TAP_SH(i64 %156, i64 %157, i32 %158, i32 %159)
  store i32 %160, i32* %46, align 4
  %161 = load i64, i64* %41, align 8
  %162 = load i64, i64* %42, align 8
  %163 = load i32, i32* %30, align 4
  %164 = load i32, i32* %31, align 4
  %165 = call i32 @HEVC_FILT_4TAP_SH(i64 %161, i64 %162, i32 %163, i32 %164)
  store i32 %165, i32* %47, align 4
  %166 = load i32, i32* %46, align 4
  %167 = load i32, i32* %45, align 4
  %168 = load i32, i32* %59, align 4
  %169 = load i32, i32* %63, align 4
  %170 = call i32 @ILVRL_H2_SH(i32 %166, i32 %167, i32 %168, i32 %169)
  %171 = load i32, i32* %47, align 4
  %172 = load i32, i32* %46, align 4
  %173 = load i32, i32* %61, align 4
  %174 = load i32, i32* %65, align 4
  %175 = call i32 @ILVRL_H2_SH(i32 %171, i32 %172, i32 %173, i32 %174)
  %176 = load i32, i32* %15, align 4
  %177 = ashr i32 %176, 2
  store i32 %177, i32* %17, align 4
  br label %178

178:                                              ; preds = %182, %106
  %179 = load i32, i32* %17, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %17, align 4
  %181 = icmp ne i32 %179, 0
  br i1 %181, label %182, label %370

182:                                              ; preds = %178
  %183 = load i32*, i32** %19, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load i64, i64* %26, align 8
  %186 = load i64, i64* %27, align 8
  %187 = load i64, i64* %28, align 8
  %188 = load i64, i64* %29, align 8
  %189 = call i32 @LD_SB4(i32* %183, i32 %184, i64 %185, i64 %186, i64 %187, i64 %188)
  %190 = load i32, i32* %10, align 4
  %191 = mul nsw i32 4, %190
  %192 = load i32*, i32** %19, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32* %194, i32** %19, align 8
  %195 = load i64, i64* %26, align 8
  %196 = load i64, i64* %27, align 8
  %197 = load i64, i64* %28, align 8
  %198 = load i64, i64* %29, align 8
  %199 = call i32 @XORI_B4_128_SB(i64 %195, i64 %196, i64 %197, i64 %198)
  %200 = load i64, i64* %26, align 8
  %201 = load i64, i64* %26, align 8
  %202 = load i64, i64* %26, align 8
  %203 = load i64, i64* %26, align 8
  %204 = load i64, i64* %35, align 8
  %205 = load i64, i64* %36, align 8
  %206 = load i64, i64* %37, align 8
  %207 = load i64, i64* %38, align 8
  %208 = call i32 @VSHF_B2_SB(i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207)
  %209 = load i64, i64* %27, align 8
  %210 = load i64, i64* %27, align 8
  %211 = load i64, i64* %27, align 8
  %212 = load i64, i64* %27, align 8
  %213 = load i64, i64* %35, align 8
  %214 = load i64, i64* %36, align 8
  %215 = load i64, i64* %39, align 8
  %216 = load i64, i64* %40, align 8
  %217 = call i32 @VSHF_B2_SB(i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216)
  %218 = load i64, i64* %28, align 8
  %219 = load i64, i64* %28, align 8
  %220 = load i64, i64* %28, align 8
  %221 = load i64, i64* %28, align 8
  %222 = load i64, i64* %35, align 8
  %223 = load i64, i64* %36, align 8
  %224 = load i64, i64* %41, align 8
  %225 = load i64, i64* %42, align 8
  %226 = call i32 @VSHF_B2_SB(i64 %218, i64 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225)
  %227 = load i64, i64* %29, align 8
  %228 = load i64, i64* %29, align 8
  %229 = load i64, i64* %29, align 8
  %230 = load i64, i64* %29, align 8
  %231 = load i64, i64* %35, align 8
  %232 = load i64, i64* %36, align 8
  %233 = load i64, i64* %43, align 8
  %234 = load i64, i64* %44, align 8
  %235 = call i32 @VSHF_B2_SB(i64 %227, i64 %228, i64 %229, i64 %230, i64 %231, i64 %232, i64 %233, i64 %234)
  %236 = load i64, i64* %37, align 8
  %237 = load i64, i64* %38, align 8
  %238 = load i32, i32* %30, align 4
  %239 = load i32, i32* %31, align 4
  %240 = call i32 @HEVC_FILT_4TAP_SH(i64 %236, i64 %237, i32 %238, i32 %239)
  store i32 %240, i32* %48, align 4
  %241 = load i64, i64* %39, align 8
  %242 = load i64, i64* %40, align 8
  %243 = load i32, i32* %30, align 4
  %244 = load i32, i32* %31, align 4
  %245 = call i32 @HEVC_FILT_4TAP_SH(i64 %241, i64 %242, i32 %243, i32 %244)
  store i32 %245, i32* %49, align 4
  %246 = load i64, i64* %41, align 8
  %247 = load i64, i64* %42, align 8
  %248 = load i32, i32* %30, align 4
  %249 = load i32, i32* %31, align 4
  %250 = call i32 @HEVC_FILT_4TAP_SH(i64 %246, i64 %247, i32 %248, i32 %249)
  store i32 %250, i32* %50, align 4
  %251 = load i64, i64* %43, align 8
  %252 = load i64, i64* %44, align 8
  %253 = load i32, i32* %30, align 4
  %254 = load i32, i32* %31, align 4
  %255 = call i32 @HEVC_FILT_4TAP_SH(i64 %251, i64 %252, i32 %253, i32 %254)
  store i32 %255, i32* %71, align 4
  %256 = load i32, i32* %48, align 4
  %257 = load i32, i32* %47, align 4
  %258 = load i32, i32* %60, align 4
  %259 = load i32, i32* %64, align 4
  %260 = call i32 @ILVRL_H2_SH(i32 %256, i32 %257, i32 %258, i32 %259)
  %261 = load i32, i32* %49, align 4
  %262 = load i32, i32* %48, align 4
  %263 = load i32, i32* %62, align 4
  %264 = load i32, i32* %66, align 4
  %265 = call i32 @ILVRL_H2_SH(i32 %261, i32 %262, i32 %263, i32 %264)
  %266 = load i32, i32* %50, align 4
  %267 = load i32, i32* %49, align 4
  %268 = load i32, i32* %67, align 4
  %269 = load i32, i32* %68, align 4
  %270 = call i32 @ILVRL_H2_SH(i32 %266, i32 %267, i32 %268, i32 %269)
  %271 = load i32, i32* %71, align 4
  %272 = load i32, i32* %50, align 4
  %273 = load i32, i32* %69, align 4
  %274 = load i32, i32* %70, align 4
  %275 = call i32 @ILVRL_H2_SH(i32 %271, i32 %272, i32 %273, i32 %274)
  %276 = load i32, i32* %59, align 4
  %277 = load i32, i32* %60, align 4
  %278 = load i32, i32* %32, align 4
  %279 = load i32, i32* %33, align 4
  %280 = call i32 @HEVC_FILT_4TAP(i32 %276, i32 %277, i32 %278, i32 %279)
  store i32 %280, i32* %51, align 4
  %281 = load i32, i32* %63, align 4
  %282 = load i32, i32* %64, align 4
  %283 = load i32, i32* %32, align 4
  %284 = load i32, i32* %33, align 4
  %285 = call i32 @HEVC_FILT_4TAP(i32 %281, i32 %282, i32 %283, i32 %284)
  store i32 %285, i32* %52, align 4
  %286 = load i32, i32* %61, align 4
  %287 = load i32, i32* %62, align 4
  %288 = load i32, i32* %32, align 4
  %289 = load i32, i32* %33, align 4
  %290 = call i32 @HEVC_FILT_4TAP(i32 %286, i32 %287, i32 %288, i32 %289)
  store i32 %290, i32* %53, align 4
  %291 = load i32, i32* %65, align 4
  %292 = load i32, i32* %66, align 4
  %293 = load i32, i32* %32, align 4
  %294 = load i32, i32* %33, align 4
  %295 = call i32 @HEVC_FILT_4TAP(i32 %291, i32 %292, i32 %293, i32 %294)
  store i32 %295, i32* %54, align 4
  %296 = load i32, i32* %60, align 4
  %297 = load i32, i32* %67, align 4
  %298 = load i32, i32* %32, align 4
  %299 = load i32, i32* %33, align 4
  %300 = call i32 @HEVC_FILT_4TAP(i32 %296, i32 %297, i32 %298, i32 %299)
  store i32 %300, i32* %55, align 4
  %301 = load i32, i32* %64, align 4
  %302 = load i32, i32* %68, align 4
  %303 = load i32, i32* %32, align 4
  %304 = load i32, i32* %33, align 4
  %305 = call i32 @HEVC_FILT_4TAP(i32 %301, i32 %302, i32 %303, i32 %304)
  store i32 %305, i32* %56, align 4
  %306 = load i32, i32* %62, align 4
  %307 = load i32, i32* %69, align 4
  %308 = load i32, i32* %32, align 4
  %309 = load i32, i32* %33, align 4
  %310 = call i32 @HEVC_FILT_4TAP(i32 %306, i32 %307, i32 %308, i32 %309)
  store i32 %310, i32* %57, align 4
  %311 = load i32, i32* %66, align 4
  %312 = load i32, i32* %70, align 4
  %313 = load i32, i32* %32, align 4
  %314 = load i32, i32* %33, align 4
  %315 = call i32 @HEVC_FILT_4TAP(i32 %311, i32 %312, i32 %313, i32 %314)
  store i32 %315, i32* %58, align 4
  %316 = load i32, i32* %51, align 4
  %317 = load i32, i32* %52, align 4
  %318 = load i32, i32* %53, align 4
  %319 = load i32, i32* %54, align 4
  %320 = call i32 @SRA_4V(i32 %316, i32 %317, i32 %318, i32 %319, i32 6)
  %321 = load i32, i32* %55, align 4
  %322 = load i32, i32* %56, align 4
  %323 = load i32, i32* %57, align 4
  %324 = load i32, i32* %58, align 4
  %325 = call i32 @SRA_4V(i32 %321, i32 %322, i32 %323, i32 %324, i32 6)
  %326 = load i32, i32* %52, align 4
  %327 = load i32, i32* %51, align 4
  %328 = load i32, i32* %54, align 4
  %329 = load i32, i32* %53, align 4
  %330 = load i32, i32* %56, align 4
  %331 = load i32, i32* %55, align 4
  %332 = load i32, i32* %58, align 4
  %333 = load i32, i32* %57, align 4
  %334 = load i32, i32* %72, align 4
  %335 = load i32, i32* %73, align 4
  %336 = load i32, i32* %74, align 4
  %337 = load i32, i32* %75, align 4
  %338 = call i32 @PCKEV_H4_SH(i32 %326, i32 %327, i32 %328, i32 %329, i32 %330, i32 %331, i32 %332, i32 %333, i32 %334, i32 %335, i32 %336, i32 %337)
  %339 = load i32, i32* %72, align 4
  %340 = load i32, i32* %73, align 4
  %341 = load i32, i32* %74, align 4
  %342 = load i32, i32* %75, align 4
  %343 = call i32 @SRARI_H4_SH(i32 %339, i32 %340, i32 %341, i32 %342, i32 6)
  %344 = load i32, i32* %72, align 4
  %345 = load i32, i32* %73, align 4
  %346 = load i32, i32* %74, align 4
  %347 = load i32, i32* %75, align 4
  %348 = call i32 @SAT_SH4_SH(i32 %344, i32 %345, i32 %346, i32 %347, i32 7)
  %349 = load i32, i32* %72, align 4
  %350 = load i32, i32* %73, align 4
  %351 = call i32 @PCKEV_XORI128_UB(i32 %349, i32 %350)
  store i32 %351, i32* %21, align 4
  %352 = load i32, i32* %74, align 4
  %353 = load i32, i32* %75, align 4
  %354 = call i32 @PCKEV_XORI128_UB(i32 %352, i32 %353)
  store i32 %354, i32* %22, align 4
  %355 = load i32, i32* %21, align 4
  %356 = load i32, i32* %22, align 4
  %357 = load i32*, i32** %20, align 8
  %358 = load i32, i32* %12, align 4
  %359 = call i32 @ST_D4(i32 %355, i32 %356, i32 0, i32 1, i32 0, i32 1, i32* %357, i32 %358)
  %360 = load i32, i32* %12, align 4
  %361 = mul nsw i32 4, %360
  %362 = load i32*, i32** %20, align 8
  %363 = sext i32 %361 to i64
  %364 = getelementptr inbounds i32, i32* %362, i64 %363
  store i32* %364, i32** %20, align 8
  %365 = load i32, i32* %67, align 4
  store i32 %365, i32* %59, align 4
  %366 = load i32, i32* %68, align 4
  store i32 %366, i32* %63, align 4
  %367 = load i32, i32* %69, align 4
  store i32 %367, i32* %61, align 4
  %368 = load i32, i32* %70, align 4
  store i32 %368, i32* %65, align 4
  %369 = load i32, i32* %71, align 4
  store i32 %369, i32* %47, align 4
  br label %178

370:                                              ; preds = %178
  %371 = load i32*, i32** %9, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 8
  store i32* %372, i32** %9, align 8
  %373 = load i32*, i32** %11, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 8
  store i32* %374, i32** %11, align 8
  br label %102

375:                                              ; preds = %102
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP(i32, i32, i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
