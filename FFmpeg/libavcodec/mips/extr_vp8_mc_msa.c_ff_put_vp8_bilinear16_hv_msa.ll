; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_bilinear16_hv_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_bilinear16_hv_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bilinear_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_bilinear16_hv_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %38 = load i32**, i32*** @bilinear_filters_msa, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %38, i64 %41
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %16, align 8
  %44 = load i32**, i32*** @bilinear_filters_msa, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %44, i64 %47
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %17, align 8
  %50 = load i32*, i32** @mc_filt_mask_arr, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = call i32 @LD_SB(i32* %51)
  store i32 %52, i32* %26, align 4
  %53 = load i32*, i32** %16, align 8
  %54 = call i32 @LD_SH(i32* %53)
  store i32 %54, i32* %37, align 4
  %55 = load i32, i32* %37, align 4
  %56 = call i64 @__msa_splati_h(i32 %55, i32 0)
  store i64 %56, i64* %27, align 8
  %57 = load i32*, i32** %17, align 8
  %58 = call i32 @LD_SH(i32* %57)
  store i32 %58, i32* %37, align 4
  %59 = load i32, i32* %37, align 4
  %60 = call i64 @__msa_splati_h(i32 %59, i32 0)
  store i64 %60, i64* %28, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %19, align 4
  %64 = call i32 @LD_SB2(i32* %61, i32 8, i32 %62, i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %10, align 8
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %26, align 4
  %72 = load i64, i64* %27, align 8
  %73 = call i32 @HORIZ_2TAP_FILT_UH(i32 %69, i32 %70, i32 %71, i64 %72, i32 7)
  store i32 %73, i32* %33, align 4
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %26, align 4
  %77 = load i64, i64* %27, align 8
  %78 = call i32 @HORIZ_2TAP_FILT_UH(i32 %74, i32 %75, i32 %76, i64 %77, i32 7)
  store i32 %78, i32* %35, align 4
  %79 = load i32, i32* %12, align 4
  %80 = ashr i32 %79, 2
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %85, %7
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %15, align 4
  %84 = icmp ne i32 %82, 0
  br i1 %84, label %85, label %258

85:                                               ; preds = %81
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %22, align 4
  %91 = load i32, i32* %24, align 4
  %92 = call i32 @LD_SB4(i32* %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %21, align 4
  %98 = load i32, i32* %23, align 4
  %99 = load i32, i32* %25, align 4
  %100 = call i32 @LD_SB4(i32* %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %11, align 4
  %102 = mul nsw i32 4, %101
  %103 = load i32*, i32** %10, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %10, align 8
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %26, align 4
  %109 = load i64, i64* %27, align 8
  %110 = call i32 @HORIZ_2TAP_FILT_UH(i32 %106, i32 %107, i32 %108, i64 %109, i32 7)
  store i32 %110, i32* %34, align 4
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %26, align 4
  %114 = load i64, i64* %27, align 8
  %115 = call i32 @HORIZ_2TAP_FILT_UH(i32 %111, i32 %112, i32 %113, i64 %114, i32 7)
  store i32 %115, i32* %36, align 4
  %116 = load i32, i32* %33, align 4
  %117 = load i32, i32* %34, align 4
  %118 = load i32, i32* %35, align 4
  %119 = load i32, i32* %36, align 4
  %120 = load i64, i64* %29, align 8
  %121 = load i64, i64* %30, align 8
  %122 = call i32 @ILVEV_B2_UB(i32 %116, i32 %117, i32 %118, i32 %119, i64 %120, i64 %121)
  %123 = load i64, i64* %29, align 8
  %124 = load i64, i64* %30, align 8
  %125 = load i64, i64* %28, align 8
  %126 = load i64, i64* %28, align 8
  %127 = load i32, i32* %31, align 4
  %128 = load i32, i32* %32, align 4
  %129 = call i32 @DOTP_UB2_UH(i64 %123, i64 %124, i64 %125, i64 %126, i32 %127, i32 %128)
  %130 = load i32, i32* %31, align 4
  %131 = load i32, i32* %32, align 4
  %132 = call i32 @SRARI_H2_UH(i32 %130, i32 %131, i32 7)
  %133 = load i32, i32* %31, align 4
  %134 = load i32, i32* %32, align 4
  %135 = call i32 @SAT_UH2_UH(i32 %133, i32 %134, i32 7)
  %136 = load i32, i32* %31, align 4
  %137 = load i32, i32* %32, align 4
  %138 = load i32*, i32** %8, align 8
  %139 = call i32 @PCKEV_ST_SB(i32 %136, i32 %137, i32* %138)
  %140 = load i32, i32* %9, align 4
  %141 = load i32*, i32** %8, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32* %143, i32** %8, align 8
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %20, align 4
  %146 = load i32, i32* %26, align 4
  %147 = load i64, i64* %27, align 8
  %148 = call i32 @HORIZ_2TAP_FILT_UH(i32 %144, i32 %145, i32 %146, i64 %147, i32 7)
  store i32 %148, i32* %33, align 4
  %149 = load i32, i32* %21, align 4
  %150 = load i32, i32* %21, align 4
  %151 = load i32, i32* %26, align 4
  %152 = load i64, i64* %27, align 8
  %153 = call i32 @HORIZ_2TAP_FILT_UH(i32 %149, i32 %150, i32 %151, i64 %152, i32 7)
  store i32 %153, i32* %35, align 4
  %154 = load i32, i32* %34, align 4
  %155 = load i32, i32* %33, align 4
  %156 = load i32, i32* %36, align 4
  %157 = load i32, i32* %35, align 4
  %158 = load i64, i64* %29, align 8
  %159 = load i64, i64* %30, align 8
  %160 = call i32 @ILVEV_B2_UB(i32 %154, i32 %155, i32 %156, i32 %157, i64 %158, i64 %159)
  %161 = load i64, i64* %29, align 8
  %162 = load i64, i64* %30, align 8
  %163 = load i64, i64* %28, align 8
  %164 = load i64, i64* %28, align 8
  %165 = load i32, i32* %31, align 4
  %166 = load i32, i32* %32, align 4
  %167 = call i32 @DOTP_UB2_UH(i64 %161, i64 %162, i64 %163, i64 %164, i32 %165, i32 %166)
  %168 = load i32, i32* %31, align 4
  %169 = load i32, i32* %32, align 4
  %170 = call i32 @SRARI_H2_UH(i32 %168, i32 %169, i32 7)
  %171 = load i32, i32* %31, align 4
  %172 = load i32, i32* %32, align 4
  %173 = call i32 @SAT_UH2_UH(i32 %171, i32 %172, i32 7)
  %174 = load i32, i32* %31, align 4
  %175 = load i32, i32* %32, align 4
  %176 = load i32*, i32** %8, align 8
  %177 = call i32 @PCKEV_ST_SB(i32 %174, i32 %175, i32* %176)
  %178 = load i32, i32* %9, align 4
  %179 = load i32*, i32** %8, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32* %181, i32** %8, align 8
  %182 = load i32, i32* %22, align 4
  %183 = load i32, i32* %22, align 4
  %184 = load i32, i32* %26, align 4
  %185 = load i64, i64* %27, align 8
  %186 = call i32 @HORIZ_2TAP_FILT_UH(i32 %182, i32 %183, i32 %184, i64 %185, i32 7)
  store i32 %186, i32* %34, align 4
  %187 = load i32, i32* %23, align 4
  %188 = load i32, i32* %23, align 4
  %189 = load i32, i32* %26, align 4
  %190 = load i64, i64* %27, align 8
  %191 = call i32 @HORIZ_2TAP_FILT_UH(i32 %187, i32 %188, i32 %189, i64 %190, i32 7)
  store i32 %191, i32* %36, align 4
  %192 = load i32, i32* %33, align 4
  %193 = load i32, i32* %34, align 4
  %194 = load i32, i32* %35, align 4
  %195 = load i32, i32* %36, align 4
  %196 = load i64, i64* %29, align 8
  %197 = load i64, i64* %30, align 8
  %198 = call i32 @ILVEV_B2_UB(i32 %192, i32 %193, i32 %194, i32 %195, i64 %196, i64 %197)
  %199 = load i64, i64* %29, align 8
  %200 = load i64, i64* %30, align 8
  %201 = load i64, i64* %28, align 8
  %202 = load i64, i64* %28, align 8
  %203 = load i32, i32* %31, align 4
  %204 = load i32, i32* %32, align 4
  %205 = call i32 @DOTP_UB2_UH(i64 %199, i64 %200, i64 %201, i64 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %31, align 4
  %207 = load i32, i32* %32, align 4
  %208 = call i32 @SRARI_H2_UH(i32 %206, i32 %207, i32 7)
  %209 = load i32, i32* %31, align 4
  %210 = load i32, i32* %32, align 4
  %211 = call i32 @SAT_UH2_UH(i32 %209, i32 %210, i32 7)
  %212 = load i32, i32* %31, align 4
  %213 = load i32, i32* %32, align 4
  %214 = load i32*, i32** %8, align 8
  %215 = call i32 @PCKEV_ST_SB(i32 %212, i32 %213, i32* %214)
  %216 = load i32, i32* %9, align 4
  %217 = load i32*, i32** %8, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  store i32* %219, i32** %8, align 8
  %220 = load i32, i32* %24, align 4
  %221 = load i32, i32* %24, align 4
  %222 = load i32, i32* %26, align 4
  %223 = load i64, i64* %27, align 8
  %224 = call i32 @HORIZ_2TAP_FILT_UH(i32 %220, i32 %221, i32 %222, i64 %223, i32 7)
  store i32 %224, i32* %33, align 4
  %225 = load i32, i32* %25, align 4
  %226 = load i32, i32* %25, align 4
  %227 = load i32, i32* %26, align 4
  %228 = load i64, i64* %27, align 8
  %229 = call i32 @HORIZ_2TAP_FILT_UH(i32 %225, i32 %226, i32 %227, i64 %228, i32 7)
  store i32 %229, i32* %35, align 4
  %230 = load i32, i32* %34, align 4
  %231 = load i32, i32* %33, align 4
  %232 = load i32, i32* %36, align 4
  %233 = load i32, i32* %35, align 4
  %234 = load i64, i64* %29, align 8
  %235 = load i64, i64* %30, align 8
  %236 = call i32 @ILVEV_B2_UB(i32 %230, i32 %231, i32 %232, i32 %233, i64 %234, i64 %235)
  %237 = load i64, i64* %29, align 8
  %238 = load i64, i64* %30, align 8
  %239 = load i64, i64* %28, align 8
  %240 = load i64, i64* %28, align 8
  %241 = load i32, i32* %31, align 4
  %242 = load i32, i32* %32, align 4
  %243 = call i32 @DOTP_UB2_UH(i64 %237, i64 %238, i64 %239, i64 %240, i32 %241, i32 %242)
  %244 = load i32, i32* %31, align 4
  %245 = load i32, i32* %32, align 4
  %246 = call i32 @SRARI_H2_UH(i32 %244, i32 %245, i32 7)
  %247 = load i32, i32* %31, align 4
  %248 = load i32, i32* %32, align 4
  %249 = call i32 @SAT_UH2_UH(i32 %247, i32 %248, i32 7)
  %250 = load i32, i32* %31, align 4
  %251 = load i32, i32* %32, align 4
  %252 = load i32*, i32** %8, align 8
  %253 = call i32 @PCKEV_ST_SB(i32 %250, i32 %251, i32* %252)
  %254 = load i32, i32* %9, align 4
  %255 = load i32*, i32** %8, align 8
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  store i32* %257, i32** %8, align 8
  br label %81

258:                                              ; preds = %81
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @HORIZ_2TAP_FILT_UH(i32, i32, i32, i64, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVEV_B2_UB(i32, i32, i32, i32, i64, i64) #1

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
