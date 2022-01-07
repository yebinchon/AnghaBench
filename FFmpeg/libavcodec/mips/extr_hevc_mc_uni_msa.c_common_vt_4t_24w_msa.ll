; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_vt_4t_24w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_vt_4t_24w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_vt_4t_24w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_vt_4t_24w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
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
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = sext i32 %50 to i64
  %53 = sub i64 0, %52
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32* %54, i32** %7, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 @LD_SH(i32* %55)
  store i64 %56, i64* %43, align 8
  %57 = load i64, i64* %43, align 8
  %58 = load i32, i32* %28, align 4
  %59 = load i32, i32* %29, align 4
  %60 = call i32 @SPLATI_H2_SB(i64 %57, i32 0, i32 1, i32 %58, i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @LD_SB3(i32* %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %18, align 4
  %70 = call i32 @XORI_B3_128_SB(i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %30, align 4
  %76 = load i32, i32* %34, align 4
  %77 = call i32 @ILVR_B2_SB(i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %38, align 4
  %83 = load i32, i32* %40, align 4
  %84 = call i32 @ILVL_B2_SB(i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 16
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* %23, align 4
  %90 = load i32, i32* %24, align 4
  %91 = call i32 @LD_SB3(i32* %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = mul nsw i32 3, %92
  %94 = load i32*, i32** %7, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %7, align 8
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %23, align 4
  %99 = load i32, i32* %24, align 4
  %100 = call i32 @XORI_B3_128_SB(i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %23, align 4
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* %24, align 4
  %104 = load i32, i32* %23, align 4
  %105 = load i32, i32* %32, align 4
  %106 = load i32, i32* %36, align 4
  %107 = call i32 @ILVR_B2_SB(i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  store i32 8, i32* %13, align 4
  br label %108

108:                                              ; preds = %112, %6
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %13, align 4
  %111 = icmp ne i32 %109, 0
  br i1 %111, label %112, label %369

112:                                              ; preds = %108
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %20, align 4
  %117 = call i32 @LD_SB2(i32* %113, i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* %20, align 4
  %120 = call i32 @XORI_B2_128_SB(i32 %118, i32 %119)
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %20, align 4
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %31, align 4
  %126 = load i32, i32* %35, align 4
  %127 = call i32 @ILVR_B2_SB(i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* %39, align 4
  %133 = load i32, i32* %41, align 4
  %134 = call i32 @ILVL_B2_SB(i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 16
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %25, align 4
  %139 = load i32, i32* %26, align 4
  %140 = call i32 @LD_SB2(i32* %136, i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %8, align 4
  %142 = mul nsw i32 2, %141
  %143 = load i32*, i32** %7, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %7, align 8
  %146 = load i32, i32* %25, align 4
  %147 = load i32, i32* %26, align 4
  %148 = call i32 @XORI_B2_128_SB(i32 %146, i32 %147)
  %149 = load i32, i32* %25, align 4
  %150 = load i32, i32* %24, align 4
  %151 = load i32, i32* %26, align 4
  %152 = load i32, i32* %25, align 4
  %153 = load i32, i32* %33, align 4
  %154 = load i32, i32* %37, align 4
  %155 = call i32 @ILVR_B2_SB(i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %30, align 4
  %157 = load i32, i32* %31, align 4
  %158 = load i32, i32* %28, align 4
  %159 = load i32, i32* %29, align 4
  %160 = call i64 @HEVC_FILT_4TAP_SH(i32 %156, i32 %157, i32 %158, i32 %159)
  store i64 %160, i64* %44, align 8
  %161 = load i32, i32* %38, align 4
  %162 = load i32, i32* %39, align 4
  %163 = load i32, i32* %28, align 4
  %164 = load i32, i32* %29, align 4
  %165 = call i64 @HEVC_FILT_4TAP_SH(i32 %161, i32 %162, i32 %163, i32 %164)
  store i64 %165, i64* %48, align 8
  %166 = load i32, i32* %34, align 4
  %167 = load i32, i32* %35, align 4
  %168 = load i32, i32* %28, align 4
  %169 = load i32, i32* %29, align 4
  %170 = call i64 @HEVC_FILT_4TAP_SH(i32 %166, i32 %167, i32 %168, i32 %169)
  store i64 %170, i64* %45, align 8
  %171 = load i32, i32* %40, align 4
  %172 = load i32, i32* %41, align 4
  %173 = load i32, i32* %28, align 4
  %174 = load i32, i32* %29, align 4
  %175 = call i64 @HEVC_FILT_4TAP_SH(i32 %171, i32 %172, i32 %173, i32 %174)
  store i64 %175, i64* %49, align 8
  %176 = load i32, i32* %32, align 4
  %177 = load i32, i32* %33, align 4
  %178 = load i32, i32* %28, align 4
  %179 = load i32, i32* %29, align 4
  %180 = call i64 @HEVC_FILT_4TAP_SH(i32 %176, i32 %177, i32 %178, i32 %179)
  store i64 %180, i64* %46, align 8
  %181 = load i32, i32* %36, align 4
  %182 = load i32, i32* %37, align 4
  %183 = load i32, i32* %28, align 4
  %184 = load i32, i32* %29, align 4
  %185 = call i64 @HEVC_FILT_4TAP_SH(i32 %181, i32 %182, i32 %183, i32 %184)
  store i64 %185, i64* %47, align 8
  %186 = load i64, i64* %44, align 8
  %187 = load i64, i64* %45, align 8
  %188 = load i64, i64* %46, align 8
  %189 = load i64, i64* %47, align 8
  %190 = call i32 @SRARI_H4_SH(i64 %186, i64 %187, i64 %188, i64 %189, i32 6)
  %191 = load i64, i64* %48, align 8
  %192 = load i64, i64* %49, align 8
  %193 = call i32 @SRARI_H2_SH(i64 %191, i64 %192, i32 6)
  %194 = load i64, i64* %44, align 8
  %195 = load i64, i64* %45, align 8
  %196 = load i64, i64* %46, align 8
  %197 = load i64, i64* %47, align 8
  %198 = call i32 @SAT_SH4_SH(i64 %194, i64 %195, i64 %196, i64 %197, i32 7)
  %199 = load i64, i64* %48, align 8
  %200 = load i64, i64* %49, align 8
  %201 = call i32 @SAT_SH2_SH(i64 %199, i64 %200, i32 7)
  %202 = load i64, i64* %44, align 8
  %203 = load i64, i64* %48, align 8
  %204 = call i32 @PCKEV_XORI128_UB(i64 %202, i64 %203)
  store i32 %204, i32* %42, align 4
  %205 = load i32, i32* %42, align 4
  %206 = load i32*, i32** %9, align 8
  %207 = call i32 @ST_UB(i32 %205, i32* %206)
  %208 = load i64, i64* %46, align 8
  %209 = load i64, i64* %46, align 8
  %210 = load i64, i64* %47, align 8
  %211 = load i64, i64* %47, align 8
  %212 = load i64, i64* %46, align 8
  %213 = load i64, i64* %47, align 8
  %214 = call i32 @PCKEV_B2_SH(i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213)
  %215 = load i64, i64* %46, align 8
  %216 = load i64, i64* %47, align 8
  %217 = call i32 @XORI_B2_128_SH(i64 %215, i64 %216)
  %218 = load i64, i64* %46, align 8
  %219 = trunc i64 %218 to i32
  %220 = call i32 @__msa_copy_u_d(i32 %219, i32 0)
  store i32 %220, i32* %14, align 4
  %221 = load i64, i64* %47, align 8
  %222 = trunc i64 %221 to i32
  %223 = call i32 @__msa_copy_u_d(i32 %222, i32 0)
  store i32 %223, i32* %15, align 4
  %224 = load i32, i32* %14, align 4
  %225 = load i32*, i32** %9, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 16
  %227 = call i32 @SD(i32 %224, i32* %226)
  %228 = load i32, i32* %10, align 4
  %229 = load i32*, i32** %9, align 8
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  store i32* %231, i32** %9, align 8
  %232 = load i64, i64* %45, align 8
  %233 = load i64, i64* %49, align 8
  %234 = call i32 @PCKEV_XORI128_UB(i64 %232, i64 %233)
  store i32 %234, i32* %42, align 4
  %235 = load i32, i32* %42, align 4
  %236 = load i32*, i32** %9, align 8
  %237 = call i32 @ST_UB(i32 %235, i32* %236)
  %238 = load i32, i32* %15, align 4
  %239 = load i32*, i32** %9, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 16
  %241 = call i32 @SD(i32 %238, i32* %240)
  %242 = load i32, i32* %10, align 4
  %243 = load i32*, i32** %9, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32* %245, i32** %9, align 8
  %246 = load i32*, i32** %7, align 8
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* %21, align 4
  %249 = load i32, i32* %18, align 4
  %250 = call i32 @LD_SB2(i32* %246, i32 %247, i32 %248, i32 %249)
  %251 = load i32, i32* %21, align 4
  %252 = load i32, i32* %18, align 4
  %253 = call i32 @XORI_B2_128_SB(i32 %251, i32 %252)
  %254 = load i32, i32* %21, align 4
  %255 = load i32, i32* %20, align 4
  %256 = load i32, i32* %18, align 4
  %257 = load i32, i32* %21, align 4
  %258 = load i32, i32* %30, align 4
  %259 = load i32, i32* %34, align 4
  %260 = call i32 @ILVR_B2_SB(i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259)
  %261 = load i32, i32* %21, align 4
  %262 = load i32, i32* %20, align 4
  %263 = load i32, i32* %18, align 4
  %264 = load i32, i32* %21, align 4
  %265 = load i32, i32* %38, align 4
  %266 = load i32, i32* %40, align 4
  %267 = call i32 @ILVL_B2_SB(i32 %261, i32 %262, i32 %263, i32 %264, i32 %265, i32 %266)
  %268 = load i32*, i32** %7, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 16
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* %27, align 4
  %272 = load i32, i32* %24, align 4
  %273 = call i32 @LD_SB2(i32* %269, i32 %270, i32 %271, i32 %272)
  %274 = load i32, i32* %8, align 4
  %275 = mul nsw i32 2, %274
  %276 = load i32*, i32** %7, align 8
  %277 = sext i32 %275 to i64
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  store i32* %278, i32** %7, align 8
  %279 = load i32, i32* %27, align 4
  %280 = load i32, i32* %24, align 4
  %281 = call i32 @XORI_B2_128_SB(i32 %279, i32 %280)
  %282 = load i32, i32* %27, align 4
  %283 = load i32, i32* %26, align 4
  %284 = load i32, i32* %24, align 4
  %285 = load i32, i32* %27, align 4
  %286 = load i32, i32* %32, align 4
  %287 = load i32, i32* %36, align 4
  %288 = call i32 @ILVR_B2_SB(i32 %282, i32 %283, i32 %284, i32 %285, i32 %286, i32 %287)
  %289 = load i32, i32* %31, align 4
  %290 = load i32, i32* %30, align 4
  %291 = load i32, i32* %28, align 4
  %292 = load i32, i32* %29, align 4
  %293 = call i64 @HEVC_FILT_4TAP_SH(i32 %289, i32 %290, i32 %291, i32 %292)
  store i64 %293, i64* %44, align 8
  %294 = load i32, i32* %39, align 4
  %295 = load i32, i32* %38, align 4
  %296 = load i32, i32* %28, align 4
  %297 = load i32, i32* %29, align 4
  %298 = call i64 @HEVC_FILT_4TAP_SH(i32 %294, i32 %295, i32 %296, i32 %297)
  store i64 %298, i64* %48, align 8
  %299 = load i32, i32* %35, align 4
  %300 = load i32, i32* %34, align 4
  %301 = load i32, i32* %28, align 4
  %302 = load i32, i32* %29, align 4
  %303 = call i64 @HEVC_FILT_4TAP_SH(i32 %299, i32 %300, i32 %301, i32 %302)
  store i64 %303, i64* %45, align 8
  %304 = load i32, i32* %41, align 4
  %305 = load i32, i32* %40, align 4
  %306 = load i32, i32* %28, align 4
  %307 = load i32, i32* %29, align 4
  %308 = call i64 @HEVC_FILT_4TAP_SH(i32 %304, i32 %305, i32 %306, i32 %307)
  store i64 %308, i64* %49, align 8
  %309 = load i32, i32* %33, align 4
  %310 = load i32, i32* %32, align 4
  %311 = load i32, i32* %28, align 4
  %312 = load i32, i32* %29, align 4
  %313 = call i64 @HEVC_FILT_4TAP_SH(i32 %309, i32 %310, i32 %311, i32 %312)
  store i64 %313, i64* %46, align 8
  %314 = load i32, i32* %37, align 4
  %315 = load i32, i32* %36, align 4
  %316 = load i32, i32* %28, align 4
  %317 = load i32, i32* %29, align 4
  %318 = call i64 @HEVC_FILT_4TAP_SH(i32 %314, i32 %315, i32 %316, i32 %317)
  store i64 %318, i64* %47, align 8
  %319 = load i64, i64* %44, align 8
  %320 = load i64, i64* %45, align 8
  %321 = load i64, i64* %46, align 8
  %322 = load i64, i64* %47, align 8
  %323 = call i32 @SRARI_H4_SH(i64 %319, i64 %320, i64 %321, i64 %322, i32 6)
  %324 = load i64, i64* %48, align 8
  %325 = load i64, i64* %49, align 8
  %326 = call i32 @SRARI_H2_SH(i64 %324, i64 %325, i32 6)
  %327 = load i64, i64* %44, align 8
  %328 = load i64, i64* %45, align 8
  %329 = load i64, i64* %46, align 8
  %330 = load i64, i64* %47, align 8
  %331 = call i32 @SAT_SH4_SH(i64 %327, i64 %328, i64 %329, i64 %330, i32 7)
  %332 = load i64, i64* %48, align 8
  %333 = load i64, i64* %49, align 8
  %334 = call i32 @SAT_SH2_SH(i64 %332, i64 %333, i32 7)
  %335 = load i64, i64* %44, align 8
  %336 = load i64, i64* %48, align 8
  %337 = call i32 @PCKEV_XORI128_UB(i64 %335, i64 %336)
  store i32 %337, i32* %42, align 4
  %338 = load i32, i32* %42, align 4
  %339 = load i32*, i32** %9, align 8
  %340 = call i32 @ST_UB(i32 %338, i32* %339)
  %341 = load i64, i64* %46, align 8
  %342 = load i64, i64* %46, align 8
  %343 = call i32 @PCKEV_XORI128_UB(i64 %341, i64 %342)
  store i32 %343, i32* %42, align 4
  %344 = load i32, i32* %42, align 4
  %345 = load i32*, i32** %9, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 16
  %347 = call i32 @ST_D1(i32 %344, i32 0, i32* %346)
  %348 = load i32, i32* %10, align 4
  %349 = load i32*, i32** %9, align 8
  %350 = sext i32 %348 to i64
  %351 = getelementptr inbounds i32, i32* %349, i64 %350
  store i32* %351, i32** %9, align 8
  %352 = load i64, i64* %45, align 8
  %353 = load i64, i64* %49, align 8
  %354 = call i32 @PCKEV_XORI128_UB(i64 %352, i64 %353)
  store i32 %354, i32* %42, align 4
  %355 = load i32, i32* %42, align 4
  %356 = load i32*, i32** %9, align 8
  %357 = call i32 @ST_UB(i32 %355, i32* %356)
  %358 = load i64, i64* %47, align 8
  %359 = load i64, i64* %47, align 8
  %360 = call i32 @PCKEV_XORI128_UB(i64 %358, i64 %359)
  store i32 %360, i32* %42, align 4
  %361 = load i32, i32* %42, align 4
  %362 = load i32*, i32** %9, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 16
  %364 = call i32 @ST_D1(i32 %361, i32 0, i32* %363)
  %365 = load i32, i32* %10, align 4
  %366 = load i32*, i32** %9, align 8
  %367 = sext i32 %365 to i64
  %368 = getelementptr inbounds i32, i32* %366, i64 %367
  store i32* %368, i32** %9, align 8
  br label %108

369:                                              ; preds = %108
  ret void
}

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i64, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @SRARI_H2_SH(i64, i64, i32) #1

declare dso_local i32 @SAT_SH4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @SAT_SH2_SH(i64, i64, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i64, i64) #1

declare dso_local i32 @ST_UB(i32, i32*) #1

declare dso_local i32 @PCKEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B2_128_SH(i64, i64) #1

declare dso_local i32 @__msa_copy_u_d(i32, i32) #1

declare dso_local i32 @SD(i32, i32*) #1

declare dso_local i32 @ST_D1(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
