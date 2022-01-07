; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_4t_24w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_4t_24w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_4t_24w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_4t_24w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
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
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 16
  store i32* %45, i32** %13, align 8
  %46 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = call i64 @LD_SB(i32* %47)
  store i64 %48, i64* %33, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 -1
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @LD_SH(i32* %51)
  store i32 %52, i32* %37, align 4
  %53 = load i32, i32* %37, align 4
  %54 = load i64, i64* %31, align 8
  %55 = load i64, i64* %32, align 8
  %56 = call i32 @SPLATI_H2_SB(i32 %53, i32 0, i32 1, i64 %54, i64 %55)
  %57 = load i64, i64* %33, align 8
  %58 = add nsw i64 %57, 2
  store i64 %58, i64* %34, align 8
  %59 = load i64, i64* %33, align 8
  %60 = add nsw i64 %59, 8
  store i64 %60, i64* %35, align 8
  %61 = load i64, i64* %33, align 8
  %62 = add nsw i64 %61, 10
  store i64 %62, i64* %36, align 8
  store i32 8, i32* %14, align 4
  br label %63

63:                                               ; preds = %67, %6
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %14, align 4
  %66 = icmp ne i32 %64, 0
  br i1 %66, label %67, label %369

67:                                               ; preds = %63
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load i64, i64* %19, align 8
  %73 = load i64, i64* %21, align 8
  %74 = call i32 @LD_SB4(i32* %68, i32 %69, i64 %70, i64 %71, i64 %72, i64 %73)
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 16
  %77 = load i32, i32* %8, align 4
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* %18, align 8
  %80 = load i64, i64* %20, align 8
  %81 = load i64, i64* %22, align 8
  %82 = call i32 @LD_SB4(i32* %76, i32 %77, i64 %78, i64 %79, i64 %80, i64 %81)
  %83 = load i32, i32* %8, align 4
  %84 = mul nsw i32 4, %83
  %85 = load i32*, i32** %7, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %7, align 8
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* %20, align 8
  %94 = load i64, i64* %21, align 8
  %95 = load i64, i64* %22, align 8
  %96 = call i32 @XORI_B8_128_SB(i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95)
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %15, align 8
  %99 = load i64, i64* %15, align 8
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* %33, align 8
  %102 = load i64, i64* %35, align 8
  %103 = load i64, i64* %23, align 8
  %104 = load i64, i64* %24, align 8
  %105 = call i32 @VSHF_B2_SB(i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104)
  %106 = load i64, i64* %17, align 8
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load i64, i64* %18, align 8
  %110 = load i64, i64* %33, align 8
  %111 = load i64, i64* %35, align 8
  %112 = load i64, i64* %25, align 8
  %113 = load i64, i64* %26, align 8
  %114 = call i32 @VSHF_B2_SB(i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113)
  %115 = load i64, i64* %15, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* %16, align 8
  %119 = load i64, i64* %34, align 8
  %120 = load i64, i64* %36, align 8
  %121 = load i64, i64* %27, align 8
  %122 = load i64, i64* %28, align 8
  %123 = call i32 @VSHF_B2_SB(i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122)
  %124 = load i64, i64* %17, align 8
  %125 = load i64, i64* %17, align 8
  %126 = load i64, i64* %17, align 8
  %127 = load i64, i64* %18, align 8
  %128 = load i64, i64* %34, align 8
  %129 = load i64, i64* %36, align 8
  %130 = load i64, i64* %29, align 8
  %131 = load i64, i64* %30, align 8
  %132 = call i32 @VSHF_B2_SB(i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131)
  %133 = load i64, i64* %23, align 8
  %134 = load i64, i64* %24, align 8
  %135 = load i64, i64* %25, align 8
  %136 = load i64, i64* %26, align 8
  %137 = load i64, i64* %31, align 8
  %138 = load i64, i64* %31, align 8
  %139 = load i64, i64* %31, align 8
  %140 = load i64, i64* %31, align 8
  %141 = load i32, i32* %38, align 4
  %142 = load i32, i32* %39, align 4
  %143 = load i32, i32* %40, align 4
  %144 = load i32, i32* %41, align 4
  %145 = call i32 @DOTP_SB4_SH(i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i64, i64* %27, align 8
  %147 = load i64, i64* %28, align 8
  %148 = load i64, i64* %29, align 8
  %149 = load i64, i64* %30, align 8
  %150 = load i64, i64* %32, align 8
  %151 = load i64, i64* %32, align 8
  %152 = load i64, i64* %32, align 8
  %153 = load i64, i64* %32, align 8
  %154 = load i32, i32* %38, align 4
  %155 = load i32, i32* %39, align 4
  %156 = load i32, i32* %40, align 4
  %157 = load i32, i32* %41, align 4
  %158 = call i32 @DPADD_SB4_SH(i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i32 %154, i32 %155, i32 %156, i32 %157)
  %159 = load i32, i32* %38, align 4
  %160 = load i32, i32* %39, align 4
  %161 = load i32, i32* %40, align 4
  %162 = load i32, i32* %41, align 4
  %163 = call i32 @SRARI_H4_SH(i32 %159, i32 %160, i32 %161, i32 %162, i32 6)
  %164 = load i32, i32* %38, align 4
  %165 = load i32, i32* %39, align 4
  %166 = load i32, i32* %40, align 4
  %167 = load i32, i32* %41, align 4
  %168 = call i32 @SAT_SH4_SH(i32 %164, i32 %165, i32 %166, i32 %167, i32 7)
  %169 = load i32, i32* %38, align 4
  %170 = load i32, i32* %39, align 4
  %171 = call i32 @PCKEV_XORI128_UB(i32 %169, i32 %170)
  store i32 %171, i32* %42, align 4
  %172 = load i32, i32* %42, align 4
  %173 = load i32*, i32** %9, align 8
  %174 = call i32 @ST_UB(i32 %172, i32* %173)
  %175 = load i32, i32* %10, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32* %178, i32** %9, align 8
  %179 = load i32, i32* %40, align 4
  %180 = load i32, i32* %41, align 4
  %181 = call i32 @PCKEV_XORI128_UB(i32 %179, i32 %180)
  store i32 %181, i32* %42, align 4
  %182 = load i32, i32* %42, align 4
  %183 = load i32*, i32** %9, align 8
  %184 = call i32 @ST_UB(i32 %182, i32* %183)
  %185 = load i32, i32* %10, align 4
  %186 = load i32*, i32** %9, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32* %188, i32** %9, align 8
  %189 = load i64, i64* %19, align 8
  %190 = load i64, i64* %19, align 8
  %191 = load i64, i64* %19, align 8
  %192 = load i64, i64* %20, align 8
  %193 = load i64, i64* %33, align 8
  %194 = load i64, i64* %35, align 8
  %195 = load i64, i64* %23, align 8
  %196 = load i64, i64* %24, align 8
  %197 = call i32 @VSHF_B2_SB(i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196)
  %198 = load i64, i64* %21, align 8
  %199 = load i64, i64* %21, align 8
  %200 = load i64, i64* %21, align 8
  %201 = load i64, i64* %22, align 8
  %202 = load i64, i64* %33, align 8
  %203 = load i64, i64* %35, align 8
  %204 = load i64, i64* %25, align 8
  %205 = load i64, i64* %26, align 8
  %206 = call i32 @VSHF_B2_SB(i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205)
  %207 = load i64, i64* %19, align 8
  %208 = load i64, i64* %19, align 8
  %209 = load i64, i64* %19, align 8
  %210 = load i64, i64* %20, align 8
  %211 = load i64, i64* %34, align 8
  %212 = load i64, i64* %36, align 8
  %213 = load i64, i64* %27, align 8
  %214 = load i64, i64* %28, align 8
  %215 = call i32 @VSHF_B2_SB(i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214)
  %216 = load i64, i64* %21, align 8
  %217 = load i64, i64* %21, align 8
  %218 = load i64, i64* %21, align 8
  %219 = load i64, i64* %22, align 8
  %220 = load i64, i64* %34, align 8
  %221 = load i64, i64* %36, align 8
  %222 = load i64, i64* %29, align 8
  %223 = load i64, i64* %30, align 8
  %224 = call i32 @VSHF_B2_SB(i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222, i64 %223)
  %225 = load i64, i64* %23, align 8
  %226 = load i64, i64* %24, align 8
  %227 = load i64, i64* %25, align 8
  %228 = load i64, i64* %26, align 8
  %229 = load i64, i64* %31, align 8
  %230 = load i64, i64* %31, align 8
  %231 = load i64, i64* %31, align 8
  %232 = load i64, i64* %31, align 8
  %233 = load i32, i32* %38, align 4
  %234 = load i32, i32* %39, align 4
  %235 = load i32, i32* %40, align 4
  %236 = load i32, i32* %41, align 4
  %237 = call i32 @DOTP_SB4_SH(i64 %225, i64 %226, i64 %227, i64 %228, i64 %229, i64 %230, i64 %231, i64 %232, i32 %233, i32 %234, i32 %235, i32 %236)
  %238 = load i64, i64* %27, align 8
  %239 = load i64, i64* %28, align 8
  %240 = load i64, i64* %29, align 8
  %241 = load i64, i64* %30, align 8
  %242 = load i64, i64* %32, align 8
  %243 = load i64, i64* %32, align 8
  %244 = load i64, i64* %32, align 8
  %245 = load i64, i64* %32, align 8
  %246 = load i32, i32* %38, align 4
  %247 = load i32, i32* %39, align 4
  %248 = load i32, i32* %40, align 4
  %249 = load i32, i32* %41, align 4
  %250 = call i32 @DPADD_SB4_SH(i64 %238, i64 %239, i64 %240, i64 %241, i64 %242, i64 %243, i64 %244, i64 %245, i32 %246, i32 %247, i32 %248, i32 %249)
  %251 = load i32, i32* %38, align 4
  %252 = load i32, i32* %39, align 4
  %253 = load i32, i32* %40, align 4
  %254 = load i32, i32* %41, align 4
  %255 = call i32 @SRARI_H4_SH(i32 %251, i32 %252, i32 %253, i32 %254, i32 6)
  %256 = load i32, i32* %38, align 4
  %257 = load i32, i32* %39, align 4
  %258 = load i32, i32* %40, align 4
  %259 = load i32, i32* %41, align 4
  %260 = call i32 @SAT_SH4_SH(i32 %256, i32 %257, i32 %258, i32 %259, i32 7)
  %261 = load i32, i32* %38, align 4
  %262 = load i32, i32* %39, align 4
  %263 = call i32 @PCKEV_XORI128_UB(i32 %261, i32 %262)
  store i32 %263, i32* %42, align 4
  %264 = load i32, i32* %42, align 4
  %265 = load i32*, i32** %9, align 8
  %266 = call i32 @ST_UB(i32 %264, i32* %265)
  %267 = load i32, i32* %10, align 4
  %268 = load i32*, i32** %9, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  store i32* %270, i32** %9, align 8
  %271 = load i32, i32* %40, align 4
  %272 = load i32, i32* %41, align 4
  %273 = call i32 @PCKEV_XORI128_UB(i32 %271, i32 %272)
  store i32 %273, i32* %42, align 4
  %274 = load i32, i32* %42, align 4
  %275 = load i32*, i32** %9, align 8
  %276 = call i32 @ST_UB(i32 %274, i32* %275)
  %277 = load i32, i32* %10, align 4
  %278 = load i32*, i32** %9, align 8
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  store i32* %280, i32** %9, align 8
  %281 = load i64, i64* %16, align 8
  %282 = load i64, i64* %16, align 8
  %283 = load i64, i64* %18, align 8
  %284 = load i64, i64* %18, align 8
  %285 = load i64, i64* %33, align 8
  %286 = load i64, i64* %33, align 8
  %287 = load i64, i64* %23, align 8
  %288 = load i64, i64* %24, align 8
  %289 = call i32 @VSHF_B2_SB(i64 %281, i64 %282, i64 %283, i64 %284, i64 %285, i64 %286, i64 %287, i64 %288)
  %290 = load i64, i64* %20, align 8
  %291 = load i64, i64* %20, align 8
  %292 = load i64, i64* %22, align 8
  %293 = load i64, i64* %22, align 8
  %294 = load i64, i64* %33, align 8
  %295 = load i64, i64* %33, align 8
  %296 = load i64, i64* %25, align 8
  %297 = load i64, i64* %26, align 8
  %298 = call i32 @VSHF_B2_SB(i64 %290, i64 %291, i64 %292, i64 %293, i64 %294, i64 %295, i64 %296, i64 %297)
  %299 = load i64, i64* %16, align 8
  %300 = load i64, i64* %16, align 8
  %301 = load i64, i64* %18, align 8
  %302 = load i64, i64* %18, align 8
  %303 = load i64, i64* %34, align 8
  %304 = load i64, i64* %34, align 8
  %305 = load i64, i64* %27, align 8
  %306 = load i64, i64* %28, align 8
  %307 = call i32 @VSHF_B2_SB(i64 %299, i64 %300, i64 %301, i64 %302, i64 %303, i64 %304, i64 %305, i64 %306)
  %308 = load i64, i64* %20, align 8
  %309 = load i64, i64* %20, align 8
  %310 = load i64, i64* %22, align 8
  %311 = load i64, i64* %22, align 8
  %312 = load i64, i64* %34, align 8
  %313 = load i64, i64* %34, align 8
  %314 = load i64, i64* %29, align 8
  %315 = load i64, i64* %30, align 8
  %316 = call i32 @VSHF_B2_SB(i64 %308, i64 %309, i64 %310, i64 %311, i64 %312, i64 %313, i64 %314, i64 %315)
  %317 = load i64, i64* %23, align 8
  %318 = load i64, i64* %24, align 8
  %319 = load i64, i64* %25, align 8
  %320 = load i64, i64* %26, align 8
  %321 = load i64, i64* %31, align 8
  %322 = load i64, i64* %31, align 8
  %323 = load i64, i64* %31, align 8
  %324 = load i64, i64* %31, align 8
  %325 = load i32, i32* %38, align 4
  %326 = load i32, i32* %39, align 4
  %327 = load i32, i32* %40, align 4
  %328 = load i32, i32* %41, align 4
  %329 = call i32 @DOTP_SB4_SH(i64 %317, i64 %318, i64 %319, i64 %320, i64 %321, i64 %322, i64 %323, i64 %324, i32 %325, i32 %326, i32 %327, i32 %328)
  %330 = load i64, i64* %27, align 8
  %331 = load i64, i64* %28, align 8
  %332 = load i64, i64* %29, align 8
  %333 = load i64, i64* %30, align 8
  %334 = load i64, i64* %32, align 8
  %335 = load i64, i64* %32, align 8
  %336 = load i64, i64* %32, align 8
  %337 = load i64, i64* %32, align 8
  %338 = load i32, i32* %38, align 4
  %339 = load i32, i32* %39, align 4
  %340 = load i32, i32* %40, align 4
  %341 = load i32, i32* %41, align 4
  %342 = call i32 @DPADD_SB4_SH(i64 %330, i64 %331, i64 %332, i64 %333, i64 %334, i64 %335, i64 %336, i64 %337, i32 %338, i32 %339, i32 %340, i32 %341)
  %343 = load i32, i32* %38, align 4
  %344 = load i32, i32* %39, align 4
  %345 = load i32, i32* %40, align 4
  %346 = load i32, i32* %41, align 4
  %347 = call i32 @SRARI_H4_SH(i32 %343, i32 %344, i32 %345, i32 %346, i32 6)
  %348 = load i32, i32* %38, align 4
  %349 = load i32, i32* %39, align 4
  %350 = load i32, i32* %40, align 4
  %351 = load i32, i32* %41, align 4
  %352 = call i32 @SAT_SH4_SH(i32 %348, i32 %349, i32 %350, i32 %351, i32 7)
  %353 = load i32, i32* %38, align 4
  %354 = load i32, i32* %39, align 4
  %355 = call i32 @PCKEV_XORI128_UB(i32 %353, i32 %354)
  store i32 %355, i32* %42, align 4
  %356 = load i32, i32* %40, align 4
  %357 = load i32, i32* %41, align 4
  %358 = call i32 @PCKEV_XORI128_UB(i32 %356, i32 %357)
  store i32 %358, i32* %43, align 4
  %359 = load i32, i32* %42, align 4
  %360 = load i32, i32* %43, align 4
  %361 = load i32*, i32** %13, align 8
  %362 = load i32, i32* %10, align 4
  %363 = call i32 @ST_D4(i32 %359, i32 %360, i32 0, i32 1, i32 0, i32 1, i32* %361, i32 %362)
  %364 = load i32, i32* %10, align 4
  %365 = mul nsw i32 4, %364
  %366 = load i32*, i32** %13, align 8
  %367 = sext i32 %365 to i64
  %368 = getelementptr inbounds i32, i32* %366, i64 %367
  store i32* %368, i32** %13, align 8
  br label %63

369:                                              ; preds = %63
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DOTP_SB4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_UB(i32, i32*) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
