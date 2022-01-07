; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_8t_48w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_8t_48w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_hz_biwgt_8t_48w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_biwgt_8t_48w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
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
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
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
  %68 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = call i64 @LD_SB(i32* %69)
  store i64 %70, i64* %44, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 -3
  store i32* %72, i32** %14, align 8
  %73 = load i32, i32* %24, align 4
  %74 = load i32, i32* %25, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %26, align 4
  %77 = shl i32 %75, %76
  store i32 %77, i32* %28, align 4
  %78 = load i32, i32* %22, align 4
  %79 = and i32 %78, 65535
  store i32 %79, i32* %22, align 4
  %80 = load i32, i32* %22, align 4
  %81 = load i32, i32* %23, align 4
  %82 = shl i32 %81, 16
  %83 = or i32 %80, %82
  store i32 %83, i32* %29, align 4
  %84 = load i32, i32* %23, align 4
  %85 = mul nsw i32 128, %84
  store i32 %85, i32* %30, align 4
  %86 = load i32, i32* %30, align 4
  %87 = shl i32 %86, 6
  store i32 %87, i32* %30, align 4
  %88 = load i32, i32* %30, align 4
  %89 = load i32, i32* %28, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %28, align 4
  %91 = load i32, i32* %28, align 4
  %92 = call i32 @__msa_fill_w(i32 %91)
  store i32 %92, i32* %66, align 4
  %93 = load i32, i32* %29, align 4
  %94 = call i32 @__msa_fill_w(i32 %93)
  store i32 %94, i32* %65, align 4
  %95 = load i32, i32* %26, align 4
  %96 = add nsw i32 %95, 1
  %97 = call i32 @__msa_fill_w(i32 %96)
  store i32 %97, i32* %67, align 4
  %98 = load i32*, i32** %20, align 8
  %99 = call i64 @LD_SH(i32* %98)
  store i64 %99, i64* %60, align 8
  %100 = load i64, i64* %60, align 8
  %101 = load i64, i64* %40, align 8
  %102 = load i64, i64* %41, align 8
  %103 = load i64, i64* %42, align 8
  %104 = load i64, i64* %43, align 8
  %105 = call i32 @SPLATI_H4_SH(i64 %100, i32 0, i32 1, i32 2, i32 3, i64 %101, i64 %102, i64 %103, i64 %104)
  %106 = load i64, i64* %44, align 8
  %107 = add nsw i64 %106, 2
  store i64 %107, i64* %45, align 8
  %108 = load i64, i64* %44, align 8
  %109 = add nsw i64 %108, 4
  store i64 %109, i64* %46, align 8
  %110 = load i64, i64* %44, align 8
  %111 = add nsw i64 %110, 6
  store i64 %111, i64* %47, align 8
  %112 = load i64, i64* %44, align 8
  %113 = add nsw i64 %112, 8
  store i64 %113, i64* %48, align 8
  %114 = load i64, i64* %44, align 8
  %115 = add nsw i64 %114, 10
  store i64 %115, i64* %49, align 8
  %116 = load i64, i64* %44, align 8
  %117 = add nsw i64 %116, 12
  store i64 %117, i64* %50, align 8
  %118 = load i64, i64* %44, align 8
  %119 = add nsw i64 %118, 14
  store i64 %119, i64* %51, align 8
  store i32 64, i32* %27, align 4
  br label %120

120:                                              ; preds = %124, %13
  %121 = load i32, i32* %27, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %27, align 4
  %123 = icmp ne i32 %121, 0
  br i1 %123, label %124, label %331

