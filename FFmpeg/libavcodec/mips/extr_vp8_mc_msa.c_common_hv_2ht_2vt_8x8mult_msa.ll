; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_common_hv_2ht_2vt_8x8mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_common_hv_2ht_2vt_8x8mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32)* @common_hv_2ht_2vt_8x8mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hv_2ht_2vt_8x8mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
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
  %37 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %38 = load i32*, i32** @mc_filt_mask_arr, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i32 @LD_SB(i32* %39)
  store i32 %40, i32* %21, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @LD_SH(i32* %41)
  store i32 %42, i32* %37, align 4
  %43 = load i32, i32* %37, align 4
  %44 = call i64 @__msa_splati_h(i32 %43, i32 0)
  store i64 %44, i64* %24, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @LD_SH(i32* %45)
  store i32 %46, i32* %37, align 4
  %47 = load i32, i32* %37, align 4
  %48 = call i64 @__msa_splati_h(i32 %47, i32 0)
  store i64 %48, i64* %25, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @LD_SB(i32* %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %8, align 8
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %21, align 4
  %58 = load i64, i64* %24, align 8
  %59 = call i64 @HORIZ_2TAP_FILT_UH(i32 %55, i32 %56, i32 %57, i64 %58, i32 7)
  store i64 %59, i64* %27, align 8
  %60 = load i32, i32* %14, align 4
  %61 = ashr i32 %60, 3
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %66, %7
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %15, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %66, label %250

66:                                               ; preds = %62
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %20, align 4
  %73 = call i32 @LD_SB4(i32* %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 4, %74
  %76 = load i32*, i32** %8, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %8, align 8
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %21, align 4
  %82 = load i64, i64* %24, align 8
  %83 = call i64 @HORIZ_2TAP_FILT_UH(i32 %79, i32 %80, i32 %81, i64 %82, i32 7)
  store i64 %83, i64* %28, align 8
  %84 = load i64, i64* %28, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i64, i64* %27, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i64 @__msa_ilvev_b(i32 %85, i32 %87)
  store i64 %88, i64* %26, align 8
  %89 = load i64, i64* %26, align 8
  %90 = load i64, i64* %25, align 8
  %91 = call i64 @__msa_dotp_u_h(i64 %89, i64 %90)
  store i64 %91, i64* %29, align 8
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %21, align 4
  %95 = load i64, i64* %24, align 8
  %96 = call i64 @HORIZ_2TAP_FILT_UH(i32 %92, i32 %93, i32 %94, i64 %95, i32 7)
  store i64 %96, i64* %27, align 8
  %97 = load i64, i64* %27, align 8
  %98 = trunc i64 %97 to i32
  %99 = load i64, i64* %28, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i64 @__msa_ilvev_b(i32 %98, i32 %100)
  store i64 %101, i64* %26, align 8
  %102 = load i64, i64* %26, align 8
  %103 = load i64, i64* %25, align 8
  %104 = call i64 @__msa_dotp_u_h(i64 %102, i64 %103)
  store i64 %104, i64* %30, align 8
  %105 = load i64, i64* %29, align 8
  %106 = load i64, i64* %30, align 8
  %107 = call i32 @SRARI_H2_UH(i64 %105, i64 %106, i32 7)
  %108 = load i64, i64* %29, align 8
  %109 = load i64, i64* %30, align 8
  %110 = call i32 @SAT_UH2_UH(i64 %108, i64 %109, i32 7)
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %21, align 4
  %114 = load i64, i64* %24, align 8
  %115 = call i64 @HORIZ_2TAP_FILT_UH(i32 %111, i32 %112, i32 %113, i64 %114, i32 7)
  store i64 %115, i64* %28, align 8
  %116 = load i64, i64* %28, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i64, i64* %27, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i64 @__msa_ilvev_b(i32 %117, i32 %119)
  store i64 %120, i64* %26, align 8
  %121 = load i64, i64* %26, align 8
  %122 = load i64, i64* %25, align 8
  %123 = call i64 @__msa_dotp_u_h(i64 %121, i64 %122)
  store i64 %123, i64* %31, align 8
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %21, align 4
  %127 = load i64, i64* %24, align 8
  %128 = call i64 @HORIZ_2TAP_FILT_UH(i32 %124, i32 %125, i32 %126, i64 %127, i32 7)
  store i64 %128, i64* %27, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %20, align 4
  %135 = call i32 @LD_SB4(i32* %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = mul nsw i32 4, %136
  %138 = load i32*, i32** %8, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %8, align 8
  %141 = load i64, i64* %27, align 8
  %142 = trunc i64 %141 to i32
  %143 = load i64, i64* %28, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i64 @__msa_ilvev_b(i32 %142, i32 %144)
  store i64 %145, i64* %26, align 8
  %146 = load i64, i64* %26, align 8
  %147 = load i64, i64* %25, align 8
  %148 = call i64 @__msa_dotp_u_h(i64 %146, i64 %147)
  store i64 %148, i64* %32, align 8
  %149 = load i64, i64* %31, align 8
  %150 = load i64, i64* %32, align 8
  %151 = call i32 @SRARI_H2_UH(i64 %149, i64 %150, i32 7)
  %152 = load i64, i64* %31, align 8
  %153 = load i64, i64* %32, align 8
  %154 = call i32 @SAT_UH2_UH(i64 %152, i64 %153, i32 7)
  %155 = load i64, i64* %30, align 8
  %156 = load i64, i64* %29, align 8
  %157 = load i64, i64* %32, align 8
  %158 = load i64, i64* %31, align 8
  %159 = load i32, i32* %22, align 4
  %160 = load i32, i32* %23, align 4
  %161 = call i32 @PCKEV_B2_SB(i64 %155, i64 %156, i64 %157, i64 %158, i32 %159, i32 %160)
  %162 = load i32, i32* %22, align 4
  %163 = load i32, i32* %23, align 4
  %164 = load i32*, i32** %10, align 8
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @ST_D4(i32 %162, i32 %163, i32 0, i32 1, i32 0, i32 1, i32* %164, i32 %165)
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* %21, align 4
  %170 = load i64, i64* %24, align 8
  %171 = call i64 @HORIZ_2TAP_FILT_UH(i32 %167, i32 %168, i32 %169, i64 %170, i32 7)
  store i64 %171, i64* %28, align 8
  %172 = load i64, i64* %28, align 8
  %173 = trunc i64 %172 to i32
  %174 = load i64, i64* %27, align 8
  %175 = trunc i64 %174 to i32
  %176 = call i64 @__msa_ilvev_b(i32 %173, i32 %175)
  store i64 %176, i64* %26, align 8
  %177 = load i64, i64* %26, align 8
  %178 = load i64, i64* %25, align 8
  %179 = call i64 @__msa_dotp_u_h(i64 %177, i64 %178)
  store i64 %179, i64* %33, align 8
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* %21, align 4
  %183 = load i64, i64* %24, align 8
  %184 = call i64 @HORIZ_2TAP_FILT_UH(i32 %180, i32 %181, i32 %182, i64 %183, i32 7)
  store i64 %184, i64* %27, align 8
  %185 = load i64, i64* %27, align 8
  %186 = trunc i64 %185 to i32
  %187 = load i64, i64* %28, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i64 @__msa_ilvev_b(i32 %186, i32 %188)
  store i64 %189, i64* %26, align 8
  %190 = load i64, i64* %26, align 8
  %191 = load i64, i64* %25, align 8
  %192 = call i64 @__msa_dotp_u_h(i64 %190, i64 %191)
  store i64 %192, i64* %34, align 8
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %21, align 4
  %196 = load i64, i64* %24, align 8
  %197 = call i64 @HORIZ_2TAP_FILT_UH(i32 %193, i32 %194, i32 %195, i64 %196, i32 7)
  store i64 %197, i64* %28, align 8
  %198 = load i64, i64* %28, align 8
  %199 = trunc i64 %198 to i32
  %200 = load i64, i64* %27, align 8
  %201 = trunc i64 %200 to i32
  %202 = call i64 @__msa_ilvev_b(i32 %199, i32 %201)
  store i64 %202, i64* %26, align 8
  %203 = load i64, i64* %26, align 8
  %204 = load i64, i64* %25, align 8
  %205 = call i64 @__msa_dotp_u_h(i64 %203, i64 %204)
  store i64 %205, i64* %35, align 8
  %206 = load i32, i32* %20, align 4
  %207 = load i32, i32* %20, align 4
  %208 = load i32, i32* %21, align 4
  %209 = load i64, i64* %24, align 8
  %210 = call i64 @HORIZ_2TAP_FILT_UH(i32 %206, i32 %207, i32 %208, i64 %209, i32 7)
  store i64 %210, i64* %27, align 8
  %211 = load i64, i64* %27, align 8
  %212 = trunc i64 %211 to i32
  %213 = load i64, i64* %28, align 8
  %214 = trunc i64 %213 to i32
  %215 = call i64 @__msa_ilvev_b(i32 %212, i32 %214)
  store i64 %215, i64* %26, align 8
  %216 = load i64, i64* %26, align 8
  %217 = load i64, i64* %25, align 8
  %218 = call i64 @__msa_dotp_u_h(i64 %216, i64 %217)
  store i64 %218, i64* %36, align 8
  %219 = load i64, i64* %33, align 8
  %220 = load i64, i64* %34, align 8
  %221 = load i64, i64* %35, align 8
  %222 = load i64, i64* %36, align 8
  %223 = call i32 @SRARI_H4_UH(i64 %219, i64 %220, i64 %221, i64 %222, i32 7)
  %224 = load i64, i64* %33, align 8
  %225 = load i64, i64* %34, align 8
  %226 = load i64, i64* %35, align 8
  %227 = load i64, i64* %36, align 8
  %228 = call i32 @SAT_UH4_UH(i64 %224, i64 %225, i64 %226, i64 %227, i32 7)
  %229 = load i64, i64* %34, align 8
  %230 = load i64, i64* %33, align 8
  %231 = load i64, i64* %36, align 8
  %232 = load i64, i64* %35, align 8
  %233 = load i32, i32* %22, align 4
  %234 = load i32, i32* %23, align 4
  %235 = call i32 @PCKEV_B2_SB(i64 %229, i64 %230, i64 %231, i64 %232, i32 %233, i32 %234)
  %236 = load i32, i32* %22, align 4
  %237 = load i32, i32* %23, align 4
  %238 = load i32*, i32** %10, align 8
  %239 = load i32, i32* %11, align 4
  %240 = mul nsw i32 4, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %238, i64 %241
  %243 = load i32, i32* %11, align 4
  %244 = call i32 @ST_D4(i32 %236, i32 %237, i32 0, i32 1, i32 0, i32 1, i32* %242, i32 %243)
  %245 = load i32, i32* %11, align 4
  %246 = mul nsw i32 8, %245
  %247 = load i32*, i32** %10, align 8
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  store i32* %249, i32** %10, align 8
  br label %62

250:                                              ; preds = %62
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i64 @HORIZ_2TAP_FILT_UH(i32, i32, i32, i64, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__msa_ilvev_b(i32, i32) #1

declare dso_local i64 @__msa_dotp_u_h(i64, i64) #1

declare dso_local i32 @SRARI_H2_UH(i64, i64, i32) #1

declare dso_local i32 @SAT_UH2_UH(i64, i64, i32) #1

declare dso_local i32 @PCKEV_B2_SB(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @SRARI_H4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @SAT_UH4_UH(i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
