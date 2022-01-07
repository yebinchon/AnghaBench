; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_8t_24w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_8t_24w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_8t_24w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_8t_24w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %44 = load i32, i32* @ff_hevc_mask_arr, align 4
  %45 = call i64 @LD_SB(i32 %44)
  store i64 %45, i64* %43, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 -3
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @LD_SH(i32* %48)
  store i32 %49, i32* %41, align 4
  %50 = load i32, i32* %41, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %21, align 4
  %55 = call i32 @SPLATI_H4_SH(i32 %50, i32 0, i32 1, i32 2, i32 3, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i64, i64* %43, align 8
  %57 = add nsw i64 %56, 2
  store i64 %57, i64* %22, align 8
  %58 = load i64, i64* %43, align 8
  %59 = add nsw i64 %58, 4
  store i64 %59, i64* %23, align 8
  %60 = load i64, i64* %43, align 8
  %61 = add nsw i64 %60, 6
  store i64 %61, i64* %24, align 8
  %62 = load i64, i64* %43, align 8
  %63 = add nsw i64 %62, 8
  store i64 %63, i64* %25, align 8
  %64 = load i64, i64* %43, align 8
  %65 = add nsw i64 %64, 10
  store i64 %65, i64* %26, align 8
  %66 = load i64, i64* %43, align 8
  %67 = add nsw i64 %66, 12
  store i64 %67, i64* %27, align 8
  %68 = load i64, i64* %43, align 8
  %69 = add nsw i64 %68, 14
  store i64 %69, i64* %28, align 8
  %70 = call i32 @__msa_ldi_h(i32 128)
  store i32 %70, i32* %42, align 4
  %71 = load i32, i32* %42, align 4
  %72 = shl i32 %71, 6
  store i32 %72, i32* %42, align 4
  %73 = load i32, i32* %12, align 4
  %74 = ashr i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %79, %6
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %13, align 4
  %78 = icmp ne i32 %76, 0
  br i1 %78, label %79, label %319

79:                                               ; preds = %75
  %80 = load i32*, i32** %7, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %15, align 8
  %83 = call i32 @LD_SB2(i32* %80, i32 16, i64 %81, i64 %82)
  %84 = load i32, i32* %8, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %7, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %17, align 8
  %91 = call i32 @LD_SB2(i32* %88, i32 16, i64 %89, i64 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %7, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %16, align 8
  %99 = load i64, i64* %17, align 8
  %100 = call i32 @XORI_B4_128_SB(i64 %96, i64 %97, i64 %98, i64 %99)
  %101 = load i32, i32* %42, align 4
  store i32 %101, i32* %35, align 4
  %102 = load i32, i32* %42, align 4
  store i32 %102, i32* %36, align 4
  %103 = load i32, i32* %42, align 4
  store i32 %103, i32* %37, align 4
  %104 = load i32, i32* %42, align 4
  store i32 %104, i32* %38, align 4
  %105 = load i32, i32* %42, align 4
  store i32 %105, i32* %39, align 4
  %106 = load i32, i32* %42, align 4
  store i32 %106, i32* %40, align 4
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* %43, align 8
  %112 = load i64, i64* %25, align 8
  %113 = load i64, i64* %29, align 8
  %114 = load i64, i64* %30, align 8
  %115 = call i32 @VSHF_B2_SB(i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114)
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* %16, align 8
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* %43, align 8
  %121 = load i64, i64* %43, align 8
  %122 = load i64, i64* %31, align 8
  %123 = load i64, i64* %32, align 8
  %124 = call i32 @VSHF_B2_SB(i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123)
  %125 = load i64, i64* %16, align 8
  %126 = load i64, i64* %17, align 8
  %127 = load i64, i64* %17, align 8
  %128 = load i64, i64* %17, align 8
  %129 = load i64, i64* %25, align 8
  %130 = load i64, i64* %43, align 8
  %131 = load i64, i64* %33, align 8
  %132 = load i64, i64* %34, align 8
  %133 = call i32 @VSHF_B2_SB(i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132)
  %134 = load i64, i64* %29, align 8
  %135 = load i64, i64* %30, align 8
  %136 = load i64, i64* %31, align 8
  %137 = load i64, i64* %32, align 8
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* %35, align 4
  %143 = load i32, i32* %36, align 4
  %144 = load i32, i32* %37, align 4
  %145 = load i32, i32* %38, align 4
  %146 = call i32 @DPADD_SB4_SH(i64 %134, i64 %135, i64 %136, i64 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145)
  %147 = load i64, i64* %33, align 8
  %148 = load i64, i64* %34, align 8
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %39, align 4
  %152 = load i32, i32* %40, align 4
  %153 = call i32 @DPADD_SB2_SH(i64 %147, i64 %148, i32 %149, i32 %150, i32 %151, i32 %152)
  %154 = load i64, i64* %14, align 8
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* %14, align 8
  %157 = load i64, i64* %15, align 8
  %158 = load i64, i64* %22, align 8
  %159 = load i64, i64* %26, align 8
  %160 = load i64, i64* %29, align 8
  %161 = load i64, i64* %30, align 8
  %162 = call i32 @VSHF_B2_SB(i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161)
  %163 = load i64, i64* %15, align 8
  %164 = load i64, i64* %15, align 8
  %165 = load i64, i64* %16, align 8
  %166 = load i64, i64* %16, align 8
  %167 = load i64, i64* %22, align 8
  %168 = load i64, i64* %22, align 8
  %169 = load i64, i64* %31, align 8
  %170 = load i64, i64* %32, align 8
  %171 = call i32 @VSHF_B2_SB(i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170)
  %172 = load i64, i64* %16, align 8
  %173 = load i64, i64* %17, align 8
  %174 = load i64, i64* %17, align 8
  %175 = load i64, i64* %17, align 8
  %176 = load i64, i64* %26, align 8
  %177 = load i64, i64* %22, align 8
  %178 = load i64, i64* %33, align 8
  %179 = load i64, i64* %34, align 8
  %180 = call i32 @VSHF_B2_SB(i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179)
  %181 = load i64, i64* %29, align 8
  %182 = load i64, i64* %30, align 8
  %183 = load i64, i64* %31, align 8
  %184 = load i64, i64* %32, align 8
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %19, align 4
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* %19, align 4
  %189 = load i32, i32* %35, align 4
  %190 = load i32, i32* %36, align 4
  %191 = load i32, i32* %37, align 4
  %192 = load i32, i32* %38, align 4
  %193 = call i32 @DPADD_SB4_SH(i64 %181, i64 %182, i64 %183, i64 %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192)
  %194 = load i64, i64* %33, align 8
  %195 = load i64, i64* %34, align 8
  %196 = load i32, i32* %19, align 4
  %197 = load i32, i32* %19, align 4
  %198 = load i32, i32* %39, align 4
  %199 = load i32, i32* %40, align 4
  %200 = call i32 @DPADD_SB2_SH(i64 %194, i64 %195, i32 %196, i32 %197, i32 %198, i32 %199)
  %201 = load i64, i64* %14, align 8
  %202 = load i64, i64* %14, align 8
  %203 = load i64, i64* %14, align 8
  %204 = load i64, i64* %15, align 8
  %205 = load i64, i64* %23, align 8
  %206 = load i64, i64* %27, align 8
  %207 = load i64, i64* %29, align 8
  %208 = load i64, i64* %30, align 8
  %209 = call i32 @VSHF_B2_SB(i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208)
  %210 = load i64, i64* %15, align 8
  %211 = load i64, i64* %15, align 8
  %212 = load i64, i64* %16, align 8
  %213 = load i64, i64* %16, align 8
  %214 = load i64, i64* %23, align 8
  %215 = load i64, i64* %23, align 8
  %216 = load i64, i64* %31, align 8
  %217 = load i64, i64* %32, align 8
  %218 = call i32 @VSHF_B2_SB(i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217)
  %219 = load i64, i64* %16, align 8
  %220 = load i64, i64* %17, align 8
  %221 = load i64, i64* %17, align 8
  %222 = load i64, i64* %17, align 8
  %223 = load i64, i64* %27, align 8
  %224 = load i64, i64* %23, align 8
  %225 = load i64, i64* %33, align 8
  %226 = load i64, i64* %34, align 8
  %227 = call i32 @VSHF_B2_SB(i64 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226)
  %228 = load i64, i64* %29, align 8
  %229 = load i64, i64* %30, align 8
  %230 = load i64, i64* %31, align 8
  %231 = load i64, i64* %32, align 8
  %232 = load i32, i32* %20, align 4
  %233 = load i32, i32* %20, align 4
  %234 = load i32, i32* %20, align 4
  %235 = load i32, i32* %20, align 4
  %236 = load i32, i32* %35, align 4
  %237 = load i32, i32* %36, align 4
  %238 = load i32, i32* %37, align 4
  %239 = load i32, i32* %38, align 4
  %240 = call i32 @DPADD_SB4_SH(i64 %228, i64 %229, i64 %230, i64 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239)
  %241 = load i64, i64* %33, align 8
  %242 = load i64, i64* %34, align 8
  %243 = load i32, i32* %20, align 4
  %244 = load i32, i32* %20, align 4
  %245 = load i32, i32* %39, align 4
  %246 = load i32, i32* %40, align 4
  %247 = call i32 @DPADD_SB2_SH(i64 %241, i64 %242, i32 %243, i32 %244, i32 %245, i32 %246)
  %248 = load i64, i64* %14, align 8
  %249 = load i64, i64* %14, align 8
  %250 = load i64, i64* %14, align 8
  %251 = load i64, i64* %15, align 8
  %252 = load i64, i64* %24, align 8
  %253 = load i64, i64* %28, align 8
  %254 = load i64, i64* %29, align 8
  %255 = load i64, i64* %30, align 8
  %256 = call i32 @VSHF_B2_SB(i64 %248, i64 %249, i64 %250, i64 %251, i64 %252, i64 %253, i64 %254, i64 %255)
  %257 = load i64, i64* %15, align 8
  %258 = load i64, i64* %15, align 8
  %259 = load i64, i64* %16, align 8
  %260 = load i64, i64* %16, align 8
  %261 = load i64, i64* %24, align 8
  %262 = load i64, i64* %24, align 8
  %263 = load i64, i64* %31, align 8
  %264 = load i64, i64* %32, align 8
  %265 = call i32 @VSHF_B2_SB(i64 %257, i64 %258, i64 %259, i64 %260, i64 %261, i64 %262, i64 %263, i64 %264)
  %266 = load i64, i64* %16, align 8
  %267 = load i64, i64* %17, align 8
  %268 = load i64, i64* %17, align 8
  %269 = load i64, i64* %17, align 8
  %270 = load i64, i64* %28, align 8
  %271 = load i64, i64* %24, align 8
  %272 = load i64, i64* %33, align 8
  %273 = load i64, i64* %34, align 8
  %274 = call i32 @VSHF_B2_SB(i64 %266, i64 %267, i64 %268, i64 %269, i64 %270, i64 %271, i64 %272, i64 %273)
  %275 = load i64, i64* %29, align 8
  %276 = load i64, i64* %30, align 8
  %277 = load i64, i64* %31, align 8
  %278 = load i64, i64* %32, align 8
  %279 = load i32, i32* %21, align 4
  %280 = load i32, i32* %21, align 4
  %281 = load i32, i32* %21, align 4
  %282 = load i32, i32* %21, align 4
  %283 = load i32, i32* %35, align 4
  %284 = load i32, i32* %36, align 4
  %285 = load i32, i32* %37, align 4
  %286 = load i32, i32* %38, align 4
  %287 = call i32 @DPADD_SB4_SH(i64 %275, i64 %276, i64 %277, i64 %278, i32 %279, i32 %280, i32 %281, i32 %282, i32 %283, i32 %284, i32 %285, i32 %286)
  %288 = load i64, i64* %33, align 8
  %289 = load i64, i64* %34, align 8
  %290 = load i32, i32* %21, align 4
  %291 = load i32, i32* %21, align 4
  %292 = load i32, i32* %39, align 4
  %293 = load i32, i32* %40, align 4
  %294 = call i32 @DPADD_SB2_SH(i64 %288, i64 %289, i32 %290, i32 %291, i32 %292, i32 %293)
  %295 = load i32, i32* %35, align 4
  %296 = load i32, i32* %36, align 4
  %297 = load i32*, i32** %9, align 8
  %298 = call i32 @ST_SH2(i32 %295, i32 %296, i32* %297, i32 8)
  %299 = load i32, i32* %37, align 4
  %300 = load i32*, i32** %9, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 16
  %302 = call i32 @ST_SH(i32 %299, i32* %301)
  %303 = load i32, i32* %10, align 4
  %304 = load i32*, i32** %9, align 8
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  store i32* %306, i32** %9, align 8
  %307 = load i32, i32* %38, align 4
  %308 = load i32, i32* %39, align 4
  %309 = load i32*, i32** %9, align 8
  %310 = call i32 @ST_SH2(i32 %307, i32 %308, i32* %309, i32 8)
  %311 = load i32, i32* %40, align 4
  %312 = load i32*, i32** %9, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 16
  %314 = call i32 @ST_SH(i32 %311, i32* %313)
  %315 = load i32, i32* %10, align 4
  %316 = load i32*, i32** %9, align 8
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds i32, i32* %316, i64 %317
  store i32* %318, i32** %9, align 8
  br label %75

319:                                              ; preds = %75
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH2(i32, i32, i32*, i32) #1

declare dso_local i32 @ST_SH(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
