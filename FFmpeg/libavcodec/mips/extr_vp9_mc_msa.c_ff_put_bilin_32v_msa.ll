; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_put_bilin_32v_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_put_bilin_32v_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vp9_bilinear_filters_msa = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_bilin_32v_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %41 = load i32**, i32*** @vp9_bilinear_filters_msa, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %41, i64 %44
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %16, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = call i32 @LD_SH(i32* %47)
  store i32 %48, i32* %40, align 4
  %49 = load i32, i32* %40, align 4
  %50 = call i64 @__msa_splati_h(i32 %49, i32 0)
  store i64 %50, i64* %35, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = call i64 @LD_UB(i32* %51)
  store i64 %52, i64* %17, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 16
  %55 = call i64 @LD_UB(i32* %54)
  store i64 %55, i64* %22, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %10, align 8
  %60 = load i32, i32* %12, align 4
  %61 = ashr i32 %60, 2
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %66, %7
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %15, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %66, label %312

66:                                               ; preds = %62
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* %19, align 8
  %71 = load i64, i64* %20, align 8
  %72 = load i64, i64* %21, align 8
  %73 = call i32 @LD_UB4(i32* %67, i32 %68, i64 %69, i64 %70, i64 %71, i64 %72)
  %74 = load i64, i64* %18, align 8
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* %19, align 8
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* %27, align 8
  %79 = load i64, i64* %29, align 8
  %80 = call i32 @ILVR_B2_UB(i64 %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79)
  %81 = load i64, i64* %18, align 8
  %82 = load i64, i64* %17, align 8
  %83 = load i64, i64* %19, align 8
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* %28, align 8
  %86 = load i64, i64* %30, align 8
  %87 = call i32 @ILVL_B2_UB(i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86)
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 16
  %90 = load i32, i32* %11, align 4
  %91 = load i64, i64* %23, align 8
  %92 = load i64, i64* %24, align 8
  %93 = load i64, i64* %25, align 8
  %94 = load i64, i64* %26, align 8
  %95 = call i32 @LD_UB4(i32* %89, i32 %90, i64 %91, i64 %92, i64 %93, i64 %94)
  %96 = load i32, i32* %11, align 4
  %97 = mul nsw i32 4, %96
  %98 = load i32*, i32** %10, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %10, align 8
  %101 = load i64, i64* %27, align 8
  %102 = load i64, i64* %28, align 8
  %103 = load i64, i64* %35, align 8
  %104 = load i64, i64* %35, align 8
  %105 = load i32, i32* %36, align 4
  %106 = load i32, i32* %37, align 4
  %107 = call i32 @DOTP_UB2_UH(i64 %101, i64 %102, i64 %103, i64 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %36, align 4
  %109 = load i32, i32* %37, align 4
  %110 = call i32 @SRARI_H2_UH(i32 %108, i32 %109, i32 7)
  %111 = load i32, i32* %36, align 4
  %112 = load i32, i32* %37, align 4
  %113 = call i32 @SAT_UH2_UH(i32 %111, i32 %112, i32 7)
  %114 = load i32, i32* %36, align 4
  %115 = load i32, i32* %37, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = call i32 @PCKEV_ST_SB(i32 %114, i32 %115, i32* %116)
  %118 = load i64, i64* %29, align 8
  %119 = load i64, i64* %30, align 8
  %120 = load i64, i64* %35, align 8
  %121 = load i64, i64* %35, align 8
  %122 = load i32, i32* %38, align 4
  %123 = load i32, i32* %39, align 4
  %124 = call i32 @DOTP_UB2_UH(i64 %118, i64 %119, i64 %120, i64 %121, i32 %122, i32 %123)
  %125 = load i32, i32* %38, align 4
  %126 = load i32, i32* %39, align 4
  %127 = call i32 @SRARI_H2_UH(i32 %125, i32 %126, i32 7)
  %128 = load i32, i32* %38, align 4
  %129 = load i32, i32* %39, align 4
  %130 = call i32 @SAT_UH2_UH(i32 %128, i32 %129, i32 7)
  %131 = load i32, i32* %38, align 4
  %132 = load i32, i32* %39, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = call i32 @PCKEV_ST_SB(i32 %131, i32 %132, i32* %136)
  %138 = load i64, i64* %20, align 8
  %139 = load i64, i64* %19, align 8
  %140 = load i64, i64* %21, align 8
  %141 = load i64, i64* %20, align 8
  %142 = load i64, i64* %31, align 8
  %143 = load i64, i64* %33, align 8
  %144 = call i32 @ILVR_B2_UB(i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143)
  %145 = load i64, i64* %20, align 8
  %146 = load i64, i64* %19, align 8
  %147 = load i64, i64* %21, align 8
  %148 = load i64, i64* %20, align 8
  %149 = load i64, i64* %32, align 8
  %150 = load i64, i64* %34, align 8
  %151 = call i32 @ILVL_B2_UB(i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150)
  %152 = load i64, i64* %31, align 8
  %153 = load i64, i64* %32, align 8
  %154 = load i64, i64* %35, align 8
  %155 = load i64, i64* %35, align 8
  %156 = load i32, i32* %36, align 4
  %157 = load i32, i32* %37, align 4
  %158 = call i32 @DOTP_UB2_UH(i64 %152, i64 %153, i64 %154, i64 %155, i32 %156, i32 %157)
  %159 = load i32, i32* %36, align 4
  %160 = load i32, i32* %37, align 4
  %161 = call i32 @SRARI_H2_UH(i32 %159, i32 %160, i32 7)
  %162 = load i32, i32* %36, align 4
  %163 = load i32, i32* %37, align 4
  %164 = call i32 @SAT_UH2_UH(i32 %162, i32 %163, i32 7)
  %165 = load i32, i32* %36, align 4
  %166 = load i32, i32* %37, align 4
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %9, align 4
  %169 = mul nsw i32 2, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = call i32 @PCKEV_ST_SB(i32 %165, i32 %166, i32* %171)
  %173 = load i64, i64* %33, align 8
  %174 = load i64, i64* %34, align 8
  %175 = load i64, i64* %35, align 8
  %176 = load i64, i64* %35, align 8
  %177 = load i32, i32* %38, align 4
  %178 = load i32, i32* %39, align 4
  %179 = call i32 @DOTP_UB2_UH(i64 %173, i64 %174, i64 %175, i64 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %38, align 4
  %181 = load i32, i32* %39, align 4
  %182 = call i32 @SRARI_H2_UH(i32 %180, i32 %181, i32 7)
  %183 = load i32, i32* %38, align 4
  %184 = load i32, i32* %39, align 4
  %185 = call i32 @SAT_UH2_UH(i32 %183, i32 %184, i32 7)
  %186 = load i32, i32* %38, align 4
  %187 = load i32, i32* %39, align 4
  %188 = load i32*, i32** %8, align 8
  %189 = load i32, i32* %9, align 4
  %190 = mul nsw i32 3, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  %193 = call i32 @PCKEV_ST_SB(i32 %186, i32 %187, i32* %192)
  %194 = load i64, i64* %23, align 8
  %195 = load i64, i64* %22, align 8
  %196 = load i64, i64* %24, align 8
  %197 = load i64, i64* %23, align 8
  %198 = load i64, i64* %27, align 8
  %199 = load i64, i64* %29, align 8
  %200 = call i32 @ILVR_B2_UB(i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199)
  %201 = load i64, i64* %23, align 8
  %202 = load i64, i64* %22, align 8
  %203 = load i64, i64* %24, align 8
  %204 = load i64, i64* %23, align 8
  %205 = load i64, i64* %28, align 8
  %206 = load i64, i64* %30, align 8
  %207 = call i32 @ILVL_B2_UB(i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206)
  %208 = load i64, i64* %27, align 8
  %209 = load i64, i64* %28, align 8
  %210 = load i64, i64* %35, align 8
  %211 = load i64, i64* %35, align 8
  %212 = load i32, i32* %36, align 4
  %213 = load i32, i32* %37, align 4
  %214 = call i32 @DOTP_UB2_UH(i64 %208, i64 %209, i64 %210, i64 %211, i32 %212, i32 %213)
  %215 = load i32, i32* %36, align 4
  %216 = load i32, i32* %37, align 4
  %217 = call i32 @SRARI_H2_UH(i32 %215, i32 %216, i32 7)
  %218 = load i32, i32* %36, align 4
  %219 = load i32, i32* %37, align 4
  %220 = call i32 @SAT_UH2_UH(i32 %218, i32 %219, i32 7)
  %221 = load i32, i32* %36, align 4
  %222 = load i32, i32* %37, align 4
  %223 = load i32*, i32** %8, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 16
  %225 = call i32 @PCKEV_ST_SB(i32 %221, i32 %222, i32* %224)
  %226 = load i64, i64* %29, align 8
  %227 = load i64, i64* %30, align 8
  %228 = load i64, i64* %35, align 8
  %229 = load i64, i64* %35, align 8
  %230 = load i32, i32* %38, align 4
  %231 = load i32, i32* %39, align 4
  %232 = call i32 @DOTP_UB2_UH(i64 %226, i64 %227, i64 %228, i64 %229, i32 %230, i32 %231)
  %233 = load i32, i32* %38, align 4
  %234 = load i32, i32* %39, align 4
  %235 = call i32 @SRARI_H2_UH(i32 %233, i32 %234, i32 7)
  %236 = load i32, i32* %38, align 4
  %237 = load i32, i32* %39, align 4
  %238 = call i32 @SAT_UH2_UH(i32 %236, i32 %237, i32 7)
  %239 = load i32, i32* %38, align 4
  %240 = load i32, i32* %39, align 4
  %241 = load i32*, i32** %8, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 16
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = call i32 @PCKEV_ST_SB(i32 %239, i32 %240, i32* %245)
  %247 = load i64, i64* %25, align 8
  %248 = load i64, i64* %24, align 8
  %249 = load i64, i64* %26, align 8
  %250 = load i64, i64* %25, align 8
  %251 = load i64, i64* %31, align 8
  %252 = load i64, i64* %33, align 8
  %253 = call i32 @ILVR_B2_UB(i64 %247, i64 %248, i64 %249, i64 %250, i64 %251, i64 %252)
  %254 = load i64, i64* %25, align 8
  %255 = load i64, i64* %24, align 8
  %256 = load i64, i64* %26, align 8
  %257 = load i64, i64* %25, align 8
  %258 = load i64, i64* %32, align 8
  %259 = load i64, i64* %34, align 8
  %260 = call i32 @ILVL_B2_UB(i64 %254, i64 %255, i64 %256, i64 %257, i64 %258, i64 %259)
  %261 = load i64, i64* %31, align 8
  %262 = load i64, i64* %32, align 8
  %263 = load i64, i64* %35, align 8
  %264 = load i64, i64* %35, align 8
  %265 = load i32, i32* %36, align 4
  %266 = load i32, i32* %37, align 4
  %267 = call i32 @DOTP_UB2_UH(i64 %261, i64 %262, i64 %263, i64 %264, i32 %265, i32 %266)
  %268 = load i32, i32* %36, align 4
  %269 = load i32, i32* %37, align 4
  %270 = call i32 @SRARI_H2_UH(i32 %268, i32 %269, i32 7)
  %271 = load i32, i32* %36, align 4
  %272 = load i32, i32* %37, align 4
  %273 = call i32 @SAT_UH2_UH(i32 %271, i32 %272, i32 7)
  %274 = load i32, i32* %36, align 4
  %275 = load i32, i32* %37, align 4
  %276 = load i32*, i32** %8, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 16
  %278 = load i32, i32* %9, align 4
  %279 = mul nsw i32 2, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %277, i64 %280
  %282 = call i32 @PCKEV_ST_SB(i32 %274, i32 %275, i32* %281)
  %283 = load i64, i64* %33, align 8
  %284 = load i64, i64* %34, align 8
  %285 = load i64, i64* %35, align 8
  %286 = load i64, i64* %35, align 8
  %287 = load i32, i32* %38, align 4
  %288 = load i32, i32* %39, align 4
  %289 = call i32 @DOTP_UB2_UH(i64 %283, i64 %284, i64 %285, i64 %286, i32 %287, i32 %288)
  %290 = load i32, i32* %38, align 4
  %291 = load i32, i32* %39, align 4
  %292 = call i32 @SRARI_H2_UH(i32 %290, i32 %291, i32 7)
  %293 = load i32, i32* %38, align 4
  %294 = load i32, i32* %39, align 4
  %295 = call i32 @SAT_UH2_UH(i32 %293, i32 %294, i32 7)
  %296 = load i32, i32* %38, align 4
  %297 = load i32, i32* %39, align 4
  %298 = load i32*, i32** %8, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 16
  %300 = load i32, i32* %9, align 4
  %301 = mul nsw i32 3, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %299, i64 %302
  %304 = call i32 @PCKEV_ST_SB(i32 %296, i32 %297, i32* %303)
  %305 = load i32, i32* %9, align 4
  %306 = mul nsw i32 4, %305
  %307 = load i32*, i32** %8, align 8
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  store i32* %309, i32** %8, align 8
  %310 = load i64, i64* %21, align 8
  store i64 %310, i64* %17, align 8
  %311 = load i64, i64* %26, align 8
  store i64 %311, i64* %22, align 8
  br label %62

312:                                              ; preds = %62
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

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
