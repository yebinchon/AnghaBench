; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_8t_24w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_8t_24w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_hz_biwgt_8t_24w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_biwgt_8t_24w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
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
  %55 = alloca i64, align 8
  %56 = alloca i64, align 8
  %57 = alloca i64, align 8
  %58 = alloca i64, align 8
  %59 = alloca i64, align 8
  %60 = alloca i64, align 8
  %61 = alloca i64, align 8
  %62 = alloca i64, align 8
  %63 = alloca i64, align 8
  %64 = alloca i64, align 8
  store i32* %0, i32** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32* %2, i32** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32* %4, i32** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32* %6, i32** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %65 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = call i64 @LD_SB(i32* %66)
  store i64 %67, i64* %64, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 -3
  store i32* %69, i32** %14, align 8
  %70 = load i32, i32* %24, align 4
  %71 = load i32, i32* %25, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %26, align 4
  %74 = shl i32 %72, %73
  store i32 %74, i32* %29, align 4
  %75 = load i32, i32* %22, align 4
  %76 = and i32 %75, 65535
  store i32 %76, i32* %22, align 4
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* %23, align 4
  %79 = shl i32 %78, 16
  %80 = or i32 %77, %79
  store i32 %80, i32* %30, align 4
  %81 = load i32, i32* %23, align 4
  %82 = mul nsw i32 128, %81
  store i32 %82, i32* %31, align 4
  %83 = load i32, i32* %31, align 4
  %84 = shl i32 %83, 6
  store i32 %84, i32* %31, align 4
  %85 = load i32, i32* %31, align 4
  %86 = load i32, i32* %29, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %29, align 4
  %88 = load i32, i32* %29, align 4
  %89 = call i64 @__msa_fill_w(i32 %88)
  store i64 %89, i64* %62, align 8
  %90 = load i32, i32* %30, align 4
  %91 = call i64 @__msa_fill_w(i32 %90)
  store i64 %91, i64* %61, align 8
  %92 = load i32, i32* %26, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i64 @__msa_fill_w(i32 %93)
  store i64 %94, i64* %63, align 8
  %95 = load i32*, i32** %20, align 8
  %96 = call i64 @LD_SH(i32* %95)
  store i64 %96, i64* %57, align 8
  %97 = load i64, i64* %57, align 8
  %98 = load i64, i64* %37, align 8
  %99 = load i64, i64* %38, align 8
  %100 = load i64, i64* %39, align 8
  %101 = load i64, i64* %40, align 8
  %102 = call i32 @SPLATI_H4_SH(i64 %97, i32 0, i32 1, i32 2, i32 3, i64 %98, i64 %99, i64 %100, i64 %101)
  %103 = load i64, i64* %64, align 8
  %104 = add nsw i64 %103, 2
  store i64 %104, i64* %41, align 8
  %105 = load i64, i64* %64, align 8
  %106 = add nsw i64 %105, 4
  store i64 %106, i64* %42, align 8
  %107 = load i64, i64* %64, align 8
  %108 = add nsw i64 %107, 6
  store i64 %108, i64* %43, align 8
  %109 = load i64, i64* %64, align 8
  %110 = add nsw i64 %109, 8
  store i64 %110, i64* %44, align 8
  %111 = load i64, i64* %64, align 8
  %112 = add nsw i64 %111, 10
  store i64 %112, i64* %45, align 8
  %113 = load i64, i64* %64, align 8
  %114 = add nsw i64 %113, 12
  store i64 %114, i64* %46, align 8
  %115 = load i64, i64* %64, align 8
  %116 = add nsw i64 %115, 14
  store i64 %116, i64* %47, align 8
  %117 = load i32*, i32** %14, align 8
  %118 = load i64, i64* %32, align 8
  %119 = load i64, i64* %33, align 8
  %120 = call i32 @LD_SB2(i32* %117, i32 16, i64 %118, i64 %119)
  %121 = load i32, i32* %15, align 4
  %122 = load i32*, i32** %14, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %14, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = load i64, i64* %34, align 8
  %127 = load i64, i64* %35, align 8
  %128 = call i32 @LD_SH2(i32* %125, i32 8, i64 %126, i64 %127)
  %129 = load i32*, i32** %16, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 16
  %131 = call i64 @LD_SH(i32* %130)
  store i64 %131, i64* %36, align 8
  %132 = load i32, i32* %17, align 4
  %133 = load i32*, i32** %16, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %16, align 8
  %136 = load i64, i64* %32, align 8
  %137 = load i64, i64* %33, align 8
  %138 = call i32 @XORI_B2_128_SB(i64 %136, i64 %137)
  store i32 31, i32* %27, align 4
  br label %139

