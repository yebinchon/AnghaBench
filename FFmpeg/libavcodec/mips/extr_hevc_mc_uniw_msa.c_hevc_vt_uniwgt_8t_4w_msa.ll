; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_8t_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_8t_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32)* @hevc_vt_uniwgt_8t_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_uniwgt_8t_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
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
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
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
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %76 = load i32, i32* %11, align 4
  %77 = mul nsw i32 3, %76
  %78 = load i32*, i32** %10, align 8
  %79 = sext i32 %77 to i64
  %80 = sub i64 0, %79
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %10, align 8
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @__msa_fill_w(i32 %82)
  store i32 %83, i32* %74, align 4
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @__msa_fill_w(i32 %84)
  store i32 %85, i32* %75, align 4
  %86 = load i32, i32* %16, align 4
  %87 = mul nsw i32 %86, 128
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %18, align 4
  %89 = sub nsw i32 %88, 6
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @__msa_fill_h(i32 %90)
  store i32 %91, i32* %71, align 4
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @__msa_fill_h(i32 %92)
  store i32 %93, i32* %72, align 4
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @__msa_fill_h(i32 %94)
  store i32 %95, i32* %73, align 4
  %96 = load i32, i32* %71, align 4
  %97 = load i32, i32* %73, align 4
  %98 = call i32 @__msa_srar_h(i32 %96, i32 %97)
  store i32 %98, i32* %71, align 4
  %99 = load i32, i32* %72, align 4
  %100 = load i32, i32* %71, align 4
  %101 = call i32 @__msa_adds_s_h(i32 %99, i32 %100)
  store i32 %101, i32* %72, align 4
  %102 = load i32*, i32** %14, align 8
  %103 = call i32 @LD_SH(i32* %102)
  store i32 %103, i32* %58, align 4
  %104 = load i32, i32* %58, align 4
  %105 = load i32, i32* %63, align 4
  %106 = load i32, i32* %64, align 4
  %107 = load i32, i32* %65, align 4
  %108 = load i32, i32* %66, align 4
  %109 = call i32 @SPLATI_H4_SH(i32 %104, i32 0, i32 1, i32 2, i32 3, i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %23, align 4
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* %25, align 4
  %116 = load i32, i32* %26, align 4
  %117 = load i32, i32* %27, align 4
  %118 = load i32, i32* %28, align 4
  %119 = call i32 @LD_SB7(i32* %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = mul nsw i32 7, %120
  %122 = load i32*, i32** %10, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %10, align 8
  %125 = load i32, i32* %23, align 4
  %126 = load i32, i32* %22, align 4
  %127 = load i32, i32* %25, align 4
  %128 = load i32, i32* %24, align 4
  %129 = load i32, i32* %27, align 4
  %130 = load i32, i32* %26, align 4
  %131 = load i32, i32* %24, align 4
  %132 = load i32, i32* %23, align 4
  %133 = load i32, i32* %37, align 4
  %134 = load i32, i32* %38, align 4
  %135 = load i32, i32* %39, align 4
  %136 = load i32, i32* %42, align 4
  %137 = call i32 @ILVR_B4_SB(i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* %26, align 4
  %139 = load i32, i32* %25, align 4
  %140 = load i32, i32* %28, align 4
  %141 = load i32, i32* %27, align 4
  %142 = load i32, i32* %43, align 4
  %143 = load i32, i32* %44, align 4
  %144 = call i32 @ILVR_B2_SB(i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load i32, i32* %42, align 4
  %146 = load i32, i32* %37, align 4
  %147 = load i32, i32* %43, align 4
  %148 = load i32, i32* %38, align 4
  %149 = load i32, i32* %44, align 4
  %150 = load i32, i32* %39, align 4
  %151 = load i32, i32* %51, align 4
  %152 = load i32, i32* %52, align 4
  %153 = load i32, i32* %53, align 4
  %154 = call i32 @ILVR_D3_SB(i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %51, align 4
  %156 = load i32, i32* %52, align 4
  %157 = load i32, i32* %53, align 4
  %158 = call i32 @XORI_B3_128_SB(i32 %155, i32 %156, i32 %157)
  %159 = load i32, i32* %15, align 4
  %160 = ashr i32 %159, 3
  store i32 %160, i32* %19, align 4
  br label %161

161:                                              ; preds = %165, %9
  %162 = load i32, i32* %19, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %19, align 4
  %164 = icmp ne i32 %162, 0
  br i1 %164, label %165, label %295

165:                                              ; preds = %161
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %29, align 4
  %169 = load i32, i32* %30, align 4
  %170 = load i32, i32* %31, align 4
  %171 = load i32, i32* %32, align 4
  %172 = load i32, i32* %33, align 4
  %173 = load i32, i32* %34, align 4
  %174 = load i32, i32* %35, align 4
  %175 = load i32, i32* %36, align 4
  %176 = call i32 @LD_SB8(i32* %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175)
  %177 = load i32, i32* %11, align 4
  %178 = mul nsw i32 8, %177
  %179 = load i32*, i32** %10, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32* %181, i32** %10, align 8
  %182 = load i32, i32* %29, align 4
  %183 = load i32, i32* %28, align 4
  %184 = load i32, i32* %30, align 4
  %185 = load i32, i32* %29, align 4
  %186 = load i32, i32* %31, align 4
  %187 = load i32, i32* %30, align 4
  %188 = load i32, i32* %32, align 4
  %189 = load i32, i32* %31, align 4
  %190 = load i32, i32* %40, align 4
  %191 = load i32, i32* %45, align 4
  %192 = load i32, i32* %41, align 4
  %193 = load i32, i32* %46, align 4
  %194 = call i32 @ILVR_B4_SB(i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %33, align 4
  %196 = load i32, i32* %32, align 4
  %197 = load i32, i32* %34, align 4
  %198 = load i32, i32* %33, align 4
  %199 = load i32, i32* %35, align 4
  %200 = load i32, i32* %34, align 4
  %201 = load i32, i32* %36, align 4
  %202 = load i32, i32* %35, align 4
  %203 = load i32, i32* %47, align 4
  %204 = load i32, i32* %48, align 4
  %205 = load i32, i32* %49, align 4
  %206 = load i32, i32* %50, align 4
  %207 = call i32 @ILVR_B4_SB(i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206)
  %208 = load i32, i32* %45, align 4
  %209 = load i32, i32* %40, align 4
  %210 = load i32, i32* %46, align 4
  %211 = load i32, i32* %41, align 4
  %212 = load i32, i32* %48, align 4
  %213 = load i32, i32* %47, align 4
  %214 = load i32, i32* %50, align 4
  %215 = load i32, i32* %49, align 4
  %216 = load i32, i32* %54, align 4
  %217 = load i32, i32* %55, align 4
  %218 = load i32, i32* %56, align 4
  %219 = load i32, i32* %57, align 4
  %220 = call i32 @ILVR_D4_SB(i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219)
  %221 = load i32, i32* %54, align 4
  %222 = load i32, i32* %55, align 4
  %223 = load i32, i32* %56, align 4
  %224 = load i32, i32* %57, align 4
  %225 = call i32 @XORI_B4_128_SB(i32 %221, i32 %222, i32 %223, i32 %224)
  %226 = load i32, i32* %51, align 4
  %227 = load i32, i32* %52, align 4
  %228 = load i32, i32* %53, align 4
  %229 = load i32, i32* %54, align 4
  %230 = load i32, i32* %63, align 4
  %231 = load i32, i32* %64, align 4
  %232 = load i32, i32* %65, align 4
  %233 = load i32, i32* %66, align 4
  %234 = call i32 @HEVC_FILT_8TAP_SH(i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233)
  store i32 %234, i32* %59, align 4
  %235 = load i32, i32* %52, align 4
  %236 = load i32, i32* %53, align 4
  %237 = load i32, i32* %54, align 4
  %238 = load i32, i32* %55, align 4
  %239 = load i32, i32* %63, align 4
  %240 = load i32, i32* %64, align 4
  %241 = load i32, i32* %65, align 4
  %242 = load i32, i32* %66, align 4
  %243 = call i32 @HEVC_FILT_8TAP_SH(i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242)
  store i32 %243, i32* %60, align 4
  %244 = load i32, i32* %53, align 4
  %245 = load i32, i32* %54, align 4
  %246 = load i32, i32* %55, align 4
  %247 = load i32, i32* %56, align 4
  %248 = load i32, i32* %63, align 4
  %249 = load i32, i32* %64, align 4
  %250 = load i32, i32* %65, align 4
  %251 = load i32, i32* %66, align 4
  %252 = call i32 @HEVC_FILT_8TAP_SH(i32 %244, i32 %245, i32 %246, i32 %247, i32 %248, i32 %249, i32 %250, i32 %251)
  store i32 %252, i32* %61, align 4
  %253 = load i32, i32* %54, align 4
  %254 = load i32, i32* %55, align 4
  %255 = load i32, i32* %56, align 4
  %256 = load i32, i32* %57, align 4
  %257 = load i32, i32* %63, align 4
  %258 = load i32, i32* %64, align 4
  %259 = load i32, i32* %65, align 4
  %260 = load i32, i32* %66, align 4
  %261 = call i32 @HEVC_FILT_8TAP_SH(i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259, i32 %260)
  store i32 %261, i32* %62, align 4
  %262 = load i32, i32* %59, align 4
  %263 = load i32, i32* %60, align 4
  %264 = load i32, i32* %61, align 4
  %265 = load i32, i32* %62, align 4
  %266 = load i32, i32* %74, align 4
  %267 = load i32, i32* %72, align 4
  %268 = load i32, i32* %75, align 4
  %269 = load i32, i32* %67, align 4
  %270 = load i32, i32* %68, align 4
  %271 = load i32, i32* %69, align 4
  %272 = load i32, i32* %70, align 4
  %273 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %262, i32 %263, i32 %264, i32 %265, i32 %266, i32 %267, i32 %268, i32 %269, i32 %270, i32 %271, i32 %272)
  %274 = load i32, i32* %68, align 4
  %275 = load i32, i32* %67, align 4
  %276 = load i32, i32* %70, align 4
  %277 = load i32, i32* %69, align 4
  %278 = load i32, i32* %20, align 4
  %279 = load i32, i32* %21, align 4
  %280 = call i32 @PCKEV_B2_UB(i32 %274, i32 %275, i32 %276, i32 %277, i32 %278, i32 %279)
  %281 = load i32, i32* %20, align 4
  %282 = load i32, i32* %21, align 4
  %283 = load i32*, i32** %12, align 8
  %284 = load i32, i32* %13, align 4
  %285 = call i32 @ST_W8(i32 %281, i32 %282, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %283, i32 %284)
  %286 = load i32, i32* %13, align 4
  %287 = mul nsw i32 8, %286
  %288 = load i32*, i32** %12, align 8
  %289 = sext i32 %287 to i64
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  store i32* %290, i32** %12, align 8
  %291 = load i32, i32* %55, align 4
  store i32 %291, i32* %51, align 4
  %292 = load i32, i32* %56, align 4
  store i32 %292, i32* %52, align 4
  %293 = load i32, i32* %57, align 4
  store i32 %293, i32* %53, align 4
  %294 = load i32, i32* %36, align 4
  store i32 %294, i32* %28, align 4
  br label %161

295:                                              ; preds = %161
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_srar_h(i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB7(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D3_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_8TAP_SH(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
