; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_common_hv_2ht_2vt_4x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_common_hv_2ht_2vt_4x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*)* @common_hv_2ht_2vt_4x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hv_2ht_2vt_4x8_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
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
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %47 = load i32*, i32** @mc_filt_mask_arr, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 16
  %49 = call i32 @LD_SB(i32* %48)
  store i32 %49, i32* %22, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = call i64 @LD_UH(i32* %50)
  store i64 %51, i64* %46, align 8
  %52 = load i64, i64* %46, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i64 @__msa_splati_h(i32 %53, i32 0)
  store i64 %54, i64* %27, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = call i64 @LD_UH(i32* %55)
  store i64 %56, i64* %46, align 8
  %57 = load i64, i64* %46, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i64 @__msa_splati_h(i32 %58, i32 0)
  store i64 %59, i64* %28, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %20, align 4
  %70 = call i32 @LD_SB8(i32* %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = mul nsw i32 8, %71
  %73 = load i32*, i32** %7, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %7, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @LD_SB(i32* %76)
  store i32 %77, i32* %21, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %22, align 4
  %81 = load i64, i64* %27, align 8
  %82 = call i64 @HORIZ_2TAP_FILT_UH(i32 %78, i32 %79, i32 %80, i64 %81, i32 7)
  store i64 %82, i64* %33, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %22, align 4
  %86 = load i64, i64* %27, align 8
  %87 = call i64 @HORIZ_2TAP_FILT_UH(i32 %83, i32 %84, i32 %85, i64 %86, i32 7)
  store i64 %87, i64* %35, align 8
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %22, align 4
  %91 = load i64, i64* %27, align 8
  %92 = call i64 @HORIZ_2TAP_FILT_UH(i32 %88, i32 %89, i32 %90, i64 %91, i32 7)
  store i64 %92, i64* %37, align 8
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %22, align 4
  %96 = load i64, i64* %27, align 8
  %97 = call i64 @HORIZ_2TAP_FILT_UH(i32 %93, i32 %94, i32 %95, i64 %96, i32 7)
  store i64 %97, i64* %39, align 8
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %22, align 4
  %101 = load i64, i64* %27, align 8
  %102 = call i64 @HORIZ_2TAP_FILT_UH(i32 %98, i32 %99, i32 %100, i64 %101, i32 7)
  store i64 %102, i64* %41, align 8
  %103 = load i64, i64* %35, align 8
  %104 = load i64, i64* %33, align 8
  %105 = load i64, i64* %37, align 8
  %106 = load i64, i64* %35, align 8
  %107 = load i64, i64* %39, align 8
  %108 = load i64, i64* %37, align 8
  %109 = load i64, i64* %34, align 8
  %110 = load i64, i64* %36, align 8
  %111 = load i64, i64* %38, align 8
  %112 = call i32 @SLDI_B3_UH(i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i32 8, i64 %109, i64 %110, i64 %111)
  %113 = load i64, i64* %41, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i64, i64* %39, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i64 @__msa_pckod_d(i32 %114, i32 %116)
  store i64 %117, i64* %40, align 8
  %118 = load i64, i64* %33, align 8
  %119 = load i64, i64* %34, align 8
  %120 = load i64, i64* %35, align 8
  %121 = load i64, i64* %36, align 8
  %122 = load i64, i64* %29, align 8
  %123 = load i64, i64* %30, align 8
  %124 = call i32 @ILVEV_B2_UB(i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123)
  %125 = load i64, i64* %37, align 8
  %126 = load i64, i64* %38, align 8
  %127 = load i64, i64* %39, align 8
  %128 = load i64, i64* %40, align 8
  %129 = load i64, i64* %31, align 8
  %130 = load i64, i64* %32, align 8
  %131 = call i32 @ILVEV_B2_UB(i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130)
  %132 = load i64, i64* %29, align 8
  %133 = load i64, i64* %30, align 8
  %134 = load i64, i64* %31, align 8
  %135 = load i64, i64* %32, align 8
  %136 = load i64, i64* %28, align 8
  %137 = load i64, i64* %28, align 8
  %138 = load i64, i64* %28, align 8
  %139 = load i64, i64* %28, align 8
  %140 = load i64, i64* %42, align 8
  %141 = load i64, i64* %43, align 8
  %142 = load i64, i64* %44, align 8
  %143 = load i64, i64* %45, align 8
  %144 = call i32 @DOTP_UB4_UH(i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143)
  %145 = load i64, i64* %42, align 8
  %146 = load i64, i64* %43, align 8
  %147 = load i64, i64* %44, align 8
  %148 = load i64, i64* %45, align 8
  %149 = call i32 @SRARI_H4_UH(i64 %145, i64 %146, i64 %147, i64 %148, i32 7)
  %150 = load i64, i64* %42, align 8
  %151 = load i64, i64* %43, align 8
  %152 = load i64, i64* %44, align 8
  %153 = load i64, i64* %45, align 8
  %154 = call i32 @SAT_UH4_UH(i64 %150, i64 %151, i64 %152, i64 %153, i32 7)
  %155 = load i64, i64* %42, align 8
  %156 = load i64, i64* %42, align 8
  %157 = load i64, i64* %43, align 8
  %158 = load i64, i64* %43, align 8
  %159 = load i64, i64* %44, align 8
  %160 = load i64, i64* %44, align 8
  %161 = load i64, i64* %45, align 8
  %162 = load i64, i64* %45, align 8
  %163 = load i32, i32* %23, align 4
  %164 = load i32, i32* %24, align 4
  %165 = load i32, i32* %25, align 4
  %166 = load i32, i32* %26, align 4
  %167 = call i32 @PCKEV_B4_SB(i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = load i32, i32* %23, align 4
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @ST_W2(i32 %168, i32 0, i32 1, i32* %169, i32 %170)
  %172 = load i32, i32* %24, align 4
  %173 = load i32*, i32** %9, align 8
  %174 = load i32, i32* %10, align 4
  %175 = mul nsw i32 2, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @ST_W2(i32 %172, i32 0, i32 1, i32* %177, i32 %178)
  %180 = load i32, i32* %25, align 4
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %10, align 4
  %183 = mul nsw i32 4, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @ST_W2(i32 %180, i32 0, i32 1, i32* %185, i32 %186)
  %188 = load i32, i32* %26, align 4
  %189 = load i32*, i32** %9, align 8
  %190 = load i32, i32* %10, align 4
  %191 = mul nsw i32 6, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @ST_W2(i32 %188, i32 0, i32 1, i32* %193, i32 %194)
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i64 @LD_UH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @HORIZ_2TAP_FILT_UH(i32, i32, i32, i64, i32) #1

declare dso_local i32 @SLDI_B3_UH(i64, i64, i64, i64, i64, i64, i32, i64, i64, i64) #1

declare dso_local i64 @__msa_pckod_d(i32, i32) #1

declare dso_local i32 @ILVEV_B2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DOTP_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @SAT_UH4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @PCKEV_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ST_W2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
