; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_8t_48w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_8t_48w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_8t_48w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_8t_48w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
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
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %40 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i64 @LD_UB(i32* %41)
  store i64 %42, i64* %26, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 -3
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @LD_SH(i32* %45)
  store i32 %46, i32* %35, align 4
  %47 = load i32, i32* %35, align 4
  %48 = load i64, i64* %18, align 8
  %49 = load i64, i64* %19, align 8
  %50 = load i64, i64* %20, align 8
  %51 = load i64, i64* %21, align 8
  %52 = call i32 @SPLATI_H4_SB(i32 %47, i32 0, i32 1, i32 2, i32 3, i64 %48, i64 %49, i64 %50, i64 %51)
  %53 = load i64, i64* %26, align 8
  %54 = add nsw i64 %53, 2
  store i64 %54, i64* %27, align 8
  %55 = load i64, i64* %26, align 8
  %56 = add nsw i64 %55, 4
  store i64 %56, i64* %28, align 8
  %57 = load i64, i64* %26, align 8
  %58 = add nsw i64 %57, 6
  store i64 %58, i64* %29, align 8
  %59 = load i64, i64* %26, align 8
  %60 = add nsw i64 %59, 8
  store i64 %60, i64* %30, align 8
  %61 = load i64, i64* %26, align 8
  %62 = add nsw i64 %61, 10
  store i64 %62, i64* %31, align 8
  %63 = load i64, i64* %26, align 8
  %64 = add nsw i64 %63, 12
  store i64 %64, i64* %32, align 8
  %65 = load i64, i64* %26, align 8
  %66 = add nsw i64 %65, 14
  store i64 %66, i64* %33, align 8
  store i32 64, i32* %13, align 4
  br label %67

67:                                               ; preds = %71, %6
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %13, align 4
  %70 = icmp ne i32 %68, 0
  br i1 %70, label %71, label %329

