; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_put_bilin_64v_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_put_bilin_64v_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vp9_bilinear_filters_msa = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_bilin_64v_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
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
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %47 = load i32**, i32*** @vp9_bilinear_filters_msa, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %47, i64 %50
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %16, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = call i32 @LD_SH(i32* %53)
  store i32 %54, i32* %46, align 4
  %55 = load i32, i32* %46, align 4
  %56 = call i64 @__msa_splati_h(i32 %55, i32 0)
  store i64 %56, i64* %37, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i64, i64* %17, align 8
  %59 = load i64, i64* %20, align 8
  %60 = load i64, i64* %23, align 8
  %61 = load i64, i64* %26, align 8
  %62 = call i32 @LD_UB4(i32* %57, i32 16, i64 %58, i64 %59, i64 %60, i64 %61)
  %63 = load i32, i32* %11, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = ashr i32 %67, 1
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %73, %7
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %15, align 4
  %72 = icmp ne i32 %70, 0
  br i1 %72, label %73, label %321

73:                                               ; preds = %69
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i64, i64* %18, align 8
  %77 = load i64, i64* %19, align 8
  %78 = call i32 @LD_UB2(i32* %74, i32 %75, i64 %76, i64 %77)
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 16
  %81 = load i32, i32* %11, align 4
  %82 = load i64, i64* %21, align 8
  %83 = load i64, i64* %22, align 8
  %84 = call i32 @LD_UB2(i32* %80, i32 %81, i64 %82, i64 %83)
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 32
  %87 = load i32, i32* %11, align 4
  %88 = load i64, i64* %24, align 8
  %89 = load i64, i64* %25, align 8
  %90 = call i32 @LD_UB2(i32* %86, i32 %87, i64 %88, i64 %89)
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 48
  %93 = load i32, i32* %11, align 4
  %94 = load i64, i64* %27, align 8
  %95 = load i64, i64* %28, align 8
  %96 = call i32 @LD_UB2(i32* %92, i32 %93, i64 %94, i64 %95)
  %97 = load i32, i32* %11, align 4
  %98 = mul nsw i32 2, %97
  %99 = load i32*, i32** %10, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %10, align 8
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* %17, align 8
  %104 = load i64, i64* %19, align 8
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* %29, align 8
  %107 = load i64, i64* %31, align 8
  %108 = call i32 @ILVR_B2_UB(i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107)
  %109 = load i64, i64* %18, align 8
  %110 = load i64, i64* %17, align 8
  %111 = load i64, i64* %19, align 8
  %112 = load i64, i64* %18, align 8
  %113 = load i64, i64* %30, align 8
  %114 = load i64, i64* %32, align 8
  %115 = call i32 @ILVL_B2_UB(i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114)
  %116 = load i64, i64* %29, align 8
  %117 = load i64, i64* %30, align 8
  %118 = load i64, i64* %37, align 8
  %119 = load i64, i64* %37, align 8
  %120 = load i32, i32* %38, align 4
  %121 = load i32, i32* %39, align 4
  %122 = call i32 @DOTP_UB2_UH(i64 %116, i64 %117, i64 %118, i64 %119, i32 %120, i32 %121)
  %123 = load i32, i32* %38, align 4
  %124 = load i32, i32* %39, align 4
  %125 = call i32 @SRARI_H2_UH(i32 %123, i32 %124, i32 7)
  %126 = load i32, i32* %38, align 4
  %127 = load i32, i32* %39, align 4
  %128 = call i32 @SAT_UH2_UH(i32 %126, i32 %127, i32 7)
  %129 = load i32, i32* %38, align 4
  %130 = load i32, i32* %39, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = call i32 @PCKEV_ST_SB(i32 %129, i32 %130, i32* %131)
  %133 = load i64, i64* %31, align 8
  %134 = load i64, i64* %32, align 8
  %135 = load i64, i64* %37, align 8
  %136 = load i64, i64* %37, align 8
  %137 = load i32, i32* %40, align 4
  %138 = load i32, i32* %41, align 4
  %139 = call i32 @DOTP_UB2_UH(i64 %133, i64 %134, i64 %135, i64 %136, i32 %137, i32 %138)
  %140 = load i32, i32* %40, align 4
  %141 = load i32, i32* %41, align 4
  %142 = call i32 @SRARI_H2_UH(i32 %140, i32 %141, i32 7)
  %143 = load i32, i32* %40, align 4
  %144 = load i32, i32* %41, align 4
  %145 = call i32 @SAT_UH2_UH(i32 %143, i32 %144, i32 7)
  %146 = load i32, i32* %40, align 4
  %147 = load i32, i32* %41, align 4
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = call i32 @PCKEV_ST_SB(i32 %146, i32 %147, i32* %151)
  %153 = load i64, i64* %21, align 8
  %154 = load i64, i64* %20, align 8
  %155 = load i64, i64* %22, align 8
  %156 = load i64, i64* %21, align 8
  %157 = load i64, i64* %33, align 8
  %158 = load i64, i64* %35, align 8
  %159 = call i32 @ILVR_B2_UB(i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158)
  %160 = load i64, i64* %21, align 8
  %161 = load i64, i64* %20, align 8
  %162 = load i64, i64* %22, align 8
  %163 = load i64, i64* %21, align 8
  %164 = load i64, i64* %34, align 8
  %165 = load i64, i64* %36, align 8
  %166 = call i32 @ILVL_B2_UB(i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165)
  %167 = load i64, i64* %33, align 8
  %168 = load i64, i64* %34, align 8
  %169 = load i64, i64* %37, align 8
  %170 = load i64, i64* %37, align 8
  %171 = load i32, i32* %42, align 4
  %172 = load i32, i32* %43, align 4
  %173 = call i32 @DOTP_UB2_UH(i64 %167, i64 %168, i64 %169, i64 %170, i32 %171, i32 %172)
  %174 = load i32, i32* %42, align 4
  %175 = load i32, i32* %43, align 4
  %176 = call i32 @SRARI_H2_UH(i32 %174, i32 %175, i32 7)
  %177 = load i32, i32* %42, align 4
  %178 = load i32, i32* %43, align 4
  %179 = call i32 @SAT_UH2_UH(i32 %177, i32 %178, i32 7)
  %180 = load i32, i32* %42, align 4
  %181 = load i32, i32* %43, align 4
  %182 = load i32*, i32** %8, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 16
  %184 = call i32 @PCKEV_ST_SB(i32 %180, i32 %181, i32* %183)
  %185 = load i64, i64* %35, align 8
  %186 = load i64, i64* %36, align 8
  %187 = load i64, i64* %37, align 8
  %188 = load i64, i64* %37, align 8
  %189 = load i32, i32* %44, align 4
  %190 = load i32, i32* %45, align 4
  %191 = call i32 @DOTP_UB2_UH(i64 %185, i64 %186, i64 %187, i64 %188, i32 %189, i32 %190)
  %192 = load i32, i32* %44, align 4
  %193 = load i32, i32* %45, align 4
  %194 = call i32 @SRARI_H2_UH(i32 %192, i32 %193, i32 7)
  %195 = load i32, i32* %44, align 4
  %196 = load i32, i32* %45, align 4
  %197 = call i32 @SAT_UH2_UH(i32 %195, i32 %196, i32 7)
  %198 = load i32, i32* %44, align 4
  %199 = load i32, i32* %45, align 4
  %200 = load i32*, i32** %8, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 16
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = call i32 @PCKEV_ST_SB(i32 %198, i32 %199, i32* %204)
  %206 = load i64, i64* %24, align 8
  %207 = load i64, i64* %23, align 8
  %208 = load i64, i64* %25, align 8
  %209 = load i64, i64* %24, align 8
  %210 = load i64, i64* %29, align 8
  %211 = load i64, i64* %31, align 8
  %212 = call i32 @ILVR_B2_UB(i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211)
  %213 = load i64, i64* %24, align 8
  %214 = load i64, i64* %23, align 8
  %215 = load i64, i64* %25, align 8
  %216 = load i64, i64* %24, align 8
  %217 = load i64, i64* %30, align 8
  %218 = load i64, i64* %32, align 8
  %219 = call i32 @ILVL_B2_UB(i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218)
  %220 = load i64, i64* %29, align 8
  %221 = load i64, i64* %30, align 8
  %222 = load i64, i64* %37, align 8
  %223 = load i64, i64* %37, align 8
  %224 = load i32, i32* %38, align 4
  %225 = load i32, i32* %39, align 4
  %226 = call i32 @DOTP_UB2_UH(i64 %220, i64 %221, i64 %222, i64 %223, i32 %224, i32 %225)
  %227 = load i32, i32* %38, align 4
  %228 = load i32, i32* %39, align 4
  %229 = call i32 @SRARI_H2_UH(i32 %227, i32 %228, i32 7)
  %230 = load i32, i32* %38, align 4
  %231 = load i32, i32* %39, align 4
  %232 = call i32 @SAT_UH2_UH(i32 %230, i32 %231, i32 7)
  %233 = load i32, i32* %38, align 4
  %234 = load i32, i32* %39, align 4
  %235 = load i32*, i32** %8, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 32
  %237 = call i32 @PCKEV_ST_SB(i32 %233, i32 %234, i32* %236)
  %238 = load i64, i64* %31, align 8
  %239 = load i64, i64* %32, align 8
  %240 = load i64, i64* %37, align 8
  %241 = load i64, i64* %37, align 8
  %242 = load i32, i32* %40, align 4
  %243 = load i32, i32* %41, align 4
  %244 = call i32 @DOTP_UB2_UH(i64 %238, i64 %239, i64 %240, i64 %241, i32 %242, i32 %243)
  %245 = load i32, i32* %40, align 4
  %246 = load i32, i32* %41, align 4
  %247 = call i32 @SRARI_H2_UH(i32 %245, i32 %246, i32 7)
  %248 = load i32, i32* %40, align 4
  %249 = load i32, i32* %41, align 4
  %250 = call i32 @SAT_UH2_UH(i32 %248, i32 %249, i32 7)
  %251 = load i32, i32* %40, align 4
  %252 = load i32, i32* %41, align 4
  %253 = load i32*, i32** %8, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 32
  %255 = load i32, i32* %9, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = call i32 @PCKEV_ST_SB(i32 %251, i32 %252, i32* %257)
  %259 = load i64, i64* %27, align 8
  %260 = load i64, i64* %26, align 8
  %261 = load i64, i64* %28, align 8
  %262 = load i64, i64* %27, align 8
  %263 = load i64, i64* %33, align 8
  %264 = load i64, i64* %35, align 8
  %265 = call i32 @ILVR_B2_UB(i64 %259, i64 %260, i64 %261, i64 %262, i64 %263, i64 %264)
  %266 = load i64, i64* %27, align 8
  %267 = load i64, i64* %26, align 8
  %268 = load i64, i64* %28, align 8
  %269 = load i64, i64* %27, align 8
  %270 = load i64, i64* %34, align 8
  %271 = load i64, i64* %36, align 8
  %272 = call i32 @ILVL_B2_UB(i64 %266, i64 %267, i64 %268, i64 %269, i64 %270, i64 %271)
  %273 = load i64, i64* %33, align 8
  %274 = load i64, i64* %34, align 8
  %275 = load i64, i64* %37, align 8
  %276 = load i64, i64* %37, align 8
  %277 = load i32, i32* %42, align 4
  %278 = load i32, i32* %43, align 4
  %279 = call i32 @DOTP_UB2_UH(i64 %273, i64 %274, i64 %275, i64 %276, i32 %277, i32 %278)
  %280 = load i32, i32* %42, align 4
  %281 = load i32, i32* %43, align 4
  %282 = call i32 @SRARI_H2_UH(i32 %280, i32 %281, i32 7)
  %283 = load i32, i32* %42, align 4
  %284 = load i32, i32* %43, align 4
  %285 = call i32 @SAT_UH2_UH(i32 %283, i32 %284, i32 7)
  %286 = load i32, i32* %42, align 4
  %287 = load i32, i32* %43, align 4
  %288 = load i32*, i32** %8, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 48
  %290 = call i32 @PCKEV_ST_SB(i32 %286, i32 %287, i32* %289)
  %291 = load i64, i64* %35, align 8
  %292 = load i64, i64* %36, align 8
  %293 = load i64, i64* %37, align 8
  %294 = load i64, i64* %37, align 8
  %295 = load i32, i32* %44, align 4
  %296 = load i32, i32* %45, align 4
  %297 = call i32 @DOTP_UB2_UH(i64 %291, i64 %292, i64 %293, i64 %294, i32 %295, i32 %296)
  %298 = load i32, i32* %44, align 4
  %299 = load i32, i32* %45, align 4
  %300 = call i32 @SRARI_H2_UH(i32 %298, i32 %299, i32 7)
  %301 = load i32, i32* %44, align 4
  %302 = load i32, i32* %45, align 4
  %303 = call i32 @SAT_UH2_UH(i32 %301, i32 %302, i32 7)
  %304 = load i32, i32* %44, align 4
  %305 = load i32, i32* %45, align 4
  %306 = load i32*, i32** %8, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 48
  %308 = load i32, i32* %9, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = call i32 @PCKEV_ST_SB(i32 %304, i32 %305, i32* %310)
  %312 = load i32, i32* %9, align 4
  %313 = mul nsw i32 2, %312
  %314 = load i32*, i32** %8, align 8
  %315 = sext i32 %313 to i64
  %316 = getelementptr inbounds i32, i32* %314, i64 %315
  store i32* %316, i32** %8, align 8
  %317 = load i64, i64* %19, align 8
  store i64 %317, i64* %17, align 8
  %318 = load i64, i64* %22, align 8
  store i64 %318, i64* %20, align 8
  %319 = load i64, i64* %25, align 8
  store i64 %319, i64* %23, align 8
  %320 = load i64, i64* %28, align 8
  store i64 %320, i64* %26, align 8
  br label %69

321:                                              ; preds = %69
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_UB2(i32*, i32, i64, i64) #1

declare dso_local i32 @ILVR_B2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVL_B2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DOTP_UB2_UH(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @SRARI_H2_UH(i32, i32, i32) #1

declare dso_local i32 @SAT_UH2_UH(i32, i32, i32) #1

declare dso_local i32 @PCKEV_ST_SB(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
