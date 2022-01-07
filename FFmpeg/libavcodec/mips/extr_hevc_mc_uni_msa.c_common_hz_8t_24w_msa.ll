; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_8t_24w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_8t_24w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_8t_24w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_8t_24w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %30 = alloca i64, align 8
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
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %50 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = call i64 @LD_UB(i32* %51)
  store i64 %52, i64* %22, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 -3
  store i32* %54, i32** %7, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @LD_SH(i32* %55)
  store i32 %56, i32* %49, align 4
  %57 = load i32, i32* %49, align 4
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %21, align 4
  %62 = call i32 @SPLATI_H4_SB(i32 %57, i32 0, i32 1, i32 2, i32 3, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load i64, i64* %22, align 8
  %64 = add nsw i64 %63, 2
  store i64 %64, i64* %23, align 8
  %65 = load i64, i64* %22, align 8
  %66 = add nsw i64 %65, 4
  store i64 %66, i64* %24, align 8
  %67 = load i64, i64* %22, align 8
  %68 = add nsw i64 %67, 6
  store i64 %68, i64* %25, align 8
  %69 = load i64, i64* %22, align 8
  %70 = add nsw i64 %69, 8
  store i64 %70, i64* %26, align 8
  %71 = load i64, i64* %22, align 8
  %72 = add nsw i64 %71, 10
  store i64 %72, i64* %27, align 8
  %73 = load i64, i64* %22, align 8
  %74 = add nsw i64 %73, 12
  store i64 %74, i64* %28, align 8
  %75 = load i64, i64* %22, align 8
  %76 = add nsw i64 %75, 14
  store i64 %76, i64* %29, align 8
  store i32 16, i32* %13, align 4
  br label %77

77:                                               ; preds = %81, %6
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %13, align 4
  %80 = icmp ne i32 %78, 0
  br i1 %80, label %81, label %335

81:                                               ; preds = %77
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @LD_SB2(i32* %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 16
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @LD_SB2(i32* %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %17, align 4
  %97 = call i32 @XORI_B4_128_SB(i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = mul nsw i32 2, %98
  %100 = load i32*, i32** %7, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %7, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i64, i64* %22, align 8
  %108 = load i64, i64* %22, align 8
  %109 = load i32, i32* %31, align 4
  %110 = load i32, i32* %39, align 4
  %111 = call i32 @VSHF_B2_SB(i32 %103, i32 %104, i32 %105, i32 %106, i64 %107, i64 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i64, i64* %22, align 8
  %117 = load i64, i64* %22, align 8
  %118 = load i32, i32* %33, align 4
  %119 = load i32, i32* %40, align 4
  %120 = call i32 @VSHF_B2_SB(i32 %112, i32 %113, i32 %114, i32 %115, i64 %116, i64 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %17, align 4
  %125 = load i64, i64* %26, align 8
  %126 = load i64, i64* %26, align 8
  %127 = load i32, i32* %32, align 4
  %128 = load i32, i32* %34, align 4
  %129 = call i32 @VSHF_B2_SB(i32 %121, i32 %122, i32 %123, i32 %124, i64 %125, i64 %126, i32 %127, i32 %128)
  %130 = load i32, i32* %31, align 4
  %131 = load i32, i32* %39, align 4
  %132 = load i32, i32* %33, align 4
  %133 = load i32, i32* %40, align 4
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %43, align 4
  %139 = load i32, i32* %47, align 4
  %140 = load i32, i32* %45, align 4
  %141 = load i32, i32* %48, align 4
  %142 = call i32 @DOTP_SB4_SH(i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %32, align 4
  %144 = load i32, i32* %34, align 4
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %44, align 4
  %148 = load i32, i32* %46, align 4
  %149 = call i32 @DOTP_SB2_SH(i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = load i64, i64* %24, align 8
  %155 = load i64, i64* %24, align 8
  %156 = load i32, i32* %31, align 4
  %157 = load i32, i32* %39, align 4
  %158 = call i32 @VSHF_B2_SB(i32 %150, i32 %151, i32 %152, i32 %153, i64 %154, i64 %155, i32 %156, i32 %157)
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %17, align 4
  %163 = load i64, i64* %24, align 8
  %164 = load i64, i64* %24, align 8
  %165 = load i32, i32* %33, align 4
  %166 = load i32, i32* %40, align 4
  %167 = call i32 @VSHF_B2_SB(i32 %159, i32 %160, i32 %161, i32 %162, i64 %163, i64 %164, i32 %165, i32 %166)
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %17, align 4
  %172 = load i64, i64* %28, align 8
  %173 = load i64, i64* %28, align 8
  %174 = load i32, i32* %32, align 4
  %175 = load i32, i32* %34, align 4
  %176 = call i32 @VSHF_B2_SB(i32 %168, i32 %169, i32 %170, i32 %171, i64 %172, i64 %173, i32 %174, i32 %175)
  %177 = load i32, i32* %31, align 4
  %178 = load i32, i32* %39, align 4
  %179 = load i32, i32* %33, align 4
  %180 = load i32, i32* %40, align 4
  %181 = load i32, i32* %20, align 4
  %182 = load i32, i32* %20, align 4
  %183 = load i32, i32* %20, align 4
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* %43, align 4
  %186 = load i32, i32* %47, align 4
  %187 = load i32, i32* %45, align 4
  %188 = load i32, i32* %48, align 4
  %189 = call i32 @DPADD_SB4_SH(i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = load i32, i32* %32, align 4
  %191 = load i32, i32* %34, align 4
  %192 = load i32, i32* %20, align 4
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %44, align 4
  %195 = load i32, i32* %46, align 4
  %196 = call i32 @DPADD_SB2_SH(i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195)
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* %15, align 4
  %201 = load i64, i64* %23, align 8
  %202 = load i64, i64* %23, align 8
  %203 = load i32, i32* %35, align 4
  %204 = load i32, i32* %41, align 4
  %205 = call i32 @VSHF_B2_SB(i32 %197, i32 %198, i32 %199, i32 %200, i64 %201, i64 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* %17, align 4
  %210 = load i64, i64* %23, align 8
  %211 = load i64, i64* %23, align 8
  %212 = load i32, i32* %37, align 4
  %213 = load i32, i32* %42, align 4
  %214 = call i32 @VSHF_B2_SB(i32 %206, i32 %207, i32 %208, i32 %209, i64 %210, i64 %211, i32 %212, i32 %213)
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %17, align 4
  %219 = load i64, i64* %27, align 8
  %220 = load i64, i64* %27, align 8
  %221 = load i32, i32* %36, align 4
  %222 = load i32, i32* %38, align 4
  %223 = call i32 @VSHF_B2_SB(i32 %215, i32 %216, i32 %217, i32 %218, i64 %219, i64 %220, i32 %221, i32 %222)
  %224 = load i32, i32* %35, align 4
  %225 = load i32, i32* %41, align 4
  %226 = load i32, i32* %37, align 4
  %227 = load i32, i32* %42, align 4
  %228 = load i32, i32* %19, align 4
  %229 = load i32, i32* %19, align 4
  %230 = load i32, i32* %19, align 4
  %231 = load i32, i32* %19, align 4
  %232 = load i32, i32* %43, align 4
  %233 = load i32, i32* %47, align 4
  %234 = load i32, i32* %45, align 4
  %235 = load i32, i32* %48, align 4
  %236 = call i32 @DPADD_SB4_SH(i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235)
  %237 = load i32, i32* %36, align 4
  %238 = load i32, i32* %38, align 4
  %239 = load i32, i32* %19, align 4
  %240 = load i32, i32* %19, align 4
  %241 = load i32, i32* %44, align 4
  %242 = load i32, i32* %46, align 4
  %243 = call i32 @DPADD_SB2_SH(i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242)
  %244 = load i32, i32* %14, align 4
  %245 = load i32, i32* %14, align 4
  %246 = load i32, i32* %15, align 4
  %247 = load i32, i32* %15, align 4
  %248 = load i64, i64* %25, align 8
  %249 = load i64, i64* %25, align 8
  %250 = load i32, i32* %35, align 4
  %251 = load i32, i32* %41, align 4
  %252 = call i32 @VSHF_B2_SB(i32 %244, i32 %245, i32 %246, i32 %247, i64 %248, i64 %249, i32 %250, i32 %251)
  %253 = load i32, i32* %16, align 4
  %254 = load i32, i32* %16, align 4
  %255 = load i32, i32* %17, align 4
  %256 = load i32, i32* %17, align 4
  %257 = load i64, i64* %25, align 8
  %258 = load i64, i64* %25, align 8
  %259 = load i32, i32* %37, align 4
  %260 = load i32, i32* %42, align 4
  %261 = call i32 @VSHF_B2_SB(i32 %253, i32 %254, i32 %255, i32 %256, i64 %257, i64 %258, i32 %259, i32 %260)
  %262 = load i32, i32* %14, align 4
  %263 = load i32, i32* %15, align 4
  %264 = load i32, i32* %16, align 4
  %265 = load i32, i32* %17, align 4
  %266 = load i64, i64* %29, align 8
  %267 = load i64, i64* %29, align 8
  %268 = load i32, i32* %36, align 4
  %269 = load i32, i32* %38, align 4
  %270 = call i32 @VSHF_B2_SB(i32 %262, i32 %263, i32 %264, i32 %265, i64 %266, i64 %267, i32 %268, i32 %269)
  %271 = load i32, i32* %35, align 4
  %272 = load i32, i32* %41, align 4
  %273 = load i32, i32* %37, align 4
  %274 = load i32, i32* %42, align 4
  %275 = load i32, i32* %21, align 4
  %276 = load i32, i32* %21, align 4
  %277 = load i32, i32* %21, align 4
  %278 = load i32, i32* %21, align 4
  %279 = load i32, i32* %43, align 4
  %280 = load i32, i32* %47, align 4
  %281 = load i32, i32* %45, align 4
  %282 = load i32, i32* %48, align 4
  %283 = call i32 @DPADD_SB4_SH(i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 %276, i32 %277, i32 %278, i32 %279, i32 %280, i32 %281, i32 %282)
  %284 = load i32, i32* %36, align 4
  %285 = load i32, i32* %38, align 4
  %286 = load i32, i32* %21, align 4
  %287 = load i32, i32* %21, align 4
  %288 = load i32, i32* %44, align 4
  %289 = load i32, i32* %46, align 4
  %290 = call i32 @DPADD_SB2_SH(i32 %284, i32 %285, i32 %286, i32 %287, i32 %288, i32 %289)
  %291 = load i32, i32* %43, align 4
  %292 = load i32, i32* %47, align 4
  %293 = load i32, i32* %45, align 4
  %294 = load i32, i32* %48, align 4
  %295 = call i32 @SRARI_H4_SH(i32 %291, i32 %292, i32 %293, i32 %294, i32 6)
  %296 = load i32, i32* %44, align 4
  %297 = load i32, i32* %46, align 4
  %298 = call i32 @SRARI_H2_SH(i32 %296, i32 %297, i32 6)
  %299 = load i32, i32* %43, align 4
  %300 = load i32, i32* %47, align 4
  %301 = load i32, i32* %45, align 4
  %302 = load i32, i32* %48, align 4
  %303 = call i32 @SAT_SH4_SH(i32 %299, i32 %300, i32 %301, i32 %302, i32 7)
  %304 = load i32, i32* %44, align 4
  %305 = load i32, i32* %46, align 4
  %306 = call i32 @SAT_SH2_SH(i32 %304, i32 %305, i32 7)
  %307 = load i32, i32* %47, align 4
  %308 = load i32, i32* %48, align 4
  %309 = call i64 @PCKEV_XORI128_UB(i32 %307, i32 %308)
  store i64 %309, i64* %30, align 8
  %310 = load i64, i64* %30, align 8
  %311 = load i32*, i32** %9, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 16
  %313 = load i32, i32* %10, align 4
  %314 = call i32 @ST_D2(i64 %310, i32 0, i32 1, i32* %312, i32 %313)
  %315 = load i32, i32* %43, align 4
  %316 = load i32, i32* %44, align 4
  %317 = call i64 @PCKEV_XORI128_UB(i32 %315, i32 %316)
  store i64 %317, i64* %30, align 8
  %318 = load i64, i64* %30, align 8
  %319 = load i32*, i32** %9, align 8
  %320 = call i32 @ST_UB(i64 %318, i32* %319)
  %321 = load i32, i32* %10, align 4
  %322 = load i32*, i32** %9, align 8
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  store i32* %324, i32** %9, align 8
  %325 = load i32, i32* %45, align 4
  %326 = load i32, i32* %46, align 4
  %327 = call i64 @PCKEV_XORI128_UB(i32 %325, i32 %326)
  store i64 %327, i64* %30, align 8
  %328 = load i64, i64* %30, align 8
  %329 = load i32*, i32** %9, align 8
  %330 = call i32 @ST_UB(i64 %328, i32* %329)
  %331 = load i32, i32* %10, align 4
  %332 = load i32*, i32** %9, align 8
  %333 = sext i32 %331 to i64
  %334 = getelementptr inbounds i32, i32* %332, i64 %333
  store i32* %334, i32** %9, align 8
  br label %77

335:                                              ; preds = %77
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_SB(i32, i32, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @DOTP_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DOTP_SB2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H2_SH(i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH2_SH(i32, i32, i32) #1

declare dso_local i64 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_D2(i64, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_UB(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