71:                                               ; preds = %67
  %72 = load i32*, i32** %7, align 8
  %73 = call i64 @LD_SB(i32* %72)
  store i64 %73, i64* %14, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 8
  %76 = call i64 @LD_SB(i32* %75)
  store i64 %76, i64* %15, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 16
  %79 = call i64 @LD_SB(i32* %78)
  store i64 %79, i64* %16, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 32
  %82 = call i64 @LD_SB(i32* %81)
  store i64 %82, i64* %17, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 40
  %85 = call i64 @LD_SB(i32* %84)
  store i64 %85, i64* %25, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %7, align 8
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %17, align 8
  %94 = call i32 @XORI_B4_128_SB(i64 %90, i64 %91, i64 %92, i64 %93)
  %95 = load i64, i64* %25, align 8
  %96 = call i64 @__msa_xori_b(i64 %95, i32 128)
  store i64 %96, i64* %25, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* %15, align 8
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* %16, align 8
  %102 = load i64, i64* %16, align 8
  %103 = load i64, i64* %26, align 8
  %104 = load i64, i64* %26, align 8
  %105 = load i64, i64* %26, align 8
  %106 = load i64, i64* %22, align 8
  %107 = load i64, i64* %23, align 8
  %108 = load i64, i64* %24, align 8
  %109 = call i32 @VSHF_B3_SB(i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108)
  %110 = load i64, i64* %22, align 8
  %111 = load i64, i64* %23, align 8
  %112 = load i64, i64* %24, align 8
  %113 = load i64, i64* %18, align 8
  %114 = load i64, i64* %18, align 8
  %115 = load i64, i64* %18, align 8
  %116 = load i32, i32* %36, align 4
  %117 = load i32, i32* %37, align 4
  %118 = load i32, i32* %38, align 4
  %119 = call i32 @DOTP_SB3_SH(i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i64, i64* %14, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* %15, align 8
  %123 = load i64, i64* %15, align 8
  %124 = load i64, i64* %16, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i64, i64* %27, align 8
  %127 = load i64, i64* %27, align 8
  %128 = load i64, i64* %27, align 8
  %129 = load i64, i64* %22, align 8
  %130 = load i64, i64* %23, align 8
  %131 = load i64, i64* %24, align 8
  %132 = call i32 @VSHF_B3_SB(i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131)
  %133 = load i64, i64* %22, align 8
  %134 = load i64, i64* %23, align 8
  %135 = load i64, i64* %19, align 8
  %136 = load i64, i64* %19, align 8
  %137 = load i32, i32* %36, align 4
  %138 = load i32, i32* %37, align 4
  %139 = call i32 @DPADD_SB2_SH(i64 %133, i64 %134, i64 %135, i64 %136, i32 %137, i32 %138)
  %140 = load i32, i32* %38, align 4
  %141 = load i64, i64* %24, align 8
  %142 = load i64, i64* %19, align 8
  %143 = call i32 @__msa_dpadd_s_h(i32 %140, i64 %141, i64 %142)
  store i32 %143, i32* %38, align 4
  %144 = load i64, i64* %14, align 8
  %145 = load i64, i64* %14, align 8
  %146 = load i64, i64* %15, align 8
  %147 = load i64, i64* %15, align 8
  %148 = load i64, i64* %16, align 8
  %149 = load i64, i64* %16, align 8
  %150 = load i64, i64* %28, align 8
  %151 = load i64, i64* %28, align 8
  %152 = load i64, i64* %28, align 8
  %153 = load i64, i64* %22, align 8
  %154 = load i64, i64* %23, align 8
  %155 = load i64, i64* %24, align 8
  %156 = call i32 @VSHF_B3_SB(i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155)
  %157 = load i64, i64* %22, align 8
  %158 = load i64, i64* %23, align 8
  %159 = load i64, i64* %20, align 8
  %160 = load i64, i64* %20, align 8
  %161 = load i32, i32* %36, align 4
  %162 = load i32, i32* %37, align 4
  %163 = call i32 @DPADD_SB2_SH(i64 %157, i64 %158, i64 %159, i64 %160, i32 %161, i32 %162)
  %164 = load i32, i32* %38, align 4
  %165 = load i64, i64* %24, align 8
  %166 = load i64, i64* %20, align 8
  %167 = call i32 @__msa_dpadd_s_h(i32 %164, i64 %165, i64 %166)
  store i32 %167, i32* %38, align 4
  %168 = load i64, i64* %14, align 8
  %169 = load i64, i64* %14, align 8
  %170 = load i64, i64* %15, align 8
  %171 = load i64, i64* %15, align 8
  %172 = load i64, i64* %16, align 8
  %173 = load i64, i64* %16, align 8
  %174 = load i64, i64* %29, align 8
  %175 = load i64, i64* %29, align 8
  %176 = load i64, i64* %29, align 8
  %177 = load i64, i64* %22, align 8
  %178 = load i64, i64* %23, align 8
  %179 = load i64, i64* %24, align 8
  %180 = call i32 @VSHF_B3_SB(i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179)
  %181 = load i64, i64* %22, align 8
  %182 = load i64, i64* %23, align 8
  %183 = load i64, i64* %21, align 8
  %184 = load i64, i64* %21, align 8
  %185 = load i32, i32* %36, align 4
  %186 = load i32, i32* %37, align 4
  %187 = call i32 @DPADD_SB2_SH(i64 %181, i64 %182, i64 %183, i64 %184, i32 %185, i32 %186)
  %188 = load i32, i32* %38, align 4
  %189 = load i64, i64* %24, align 8
  %190 = load i64, i64* %21, align 8
  %191 = call i32 @__msa_dpadd_s_h(i32 %188, i64 %189, i64 %190)
  store i32 %191, i32* %38, align 4
  %192 = load i32, i32* %36, align 4
  %193 = load i32, i32* %37, align 4
  %194 = call i32 @SRARI_H2_SH(i32 %192, i32 %193, i32 6)
  %195 = load i32, i32* %38, align 4
  %196 = call i32 @__msa_srari_h(i32 %195, i32 6)
  store i32 %196, i32* %39, align 4
  %197 = load i32, i32* %36, align 4
  %198 = load i32, i32* %37, align 4
  %199 = load i32, i32* %39, align 4
  %200 = call i32 @SAT_SH3_SH(i32 %197, i32 %198, i32 %199, i32 7)
  %201 = load i32, i32* %36, align 4
  %202 = load i32, i32* %37, align 4
  %203 = call i64 @PCKEV_XORI128_UB(i32 %201, i32 %202)
  store i64 %203, i64* %34, align 8
  %204 = load i64, i64* %34, align 8
  %205 = load i32*, i32** %9, align 8
  %206 = call i32 @ST_UB(i64 %204, i32* %205)
  %207 = load i64, i64* %16, align 8
  %208 = load i64, i64* %17, align 8
  %209 = load i64, i64* %17, align 8
  %210 = load i64, i64* %17, align 8
  %211 = load i64, i64* %25, align 8
  %212 = load i64, i64* %25, align 8
  %213 = load i64, i64* %30, align 8
  %214 = load i64, i64* %26, align 8
  %215 = load i64, i64* %26, align 8
  %216 = load i64, i64* %22, align 8
  %217 = load i64, i64* %23, align 8
  %218 = load i64, i64* %24, align 8
  %219 = call i32 @VSHF_B3_SB(i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218)
  %220 = load i64, i64* %22, align 8
  %221 = load i64, i64* %23, align 8
  %222 = load i64, i64* %24, align 8
  %223 = load i64, i64* %18, align 8
  %224 = load i64, i64* %18, align 8
  %225 = load i64, i64* %18, align 8
  %226 = load i32, i32* %36, align 4
  %227 = load i32, i32* %37, align 4
  %228 = load i32, i32* %38, align 4
  %229 = call i32 @DOTP_SB3_SH(i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i32 %226, i32 %227, i32 %228)
  %230 = load i64, i64* %16, align 8
  %231 = load i64, i64* %17, align 8
  %232 = load i64, i64* %17, align 8
  %233 = load i64, i64* %17, align 8
  %234 = load i64, i64* %25, align 8
  %235 = load i64, i64* %25, align 8
  %236 = load i64, i64* %31, align 8
  %237 = load i64, i64* %27, align 8
  %238 = load i64, i64* %27, align 8
  %239 = load i64, i64* %22, align 8
  %240 = load i64, i64* %23, align 8
  %241 = load i64, i64* %24, align 8
  %242 = call i32 @VSHF_B3_SB(i64 %230, i64 %231, i64 %232, i64 %233, i64 %234, i64 %235, i64 %236, i64 %237, i64 %238, i64 %239, i64 %240, i64 %241)
  %243 = load i64, i64* %22, align 8
  %244 = load i64, i64* %23, align 8
  %245 = load i64, i64* %19, align 8
  %246 = load i64, i64* %19, align 8
  %247 = load i32, i32* %36, align 4
  %248 = load i32, i32* %37, align 4
  %249 = call i32 @DPADD_SB2_SH(i64 %243, i64 %244, i64 %245, i64 %246, i32 %247, i32 %248)
  %250 = load i32, i32* %38, align 4
  %251 = load i64, i64* %24, align 8
  %252 = load i64, i64* %19, align 8
  %253 = call i32 @__msa_dpadd_s_h(i32 %250, i64 %251, i64 %252)
  store i32 %253, i32* %38, align 4
  %254 = load i64, i64* %16, align 8
  %255 = load i64, i64* %17, align 8
  %256 = load i64, i64* %17, align 8
  %257 = load i64, i64* %17, align 8
  %258 = load i64, i64* %25, align 8
  %259 = load i64, i64* %25, align 8
  %260 = load i64, i64* %32, align 8
  %261 = load i64, i64* %28, align 8
  %262 = load i64, i64* %28, align 8
  %263 = load i64, i64* %22, align 8
  %264 = load i64, i64* %23, align 8
  %265 = load i64, i64* %24, align 8
  %266 = call i32 @VSHF_B3_SB(i64 %254, i64 %255, i64 %256, i64 %257, i64 %258, i64 %259, i64 %260, i64 %261, i64 %262, i64 %263, i64 %264, i64 %265)
  %267 = load i64, i64* %22, align 8
  %268 = load i64, i64* %23, align 8
  %269 = load i64, i64* %20, align 8
  %270 = load i64, i64* %20, align 8
  %271 = load i32, i32* %36, align 4
  %272 = load i32, i32* %37, align 4
  %273 = call i32 @DPADD_SB2_SH(i64 %267, i64 %268, i64 %269, i64 %270, i32 %271, i32 %272)
  %274 = load i32, i32* %38, align 4
  %275 = load i64, i64* %24, align 8
  %276 = load i64, i64* %20, align 8
  %277 = call i32 @__msa_dpadd_s_h(i32 %274, i64 %275, i64 %276)
  store i32 %277, i32* %38, align 4
  %278 = load i64, i64* %16, align 8
  %279 = load i64, i64* %17, align 8
  %280 = load i64, i64* %17, align 8
  %281 = load i64, i64* %17, align 8
  %282 = load i64, i64* %25, align 8
  %283 = load i64, i64* %25, align 8
  %284 = load i64, i64* %33, align 8
  %285 = load i64, i64* %29, align 8
  %286 = load i64, i64* %29, align 8
  %287 = load i64, i64* %22, align 8
  %288 = load i64, i64* %23, align 8
  %289 = load i64, i64* %24, align 8
  %290 = call i32 @VSHF_B3_SB(i64 %278, i64 %279, i64 %280, i64 %281, i64 %282, i64 %283, i64 %284, i64 %285, i64 %286, i64 %287, i64 %288, i64 %289)
  %291 = load i64, i64* %22, align 8
  %292 = load i64, i64* %23, align 8
  %293 = load i64, i64* %21, align 8
  %294 = load i64, i64* %21, align 8
  %295 = load i32, i32* %36, align 4
  %296 = load i32, i32* %37, align 4
  %297 = call i32 @DPADD_SB2_SH(i64 %291, i64 %292, i64 %293, i64 %294, i32 %295, i32 %296)
  %298 = load i32, i32* %38, align 4
  %299 = load i64, i64* %24, align 8
  %300 = load i64, i64* %21, align 8
  %301 = call i32 @__msa_dpadd_s_h(i32 %298, i64 %299, i64 %300)
  store i32 %301, i32* %38, align 4
  %302 = load i32, i32* %36, align 4
  %303 = load i32, i32* %37, align 4
  %304 = call i32 @SRARI_H2_SH(i32 %302, i32 %303, i32 6)
  %305 = load i32, i32* %38, align 4
  %306 = call i32 @__msa_srari_h(i32 %305, i32 6)
  store i32 %306, i32* %38, align 4
  %307 = load i32, i32* %36, align 4
  %308 = load i32, i32* %37, align 4
  %309 = load i32, i32* %38, align 4
  %310 = call i32 @SAT_SH3_SH(i32 %307, i32 %308, i32 %309, i32 7)
  %311 = load i32, i32* %39, align 4
  %312 = load i32, i32* %36, align 4
  %313 = call i64 @PCKEV_XORI128_UB(i32 %311, i32 %312)
  store i64 %313, i64* %34, align 8
  %314 = load i64, i64* %34, align 8
  %315 = load i32*, i32** %9, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 16
  %317 = call i32 @ST_UB(i64 %314, i32* %316)
  %318 = load i32, i32* %37, align 4
  %319 = load i32, i32* %38, align 4
  %320 = call i64 @PCKEV_XORI128_UB(i32 %318, i32 %319)
  store i64 %320, i64* %34, align 8
  %321 = load i64, i64* %34, align 8
  %322 = load i32*, i32** %9, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 32
  %324 = call i32 @ST_UB(i64 %321, i32* %323)
  %325 = load i32, i32* %10, align 4
  %326 = load i32*, i32** %9, align 8
  %327 = sext i32 %325 to i64
  %328 = getelementptr inbounds i32, i32* %326, i64 %327
  store i32* %328, i32** %9, align 8
  br label %67

329:                                              ; preds = %67
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i64 @__msa_xori_b(i64, i32) #1

declare dso_local i32 @VSHF_B3_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DOTP_SB3_SH(i64, i64, i64, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @__msa_dpadd_s_h(i32, i64, i64) #1

declare dso_local i32 @SRARI_H2_SH(i32, i32, i32) #1

declare dso_local i32 @__msa_srari_h(i32, i32) #1

declare dso_local i32 @SAT_SH3_SH(i32, i32, i32, i32) #1

declare dso_local i64 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_UB(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