139:                                              ; preds = %143, %13
  %140 = load i32, i32* %27, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %27, align 4
  %142 = icmp ne i32 %140, 0
  br i1 %142, label %143, label %279

143:                                              ; preds = %139
  %144 = load i64, i64* %32, align 8
  %145 = load i64, i64* %32, align 8
  %146 = load i64, i64* %64, align 8
  %147 = load i64, i64* %41, align 8
  %148 = load i64, i64* %42, align 8
  %149 = load i64, i64* %43, align 8
  %150 = load i64, i64* %48, align 8
  %151 = load i64, i64* %49, align 8
  %152 = load i64, i64* %50, align 8
  %153 = load i64, i64* %51, align 8
  %154 = call i32 @VSHF_B4_SB(i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153)
  %155 = load i64, i64* %48, align 8
  %156 = load i64, i64* %49, align 8
  %157 = load i64, i64* %50, align 8
  %158 = load i64, i64* %51, align 8
  %159 = load i64, i64* %37, align 8
  %160 = load i64, i64* %38, align 8
  %161 = load i64, i64* %39, align 8
  %162 = load i64, i64* %40, align 8
  %163 = call i64 @HEVC_FILT_8TAP_SH(i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162)
  store i64 %163, i64* %52, align 8
  %164 = load i64, i64* %32, align 8
  %165 = load i64, i64* %33, align 8
  %166 = load i64, i64* %44, align 8
  %167 = load i64, i64* %45, align 8
  %168 = load i64, i64* %46, align 8
  %169 = load i64, i64* %47, align 8
  %170 = load i64, i64* %48, align 8
  %171 = load i64, i64* %49, align 8
  %172 = load i64, i64* %50, align 8
  %173 = load i64, i64* %51, align 8
  %174 = call i32 @VSHF_B4_SB(i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173)
  %175 = load i64, i64* %48, align 8
  %176 = load i64, i64* %49, align 8
  %177 = load i64, i64* %50, align 8
  %178 = load i64, i64* %51, align 8
  %179 = load i64, i64* %37, align 8
  %180 = load i64, i64* %38, align 8
  %181 = load i64, i64* %39, align 8
  %182 = load i64, i64* %40, align 8
  %183 = call i64 @HEVC_FILT_8TAP_SH(i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182)
  store i64 %183, i64* %53, align 8
  %184 = load i64, i64* %33, align 8
  %185 = load i64, i64* %33, align 8
  %186 = load i64, i64* %64, align 8
  %187 = load i64, i64* %41, align 8
  %188 = load i64, i64* %42, align 8
  %189 = load i64, i64* %43, align 8
  %190 = load i64, i64* %48, align 8
  %191 = load i64, i64* %49, align 8
  %192 = load i64, i64* %50, align 8
  %193 = load i64, i64* %51, align 8
  %194 = call i32 @VSHF_B4_SB(i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193)
  %195 = load i64, i64* %48, align 8
  %196 = load i64, i64* %49, align 8
  %197 = load i64, i64* %50, align 8
  %198 = load i64, i64* %51, align 8
  %199 = load i64, i64* %37, align 8
  %200 = load i64, i64* %38, align 8
  %201 = load i64, i64* %39, align 8
  %202 = load i64, i64* %40, align 8
  %203 = call i64 @HEVC_FILT_8TAP_SH(i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202)
  store i64 %203, i64* %54, align 8
  %204 = load i64, i64* %52, align 8
  %205 = load i64, i64* %53, align 8
  %206 = load i64, i64* %34, align 8
  %207 = load i64, i64* %35, align 8
  %208 = load i64, i64* %61, align 8
  %209 = load i64, i64* %63, align 8
  %210 = load i64, i64* %62, align 8
  %211 = load i64, i64* %58, align 8
  %212 = load i64, i64* %59, align 8
  %213 = call i32 @HEVC_BIW_RND_CLIP2(i64 %204, i64 %205, i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212)
  %214 = load i64, i64* %54, align 8
  %215 = load i64, i64* %36, align 8
  %216 = load i64, i64* %55, align 8
  %217 = load i64, i64* %56, align 8
  %218 = call i32 @ILVRL_H2_SW(i64 %214, i64 %215, i64 %216, i64 %217)
  %219 = load i64, i64* %62, align 8
  %220 = load i64, i64* %55, align 8
  %221 = load i64, i64* %61, align 8
  %222 = call i64 @__msa_dpadd_s_w(i64 %219, i64 %220, i64 %221)
  store i64 %222, i64* %55, align 8
  %223 = load i64, i64* %62, align 8
  %224 = load i64, i64* %56, align 8
  %225 = load i64, i64* %61, align 8
  %226 = call i64 @__msa_dpadd_s_w(i64 %223, i64 %224, i64 %225)
  store i64 %226, i64* %56, align 8
  %227 = load i64, i64* %55, align 8
  %228 = load i64, i64* %56, align 8
  %229 = load i64, i64* %63, align 8
  %230 = call i32 @SRAR_W2_SW(i64 %227, i64 %228, i64 %229)
  %231 = load i64, i64* %56, align 8
  %232 = load i64, i64* %55, align 8
  %233 = call i64 @__msa_pckev_h(i64 %231, i64 %232)
  store i64 %233, i64* %60, align 8
  %234 = load i64, i64* %60, align 8
  %235 = call i32 @CLIP_SH_0_255(i64 %234)
  %236 = load i32*, i32** %14, align 8
  %237 = load i64, i64* %32, align 8
  %238 = load i64, i64* %33, align 8
  %239 = call i32 @LD_SB2(i32* %236, i32 16, i64 %237, i64 %238)
  %240 = load i32, i32* %15, align 4
  %241 = load i32*, i32** %14, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  store i32* %243, i32** %14, align 8
  %244 = load i32*, i32** %16, align 8
  %245 = load i64, i64* %34, align 8
  %246 = load i64, i64* %35, align 8
  %247 = call i32 @LD_SH2(i32* %244, i32 8, i64 %245, i64 %246)
  %248 = load i32*, i32** %16, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 16
  %250 = call i64 @LD_SH(i32* %249)
  store i64 %250, i64* %36, align 8
  %251 = load i32, i32* %17, align 4
  %252 = load i32*, i32** %16, align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  store i32* %254, i32** %16, align 8
  %255 = load i64, i64* %32, align 8
  %256 = load i64, i64* %33, align 8
  %257 = call i32 @XORI_B2_128_SB(i64 %255, i64 %256)
  %258 = load i64, i64* %59, align 8
  %259 = load i64, i64* %58, align 8
  %260 = load i64, i64* %60, align 8
  %261 = load i64, i64* %60, align 8
  %262 = load i64, i64* %58, align 8
  %263 = load i64, i64* %60, align 8
  %264 = call i32 @PCKEV_B2_SH(i64 %258, i64 %259, i64 %260, i64 %261, i64 %262, i64 %263)
  %265 = load i64, i64* %60, align 8
  %266 = trunc i64 %265 to i32
  %267 = call i32 @__msa_copy_u_d(i32 %266, i32 0)
  store i32 %267, i32* %28, align 4
  %268 = load i64, i64* %58, align 8
  %269 = load i32*, i32** %18, align 8
  %270 = call i32 @ST_SH(i64 %268, i32* %269)
  %271 = load i32, i32* %28, align 4
  %272 = load i32*, i32** %18, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 16
  %274 = call i32 @SD(i32 %271, i32* %273)
  %275 = load i32, i32* %19, align 4
  %276 = load i32*, i32** %18, align 8
  %277 = sext i32 %275 to i64
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  store i32* %278, i32** %18, align 8
  br label %139

