; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_avg_bilin_16hv_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_avg_bilin_16hv_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vp9_bilinear_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_bilin_16hv_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
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
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %42 = load i32**, i32*** @vp9_bilinear_filters_msa, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %42, i64 %45
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %16, align 8
  %48 = load i32**, i32*** @vp9_bilinear_filters_msa, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %48, i64 %51
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %17, align 8
  %54 = load i32*, i32** @mc_filt_mask_arr, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i32 @LD_SB(i32* %55)
  store i32 %56, i32* %26, align 4
  %57 = load i32*, i32** %16, align 8
  %58 = call i32 @LD_SH(i32* %57)
  store i32 %58, i32* %41, align 4
  %59 = load i32, i32* %41, align 4
  %60 = call i64 @__msa_splati_h(i32 %59, i32 0)
  store i64 %60, i64* %27, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = call i32 @LD_SH(i32* %61)
  store i32 %62, i32* %41, align 4
  %63 = load i32, i32* %41, align 4
  %64 = call i64 @__msa_splati_h(i32 %63, i32 0)
  store i64 %64, i64* %28, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %19, align 4
  %68 = call i32 @LD_SB2(i32* %65, i32 8, i32 %66, i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %10, align 8
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %26, align 4
  %76 = load i64, i64* %27, align 8
  %77 = call i32 @HORIZ_2TAP_FILT_UH(i32 %73, i32 %74, i32 %75, i64 %76, i32 7)
  store i32 %77, i32* %35, align 4
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %26, align 4
  %81 = load i64, i64* %27, align 8
  %82 = call i32 @HORIZ_2TAP_FILT_UH(i32 %78, i32 %79, i32 %80, i64 %81, i32 7)
  store i32 %82, i32* %37, align 4
  %83 = load i32, i32* %12, align 4
  %84 = ashr i32 %83, 2
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %89, %7
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %15, align 4
  %88 = icmp ne i32 %86, 0
  br i1 %88, label %89, label %273

89:                                               ; preds = %85
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %22, align 4
  %95 = load i32, i32* %24, align 4
  %96 = call i32 @LD_SB4(i32* %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %21, align 4
  %102 = load i32, i32* %23, align 4
  %103 = load i32, i32* %25, align 4
  %104 = call i32 @LD_SB4(i32* %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = mul nsw i32 4, %105
  %107 = load i32*, i32** %10, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %10, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i64, i64* %31, align 8
  %113 = load i64, i64* %32, align 8
  %114 = load i64, i64* %33, align 8
  %115 = load i64, i64* %34, align 8
  %116 = call i32 @LD_UB4(i32* %110, i32 %111, i64 %112, i64 %113, i64 %114, i64 %115)
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* %26, align 4
  %120 = load i64, i64* %27, align 8
  %121 = call i32 @HORIZ_2TAP_FILT_UH(i32 %117, i32 %118, i32 %119, i64 %120, i32 7)
  store i32 %121, i32* %36, align 4
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %19, align 4
  %124 = load i32, i32* %26, align 4
  %125 = load i64, i64* %27, align 8
  %126 = call i32 @HORIZ_2TAP_FILT_UH(i32 %122, i32 %123, i32 %124, i64 %125, i32 7)
  store i32 %126, i32* %38, align 4
  %127 = load i32, i32* %35, align 4
  %128 = load i32, i32* %36, align 4
  %129 = load i32, i32* %37, align 4
  %130 = load i32, i32* %38, align 4
  %131 = load i64, i64* %29, align 8
  %132 = load i64, i64* %30, align 8
  %133 = call i32 @ILVEV_B2_UB(i32 %127, i32 %128, i32 %129, i32 %130, i64 %131, i64 %132)
  %134 = load i64, i64* %29, align 8
  %135 = load i64, i64* %30, align 8
  %136 = load i64, i64* %28, align 8
  %137 = load i64, i64* %28, align 8
  %138 = load i32, i32* %39, align 4
  %139 = load i32, i32* %40, align 4
  %140 = call i32 @DOTP_UB2_UH(i64 %134, i64 %135, i64 %136, i64 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %39, align 4
  %142 = load i32, i32* %40, align 4
  %143 = call i32 @SRARI_H2_UH(i32 %141, i32 %142, i32 7)
  %144 = load i32, i32* %39, align 4
  %145 = load i32, i32* %40, align 4
  %146 = call i32 @SAT_UH2_UH(i32 %144, i32 %145, i32 7)
  %147 = load i32, i32* %40, align 4
  %148 = load i32, i32* %39, align 4
  %149 = load i64, i64* %31, align 8
  %150 = load i32*, i32** %8, align 8
  %151 = call i32 @PCKEV_AVG_ST_UB(i32 %147, i32 %148, i64 %149, i32* %150)
  %152 = load i32, i32* %9, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32* %155, i32** %8, align 8
  %156 = load i32, i32* %20, align 4
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* %26, align 4
  %159 = load i64, i64* %27, align 8
  %160 = call i32 @HORIZ_2TAP_FILT_UH(i32 %156, i32 %157, i32 %158, i64 %159, i32 7)
  store i32 %160, i32* %35, align 4
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* %26, align 4
  %164 = load i64, i64* %27, align 8
  %165 = call i32 @HORIZ_2TAP_FILT_UH(i32 %161, i32 %162, i32 %163, i64 %164, i32 7)
  store i32 %165, i32* %37, align 4
  %166 = load i32, i32* %36, align 4
  %167 = load i32, i32* %35, align 4
  %168 = load i32, i32* %38, align 4
  %169 = load i32, i32* %37, align 4
  %170 = load i64, i64* %29, align 8
  %171 = load i64, i64* %30, align 8
  %172 = call i32 @ILVEV_B2_UB(i32 %166, i32 %167, i32 %168, i32 %169, i64 %170, i64 %171)
  %173 = load i64, i64* %29, align 8
  %174 = load i64, i64* %30, align 8
  %175 = load i64, i64* %28, align 8
  %176 = load i64, i64* %28, align 8
  %177 = load i32, i32* %39, align 4
  %178 = load i32, i32* %40, align 4
  %179 = call i32 @DOTP_UB2_UH(i64 %173, i64 %174, i64 %175, i64 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %39, align 4
  %181 = load i32, i32* %40, align 4
  %182 = call i32 @SRARI_H2_UH(i32 %180, i32 %181, i32 7)
  %183 = load i32, i32* %39, align 4
  %184 = load i32, i32* %40, align 4
  %185 = call i32 @SAT_UH2_UH(i32 %183, i32 %184, i32 7)
  %186 = load i32, i32* %40, align 4
  %187 = load i32, i32* %39, align 4
  %188 = load i64, i64* %32, align 8
  %189 = load i32*, i32** %8, align 8
  %190 = call i32 @PCKEV_AVG_ST_UB(i32 %186, i32 %187, i64 %188, i32* %189)
  %191 = load i32, i32* %9, align 4
  %192 = load i32*, i32** %8, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32* %194, i32** %8, align 8
  %195 = load i32, i32* %22, align 4
  %196 = load i32, i32* %22, align 4
  %197 = load i32, i32* %26, align 4
  %198 = load i64, i64* %27, align 8
  %199 = call i32 @HORIZ_2TAP_FILT_UH(i32 %195, i32 %196, i32 %197, i64 %198, i32 7)
  store i32 %199, i32* %36, align 4
  %200 = load i32, i32* %23, align 4
  %201 = load i32, i32* %23, align 4
  %202 = load i32, i32* %26, align 4
  %203 = load i64, i64* %27, align 8
  %204 = call i32 @HORIZ_2TAP_FILT_UH(i32 %200, i32 %201, i32 %202, i64 %203, i32 7)
  store i32 %204, i32* %38, align 4
  %205 = load i32, i32* %35, align 4
  %206 = load i32, i32* %36, align 4
  %207 = load i32, i32* %37, align 4
  %208 = load i32, i32* %38, align 4
  %209 = load i64, i64* %29, align 8
  %210 = load i64, i64* %30, align 8
  %211 = call i32 @ILVEV_B2_UB(i32 %205, i32 %206, i32 %207, i32 %208, i64 %209, i64 %210)
  %212 = load i64, i64* %29, align 8
  %213 = load i64, i64* %30, align 8
  %214 = load i64, i64* %28, align 8
  %215 = load i64, i64* %28, align 8
  %216 = load i32, i32* %39, align 4
  %217 = load i32, i32* %40, align 4
  %218 = call i32 @DOTP_UB2_UH(i64 %212, i64 %213, i64 %214, i64 %215, i32 %216, i32 %217)
  %219 = load i32, i32* %39, align 4
  %220 = load i32, i32* %40, align 4
  %221 = call i32 @SRARI_H2_UH(i32 %219, i32 %220, i32 7)
  %222 = load i32, i32* %39, align 4
  %223 = load i32, i32* %40, align 4
  %224 = call i32 @SAT_UH2_UH(i32 %222, i32 %223, i32 7)
  %225 = load i32, i32* %40, align 4
  %226 = load i32, i32* %39, align 4
  %227 = load i64, i64* %33, align 8
  %228 = load i32*, i32** %8, align 8
  %229 = call i32 @PCKEV_AVG_ST_UB(i32 %225, i32 %226, i64 %227, i32* %228)
  %230 = load i32, i32* %9, align 4
  %231 = load i32*, i32** %8, align 8
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  store i32* %233, i32** %8, align 8
  %234 = load i32, i32* %24, align 4
  %235 = load i32, i32* %24, align 4
  %236 = load i32, i32* %26, align 4
  %237 = load i64, i64* %27, align 8
  %238 = call i32 @HORIZ_2TAP_FILT_UH(i32 %234, i32 %235, i32 %236, i64 %237, i32 7)
  store i32 %238, i32* %35, align 4
  %239 = load i32, i32* %25, align 4
  %240 = load i32, i32* %25, align 4
  %241 = load i32, i32* %26, align 4
  %242 = load i64, i64* %27, align 8
  %243 = call i32 @HORIZ_2TAP_FILT_UH(i32 %239, i32 %240, i32 %241, i64 %242, i32 7)
  store i32 %243, i32* %37, align 4
  %244 = load i32, i32* %36, align 4
  %245 = load i32, i32* %35, align 4
  %246 = load i32, i32* %38, align 4
  %247 = load i32, i32* %37, align 4
  %248 = load i64, i64* %29, align 8
  %249 = load i64, i64* %30, align 8
  %250 = call i32 @ILVEV_B2_UB(i32 %244, i32 %245, i32 %246, i32 %247, i64 %248, i64 %249)
  %251 = load i64, i64* %29, align 8
  %252 = load i64, i64* %30, align 8
  %253 = load i64, i64* %28, align 8
  %254 = load i64, i64* %28, align 8
  %255 = load i32, i32* %39, align 4
  %256 = load i32, i32* %40, align 4
  %257 = call i32 @DOTP_UB2_UH(i64 %251, i64 %252, i64 %253, i64 %254, i32 %255, i32 %256)
  %258 = load i32, i32* %39, align 4
  %259 = load i32, i32* %40, align 4
  %260 = call i32 @SRARI_H2_UH(i32 %258, i32 %259, i32 7)
  %261 = load i32, i32* %39, align 4
  %262 = load i32, i32* %40, align 4
  %263 = call i32 @SAT_UH2_UH(i32 %261, i32 %262, i32 7)
  %264 = load i32, i32* %40, align 4
  %265 = load i32, i32* %39, align 4
  %266 = load i64, i64* %34, align 8
  %267 = load i32*, i32** %8, align 8
  %268 = call i32 @PCKEV_AVG_ST_UB(i32 %264, i32 %265, i64 %266, i32* %267)
  %269 = load i32, i32* %9, align 4
  %270 = load i32*, i32** %8, align 8
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  store i32* %272, i32** %8, align 8
  br label %85

273:                                              ; preds = %85
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @HORIZ_2TAP_FILT_UH(i32, i32, i32, i64, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @ILVEV_B2_UB(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @DOTP_UB2_UH(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @SRARI_H2_UH(i32, i32, i32) #1

declare dso_local i32 @SAT_UH2_UH(i32, i32, i32) #1

declare dso_local i32 @PCKEV_AVG_ST_UB(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
