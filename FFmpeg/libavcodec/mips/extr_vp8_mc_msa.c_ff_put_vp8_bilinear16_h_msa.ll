; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_bilinear16_h_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_bilinear16_h_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bilinear_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_bilinear16_h_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
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
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %44 = load i32**, i32*** @bilinear_filters_msa, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %44, i64 %47
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %16, align 8
  %50 = load i32*, i32** @mc_filt_mask_arr, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = call i32 @LD_SB(i32* %51)
  store i32 %52, i32* %25, align 4
  %53 = load i32, i32* %12, align 4
  %54 = ashr i32 %53, 2
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %15, align 4
  %56 = load i32*, i32** %16, align 8
  %57 = call i64 @LD_UH(i32* %56)
  store i64 %57, i64* %43, align 8
  %58 = load i64, i64* %43, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i64 @__msa_splati_h(i32 %59, i32 0)
  store i64 %60, i64* %26, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %21, align 4
  %66 = load i32, i32* %23, align 4
  %67 = call i32 @LD_SB4(i32* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* %24, align 4
  %75 = call i32 @LD_SB4(i32* %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = mul nsw i32 4, %76
  %78 = load i32*, i32** %10, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %10, align 8
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %25, align 4
  %86 = load i32, i32* %25, align 4
  %87 = load i64, i64* %27, align 8
  %88 = load i64, i64* %28, align 8
  %89 = call i32 @VSHF_B2_UB(i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i64 %87, i64 %88)
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %25, align 4
  %95 = load i32, i32* %25, align 4
  %96 = load i64, i64* %29, align 8
  %97 = load i64, i64* %30, align 8
  %98 = call i32 @VSHF_B2_UB(i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i64 %96, i64 %97)
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* %25, align 4
  %104 = load i32, i32* %25, align 4
  %105 = load i64, i64* %31, align 8
  %106 = load i64, i64* %32, align 8
  %107 = call i32 @VSHF_B2_UB(i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i64 %105, i64 %106)
  %108 = load i32, i32* %23, align 4
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %24, align 4
  %111 = load i32, i32* %24, align 4
  %112 = load i32, i32* %25, align 4
  %113 = load i32, i32* %25, align 4
  %114 = load i64, i64* %33, align 8
  %115 = load i64, i64* %34, align 8
  %116 = call i32 @VSHF_B2_UB(i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i64 %114, i64 %115)
  %117 = load i64, i64* %27, align 8
  %118 = load i64, i64* %28, align 8
  %119 = load i64, i64* %29, align 8
  %120 = load i64, i64* %30, align 8
  %121 = load i64, i64* %26, align 8
  %122 = load i64, i64* %26, align 8
  %123 = load i64, i64* %26, align 8
  %124 = load i64, i64* %26, align 8
  %125 = load i64, i64* %35, align 8
  %126 = load i64, i64* %36, align 8
  %127 = load i64, i64* %37, align 8
  %128 = load i64, i64* %38, align 8
  %129 = call i32 @DOTP_UB4_UH(i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128)
  %130 = load i64, i64* %31, align 8
  %131 = load i64, i64* %32, align 8
  %132 = load i64, i64* %33, align 8
  %133 = load i64, i64* %34, align 8
  %134 = load i64, i64* %26, align 8
  %135 = load i64, i64* %26, align 8
  %136 = load i64, i64* %26, align 8
  %137 = load i64, i64* %26, align 8
  %138 = load i64, i64* %39, align 8
  %139 = load i64, i64* %40, align 8
  %140 = load i64, i64* %41, align 8
  %141 = load i64, i64* %42, align 8
  %142 = call i32 @DOTP_UB4_UH(i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141)
  %143 = load i64, i64* %35, align 8
  %144 = load i64, i64* %36, align 8
  %145 = load i64, i64* %37, align 8
  %146 = load i64, i64* %38, align 8
  %147 = call i32 @SRARI_H4_UH(i64 %143, i64 %144, i64 %145, i64 %146, i32 7)
  %148 = load i64, i64* %39, align 8
  %149 = load i64, i64* %40, align 8
  %150 = load i64, i64* %41, align 8
  %151 = load i64, i64* %42, align 8
  %152 = call i32 @SRARI_H4_UH(i64 %148, i64 %149, i64 %150, i64 %151, i32 7)
  %153 = load i64, i64* %35, align 8
  %154 = load i64, i64* %36, align 8
  %155 = load i32*, i32** %8, align 8
  %156 = call i32 @PCKEV_ST_SB(i64 %153, i64 %154, i32* %155)
  %157 = load i32, i32* %9, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32* %160, i32** %8, align 8
  %161 = load i64, i64* %37, align 8
  %162 = load i64, i64* %38, align 8
  %163 = load i32*, i32** %8, align 8
  %164 = call i32 @PCKEV_ST_SB(i64 %161, i64 %162, i32* %163)
  %165 = load i32, i32* %9, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %8, align 8
  %169 = load i64, i64* %39, align 8
  %170 = load i64, i64* %40, align 8
  %171 = load i32*, i32** %8, align 8
  %172 = call i32 @PCKEV_ST_SB(i64 %169, i64 %170, i32* %171)
  %173 = load i32, i32* %9, align 4
  %174 = load i32*, i32** %8, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32* %176, i32** %8, align 8
  %177 = load i64, i64* %41, align 8
  %178 = load i64, i64* %42, align 8
  %179 = load i32*, i32** %8, align 8
  %180 = call i32 @PCKEV_ST_SB(i64 %177, i64 %178, i32* %179)
  %181 = load i32, i32* %9, align 4
  %182 = load i32*, i32** %8, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %8, align 8
  br label %185

185:                                              ; preds = %189, %7
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %15, align 4
  %188 = icmp ne i32 %186, 0
  br i1 %188, label %189, label %314

189:                                              ; preds = %185
  %190 = load i32*, i32** %10, align 8
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %21, align 4
  %195 = load i32, i32* %23, align 4
  %196 = call i32 @LD_SB4(i32* %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195)
  %197 = load i32*, i32** %10, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 8
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %20, align 4
  %202 = load i32, i32* %22, align 4
  %203 = load i32, i32* %24, align 4
  %204 = call i32 @LD_SB4(i32* %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203)
  %205 = load i32, i32* %11, align 4
  %206 = mul nsw i32 4, %205
  %207 = load i32*, i32** %10, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  store i32* %209, i32** %10, align 8
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* %17, align 4
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* %18, align 4
  %214 = load i32, i32* %25, align 4
  %215 = load i32, i32* %25, align 4
  %216 = load i64, i64* %27, align 8
  %217 = load i64, i64* %28, align 8
  %218 = call i32 @VSHF_B2_UB(i32 %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215, i64 %216, i64 %217)
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %19, align 4
  %221 = load i32, i32* %20, align 4
  %222 = load i32, i32* %20, align 4
  %223 = load i32, i32* %25, align 4
  %224 = load i32, i32* %25, align 4
  %225 = load i64, i64* %29, align 8
  %226 = load i64, i64* %30, align 8
  %227 = call i32 @VSHF_B2_UB(i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, i64 %225, i64 %226)
  %228 = load i32, i32* %21, align 4
  %229 = load i32, i32* %21, align 4
  %230 = load i32, i32* %22, align 4
  %231 = load i32, i32* %22, align 4
  %232 = load i32, i32* %25, align 4
  %233 = load i32, i32* %25, align 4
  %234 = load i64, i64* %31, align 8
  %235 = load i64, i64* %32, align 8
  %236 = call i32 @VSHF_B2_UB(i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i64 %234, i64 %235)
  %237 = load i32, i32* %23, align 4
  %238 = load i32, i32* %23, align 4
  %239 = load i32, i32* %24, align 4
  %240 = load i32, i32* %24, align 4
  %241 = load i32, i32* %25, align 4
  %242 = load i32, i32* %25, align 4
  %243 = load i64, i64* %33, align 8
  %244 = load i64, i64* %34, align 8
  %245 = call i32 @VSHF_B2_UB(i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i64 %243, i64 %244)
  %246 = load i64, i64* %27, align 8
  %247 = load i64, i64* %28, align 8
  %248 = load i64, i64* %29, align 8
  %249 = load i64, i64* %30, align 8
  %250 = load i64, i64* %26, align 8
  %251 = load i64, i64* %26, align 8
  %252 = load i64, i64* %26, align 8
  %253 = load i64, i64* %26, align 8
  %254 = load i64, i64* %35, align 8
  %255 = load i64, i64* %36, align 8
  %256 = load i64, i64* %37, align 8
  %257 = load i64, i64* %38, align 8
  %258 = call i32 @DOTP_UB4_UH(i64 %246, i64 %247, i64 %248, i64 %249, i64 %250, i64 %251, i64 %252, i64 %253, i64 %254, i64 %255, i64 %256, i64 %257)
  %259 = load i64, i64* %31, align 8
  %260 = load i64, i64* %32, align 8
  %261 = load i64, i64* %33, align 8
  %262 = load i64, i64* %34, align 8
  %263 = load i64, i64* %26, align 8
  %264 = load i64, i64* %26, align 8
  %265 = load i64, i64* %26, align 8
  %266 = load i64, i64* %26, align 8
  %267 = load i64, i64* %39, align 8
  %268 = load i64, i64* %40, align 8
  %269 = load i64, i64* %41, align 8
  %270 = load i64, i64* %42, align 8
  %271 = call i32 @DOTP_UB4_UH(i64 %259, i64 %260, i64 %261, i64 %262, i64 %263, i64 %264, i64 %265, i64 %266, i64 %267, i64 %268, i64 %269, i64 %270)
  %272 = load i64, i64* %35, align 8
  %273 = load i64, i64* %36, align 8
  %274 = load i64, i64* %37, align 8
  %275 = load i64, i64* %38, align 8
  %276 = call i32 @SRARI_H4_UH(i64 %272, i64 %273, i64 %274, i64 %275, i32 7)
  %277 = load i64, i64* %39, align 8
  %278 = load i64, i64* %40, align 8
  %279 = load i64, i64* %41, align 8
  %280 = load i64, i64* %42, align 8
  %281 = call i32 @SRARI_H4_UH(i64 %277, i64 %278, i64 %279, i64 %280, i32 7)
  %282 = load i64, i64* %35, align 8
  %283 = load i64, i64* %36, align 8
  %284 = load i32*, i32** %8, align 8
  %285 = call i32 @PCKEV_ST_SB(i64 %282, i64 %283, i32* %284)
  %286 = load i32, i32* %9, align 4
  %287 = load i32*, i32** %8, align 8
  %288 = sext i32 %286 to i64
  %289 = getelementptr inbounds i32, i32* %287, i64 %288
  store i32* %289, i32** %8, align 8
  %290 = load i64, i64* %37, align 8
  %291 = load i64, i64* %38, align 8
  %292 = load i32*, i32** %8, align 8
  %293 = call i32 @PCKEV_ST_SB(i64 %290, i64 %291, i32* %292)
  %294 = load i32, i32* %9, align 4
  %295 = load i32*, i32** %8, align 8
  %296 = sext i32 %294 to i64
  %297 = getelementptr inbounds i32, i32* %295, i64 %296
  store i32* %297, i32** %8, align 8
  %298 = load i64, i64* %39, align 8
  %299 = load i64, i64* %40, align 8
  %300 = load i32*, i32** %8, align 8
  %301 = call i32 @PCKEV_ST_SB(i64 %298, i64 %299, i32* %300)
  %302 = load i32, i32* %9, align 4
  %303 = load i32*, i32** %8, align 8
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds i32, i32* %303, i64 %304
  store i32* %305, i32** %8, align 8
  %306 = load i64, i64* %41, align 8
  %307 = load i64, i64* %42, align 8
  %308 = load i32*, i32** %8, align 8
  %309 = call i32 @PCKEV_ST_SB(i64 %306, i64 %307, i32* %308)
  %310 = load i32, i32* %9, align 4
  %311 = load i32*, i32** %8, align 8
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds i32, i32* %311, i64 %312
  store i32* %313, i32** %8, align 8
  br label %185

314:                                              ; preds = %185
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i64 @LD_UH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_UB(i32, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @DOTP_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @PCKEV_ST_SB(i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
