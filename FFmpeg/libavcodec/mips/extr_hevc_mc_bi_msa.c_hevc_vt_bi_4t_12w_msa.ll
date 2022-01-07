; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_12w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_12w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_bi_4t_12w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_bi_4t_12w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
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
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
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
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %58 = load i32, i32* %10, align 4
  %59 = mul nsw i32 1, %58
  %60 = load i32*, i32** %9, align 8
  %61 = sext i32 %59 to i64
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32* %63, i32** %9, align 8
  %64 = call i32 @__msa_ldi_h(i32 128)
  store i32 %64, i32* %57, align 4
  %65 = load i32, i32* %57, align 4
  %66 = shl i32 %65, 6
  store i32 %66, i32* %57, align 4
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @LD_SH(i32* %67)
  store i32 %68, i32* %56, align 4
  %69 = load i32, i32* %56, align 4
  %70 = load i32, i32* %54, align 4
  %71 = load i32, i32* %55, align 4
  %72 = call i32 @SPLATI_H2_SH(i32 %69, i32 0, i32 1, i32 %70, i32 %71)
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i64, i64* %18, align 8
  %76 = load i64, i64* %19, align 8
  %77 = load i64, i64* %20, align 8
  %78 = call i32 @LD_SB3(i32* %73, i32 %74, i64 %75, i64 %76, i64 %77)
  %79 = load i32, i32* %10, align 4
  %80 = mul nsw i32 3, %79
  %81 = load i32*, i32** %9, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %9, align 8
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* %19, align 8
  %86 = load i64, i64* %20, align 8
  %87 = call i32 @XORI_B3_128_SB(i64 %84, i64 %85, i64 %86)
  %88 = load i64, i64* %19, align 8
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %20, align 8
  %91 = load i64, i64* %19, align 8
  %92 = load i64, i64* %33, align 8
  %93 = load i64, i64* %35, align 8
  %94 = call i32 @ILVR_B2_SB(i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93)
  %95 = load i64, i64* %19, align 8
  %96 = load i64, i64* %18, align 8
  %97 = load i64, i64* %20, align 8
  %98 = load i64, i64* %19, align 8
  %99 = load i64, i64* %43, align 8
  %100 = load i64, i64* %46, align 8
  %101 = call i32 @ILVL_B2_SB(i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100)
  %102 = load i64, i64* %46, align 8
  %103 = trunc i64 %102 to i32
  %104 = load i64, i64* %43, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i64 @__msa_ilvr_d(i32 %103, i32 %105)
  store i64 %106, i64* %49, align 8
  %107 = load i32, i32* %16, align 4
  %108 = ashr i32 %107, 2
  store i32 %108, i32* %17, align 4
  br label %109

109:                                              ; preds = %113, %8
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %17, align 4
  %112 = icmp ne i32 %110, 0
  br i1 %112, label %113, label %305

