; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_8t_48w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_8t_48w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_bi_8t_48w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_bi_8t_48w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
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
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
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
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %55 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = call i64 @LD_SB(i32* %56)
  store i64 %57, i64* %54, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 -3
  store i32* %59, i32** %9, align 8
  %60 = call i32 @__msa_ldi_h(i32 128)
  store i32 %60, i32* %53, align 4
  %61 = load i32, i32* %53, align 4
  %62 = shl i32 %61, 6
  store i32 %62, i32* %53, align 4
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 @LD_SH(i32* %63)
  store i32 %64, i32* %52, align 4
  %65 = load i32, i32* %52, align 4
  %66 = load i32, i32* %25, align 4
  %67 = load i32, i32* %26, align 4
  %68 = load i32, i32* %27, align 4
  %69 = load i32, i32* %28, align 4
  %70 = call i32 @SPLATI_H4_SH(i32 %65, i32 0, i32 1, i32 2, i32 3, i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load i64, i64* %54, align 8
  %72 = add nsw i64 %71, 2
  store i64 %72, i64* %29, align 8
  %73 = load i64, i64* %54, align 8
  %74 = add nsw i64 %73, 4
  store i64 %74, i64* %30, align 8
  %75 = load i64, i64* %54, align 8
  %76 = add nsw i64 %75, 6
  store i64 %76, i64* %31, align 8
  %77 = load i64, i64* %54, align 8
  %78 = add nsw i64 %77, 8
  store i64 %78, i64* %32, align 8
  %79 = load i64, i64* %54, align 8
  %80 = add nsw i64 %79, 10
  store i64 %80, i64* %33, align 8
  %81 = load i64, i64* %54, align 8
  %82 = add nsw i64 %81, 12
  store i64 %82, i64* %34, align 8
  %83 = load i64, i64* %54, align 8
  %84 = add nsw i64 %83, 14
  store i64 %84, i64* %35, align 8
  store i32 64, i32* %17, align 4
  br label %85

85:                                               ; preds = %89, %8
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %17, align 4
  %88 = icmp ne i32 %86, 0
  br i1 %88, label %89, label %362

89:                                               ; preds = %85
  %90 = load i32*, i32** %9, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* %20, align 8
  %94 = call i32 @LD_SB3(i32* %90, i32 16, i64 %91, i64 %92, i64 %93)
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 40
  %97 = call i64 @LD_SB(i32* %96)
  store i64 %97, i64* %21, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %9, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %46, align 4
  %104 = load i32, i32* %47, align 4
  %105 = load i32, i32* %48, align 4
  %106 = load i32, i32* %49, align 4
  %107 = call i32 @LD_SH4(i32* %102, i32 8, i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load i64, i64* %18, align 8
  %109 = load i64, i64* %19, align 8
  %110 = load i64, i64* %20, align 8
  %111 = load i64, i64* %21, align 8
  %112 = call i32 @XORI_B4_128_SB(i64 %108, i64 %109, i64 %110, i64 %111)
  %113 = load i32, i32* %53, align 4
  store i32 %113, i32* %40, align 4
  %114 = load i32, i32* %53, align 4
  store i32 %114, i32* %41, align 4
  %115 = load i32, i32* %53, align 4
  store i32 %115, i32* %42, align 4
  %116 = load i32, i32* %53, align 4
  store i32 %116, i32* %43, align 4
  %117 = load i64, i64* %18, align 8
  %118 = load i64, i64* %18, align 8
  %119 = load i64, i64* %18, align 8
  %120 = load i64, i64* %19, align 8
  %121 = load i64, i64* %54, align 8
  %122 = load i64, i64* %32, align 8
  %123 = load i64, i64* %36, align 8
  %124 = load i64, i64* %37, align 8
  %125 = call i32 @VSHF_B2_SB(i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124)
  %126 = load i64, i64* %19, align 8
  %127 = load i64, i64* %19, align 8
  %128 = load i64, i64* %19, align 8
  %129 = load i64, i64* %20, align 8
  %130 = load i64, i64* %54, align 8
  %131 = load i64, i64* %32, align 8
  %132 = load i64, i64* %38, align 8
  %133 = load i64, i64* %39, align 8
  %134 = call i32 @VSHF_B2_SB(i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133)
  %135 = load i64, i64* %36, align 8
  %136 = load i64, i64* %37, align 8
  %137 = load i64, i64* %38, align 8
  %138 = load i64, i64* %39, align 8
  %139 = load i32, i32* %25, align 4
  %140 = load i32, i32* %25, align 4
  %141 = load i32, i32* %25, align 4
  %142 = load i32, i32* %25, align 4
  %143 = load i32, i32* %40, align 4
  %144 = load i32, i32* %41, align 4
  %145 = load i32, i32* %42, align 4
  %146 = load i32, i32* %43, align 4
  %147 = call i32 @DPADD_SB4_SH(i64 %135, i64 %136, i64 %137, i64 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = load i64, i64* %18, align 8
  %149 = load i64, i64* %18, align 8
  %150 = load i64, i64* %18, align 8
  %151 = load i64, i64* %19, align 8
  %152 = load i64, i64* %29, align 8
  %153 = load i64, i64* %33, align 8
  %154 = load i64, i64* %36, align 8
  %155 = load i64, i64* %37, align 8
  %156 = call i32 @VSHF_B2_SB(i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155)
  %157 = load i64, i64* %19, align 8
  %158 = load i64, i64* %19, align 8
  %159 = load i64, i64* %19, align 8
  %160 = load i64, i64* %20, align 8
  %161 = load i64, i64* %29, align 8
  %162 = load i64, i64* %33, align 8
  %163 = load i64, i64* %38, align 8
  %164 = load i64, i64* %39, align 8
  %165 = call i32 @VSHF_B2_SB(i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164)
  %166 = load i64, i64* %36, align 8
  %167 = load i64, i64* %37, align 8
  %168 = load i64, i64* %38, align 8
  %169 = load i64, i64* %39, align 8
  %170 = load i32, i32* %26, align 4
  %171 = load i32, i32* %26, align 4
  %172 = load i32, i32* %26, align 4
  %173 = load i32, i32* %26, align 4
  %174 = load i32, i32* %40, align 4
  %175 = load i32, i32* %41, align 4
  %176 = load i32, i32* %42, align 4
  %177 = load i32, i32* %43, align 4
  %178 = call i32 @DPADD_SB4_SH(i64 %166, i64 %167, i64 %168, i64 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177)
  %179 = load i64, i64* %18, align 8
  %180 = load i64, i64* %18, align 8
  %181 = load i64, i64* %18, align 8
  %182 = load i64, i64* %19, align 8
  %183 = load i64, i64* %30, align 8
  %184 = load i64, i64* %34, align 8
  %185 = load i64, i64* %36, align 8
  %186 = load i64, i64* %37, align 8
  %187 = call i32 @VSHF_B2_SB(i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186)
  %188 = load i64, i64* %19, align 8
  %189 = load i64, i64* %19, align 8
  %190 = load i64, i64* %19, align 8
  %191 = load i64, i64* %20, align 8
  %192 = load i64, i64* %30, align 8
  %193 = load i64, i64* %34, align 8
  %194 = load i64, i64* %38, align 8
  %195 = load i64, i64* %39, align 8
  %196 = call i32 @VSHF_B2_SB(i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195)
  %197 = load i64, i64* %36, align 8
  %198 = load i64, i64* %37, align 8
  %199 = load i64, i64* %38, align 8
  %200 = load i64, i64* %39, align 8
  %201 = load i32, i32* %27, align 4
  %202 = load i32, i32* %27, align 4
  %203 = load i32, i32* %27, align 4
  %204 = load i32, i32* %27, align 4
  %205 = load i32, i32* %40, align 4
  %206 = load i32, i32* %41, align 4
  %207 = load i32, i32* %42, align 4
  %208 = load i32, i32* %43, align 4
  %209 = call i32 @DPADD_SB4_SH(i64 %197, i64 %198, i64 %199, i64 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208)
  %210 = load i64, i64* %18, align 8
  %211 = load i64, i64* %18, align 8
  %212 = load i64, i64* %18, align 8
  %213 = load i64, i64* %19, align 8
  %214 = load i64, i64* %31, align 8
  %215 = load i64, i64* %35, align 8
  %216 = load i64, i64* %36, align 8
  %217 = load i64, i64* %37, align 8
  %218 = call i32 @VSHF_B2_SB(i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217)
  %219 = load i64, i64* %19, align 8
  %220 = load i64, i64* %19, align 8
  %221 = load i64, i64* %19, align 8
  %222 = load i64, i64* %20, align 8
  %223 = load i64, i64* %31, align 8
  %224 = load i64, i64* %35, align 8
  %225 = load i64, i64* %38, align 8
  %226 = load i64, i64* %39, align 8
  %227 = call i32 @VSHF_B2_SB(i64 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226)
  %228 = load i64, i64* %36, align 8
  %229 = load i64, i64* %37, align 8
  %230 = load i64, i64* %38, align 8
  %231 = load i64, i64* %39, align 8
  %232 = load i32, i32* %28, align 4
  %233 = load i32, i32* %28, align 4
  %234 = load i32, i32* %28, align 4
  %235 = load i32, i32* %28, align 4
  %236 = load i32, i32* %40, align 4
  %237 = load i32, i32* %41, align 4
  %238 = load i32, i32* %42, align 4
  %239 = load i32, i32* %43, align 4
  %240 = call i32 @DPADD_SB4_SH(i64 %228, i64 %229, i64 %230, i64 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239)
  %241 = load i32, i32* %46, align 4
  %242 = load i32, i32* %47, align 4
  %243 = load i32, i32* %40, align 4
  %244 = load i32, i32* %41, align 4
  %245 = load i32, i32* %40, align 4
  %246 = load i32, i32* %41, align 4
  %247 = call i32 @HEVC_BI_RND_CLIP2(i32 %241, i32 %242, i32 %243, i32 %244, i32 7, i32 %245, i32 %246)
  %248 = load i32, i32* %48, align 4
  %249 = load i32, i32* %49, align 4
  %250 = load i32, i32* %42, align 4
  %251 = load i32, i32* %43, align 4
  %252 = load i32, i32* %42, align 4
  %253 = load i32, i32* %43, align 4
  %254 = call i32 @HEVC_BI_RND_CLIP2(i32 %248, i32 %249, i32 %250, i32 %251, i32 7, i32 %252, i32 %253)
  %255 = load i32, i32* %41, align 4
  %256 = load i32, i32* %40, align 4
  %257 = load i32, i32* %43, align 4
  %258 = load i32, i32* %42, align 4
  %259 = load i64, i64* %22, align 8
  %260 = load i64, i64* %23, align 8
  %261 = call i32 @PCKEV_B2_SB(i32 %255, i32 %256, i32 %257, i32 %258, i64 %259, i64 %260)
  %262 = load i64, i64* %22, align 8
  %263 = load i32*, i32** %13, align 8
  %264 = call i32 @ST_SB(i64 %262, i32* %263)
  %265 = load i64, i64* %23, align 8
  %266 = load i32*, i32** %13, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 16
  %268 = call i32 @ST_SB(i64 %265, i32* %267)
  %269 = load i32*, i32** %11, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 32
  %271 = load i32, i32* %50, align 4
  %272 = load i32, i32* %51, align 4
  %273 = call i32 @LD_SH2(i32* %270, i32 8, i32 %271, i32 %272)
  %274 = load i32, i32* %12, align 4
  %275 = load i32*, i32** %11, align 8
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  store i32* %277, i32** %11, align 8
  %278 = load i32, i32* %53, align 4
  store i32 %278, i32* %44, align 4
  %279 = load i32, i32* %53, align 4
  store i32 %279, i32* %45, align 4
  %280 = load i64, i64* %20, align 8
  %281 = load i64, i64* %20, align 8
  %282 = load i64, i64* %21, align 8
  %283 = load i64, i64* %21, align 8
  %284 = load i64, i64* %54, align 8
  %285 = load i64, i64* %54, align 8
  %286 = load i64, i64* %36, align 8
  %287 = load i64, i64* %37, align 8
  %288 = call i32 @VSHF_B2_SB(i64 %280, i64 %281, i64 %282, i64 %283, i64 %284, i64 %285, i64 %286, i64 %287)
  %289 = load i64, i64* %20, align 8
  %290 = load i64, i64* %20, align 8
  %291 = load i64, i64* %21, align 8
  %292 = load i64, i64* %21, align 8
  %293 = load i64, i64* %29, align 8
  %294 = load i64, i64* %29, align 8
  %295 = load i64, i64* %38, align 8
  %296 = load i64, i64* %39, align 8
  %297 = call i32 @VSHF_B2_SB(i64 %289, i64 %290, i64 %291, i64 %292, i64 %293, i64 %294, i64 %295, i64 %296)
  %298 = load i64, i64* %36, align 8
  %299 = load i64, i64* %37, align 8
  %300 = load i64, i64* %38, align 8
  %301 = load i64, i64* %39, align 8
  %302 = load i32, i32* %25, align 4
  %303 = load i32, i32* %25, align 4
  %304 = load i32, i32* %26, align 4
  %305 = load i32, i32* %26, align 4
  %306 = load i32, i32* %44, align 4
  %307 = load i32, i32* %45, align 4
  %308 = load i32, i32* %44, align 4
  %309 = load i32, i32* %45, align 4
  %310 = call i32 @DPADD_SB4_SH(i64 %298, i64 %299, i64 %300, i64 %301, i32 %302, i32 %303, i32 %304, i32 %305, i32 %306, i32 %307, i32 %308, i32 %309)
  %311 = load i64, i64* %20, align 8
  %312 = load i64, i64* %20, align 8
  %313 = load i64, i64* %21, align 8
  %314 = load i64, i64* %21, align 8
  %315 = load i64, i64* %30, align 8
  %316 = load i64, i64* %30, align 8
  %317 = load i64, i64* %36, align 8
  %318 = load i64, i64* %37, align 8
  %319 = call i32 @VSHF_B2_SB(i64 %311, i64 %312, i64 %313, i64 %314, i64 %315, i64 %316, i64 %317, i64 %318)
  %320 = load i64, i64* %20, align 8
  %321 = load i64, i64* %20, align 8
  %322 = load i64, i64* %21, align 8
  %323 = load i64, i64* %21, align 8
  %324 = load i64, i64* %31, align 8
  %325 = load i64, i64* %31, align 8
  %326 = load i64, i64* %38, align 8
  %327 = load i64, i64* %39, align 8
  %328 = call i32 @VSHF_B2_SB(i64 %320, i64 %321, i64 %322, i64 %323, i64 %324, i64 %325, i64 %326, i64 %327)
  %329 = load i64, i64* %36, align 8
  %330 = load i64, i64* %37, align 8
  %331 = load i64, i64* %38, align 8
  %332 = load i64, i64* %39, align 8
  %333 = load i32, i32* %27, align 4
  %334 = load i32, i32* %27, align 4
  %335 = load i32, i32* %28, align 4
  %336 = load i32, i32* %28, align 4
  %337 = load i32, i32* %44, align 4
  %338 = load i32, i32* %45, align 4
  %339 = load i32, i32* %44, align 4
  %340 = load i32, i32* %45, align 4
  %341 = call i32 @DPADD_SB4_SH(i64 %329, i64 %330, i64 %331, i64 %332, i32 %333, i32 %334, i32 %335, i32 %336, i32 %337, i32 %338, i32 %339, i32 %340)
  %342 = load i32, i32* %50, align 4
  %343 = load i32, i32* %51, align 4
  %344 = load i32, i32* %44, align 4
  %345 = load i32, i32* %45, align 4
  %346 = load i32, i32* %44, align 4
  %347 = load i32, i32* %45, align 4
  %348 = call i32 @HEVC_BI_RND_CLIP2(i32 %342, i32 %343, i32 %344, i32 %345, i32 7, i32 %346, i32 %347)
  %349 = load i32, i32* %45, align 4
  %350 = sext i32 %349 to i64
  %351 = load i32, i32* %44, align 4
  %352 = sext i32 %351 to i64
  %353 = call i64 @__msa_pckev_b(i64 %350, i64 %352)
  store i64 %353, i64* %24, align 8
  %354 = load i64, i64* %24, align 8
  %355 = load i32*, i32** %13, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 32
  %357 = call i32 @ST_SB(i64 %354, i32* %356)
  %358 = load i32, i32* %14, align 4
  %359 = load i32*, i32** %13, align 8
  %360 = sext i32 %358 to i64
  %361 = getelementptr inbounds i32, i32* %359, i64 %360
  store i32* %361, i32** %13, align 8
  br label %85

362:                                              ; preds = %85
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP2(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SB(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @ST_SB(i64, i32*) #1

declare dso_local i32 @LD_SH2(i32*, i32, i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
