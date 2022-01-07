; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_8t_64w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_8t_64w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_bi_8t_64w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_bi_8t_64w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
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
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %52 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = call i64 @LD_SB(i32* %53)
  store i64 %54, i64* %30, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 -3
  store i32* %56, i32** %9, align 8
  %57 = call i32 @__msa_ldi_h(i32 128)
  store i32 %57, i32* %51, align 4
  %58 = load i32, i32* %51, align 4
  %59 = shl i32 %58, 6
  store i32 %59, i32* %51, align 4
  %60 = load i32*, i32** %15, align 8
  %61 = call i32 @LD_SH(i32* %60)
  store i32 %61, i32* %50, align 4
  %62 = load i32, i32* %50, align 4
  %63 = load i32, i32* %26, align 4
  %64 = load i32, i32* %27, align 4
  %65 = load i32, i32* %28, align 4
  %66 = load i32, i32* %29, align 4
  %67 = call i32 @SPLATI_H4_SH(i32 %62, i32 0, i32 1, i32 2, i32 3, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i64, i64* %30, align 8
  %69 = add nsw i64 %68, 2
  store i64 %69, i64* %31, align 8
  %70 = load i64, i64* %30, align 8
  %71 = add nsw i64 %70, 4
  store i64 %71, i64* %32, align 8
  %72 = load i64, i64* %30, align 8
  %73 = add nsw i64 %72, 6
  store i64 %73, i64* %33, align 8
  %74 = load i64, i64* %30, align 8
  %75 = add nsw i64 %74, 8
  store i64 %75, i64* %34, align 8
  %76 = load i64, i64* %30, align 8
  %77 = add nsw i64 %76, 10
  store i64 %77, i64* %35, align 8
  %78 = load i64, i64* %30, align 8
  %79 = add nsw i64 %78, 12
  store i64 %79, i64* %36, align 8
  %80 = load i64, i64* %30, align 8
  %81 = add nsw i64 %80, 14
  store i64 %81, i64* %37, align 8
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %17, align 4
  br label %83

83:                                               ; preds = %87, %8
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %17, align 4
  %86 = icmp ne i32 %84, 0
  br i1 %86, label %87, label %444

87:                                               ; preds = %83
  %88 = load i32*, i32** %9, align 8
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %19, align 8
  %91 = call i32 @LD_SB2(i32* %88, i32 16, i64 %89, i64 %90)
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 24
  %94 = call i64 @LD_SB(i32* %93)
  store i64 %94, i64* %20, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 32
  %97 = load i64, i64* %21, align 8
  %98 = load i64, i64* %22, align 8
  %99 = call i32 @LD_SB2(i32* %96, i32 16, i64 %97, i64 %98)
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 56
  %102 = call i64 @LD_SB(i32* %101)
  store i64 %102, i64* %23, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %46, align 4
  %105 = load i32, i32* %47, align 4
  %106 = load i32, i32* %48, align 4
  %107 = load i32, i32* %49, align 4
  %108 = call i32 @LD_SH4(i32* %103, i32 8, i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = load i64, i64* %18, align 8
  %110 = load i64, i64* %19, align 8
  %111 = load i64, i64* %20, align 8
  %112 = call i32 @XORI_B3_128_SB(i64 %109, i64 %110, i64 %111)
  %113 = load i32, i32* %51, align 4
  store i32 %113, i32* %42, align 4
  %114 = load i32, i32* %51, align 4
  store i32 %114, i32* %43, align 4
  %115 = load i32, i32* %51, align 4
  store i32 %115, i32* %44, align 4
  %116 = load i32, i32* %51, align 4
  store i32 %116, i32* %45, align 4
  %117 = load i64, i64* %18, align 8
  %118 = load i64, i64* %18, align 8
  %119 = load i64, i64* %18, align 8
  %120 = load i64, i64* %19, align 8
  %121 = load i64, i64* %30, align 8
  %122 = load i64, i64* %34, align 8
  %123 = load i64, i64* %38, align 8
  %124 = load i64, i64* %39, align 8
  %125 = call i32 @VSHF_B2_SB(i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124)
  %126 = load i64, i64* %19, align 8
  %127 = load i64, i64* %19, align 8
  %128 = load i64, i64* %20, align 8
  %129 = load i64, i64* %20, align 8
  %130 = load i64, i64* %30, align 8
  %131 = load i64, i64* %30, align 8
  %132 = load i64, i64* %40, align 8
  %133 = load i64, i64* %41, align 8
  %134 = call i32 @VSHF_B2_SB(i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133)
  %135 = load i64, i64* %38, align 8
  %136 = load i64, i64* %39, align 8
  %137 = load i64, i64* %40, align 8
  %138 = load i64, i64* %41, align 8
  %139 = load i32, i32* %26, align 4
  %140 = load i32, i32* %26, align 4
  %141 = load i32, i32* %26, align 4
  %142 = load i32, i32* %26, align 4
  %143 = load i32, i32* %42, align 4
  %144 = load i32, i32* %43, align 4
  %145 = load i32, i32* %44, align 4
  %146 = load i32, i32* %45, align 4
  %147 = call i32 @DPADD_SB4_SH(i64 %135, i64 %136, i64 %137, i64 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = load i64, i64* %18, align 8
  %149 = load i64, i64* %18, align 8
  %150 = load i64, i64* %18, align 8
  %151 = load i64, i64* %19, align 8
  %152 = load i64, i64* %31, align 8
  %153 = load i64, i64* %35, align 8
  %154 = load i64, i64* %38, align 8
  %155 = load i64, i64* %39, align 8
  %156 = call i32 @VSHF_B2_SB(i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155)
  %157 = load i64, i64* %19, align 8
  %158 = load i64, i64* %19, align 8
  %159 = load i64, i64* %20, align 8
  %160 = load i64, i64* %20, align 8
  %161 = load i64, i64* %31, align 8
  %162 = load i64, i64* %31, align 8
  %163 = load i64, i64* %40, align 8
  %164 = load i64, i64* %41, align 8
  %165 = call i32 @VSHF_B2_SB(i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164)
  %166 = load i64, i64* %38, align 8
  %167 = load i64, i64* %39, align 8
  %168 = load i64, i64* %40, align 8
  %169 = load i64, i64* %41, align 8
  %170 = load i32, i32* %27, align 4
  %171 = load i32, i32* %27, align 4
  %172 = load i32, i32* %27, align 4
  %173 = load i32, i32* %27, align 4
  %174 = load i32, i32* %42, align 4
  %175 = load i32, i32* %43, align 4
  %176 = load i32, i32* %44, align 4
  %177 = load i32, i32* %45, align 4
  %178 = call i32 @DPADD_SB4_SH(i64 %166, i64 %167, i64 %168, i64 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177)
  %179 = load i64, i64* %18, align 8
  %180 = load i64, i64* %18, align 8
  %181 = load i64, i64* %18, align 8
  %182 = load i64, i64* %19, align 8
  %183 = load i64, i64* %32, align 8
  %184 = load i64, i64* %36, align 8
  %185 = load i64, i64* %38, align 8
  %186 = load i64, i64* %39, align 8
  %187 = call i32 @VSHF_B2_SB(i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186)
  %188 = load i64, i64* %19, align 8
  %189 = load i64, i64* %19, align 8
  %190 = load i64, i64* %20, align 8
  %191 = load i64, i64* %20, align 8
  %192 = load i64, i64* %32, align 8
  %193 = load i64, i64* %32, align 8
  %194 = load i64, i64* %40, align 8
  %195 = load i64, i64* %41, align 8
  %196 = call i32 @VSHF_B2_SB(i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195)
  %197 = load i64, i64* %38, align 8
  %198 = load i64, i64* %39, align 8
  %199 = load i64, i64* %40, align 8
  %200 = load i64, i64* %41, align 8
  %201 = load i32, i32* %28, align 4
  %202 = load i32, i32* %28, align 4
  %203 = load i32, i32* %28, align 4
  %204 = load i32, i32* %28, align 4
  %205 = load i32, i32* %42, align 4
  %206 = load i32, i32* %43, align 4
  %207 = load i32, i32* %44, align 4
  %208 = load i32, i32* %45, align 4
  %209 = call i32 @DPADD_SB4_SH(i64 %197, i64 %198, i64 %199, i64 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208)
  %210 = load i64, i64* %18, align 8
  %211 = load i64, i64* %18, align 8
  %212 = load i64, i64* %18, align 8
  %213 = load i64, i64* %19, align 8
  %214 = load i64, i64* %33, align 8
  %215 = load i64, i64* %37, align 8
  %216 = load i64, i64* %38, align 8
  %217 = load i64, i64* %39, align 8
  %218 = call i32 @VSHF_B2_SB(i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217)
  %219 = load i64, i64* %19, align 8
  %220 = load i64, i64* %19, align 8
  %221 = load i64, i64* %20, align 8
  %222 = load i64, i64* %20, align 8
  %223 = load i64, i64* %33, align 8
  %224 = load i64, i64* %33, align 8
  %225 = load i64, i64* %40, align 8
  %226 = load i64, i64* %41, align 8
  %227 = call i32 @VSHF_B2_SB(i64 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226)
  %228 = load i64, i64* %38, align 8
  %229 = load i64, i64* %39, align 8
  %230 = load i64, i64* %40, align 8
  %231 = load i64, i64* %41, align 8
  %232 = load i32, i32* %29, align 4
  %233 = load i32, i32* %29, align 4
  %234 = load i32, i32* %29, align 4
  %235 = load i32, i32* %29, align 4
  %236 = load i32, i32* %42, align 4
  %237 = load i32, i32* %43, align 4
  %238 = load i32, i32* %44, align 4
  %239 = load i32, i32* %45, align 4
  %240 = call i32 @DPADD_SB4_SH(i64 %228, i64 %229, i64 %230, i64 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239)
  %241 = load i32, i32* %46, align 4
  %242 = load i32, i32* %47, align 4
  %243 = load i32, i32* %48, align 4
  %244 = load i32, i32* %49, align 4
  %245 = load i32, i32* %42, align 4
  %246 = load i32, i32* %43, align 4
  %247 = load i32, i32* %44, align 4
  %248 = load i32, i32* %45, align 4
  %249 = load i32, i32* %42, align 4
  %250 = load i32, i32* %43, align 4
  %251 = load i32, i32* %44, align 4
  %252 = load i32, i32* %45, align 4
  %253 = call i32 @HEVC_BI_RND_CLIP4(i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248, i32 7, i32 %249, i32 %250, i32 %251, i32 %252)
  %254 = load i32, i32* %43, align 4
  %255 = load i32, i32* %42, align 4
  %256 = load i32, i32* %45, align 4
  %257 = load i32, i32* %44, align 4
  %258 = load i64, i64* %24, align 8
  %259 = load i64, i64* %25, align 8
  %260 = call i32 @PCKEV_B2_SB(i32 %254, i32 %255, i32 %256, i32 %257, i64 %258, i64 %259)
  %261 = load i64, i64* %24, align 8
  %262 = load i64, i64* %25, align 8
  %263 = load i32*, i32** %13, align 8
  %264 = call i32 @ST_SB2(i64 %261, i64 %262, i32* %263, i32 16)
  %265 = load i64, i64* %21, align 8
  store i64 %265, i64* %18, align 8
  %266 = load i64, i64* %22, align 8
  store i64 %266, i64* %19, align 8
  %267 = load i64, i64* %23, align 8
  store i64 %267, i64* %20, align 8
  %268 = load i32*, i32** %11, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 32
  %270 = load i32, i32* %46, align 4
  %271 = load i32, i32* %47, align 4
  %272 = load i32, i32* %48, align 4
  %273 = load i32, i32* %49, align 4
  %274 = call i32 @LD_SH4(i32* %269, i32 8, i32 %270, i32 %271, i32 %272, i32 %273)
  %275 = load i64, i64* %18, align 8
  %276 = load i64, i64* %19, align 8
  %277 = load i64, i64* %20, align 8
  %278 = call i32 @XORI_B3_128_SB(i64 %275, i64 %276, i64 %277)
  %279 = load i32, i32* %51, align 4
  store i32 %279, i32* %42, align 4
  %280 = load i32, i32* %51, align 4
  store i32 %280, i32* %43, align 4
  %281 = load i32, i32* %51, align 4
  store i32 %281, i32* %44, align 4
  %282 = load i32, i32* %51, align 4
  store i32 %282, i32* %45, align 4
  %283 = load i64, i64* %18, align 8
  %284 = load i64, i64* %18, align 8
  %285 = load i64, i64* %18, align 8
  %286 = load i64, i64* %19, align 8
  %287 = load i64, i64* %30, align 8
  %288 = load i64, i64* %34, align 8
  %289 = load i64, i64* %38, align 8
  %290 = load i64, i64* %39, align 8
  %291 = call i32 @VSHF_B2_SB(i64 %283, i64 %284, i64 %285, i64 %286, i64 %287, i64 %288, i64 %289, i64 %290)
  %292 = load i64, i64* %19, align 8
  %293 = load i64, i64* %19, align 8
  %294 = load i64, i64* %20, align 8
  %295 = load i64, i64* %20, align 8
  %296 = load i64, i64* %30, align 8
  %297 = load i64, i64* %30, align 8
  %298 = load i64, i64* %40, align 8
  %299 = load i64, i64* %41, align 8
  %300 = call i32 @VSHF_B2_SB(i64 %292, i64 %293, i64 %294, i64 %295, i64 %296, i64 %297, i64 %298, i64 %299)
  %301 = load i64, i64* %38, align 8
  %302 = load i64, i64* %39, align 8
  %303 = load i64, i64* %40, align 8
  %304 = load i64, i64* %41, align 8
  %305 = load i32, i32* %26, align 4
  %306 = load i32, i32* %26, align 4
  %307 = load i32, i32* %26, align 4
  %308 = load i32, i32* %26, align 4
  %309 = load i32, i32* %42, align 4
  %310 = load i32, i32* %43, align 4
  %311 = load i32, i32* %44, align 4
  %312 = load i32, i32* %45, align 4
  %313 = call i32 @DPADD_SB4_SH(i64 %301, i64 %302, i64 %303, i64 %304, i32 %305, i32 %306, i32 %307, i32 %308, i32 %309, i32 %310, i32 %311, i32 %312)
  %314 = load i64, i64* %18, align 8
  %315 = load i64, i64* %18, align 8
  %316 = load i64, i64* %18, align 8
  %317 = load i64, i64* %19, align 8
  %318 = load i64, i64* %31, align 8
  %319 = load i64, i64* %35, align 8
  %320 = load i64, i64* %38, align 8
  %321 = load i64, i64* %39, align 8
  %322 = call i32 @VSHF_B2_SB(i64 %314, i64 %315, i64 %316, i64 %317, i64 %318, i64 %319, i64 %320, i64 %321)
  %323 = load i64, i64* %19, align 8
  %324 = load i64, i64* %19, align 8
  %325 = load i64, i64* %20, align 8
  %326 = load i64, i64* %20, align 8
  %327 = load i64, i64* %31, align 8
  %328 = load i64, i64* %31, align 8
  %329 = load i64, i64* %40, align 8
  %330 = load i64, i64* %41, align 8
  %331 = call i32 @VSHF_B2_SB(i64 %323, i64 %324, i64 %325, i64 %326, i64 %327, i64 %328, i64 %329, i64 %330)
  %332 = load i64, i64* %38, align 8
  %333 = load i64, i64* %39, align 8
  %334 = load i64, i64* %40, align 8
  %335 = load i64, i64* %41, align 8
  %336 = load i32, i32* %27, align 4
  %337 = load i32, i32* %27, align 4
  %338 = load i32, i32* %27, align 4
  %339 = load i32, i32* %27, align 4
  %340 = load i32, i32* %42, align 4
  %341 = load i32, i32* %43, align 4
  %342 = load i32, i32* %44, align 4
  %343 = load i32, i32* %45, align 4
  %344 = call i32 @DPADD_SB4_SH(i64 %332, i64 %333, i64 %334, i64 %335, i32 %336, i32 %337, i32 %338, i32 %339, i32 %340, i32 %341, i32 %342, i32 %343)
  %345 = load i64, i64* %18, align 8
  %346 = load i64, i64* %18, align 8
  %347 = load i64, i64* %18, align 8
  %348 = load i64, i64* %19, align 8
  %349 = load i64, i64* %32, align 8
  %350 = load i64, i64* %36, align 8
  %351 = load i64, i64* %38, align 8
  %352 = load i64, i64* %39, align 8
  %353 = call i32 @VSHF_B2_SB(i64 %345, i64 %346, i64 %347, i64 %348, i64 %349, i64 %350, i64 %351, i64 %352)
  %354 = load i64, i64* %19, align 8
  %355 = load i64, i64* %19, align 8
  %356 = load i64, i64* %20, align 8
  %357 = load i64, i64* %20, align 8
  %358 = load i64, i64* %32, align 8
  %359 = load i64, i64* %32, align 8
  %360 = load i64, i64* %40, align 8
  %361 = load i64, i64* %41, align 8
  %362 = call i32 @VSHF_B2_SB(i64 %354, i64 %355, i64 %356, i64 %357, i64 %358, i64 %359, i64 %360, i64 %361)
  %363 = load i64, i64* %38, align 8
  %364 = load i64, i64* %39, align 8
  %365 = load i64, i64* %40, align 8
  %366 = load i64, i64* %41, align 8
  %367 = load i32, i32* %28, align 4
  %368 = load i32, i32* %28, align 4
  %369 = load i32, i32* %28, align 4
  %370 = load i32, i32* %28, align 4
  %371 = load i32, i32* %42, align 4
  %372 = load i32, i32* %43, align 4
  %373 = load i32, i32* %44, align 4
  %374 = load i32, i32* %45, align 4
  %375 = call i32 @DPADD_SB4_SH(i64 %363, i64 %364, i64 %365, i64 %366, i32 %367, i32 %368, i32 %369, i32 %370, i32 %371, i32 %372, i32 %373, i32 %374)
  %376 = load i64, i64* %18, align 8
  %377 = load i64, i64* %18, align 8
  %378 = load i64, i64* %18, align 8
  %379 = load i64, i64* %19, align 8
  %380 = load i64, i64* %33, align 8
  %381 = load i64, i64* %37, align 8
  %382 = load i64, i64* %38, align 8
  %383 = load i64, i64* %39, align 8
  %384 = call i32 @VSHF_B2_SB(i64 %376, i64 %377, i64 %378, i64 %379, i64 %380, i64 %381, i64 %382, i64 %383)
  %385 = load i64, i64* %19, align 8
  %386 = load i64, i64* %19, align 8
  %387 = load i64, i64* %20, align 8
  %388 = load i64, i64* %20, align 8
  %389 = load i64, i64* %33, align 8
  %390 = load i64, i64* %33, align 8
  %391 = load i64, i64* %40, align 8
  %392 = load i64, i64* %41, align 8
  %393 = call i32 @VSHF_B2_SB(i64 %385, i64 %386, i64 %387, i64 %388, i64 %389, i64 %390, i64 %391, i64 %392)
  %394 = load i64, i64* %38, align 8
  %395 = load i64, i64* %39, align 8
  %396 = load i64, i64* %40, align 8
  %397 = load i64, i64* %41, align 8
  %398 = load i32, i32* %29, align 4
  %399 = load i32, i32* %29, align 4
  %400 = load i32, i32* %29, align 4
  %401 = load i32, i32* %29, align 4
  %402 = load i32, i32* %42, align 4
  %403 = load i32, i32* %43, align 4
  %404 = load i32, i32* %44, align 4
  %405 = load i32, i32* %45, align 4
  %406 = call i32 @DPADD_SB4_SH(i64 %394, i64 %395, i64 %396, i64 %397, i32 %398, i32 %399, i32 %400, i32 %401, i32 %402, i32 %403, i32 %404, i32 %405)
  %407 = load i32, i32* %46, align 4
  %408 = load i32, i32* %47, align 4
  %409 = load i32, i32* %48, align 4
  %410 = load i32, i32* %49, align 4
  %411 = load i32, i32* %42, align 4
  %412 = load i32, i32* %43, align 4
  %413 = load i32, i32* %44, align 4
  %414 = load i32, i32* %45, align 4
  %415 = load i32, i32* %42, align 4
  %416 = load i32, i32* %43, align 4
  %417 = load i32, i32* %44, align 4
  %418 = load i32, i32* %45, align 4
  %419 = call i32 @HEVC_BI_RND_CLIP4(i32 %407, i32 %408, i32 %409, i32 %410, i32 %411, i32 %412, i32 %413, i32 %414, i32 7, i32 %415, i32 %416, i32 %417, i32 %418)
  %420 = load i32, i32* %43, align 4
  %421 = load i32, i32* %42, align 4
  %422 = load i32, i32* %45, align 4
  %423 = load i32, i32* %44, align 4
  %424 = load i64, i64* %24, align 8
  %425 = load i64, i64* %25, align 8
  %426 = call i32 @PCKEV_B2_SB(i32 %420, i32 %421, i32 %422, i32 %423, i64 %424, i64 %425)
  %427 = load i64, i64* %24, align 8
  %428 = load i64, i64* %25, align 8
  %429 = load i32*, i32** %13, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 32
  %431 = call i32 @ST_SB2(i64 %427, i64 %428, i32* %430, i32 16)
  %432 = load i32, i32* %12, align 4
  %433 = load i32*, i32** %11, align 8
  %434 = sext i32 %432 to i64
  %435 = getelementptr inbounds i32, i32* %433, i64 %434
  store i32* %435, i32** %11, align 8
  %436 = load i32, i32* %10, align 4
  %437 = load i32*, i32** %9, align 8
  %438 = sext i32 %436 to i64
  %439 = getelementptr inbounds i32, i32* %437, i64 %438
  store i32* %439, i32** %9, align 8
  %440 = load i32, i32* %14, align 4
  %441 = load i32*, i32** %13, align 8
  %442 = sext i32 %440 to i64
  %443 = getelementptr inbounds i32, i32* %441, i64 %442
  store i32* %443, i32** %13, align 8
  br label %83

444:                                              ; preds = %83
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SB(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @ST_SB2(i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
