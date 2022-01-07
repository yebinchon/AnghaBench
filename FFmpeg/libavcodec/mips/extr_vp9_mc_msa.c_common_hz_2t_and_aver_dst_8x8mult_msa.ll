; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_2t_and_aver_dst_8x8mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_2t_and_aver_dst_8x8mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_2t_and_aver_dst_8x8mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_2t_and_aver_dst_8x8mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %30 = load i32*, i32** @mc_filt_mask_arr, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = call i32 @LD_SB(i32* %31)
  store i32 %32, i32* %21, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = call i64 @LD_UH(i32* %33)
  store i64 %34, i64* %29, align 8
  %35 = load i64, i64* %29, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i64 @__msa_splati_h(i32 %36, i32 0)
  store i64 %37, i64* %22, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* %20, align 4
  %44 = call i32 @LD_SB4(i32* %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 4, %45
  %47 = load i32*, i32** %7, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %7, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %21, align 4
  %56 = load i64, i64* %25, align 8
  %57 = load i64, i64* %26, align 8
  %58 = call i32 @VSHF_B2_UH(i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i64 %56, i64 %57)
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* %21, align 4
  %65 = load i64, i64* %27, align 8
  %66 = load i64, i64* %28, align 8
  %67 = call i32 @VSHF_B2_UH(i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i64 %65, i64 %66)
  %68 = load i64, i64* %25, align 8
  %69 = load i64, i64* %26, align 8
  %70 = load i64, i64* %27, align 8
  %71 = load i64, i64* %28, align 8
  %72 = load i64, i64* %22, align 8
  %73 = load i64, i64* %22, align 8
  %74 = load i64, i64* %22, align 8
  %75 = load i64, i64* %22, align 8
  %76 = load i64, i64* %25, align 8
  %77 = load i64, i64* %26, align 8
  %78 = load i64, i64* %27, align 8
  %79 = load i64, i64* %28, align 8
  %80 = call i32 @DOTP_UB4_UH(i64 %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79)
  %81 = load i64, i64* %25, align 8
  %82 = load i64, i64* %26, align 8
  %83 = load i64, i64* %27, align 8
  %84 = load i64, i64* %28, align 8
  %85 = call i32 @SRARI_H4_UH(i64 %81, i64 %82, i64 %83, i64 %84, i32 7)
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @LD4(i32* %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i64, i64* %23, align 8
  %96 = call i32 @INSERT_D2_UB(i32 %93, i32 %94, i64 %95)
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i64, i64* %24, align 8
  %100 = call i32 @INSERT_D2_UB(i32 %97, i32 %98, i64 %99)
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %20, align 4
  %107 = call i32 @LD_SB4(i32* %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = mul nsw i32 4, %108
  %110 = load i32*, i32** %7, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %7, align 8
  %113 = load i64, i64* %25, align 8
  %114 = load i64, i64* %26, align 8
  %115 = load i64, i64* %27, align 8
  %116 = load i64, i64* %28, align 8
  %117 = load i64, i64* %23, align 8
  %118 = load i64, i64* %24, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @PCKEV_AVG_ST8x4_UB(i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i32* %119, i32 %120)
  %122 = load i32, i32* %10, align 4
  %123 = mul nsw i32 4, %122
  %124 = load i32*, i32** %9, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32* %126, i32** %9, align 8
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %21, align 4
  %132 = load i32, i32* %21, align 4
  %133 = load i64, i64* %25, align 8
  %134 = load i64, i64* %26, align 8
  %135 = call i32 @VSHF_B2_UH(i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i64 %133, i64 %134)
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %19, align 4
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %20, align 4
  %140 = load i32, i32* %21, align 4
  %141 = load i32, i32* %21, align 4
  %142 = load i64, i64* %27, align 8
  %143 = load i64, i64* %28, align 8
  %144 = call i32 @VSHF_B2_UH(i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i64 %142, i64 %143)
  %145 = load i64, i64* %25, align 8
  %146 = load i64, i64* %26, align 8
  %147 = load i64, i64* %27, align 8
  %148 = load i64, i64* %28, align 8
  %149 = load i64, i64* %22, align 8
  %150 = load i64, i64* %22, align 8
  %151 = load i64, i64* %22, align 8
  %152 = load i64, i64* %22, align 8
  %153 = load i64, i64* %25, align 8
  %154 = load i64, i64* %26, align 8
  %155 = load i64, i64* %27, align 8
  %156 = load i64, i64* %28, align 8
  %157 = call i32 @DOTP_UB4_UH(i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156)
  %158 = load i64, i64* %25, align 8
  %159 = load i64, i64* %26, align 8
  %160 = load i64, i64* %27, align 8
  %161 = load i64, i64* %28, align 8
  %162 = call i32 @SRARI_H4_UH(i64 %158, i64 %159, i64 %160, i64 %161, i32 7)
  %163 = load i32*, i32** %9, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @LD4(i32* %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168)
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i64, i64* %23, align 8
  %173 = call i32 @INSERT_D2_UB(i32 %170, i32 %171, i64 %172)
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %16, align 4
  %176 = load i64, i64* %24, align 8
  %177 = call i32 @INSERT_D2_UB(i32 %174, i32 %175, i64 %176)
  %178 = load i64, i64* %25, align 8
  %179 = load i64, i64* %26, align 8
  %180 = load i64, i64* %27, align 8
  %181 = load i64, i64* %28, align 8
  %182 = load i64, i64* %23, align 8
  %183 = load i64, i64* %24, align 8
  %184 = load i32*, i32** %9, align 8
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @PCKEV_AVG_ST8x4_UB(i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i32* %184, i32 %185)
  %187 = load i32, i32* %10, align 4
  %188 = mul nsw i32 4, %187
  %189 = load i32*, i32** %9, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32* %191, i32** %9, align 8
  %192 = load i32, i32* %12, align 4
  %193 = icmp eq i32 16, %192
  br i1 %193, label %194, label %339

194:                                              ; preds = %6
  %195 = load i32*, i32** %7, align 8
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* %18, align 4
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %20, align 4
  %201 = call i32 @LD_SB4(i32* %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200)
  %202 = load i32, i32* %8, align 4
  %203 = mul nsw i32 4, %202
  %204 = load i32*, i32** %7, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  store i32* %206, i32** %7, align 8
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* %18, align 4
  %210 = load i32, i32* %18, align 4
  %211 = load i32, i32* %21, align 4
  %212 = load i32, i32* %21, align 4
  %213 = load i64, i64* %25, align 8
  %214 = load i64, i64* %26, align 8
  %215 = call i32 @VSHF_B2_UH(i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i64 %213, i64 %214)
  %216 = load i32, i32* %19, align 4
  %217 = load i32, i32* %19, align 4
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* %20, align 4
  %220 = load i32, i32* %21, align 4
  %221 = load i32, i32* %21, align 4
  %222 = load i64, i64* %27, align 8
  %223 = load i64, i64* %28, align 8
  %224 = call i32 @VSHF_B2_UH(i32 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i64 %222, i64 %223)
  %225 = load i64, i64* %25, align 8
  %226 = load i64, i64* %26, align 8
  %227 = load i64, i64* %27, align 8
  %228 = load i64, i64* %28, align 8
  %229 = load i64, i64* %22, align 8
  %230 = load i64, i64* %22, align 8
  %231 = load i64, i64* %22, align 8
  %232 = load i64, i64* %22, align 8
  %233 = load i64, i64* %25, align 8
  %234 = load i64, i64* %26, align 8
  %235 = load i64, i64* %27, align 8
  %236 = load i64, i64* %28, align 8
  %237 = call i32 @DOTP_UB4_UH(i64 %225, i64 %226, i64 %227, i64 %228, i64 %229, i64 %230, i64 %231, i64 %232, i64 %233, i64 %234, i64 %235, i64 %236)
  %238 = load i64, i64* %25, align 8
  %239 = load i64, i64* %26, align 8
  %240 = load i64, i64* %27, align 8
  %241 = load i64, i64* %28, align 8
  %242 = call i32 @SRARI_H4_UH(i64 %238, i64 %239, i64 %240, i64 %241, i32 7)
  %243 = load i32*, i32** %9, align 8
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* %14, align 4
  %247 = load i32, i32* %15, align 4
  %248 = load i32, i32* %16, align 4
  %249 = call i32 @LD4(i32* %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248)
  %250 = load i32, i32* %13, align 4
  %251 = load i32, i32* %14, align 4
  %252 = load i64, i64* %23, align 8
  %253 = call i32 @INSERT_D2_UB(i32 %250, i32 %251, i64 %252)
  %254 = load i32, i32* %15, align 4
  %255 = load i32, i32* %16, align 4
  %256 = load i64, i64* %24, align 8
  %257 = call i32 @INSERT_D2_UB(i32 %254, i32 %255, i64 %256)
  %258 = load i32*, i32** %7, align 8
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* %17, align 4
  %261 = load i32, i32* %18, align 4
  %262 = load i32, i32* %19, align 4
  %263 = load i32, i32* %20, align 4
  %264 = call i32 @LD_SB4(i32* %258, i32 %259, i32 %260, i32 %261, i32 %262, i32 %263)
  %265 = load i64, i64* %25, align 8
  %266 = load i64, i64* %26, align 8
  %267 = load i64, i64* %27, align 8
  %268 = load i64, i64* %28, align 8
  %269 = load i64, i64* %23, align 8
  %270 = load i64, i64* %24, align 8
  %271 = load i32*, i32** %9, align 8
  %272 = load i32, i32* %10, align 4
  %273 = call i32 @PCKEV_AVG_ST8x4_UB(i64 %265, i64 %266, i64 %267, i64 %268, i64 %269, i64 %270, i32* %271, i32 %272)
  %274 = load i32, i32* %10, align 4
  %275 = mul nsw i32 4, %274
  %276 = load i32*, i32** %9, align 8
  %277 = sext i32 %275 to i64
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  store i32* %278, i32** %9, align 8
  %279 = load i32, i32* %17, align 4
  %280 = load i32, i32* %17, align 4
  %281 = load i32, i32* %18, align 4
  %282 = load i32, i32* %18, align 4
  %283 = load i32, i32* %21, align 4
  %284 = load i32, i32* %21, align 4
  %285 = load i64, i64* %25, align 8
  %286 = load i64, i64* %26, align 8
  %287 = call i32 @VSHF_B2_UH(i32 %279, i32 %280, i32 %281, i32 %282, i32 %283, i32 %284, i64 %285, i64 %286)
  %288 = load i32, i32* %19, align 4
  %289 = load i32, i32* %19, align 4
  %290 = load i32, i32* %20, align 4
  %291 = load i32, i32* %20, align 4
  %292 = load i32, i32* %21, align 4
  %293 = load i32, i32* %21, align 4
  %294 = load i64, i64* %27, align 8
  %295 = load i64, i64* %28, align 8
  %296 = call i32 @VSHF_B2_UH(i32 %288, i32 %289, i32 %290, i32 %291, i32 %292, i32 %293, i64 %294, i64 %295)
  %297 = load i64, i64* %25, align 8
  %298 = load i64, i64* %26, align 8
  %299 = load i64, i64* %27, align 8
  %300 = load i64, i64* %28, align 8
  %301 = load i64, i64* %22, align 8
  %302 = load i64, i64* %22, align 8
  %303 = load i64, i64* %22, align 8
  %304 = load i64, i64* %22, align 8
  %305 = load i64, i64* %25, align 8
  %306 = load i64, i64* %26, align 8
  %307 = load i64, i64* %27, align 8
  %308 = load i64, i64* %28, align 8
  %309 = call i32 @DOTP_UB4_UH(i64 %297, i64 %298, i64 %299, i64 %300, i64 %301, i64 %302, i64 %303, i64 %304, i64 %305, i64 %306, i64 %307, i64 %308)
  %310 = load i64, i64* %25, align 8
  %311 = load i64, i64* %26, align 8
  %312 = load i64, i64* %27, align 8
  %313 = load i64, i64* %28, align 8
  %314 = call i32 @SRARI_H4_UH(i64 %310, i64 %311, i64 %312, i64 %313, i32 7)
  %315 = load i32*, i32** %9, align 8
  %316 = load i32, i32* %10, align 4
  %317 = load i32, i32* %13, align 4
  %318 = load i32, i32* %14, align 4
  %319 = load i32, i32* %15, align 4
  %320 = load i32, i32* %16, align 4
  %321 = call i32 @LD4(i32* %315, i32 %316, i32 %317, i32 %318, i32 %319, i32 %320)
  %322 = load i32, i32* %13, align 4
  %323 = load i32, i32* %14, align 4
  %324 = load i64, i64* %23, align 8
  %325 = call i32 @INSERT_D2_UB(i32 %322, i32 %323, i64 %324)
  %326 = load i32, i32* %15, align 4
  %327 = load i32, i32* %16, align 4
  %328 = load i64, i64* %24, align 8
  %329 = call i32 @INSERT_D2_UB(i32 %326, i32 %327, i64 %328)
  %330 = load i64, i64* %25, align 8
  %331 = load i64, i64* %26, align 8
  %332 = load i64, i64* %27, align 8
  %333 = load i64, i64* %28, align 8
  %334 = load i64, i64* %23, align 8
  %335 = load i64, i64* %24, align 8
  %336 = load i32*, i32** %9, align 8
  %337 = load i32, i32* %10, align 4
  %338 = call i32 @PCKEV_AVG_ST8x4_UB(i64 %330, i64 %331, i64 %332, i64 %333, i64 %334, i64 %335, i32* %336, i32 %337)
  br label %339

339:                                              ; preds = %194, %6
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i64 @LD_UH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_UH(i32, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @DOTP_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INSERT_D2_UB(i32, i32, i64) #1

declare dso_local i32 @PCKEV_AVG_ST8x4_UB(i64, i64, i64, i64, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
