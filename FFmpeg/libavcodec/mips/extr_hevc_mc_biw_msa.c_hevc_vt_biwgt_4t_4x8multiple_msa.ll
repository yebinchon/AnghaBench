; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_4x8multiple_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_4x8multiple_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_vt_biwgt_4t_4x8multiple_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_biwgt_4t_4x8multiple_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
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
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
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
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
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
  %73 = load i32, i32* %15, align 4
  %74 = load i32*, i32** %14, align 8
  %75 = sext i32 %73 to i64
  %76 = sub i64 0, %75
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32* %77, i32** %14, align 8
  %78 = load i32, i32* %24, align 4
  %79 = load i32, i32* %25, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %26, align 4
  %82 = shl i32 %80, %81
  store i32 %82, i32* %29, align 4
  %83 = load i32, i32* %22, align 4
  %84 = and i32 %83, 65535
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %22, align 4
  %86 = load i32, i32* %23, align 4
  %87 = shl i32 %86, 16
  %88 = or i32 %85, %87
  store i32 %88, i32* %28, align 4
  %89 = load i32, i32* %23, align 4
  %90 = mul nsw i32 128, %89
  store i32 %90, i32* %30, align 4
  %91 = load i32, i32* %30, align 4
  %92 = shl i32 %91, 6
  store i32 %92, i32* %30, align 4
  %93 = load i32, i32* %30, align 4
  %94 = load i32, i32* %29, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %29, align 4
  %96 = load i32, i32* %29, align 4
  %97 = call i32 @__msa_fill_w(i32 %96)
  store i32 %97, i32* %71, align 4
  %98 = load i32, i32* %28, align 4
  %99 = call i32 @__msa_fill_w(i32 %98)
  store i32 %99, i32* %70, align 4
  %100 = load i32, i32* %26, align 4
  %101 = add nsw i32 %100, 1
  %102 = call i32 @__msa_fill_w(i32 %101)
  store i32 %102, i32* %72, align 4
  %103 = load i32*, i32** %20, align 8
  %104 = call i32 @LD_SH(i32* %103)
  store i32 %104, i32* %69, align 4
  %105 = load i32, i32* %69, align 4
  %106 = load i32, i32* %67, align 4
  %107 = load i32, i32* %68, align 4
  %108 = call i32 @SPLATI_H2_SH(i32 %105, i32 0, i32 1, i32 %106, i32 %107)
  %109 = load i32*, i32** %14, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i64, i64* %31, align 8
  %112 = load i64, i64* %32, align 8
  %113 = load i64, i64* %33, align 8
  %114 = call i32 @LD_SB3(i32* %109, i32 %110, i64 %111, i64 %112, i64 %113)
  %115 = load i32, i32* %15, align 4
  %116 = mul nsw i32 3, %115
  %117 = load i32*, i32** %14, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %14, align 8
  %120 = load i64, i64* %32, align 8
  %121 = load i64, i64* %31, align 8
  %122 = load i64, i64* %33, align 8
  %123 = load i64, i64* %32, align 8
  %124 = load i64, i64* %49, align 8
  %125 = load i64, i64* %54, align 8
  %126 = call i32 @ILVR_B2_SB(i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125)
  %127 = load i64, i64* %54, align 8
  %128 = trunc i64 %127 to i32
  %129 = load i64, i64* %49, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i64 @__msa_ilvr_d(i32 %128, i32 %130)
  store i64 %131, i64* %59, align 8
  %132 = load i64, i64* %59, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i64 @__msa_xori_b(i32 %133, i32 128)
  store i64 %134, i64* %59, align 8
  %135 = load i32, i32* %21, align 4
  %136 = ashr i32 %135, 3
  store i32 %136, i32* %27, align 4
  br label %137

137:                                              ; preds = %141, %13
  %138 = load i32, i32* %27, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %27, align 4
  %140 = icmp ne i32 %138, 0
  br i1 %140, label %141, label %298