113:                                              ; preds = %109
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i64, i64* %21, align 8
  %117 = load i64, i64* %22, align 8
  %118 = call i32 @LD_SB2(i32* %114, i32 %115, i64 %116, i64 %117)
  %119 = load i32, i32* %10, align 4
  %120 = mul nsw i32 2, %119
  %121 = load i32*, i32** %9, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %9, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i64, i64* %23, align 8
  %127 = load i64, i64* %24, align 8
  %128 = call i32 @LD_SB2(i32* %124, i32 %125, i64 %126, i64 %127)
  %129 = load i32, i32* %10, align 4
  %130 = mul nsw i32 2, %129
  %131 = load i32*, i32** %9, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %9, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %25, align 4
  %137 = load i32, i32* %26, align 4
  %138 = load i32, i32* %27, align 4
  %139 = load i32, i32* %28, align 4
  %140 = call i32 @LD_SH4(i32* %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139)
  %141 = load i32*, i32** %11, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 8
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %29, align 4
  %145 = load i32, i32* %30, align 4
  %146 = load i32, i32* %31, align 4
  %147 = load i32, i32* %32, align 4
  %148 = call i32 @LD_SH4(i32* %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load i32, i32* %12, align 4
  %150 = mul nsw i32 4, %149
  %151 = load i32*, i32** %11, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %11, align 8
  %154 = load i32, i32* %30, align 4
  %155 = load i32, i32* %29, align 4
  %156 = load i32, i32* %32, align 4
  %157 = load i32, i32* %31, align 4
  %158 = load i32, i32* %29, align 4
  %159 = load i32, i32* %30, align 4
  %160 = call i32 @ILVR_D2_SH(i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159)
  %161 = load i64, i64* %21, align 8
  %162 = load i64, i64* %22, align 8
  %163 = call i32 @XORI_B2_128_SB(i64 %161, i64 %162)
  %164 = load i64, i64* %23, align 8
  %165 = load i64, i64* %24, align 8
  %166 = call i32 @XORI_B2_128_SB(i64 %164, i64 %165)
  %167 = load i64, i64* %21, align 8
  %168 = load i64, i64* %20, align 8
  %169 = load i64, i64* %22, align 8
  %170 = load i64, i64* %21, align 8
  %171 = load i64, i64* %34, align 8
  %172 = load i64, i64* %36, align 8
  %173 = call i32 @ILVR_B2_SB(i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172)
  %174 = load i64, i64* %21, align 8
  %175 = load i64, i64* %20, align 8
  %176 = load i64, i64* %22, align 8
  %177 = load i64, i64* %21, align 8
  %178 = load i64, i64* %44, align 8
  %179 = load i64, i64* %47, align 8
  %180 = call i32 @ILVL_B2_SB(i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179)
  %181 = load i64, i64* %47, align 8
  %182 = trunc i64 %181 to i32
  %183 = load i64, i64* %44, align 8
  %184 = trunc i64 %183 to i32
  %185 = call i64 @__msa_ilvr_d(i32 %182, i32 %184)
  store i64 %185, i64* %50, align 8
  %186 = load i64, i64* %23, align 8
  %187 = load i64, i64* %22, align 8
  %188 = load i64, i64* %24, align 8
  %189 = load i64, i64* %23, align 8
  %190 = load i64, i64* %37, align 8
  %191 = load i64, i64* %38, align 8
  %192 = call i32 @ILVR_B2_SB(i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191)
  %193 = load i64, i64* %23, align 8
  %194 = load i64, i64* %22, align 8
  %195 = load i64, i64* %24, align 8
  %196 = load i64, i64* %23, align 8
  %197 = load i64, i64* %45, align 8
  %198 = load i64, i64* %48, align 8
  %199 = call i32 @ILVL_B2_SB(i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198)
  %200 = load i64, i64* %48, align 8
  %201 = trunc i64 %200 to i32
  %202 = load i64, i64* %45, align 8
  %203 = trunc i64 %202 to i32
  %204 = call i64 @__msa_ilvr_d(i32 %201, i32 %203)
  store i64 %204, i64* %51, align 8
  %205 = load i32, i32* %57, align 4
  store i32 %205, i32* %39, align 4
  %206 = load i64, i64* %33, align 8
  %207 = load i64, i64* %34, align 8
  %208 = load i32, i32* %54, align 4
  %209 = load i32, i32* %55, align 4
  %210 = load i32, i32* %39, align 4
  %211 = load i32, i32* %39, align 4
  %212 = call i32 @DPADD_SB2_SH(i64 %206, i64 %207, i32 %208, i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* %57, align 4
  store i32 %213, i32* %40, align 4
  %214 = load i64, i64* %35, align 8
  %215 = load i64, i64* %36, align 8
  %216 = load i32, i32* %54, align 4
  %217 = load i32, i32* %55, align 4
  %218 = load i32, i32* %40, align 4
  %219 = load i32, i32* %40, align 4
  %220 = call i32 @DPADD_SB2_SH(i64 %214, i64 %215, i32 %216, i32 %217, i32 %218, i32 %219)
  %221 = load i32, i32* %57, align 4
  store i32 %221, i32* %52, align 4
  %222 = load i64, i64* %49, align 8
  %223 = load i64, i64* %50, align 8
  %224 = load i32, i32* %54, align 4
  %225 = load i32, i32* %55, align 4
  %226 = load i32, i32* %52, align 4
  %227 = load i32, i32* %52, align 4
  %228 = call i32 @DPADD_SB2_SH(i64 %222, i64 %223, i32 %224, i32 %225, i32 %226, i32 %227)
  %229 = load i32, i32* %57, align 4
  store i32 %229, i32* %41, align 4
  %230 = load i64, i64* %34, align 8
  %231 = load i64, i64* %37, align 8
  %232 = load i32, i32* %54, align 4
  %233 = load i32, i32* %55, align 4
  %234 = load i32, i32* %41, align 4
  %235 = load i32, i32* %41, align 4
  %236 = call i32 @DPADD_SB2_SH(i64 %230, i64 %231, i32 %232, i32 %233, i32 %234, i32 %235)
  %237 = load i32, i32* %57, align 4
  store i32 %237, i32* %42, align 4
  %238 = load i64, i64* %36, align 8
  %239 = load i64, i64* %38, align 8
  %240 = load i32, i32* %54, align 4
  %241 = load i32, i32* %55, align 4
  %242 = load i32, i32* %42, align 4
  %243 = load i32, i32* %42, align 4
  %244 = call i32 @DPADD_SB2_SH(i64 %238, i64 %239, i32 %240, i32 %241, i32 %242, i32 %243)
  %245 = load i32, i32* %57, align 4
  store i32 %245, i32* %53, align 4
  %246 = load i64, i64* %50, align 8
  %247 = load i64, i64* %51, align 8
  %248 = load i32, i32* %54, align 4
  %249 = load i32, i32* %55, align 4
  %250 = load i32, i32* %53, align 4
  %251 = load i32, i32* %53, align 4
  %252 = call i32 @DPADD_SB2_SH(i64 %246, i64 %247, i32 %248, i32 %249, i32 %250, i32 %251)
  %253 = load i32, i32* %25, align 4
  %254 = load i32, i32* %26, align 4
  %255 = load i32, i32* %27, align 4
  %256 = load i32, i32* %28, align 4
  %257 = load i32, i32* %39, align 4
  %258 = load i32, i32* %40, align 4
  %259 = load i32, i32* %41, align 4
  %260 = load i32, i32* %42, align 4
  %261 = load i32, i32* %39, align 4
  %262 = load i32, i32* %40, align 4
  %263 = load i32, i32* %41, align 4
  %264 = load i32, i32* %42, align 4
  %265 = call i32 @HEVC_BI_RND_CLIP4(i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259, i32 %260, i32 7, i32 %261, i32 %262, i32 %263, i32 %264)
  %266 = load i32, i32* %29, align 4
  %267 = load i32, i32* %30, align 4
  %268 = load i32, i32* %52, align 4
  %269 = load i32, i32* %53, align 4
  %270 = load i32, i32* %52, align 4
  %271 = load i32, i32* %53, align 4
  %272 = call i32 @HEVC_BI_RND_CLIP2(i32 %266, i32 %267, i32 %268, i32 %269, i32 7, i32 %270, i32 %271)
  %273 = load i32, i32* %40, align 4
  %274 = load i32, i32* %39, align 4
  %275 = load i32, i32* %42, align 4
  %276 = load i32, i32* %41, align 4
  %277 = load i32, i32* %39, align 4
  %278 = load i32, i32* %40, align 4
  %279 = call i32 @PCKEV_B2_SH(i32 %273, i32 %274, i32 %275, i32 %276, i32 %277, i32 %278)
  %280 = load i32, i32* %53, align 4
  %281 = sext i32 %280 to i64
  %282 = load i32, i32* %52, align 4
  %283 = sext i32 %282 to i64
  %284 = call i64 @__msa_pckev_b(i64 %281, i64 %283)
  %285 = trunc i64 %284 to i32
  store i32 %285, i32* %52, align 4
  %286 = load i32, i32* %39, align 4
  %287 = load i32, i32* %40, align 4
  %288 = load i32*, i32** %13, align 8
  %289 = load i32, i32* %14, align 4
  %290 = call i32 @ST_D4(i32 %286, i32 %287, i32 0, i32 1, i32 0, i32 1, i32* %288, i32 %289)
  %291 = load i32, i32* %52, align 4
  %292 = load i32*, i32** %13, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 8
  %294 = load i32, i32* %14, align 4
  %295 = call i32 @ST_W4(i32 %291, i32 0, i32 1, i32 2, i32 3, i32* %293, i32 %294)
  %296 = load i32, i32* %14, align 4
  %297 = mul nsw i32 4, %296
  %298 = load i32*, i32** %13, align 8
  %299 = sext i32 %297 to i64
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  store i32* %300, i32** %13, align 8
  %301 = load i64, i64* %24, align 8
  store i64 %301, i64* %20, align 8
  %302 = load i64, i64* %37, align 8
  store i64 %302, i64* %33, align 8
  %303 = load i64, i64* %38, align 8
  store i64 %303, i64* %35, align 8
  %304 = load i64, i64* %51, align 8
  store i64 %304, i64* %49, align 8
  br label %109

305:                                              ; preds = %109
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVL_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP2(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