279:                                              ; preds = %139
  %280 = load i64, i64* %32, align 8
  %281 = load i64, i64* %32, align 8
  %282 = load i64, i64* %64, align 8
  %283 = load i64, i64* %41, align 8
  %284 = load i64, i64* %42, align 8
  %285 = load i64, i64* %43, align 8
  %286 = load i64, i64* %48, align 8
  %287 = load i64, i64* %49, align 8
  %288 = load i64, i64* %50, align 8
  %289 = load i64, i64* %51, align 8
  %290 = call i32 @VSHF_B4_SB(i64 %280, i64 %281, i64 %282, i64 %283, i64 %284, i64 %285, i64 %286, i64 %287, i64 %288, i64 %289)
  %291 = load i64, i64* %48, align 8
  %292 = load i64, i64* %49, align 8
  %293 = load i64, i64* %50, align 8
  %294 = load i64, i64* %51, align 8
  %295 = load i64, i64* %37, align 8
  %296 = load i64, i64* %38, align 8
  %297 = load i64, i64* %39, align 8
  %298 = load i64, i64* %40, align 8
  %299 = call i64 @HEVC_FILT_8TAP_SH(i64 %291, i64 %292, i64 %293, i64 %294, i64 %295, i64 %296, i64 %297, i64 %298)
  store i64 %299, i64* %52, align 8
  %300 = load i64, i64* %32, align 8
  %301 = load i64, i64* %33, align 8
  %302 = load i64, i64* %44, align 8
  %303 = load i64, i64* %45, align 8
  %304 = load i64, i64* %46, align 8
  %305 = load i64, i64* %47, align 8
  %306 = load i64, i64* %48, align 8
  %307 = load i64, i64* %49, align 8
  %308 = load i64, i64* %50, align 8
  %309 = load i64, i64* %51, align 8
  %310 = call i32 @VSHF_B4_SB(i64 %300, i64 %301, i64 %302, i64 %303, i64 %304, i64 %305, i64 %306, i64 %307, i64 %308, i64 %309)
  %311 = load i64, i64* %48, align 8
  %312 = load i64, i64* %49, align 8
  %313 = load i64, i64* %50, align 8
  %314 = load i64, i64* %51, align 8
  %315 = load i64, i64* %37, align 8
  %316 = load i64, i64* %38, align 8
  %317 = load i64, i64* %39, align 8
  %318 = load i64, i64* %40, align 8
  %319 = call i64 @HEVC_FILT_8TAP_SH(i64 %311, i64 %312, i64 %313, i64 %314, i64 %315, i64 %316, i64 %317, i64 %318)
  store i64 %319, i64* %53, align 8
  %320 = load i64, i64* %33, align 8
  %321 = load i64, i64* %33, align 8
  %322 = load i64, i64* %64, align 8
  %323 = load i64, i64* %41, align 8
  %324 = load i64, i64* %42, align 8
  %325 = load i64, i64* %43, align 8
  %326 = load i64, i64* %48, align 8
  %327 = load i64, i64* %49, align 8
  %328 = load i64, i64* %50, align 8
  %329 = load i64, i64* %51, align 8
  %330 = call i32 @VSHF_B4_SB(i64 %320, i64 %321, i64 %322, i64 %323, i64 %324, i64 %325, i64 %326, i64 %327, i64 %328, i64 %329)
  %331 = load i64, i64* %48, align 8
  %332 = load i64, i64* %49, align 8
  %333 = load i64, i64* %50, align 8
  %334 = load i64, i64* %51, align 8
  %335 = load i64, i64* %37, align 8
  %336 = load i64, i64* %38, align 8
  %337 = load i64, i64* %39, align 8
  %338 = load i64, i64* %40, align 8
  %339 = call i64 @HEVC_FILT_8TAP_SH(i64 %331, i64 %332, i64 %333, i64 %334, i64 %335, i64 %336, i64 %337, i64 %338)
  store i64 %339, i64* %54, align 8
  %340 = load i64, i64* %52, align 8
  %341 = load i64, i64* %53, align 8
  %342 = load i64, i64* %34, align 8
  %343 = load i64, i64* %35, align 8
  %344 = load i64, i64* %61, align 8
  %345 = load i64, i64* %63, align 8
  %346 = load i64, i64* %62, align 8
  %347 = load i64, i64* %58, align 8
  %348 = load i64, i64* %59, align 8
  %349 = call i32 @HEVC_BIW_RND_CLIP2(i64 %340, i64 %341, i64 %342, i64 %343, i64 %344, i64 %345, i64 %346, i64 %347, i64 %348)
  %350 = load i64, i64* %54, align 8
  %351 = load i64, i64* %36, align 8
  %352 = load i64, i64* %55, align 8
  %353 = load i64, i64* %56, align 8
  %354 = call i32 @ILVRL_H2_SW(i64 %350, i64 %351, i64 %352, i64 %353)
  %355 = load i64, i64* %62, align 8
  %356 = load i64, i64* %55, align 8
  %357 = load i64, i64* %61, align 8
  %358 = call i64 @__msa_dpadd_s_w(i64 %355, i64 %356, i64 %357)
  store i64 %358, i64* %55, align 8
  %359 = load i64, i64* %62, align 8
  %360 = load i64, i64* %56, align 8
  %361 = load i64, i64* %61, align 8
  %362 = call i64 @__msa_dpadd_s_w(i64 %359, i64 %360, i64 %361)
  store i64 %362, i64* %56, align 8
  %363 = load i64, i64* %55, align 8
  %364 = load i64, i64* %56, align 8
  %365 = load i64, i64* %63, align 8
  %366 = call i32 @SRAR_W2_SW(i64 %363, i64 %364, i64 %365)
  %367 = load i64, i64* %56, align 8
  %368 = load i64, i64* %55, align 8
  %369 = call i64 @__msa_pckev_h(i64 %367, i64 %368)
  store i64 %369, i64* %60, align 8
  %370 = load i64, i64* %60, align 8
  %371 = call i32 @CLIP_SH_0_255(i64 %370)
  %372 = load i64, i64* %59, align 8
  %373 = load i64, i64* %58, align 8
  %374 = load i64, i64* %60, align 8
  %375 = load i64, i64* %60, align 8
  %376 = load i64, i64* %58, align 8
  %377 = load i64, i64* %60, align 8
  %378 = call i32 @PCKEV_B2_SH(i64 %372, i64 %373, i64 %374, i64 %375, i64 %376, i64 %377)
  %379 = load i64, i64* %60, align 8
  %380 = trunc i64 %379 to i32
  %381 = call i32 @__msa_copy_u_d(i32 %380, i32 0)
  store i32 %381, i32* %28, align 4
  %382 = load i64, i64* %58, align 8
  %383 = load i32*, i32** %18, align 8
  %384 = call i32 @ST_SH(i64 %382, i32* %383)
  %385 = load i32, i32* %28, align 4
  %386 = load i32*, i32** %18, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 16
  %388 = call i32 @SD(i32 %385, i32* %387)
  %389 = load i32, i32* %19, align 4
  %390 = load i32*, i32** %18, align 8
  %391 = sext i32 %389 to i64
  %392 = getelementptr inbounds i32, i32* %390, i64 %391
  store i32* %392, i32** %18, align 8
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i64 @__msa_fill_w(i32) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i64, i32, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @HEVC_FILT_8TAP_SH(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP2(i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVRL_H2_SW(i64, i64, i64, i64) #1

declare dso_local i64 @__msa_dpadd_s_w(i64, i64, i64) #1

declare dso_local i32 @SRAR_W2_SW(i64, i64, i64) #1

declare dso_local i64 @__msa_pckev_h(i64, i64) #1

declare dso_local i32 @CLIP_SH_0_255(i64) #1

declare dso_local i32 @PCKEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @__msa_copy_u_d(i32, i32) #1

declare dso_local i32 @ST_SH(i64, i32*) #1

declare dso_local i32 @SD(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