141:                                              ; preds = %137
  %142 = load i32*, i32** %14, align 8
  %143 = load i32, i32* %15, align 4
  %144 = load i64, i64* %34, align 8
  %145 = load i64, i64* %35, align 8
  %146 = load i64, i64* %36, align 8
  %147 = load i64, i64* %37, align 8
  %148 = load i64, i64* %38, align 8
  %149 = load i64, i64* %39, align 8
  %150 = call i32 @LD_SB6(i32* %142, i32 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149)
  %151 = load i32, i32* %15, align 4
  %152 = mul nsw i32 6, %151
  %153 = load i32*, i32** %14, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32* %155, i32** %14, align 8
  %156 = load i32*, i32** %16, align 8
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %41, align 4
  %159 = load i32, i32* %42, align 4
  %160 = load i32, i32* %43, align 4
  %161 = load i32, i32* %44, align 4
  %162 = load i32, i32* %45, align 4
  %163 = load i32, i32* %46, align 4
  %164 = load i32, i32* %47, align 4
  %165 = load i32, i32* %48, align 4
  %166 = call i32 @LD_SH8(i32* %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165)
  %167 = load i32, i32* %17, align 4
  %168 = mul nsw i32 8, %167
  %169 = load i32*, i32** %16, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32* %171, i32** %16, align 8
  %172 = load i32, i32* %42, align 4
  %173 = load i32, i32* %41, align 4
  %174 = load i32, i32* %44, align 4
  %175 = load i32, i32* %43, align 4
  %176 = load i32, i32* %41, align 4
  %177 = load i32, i32* %42, align 4
  %178 = call i32 @ILVR_D2_SH(i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %46, align 4
  %180 = load i32, i32* %45, align 4
  %181 = load i32, i32* %48, align 4
  %182 = load i32, i32* %47, align 4
  %183 = load i32, i32* %43, align 4
  %184 = load i32, i32* %44, align 4
  %185 = call i32 @ILVR_D2_SH(i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184)
  %186 = load i64, i64* %34, align 8
  %187 = load i64, i64* %33, align 8
  %188 = load i64, i64* %35, align 8
  %189 = load i64, i64* %34, align 8
  %190 = load i64, i64* %36, align 8
  %191 = load i64, i64* %35, align 8
  %192 = load i64, i64* %37, align 8
  %193 = load i64, i64* %36, align 8
  %194 = load i64, i64* %50, align 8
  %195 = load i64, i64* %55, align 8
  %196 = load i64, i64* %51, align 8
  %197 = load i64, i64* %56, align 8
  %198 = call i32 @ILVR_B4_SB(i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197)
  %199 = load i64, i64* %38, align 8
  %200 = load i64, i64* %37, align 8
  %201 = load i64, i64* %39, align 8
  %202 = load i64, i64* %38, align 8
  %203 = load i64, i64* %52, align 8
  %204 = load i64, i64* %57, align 8
  %205 = call i32 @ILVR_B2_SB(i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204)
  %206 = load i64, i64* %55, align 8
  %207 = load i64, i64* %50, align 8
  %208 = load i64, i64* %56, align 8
  %209 = load i64, i64* %51, align 8
  %210 = load i64, i64* %57, align 8
  %211 = load i64, i64* %52, align 8
  %212 = load i64, i64* %60, align 8
  %213 = load i64, i64* %61, align 8
  %214 = load i64, i64* %62, align 8
  %215 = call i32 @ILVR_D3_SB(i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214)
  %216 = load i64, i64* %60, align 8
  %217 = load i64, i64* %61, align 8
  %218 = load i64, i64* %62, align 8
  %219 = call i32 @XORI_B3_128_SB(i64 %216, i64 %217, i64 %218)
  %220 = load i64, i64* %59, align 8
  %221 = load i64, i64* %60, align 8
  %222 = load i32, i32* %67, align 4
  %223 = load i32, i32* %68, align 4
  %224 = call i32 @HEVC_FILT_4TAP_SH(i64 %220, i64 %221, i32 %222, i32 %223)
  store i32 %224, i32* %63, align 4
  %225 = load i64, i64* %60, align 8
  %226 = load i64, i64* %61, align 8
  %227 = load i32, i32* %67, align 4
  %228 = load i32, i32* %68, align 4
  %229 = call i32 @HEVC_FILT_4TAP_SH(i64 %225, i64 %226, i32 %227, i32 %228)
  store i32 %229, i32* %64, align 4
  %230 = load i64, i64* %61, align 8
  %231 = load i64, i64* %62, align 8
  %232 = load i32, i32* %67, align 4
  %233 = load i32, i32* %68, align 4
  %234 = call i32 @HEVC_FILT_4TAP_SH(i64 %230, i64 %231, i32 %232, i32 %233)
  store i32 %234, i32* %65, align 4
  %235 = load i32*, i32** %14, align 8
  %236 = load i32, i32* %15, align 4
  %237 = load i64, i64* %40, align 8
  %238 = load i64, i64* %33, align 8
  %239 = call i32 @LD_SB2(i32* %235, i32 %236, i64 %237, i64 %238)
  %240 = load i32, i32* %15, align 4
  %241 = mul nsw i32 2, %240
  %242 = load i32*, i32** %14, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  store i32* %244, i32** %14, align 8
  %245 = load i64, i64* %40, align 8
  %246 = load i64, i64* %39, align 8
  %247 = load i64, i64* %33, align 8
  %248 = load i64, i64* %40, align 8
  %249 = load i64, i64* %53, align 8
  %250 = load i64, i64* %58, align 8
  %251 = call i32 @ILVR_B2_SB(i64 %245, i64 %246, i64 %247, i64 %248, i64 %249, i64 %250)
  %252 = load i64, i64* %58, align 8
  %253 = trunc i64 %252 to i32
  %254 = load i64, i64* %53, align 8
  %255 = trunc i64 %254 to i32
  %256 = call i64 @__msa_ilvr_d(i32 %253, i32 %255)
  store i64 %256, i64* %59, align 8
  %257 = load i64, i64* %59, align 8
  %258 = trunc i64 %257 to i32
  %259 = call i64 @__msa_xori_b(i32 %258, i32 128)
  store i64 %259, i64* %59, align 8
  %260 = load i64, i64* %62, align 8
  %261 = load i64, i64* %59, align 8
  %262 = load i32, i32* %67, align 4
  %263 = load i32, i32* %68, align 4
  %264 = call i32 @HEVC_FILT_4TAP_SH(i64 %260, i64 %261, i32 %262, i32 %263)
  store i32 %264, i32* %66, align 4
  %265 = load i32, i32* %63, align 4
  %266 = load i32, i32* %64, align 4
  %267 = load i32, i32* %65, align 4
  %268 = load i32, i32* %66, align 4
  %269 = load i32, i32* %41, align 4
  %270 = load i32, i32* %42, align 4
  %271 = load i32, i32* %43, align 4
  %272 = load i32, i32* %44, align 4
  %273 = load i32, i32* %70, align 4
  %274 = load i32, i32* %72, align 4
  %275 = load i32, i32* %71, align 4
  %276 = load i32, i32* %63, align 4
  %277 = load i32, i32* %64, align 4
  %278 = load i32, i32* %65, align 4
  %279 = load i32, i32* %66, align 4
  %280 = call i32 @HEVC_BIW_RND_CLIP4(i32 %265, i32 %266, i32 %267, i32 %268, i32 %269, i32 %270, i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 %276, i32 %277, i32 %278, i32 %279)
  %281 = load i32, i32* %64, align 4
  %282 = load i32, i32* %63, align 4
  %283 = load i32, i32* %66, align 4
  %284 = load i32, i32* %65, align 4
  %285 = load i32, i32* %63, align 4
  %286 = load i32, i32* %64, align 4
  %287 = call i32 @PCKEV_B2_SH(i32 %281, i32 %282, i32 %283, i32 %284, i32 %285, i32 %286)
  %288 = load i32, i32* %63, align 4
  %289 = load i32, i32* %64, align 4
  %290 = load i32*, i32** %18, align 8
  %291 = load i32, i32* %19, align 4
  %292 = call i32 @ST_W8(i32 %288, i32 %289, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %290, i32 %291)
  %293 = load i32, i32* %19, align 4
  %294 = mul nsw i32 8, %293
  %295 = load i32*, i32** %18, align 8
  %296 = sext i32 %294 to i64
  %297 = getelementptr inbounds i32, i32* %295, i64 %296
  store i32* %297, i32** %18, align 8
  br label %137

298:                                              ; preds = %137
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i64 @__msa_xori_b(i32, i32) #1

declare dso_local i32 @LD_SB6(i32*, i32, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_D3_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