124:                                              ; preds = %120
  %125 = load i32*, i32** %14, align 8
  %126 = load i64, i64* %31, align 8
  %127 = load i64, i64* %32, align 8
  %128 = call i32 @LD_SB2(i32* %125, i32 16, i64 %126, i64 %127)
  %129 = load i32*, i32** %14, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 24
  %131 = call i64 @LD_SB(i32* %130)
  store i64 %131, i64* %33, align 8
  %132 = load i32*, i32** %16, align 8
  %133 = load i64, i64* %36, align 8
  %134 = load i64, i64* %37, align 8
  %135 = load i64, i64* %38, align 8
  %136 = load i64, i64* %39, align 8
  %137 = call i32 @LD_SH4(i32* %132, i32 8, i64 %133, i64 %134, i64 %135, i64 %136)
  %138 = load i64, i64* %31, align 8
  %139 = load i64, i64* %32, align 8
  %140 = load i64, i64* %33, align 8
  %141 = call i32 @XORI_B3_128_SB(i64 %138, i64 %139, i64 %140)
  %142 = load i32*, i32** %14, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 32
  %144 = load i64, i64* %34, align 8
  %145 = load i64, i64* %35, align 8
  %146 = call i32 @LD_SB2(i32* %143, i32 8, i64 %144, i64 %145)
  %147 = load i32, i32* %15, align 4
  %148 = load i32*, i32** %14, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32* %150, i32** %14, align 8
  %151 = load i64, i64* %34, align 8
  %152 = load i64, i64* %35, align 8
  %153 = call i32 @XORI_B2_128_SB(i64 %151, i64 %152)
  %154 = load i64, i64* %31, align 8
  %155 = load i64, i64* %31, align 8
  %156 = load i64, i64* %44, align 8
  %157 = load i64, i64* %45, align 8
  %158 = load i64, i64* %46, align 8
  %159 = load i64, i64* %47, align 8
  %160 = load i64, i64* %52, align 8
  %161 = load i64, i64* %53, align 8
  %162 = load i64, i64* %54, align 8
  %163 = load i64, i64* %55, align 8
  %164 = call i32 @VSHF_B4_SB(i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163)
  %165 = load i64, i64* %52, align 8
  %166 = load i64, i64* %53, align 8
  %167 = load i64, i64* %54, align 8
  %168 = load i64, i64* %55, align 8
  %169 = load i64, i64* %40, align 8
  %170 = load i64, i64* %41, align 8
  %171 = load i64, i64* %42, align 8
  %172 = load i64, i64* %43, align 8
  %173 = call i64 @HEVC_FILT_8TAP_SH(i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172)
  store i64 %173, i64* %56, align 8
  %174 = load i64, i64* %31, align 8
  %175 = load i64, i64* %32, align 8
  %176 = load i64, i64* %48, align 8
  %177 = load i64, i64* %49, align 8
  %178 = load i64, i64* %50, align 8
  %179 = load i64, i64* %51, align 8
  %180 = load i64, i64* %52, align 8
  %181 = load i64, i64* %53, align 8
  %182 = load i64, i64* %54, align 8
  %183 = load i64, i64* %55, align 8
  %184 = call i32 @VSHF_B4_SB(i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183)
  %185 = load i64, i64* %52, align 8
  %186 = load i64, i64* %53, align 8
  %187 = load i64, i64* %54, align 8
  %188 = load i64, i64* %55, align 8
  %189 = load i64, i64* %40, align 8
  %190 = load i64, i64* %41, align 8
  %191 = load i64, i64* %42, align 8
  %192 = load i64, i64* %43, align 8
  %193 = call i64 @HEVC_FILT_8TAP_SH(i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192)
  store i64 %193, i64* %57, align 8
  %194 = load i64, i64* %32, align 8
  %195 = load i64, i64* %32, align 8
  %196 = load i64, i64* %44, align 8
  %197 = load i64, i64* %45, align 8
  %198 = load i64, i64* %46, align 8
  %199 = load i64, i64* %47, align 8
  %200 = load i64, i64* %52, align 8
  %201 = load i64, i64* %53, align 8
  %202 = load i64, i64* %54, align 8
  %203 = load i64, i64* %55, align 8
  %204 = call i32 @VSHF_B4_SB(i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203)
  %205 = load i64, i64* %52, align 8
  %206 = load i64, i64* %53, align 8
  %207 = load i64, i64* %54, align 8
  %208 = load i64, i64* %55, align 8
  %209 = load i64, i64* %40, align 8
  %210 = load i64, i64* %41, align 8
  %211 = load i64, i64* %42, align 8
  %212 = load i64, i64* %43, align 8
  %213 = call i64 @HEVC_FILT_8TAP_SH(i64 %205, i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212)
  store i64 %213, i64* %58, align 8
  %214 = load i64, i64* %33, align 8
  %215 = load i64, i64* %33, align 8
  %216 = load i64, i64* %44, align 8
  %217 = load i64, i64* %45, align 8
  %218 = load i64, i64* %46, align 8
  %219 = load i64, i64* %47, align 8
  %220 = load i64, i64* %52, align 8
  %221 = load i64, i64* %53, align 8
  %222 = load i64, i64* %54, align 8
  %223 = load i64, i64* %55, align 8
  %224 = call i32 @VSHF_B4_SB(i64 %214, i64 %215, i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222, i64 %223)
  %225 = load i64, i64* %52, align 8
  %226 = load i64, i64* %53, align 8
  %227 = load i64, i64* %54, align 8
  %228 = load i64, i64* %55, align 8
  %229 = load i64, i64* %40, align 8
  %230 = load i64, i64* %41, align 8
  %231 = load i64, i64* %42, align 8
  %232 = load i64, i64* %43, align 8
  %233 = call i64 @HEVC_FILT_8TAP_SH(i64 %225, i64 %226, i64 %227, i64 %228, i64 %229, i64 %230, i64 %231, i64 %232)
  store i64 %233, i64* %59, align 8
  %234 = load i64, i64* %56, align 8
  %235 = load i64, i64* %57, align 8
  %236 = load i64, i64* %58, align 8
  %237 = load i64, i64* %59, align 8
  %238 = load i64, i64* %36, align 8
  %239 = load i64, i64* %37, align 8
  %240 = load i64, i64* %38, align 8
  %241 = load i64, i64* %39, align 8
  %242 = load i32, i32* %65, align 4
  %243 = load i32, i32* %67, align 4
  %244 = load i32, i32* %66, align 4
  %245 = load i64, i64* %61, align 8
  %246 = load i64, i64* %62, align 8
  %247 = load i64, i64* %63, align 8
  %248 = load i64, i64* %64, align 8
  %249 = call i32 @HEVC_BIW_RND_CLIP4(i64 %234, i64 %235, i64 %236, i64 %237, i64 %238, i64 %239, i64 %240, i64 %241, i32 %242, i32 %243, i32 %244, i64 %245, i64 %246, i64 %247, i64 %248)
  %250 = load i64, i64* %62, align 8
  %251 = load i64, i64* %61, align 8
  %252 = load i64, i64* %64, align 8
  %253 = load i64, i64* %63, align 8
  %254 = load i64, i64* %61, align 8
  %255 = load i64, i64* %62, align 8
  %256 = call i32 @PCKEV_B2_SH(i64 %250, i64 %251, i64 %252, i64 %253, i64 %254, i64 %255)
  %257 = load i64, i64* %61, align 8
  %258 = load i64, i64* %62, align 8
  %259 = load i32*, i32** %18, align 8
  %260 = call i32 @ST_SH2(i64 %257, i64 %258, i32* %259, i32 16)
  %261 = load i32*, i32** %16, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 32
  %263 = load i64, i64* %38, align 8
  %264 = load i64, i64* %39, align 8
  %265 = call i32 @LD_SH2(i32* %262, i32 8, i64 %263, i64 %264)
  %266 = load i32, i32* %17, align 4
  %267 = load i32*, i32** %16, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  store i32* %269, i32** %16, align 8
  %270 = load i64, i64* %34, align 8
  %271 = load i64, i64* %34, align 8
  %272 = load i64, i64* %44, align 8
  %273 = load i64, i64* %45, align 8
  %274 = load i64, i64* %46, align 8
  %275 = load i64, i64* %47, align 8
  %276 = load i64, i64* %52, align 8
  %277 = load i64, i64* %53, align 8
  %278 = load i64, i64* %54, align 8
  %279 = load i64, i64* %55, align 8
  %280 = call i32 @VSHF_B4_SB(i64 %270, i64 %271, i64 %272, i64 %273, i64 %274, i64 %275, i64 %276, i64 %277, i64 %278, i64 %279)
  %281 = load i64, i64* %52, align 8
  %282 = load i64, i64* %53, align 8
  %283 = load i64, i64* %54, align 8
  %284 = load i64, i64* %55, align 8
  %285 = load i64, i64* %40, align 8
  %286 = load i64, i64* %41, align 8
  %287 = load i64, i64* %42, align 8
  %288 = load i64, i64* %43, align 8
  %289 = call i64 @HEVC_FILT_8TAP_SH(i64 %281, i64 %282, i64 %283, i64 %284, i64 %285, i64 %286, i64 %287, i64 %288)
  store i64 %289, i64* %56, align 8
  %290 = load i64, i64* %35, align 8
  %291 = load i64, i64* %35, align 8
  %292 = load i64, i64* %44, align 8
  %293 = load i64, i64* %45, align 8
  %294 = load i64, i64* %46, align 8
  %295 = load i64, i64* %47, align 8
  %296 = load i64, i64* %52, align 8
  %297 = load i64, i64* %53, align 8
  %298 = load i64, i64* %54, align 8
  %299 = load i64, i64* %55, align 8
  %300 = call i32 @VSHF_B4_SB(i64 %290, i64 %291, i64 %292, i64 %293, i64 %294, i64 %295, i64 %296, i64 %297, i64 %298, i64 %299)
  %301 = load i64, i64* %52, align 8
  %302 = load i64, i64* %53, align 8
  %303 = load i64, i64* %54, align 8
  %304 = load i64, i64* %55, align 8
  %305 = load i64, i64* %40, align 8
  %306 = load i64, i64* %41, align 8
  %307 = load i64, i64* %42, align 8
  %308 = load i64, i64* %43, align 8
  %309 = call i64 @HEVC_FILT_8TAP_SH(i64 %301, i64 %302, i64 %303, i64 %304, i64 %305, i64 %306, i64 %307, i64 %308)
  store i64 %309, i64* %57, align 8
  %310 = load i64, i64* %56, align 8
  %311 = load i64, i64* %57, align 8
  %312 = load i64, i64* %38, align 8
  %313 = load i64, i64* %39, align 8
  %314 = load i32, i32* %65, align 4
  %315 = load i32, i32* %67, align 4
  %316 = load i32, i32* %66, align 4
  %317 = load i64, i64* %61, align 8
  %318 = load i64, i64* %62, align 8
  %319 = call i32 @HEVC_BIW_RND_CLIP2(i64 %310, i64 %311, i64 %312, i64 %313, i32 %314, i32 %315, i32 %316, i64 %317, i64 %318)
  %320 = load i64, i64* %62, align 8
  %321 = load i64, i64* %61, align 8
  %322 = call i64 @__msa_pckev_b(i64 %320, i64 %321)
  store i64 %322, i64* %61, align 8
  %323 = load i64, i64* %61, align 8
  %324 = load i32*, i32** %18, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 32
  %326 = call i32 @ST_SH(i64 %323, i32* %325)
  %327 = load i32, i32* %19, align 4
  %328 = load i32*, i32** %18, align 8
  %329 = sext i32 %327 to i64
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  store i32* %330, i32** %18, align 8
  br label %120

331:                                              ; preds = %120
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i64, i32, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @HEVC_FILT_8TAP_SH(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @PCKEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ST_SH2(i64, i64, i32*, i32) #1

declare dso_local i32 @LD_SH2(i32*, i32, i64, i64) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP2(i64, i64, i64, i64, i32, i32, i32, i64, i64) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_SH(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
