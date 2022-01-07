; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_2ht_2vt_and_aver_dst_4x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_2ht_2vt_and_aver_dst_4x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*)* @common_hv_2ht_2vt_and_aver_dst_4x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hv_2ht_2vt_and_aver_dst_4x8_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
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
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %51 = load i32*, i32** @mc_filt_mask_arr, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 16
  %53 = call i32 @LD_SB(i32* %52)
  store i32 %53, i32* %26, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @LD_SH(i32* %54)
  store i32 %55, i32* %50, align 4
  %56 = load i32, i32* %50, align 4
  %57 = call i64 @__msa_splati_h(i32 %56, i32 0)
  store i64 %57, i64* %27, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @LD_SH(i32* %58)
  store i32 %59, i32* %50, align 4
  %60 = load i32, i32* %50, align 4
  %61 = call i64 @__msa_splati_h(i32 %60, i32 0)
  store i64 %61, i64* %28, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* %23, align 4
  %71 = load i32, i32* %24, align 4
  %72 = call i32 @LD_SB8(i32* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 8, %73
  %75 = load i32*, i32** %7, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %7, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @LD_SB(i32* %78)
  store i32 %79, i32* %25, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %26, align 4
  %83 = load i64, i64* %27, align 8
  %84 = call i64 @HORIZ_2TAP_FILT_UH(i32 %80, i32 %81, i32 %82, i64 %83, i32 7)
  store i64 %84, i64* %37, align 8
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %26, align 4
  %88 = load i64, i64* %27, align 8
  %89 = call i64 @HORIZ_2TAP_FILT_UH(i32 %85, i32 %86, i32 %87, i64 %88, i32 7)
  store i64 %89, i64* %39, align 8
  %90 = load i32, i32* %21, align 4
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %26, align 4
  %93 = load i64, i64* %27, align 8
  %94 = call i64 @HORIZ_2TAP_FILT_UH(i32 %90, i32 %91, i32 %92, i64 %93, i32 7)
  store i64 %94, i64* %41, align 8
  %95 = load i32, i32* %23, align 4
  %96 = load i32, i32* %24, align 4
  %97 = load i32, i32* %26, align 4
  %98 = load i64, i64* %27, align 8
  %99 = call i64 @HORIZ_2TAP_FILT_UH(i32 %95, i32 %96, i32 %97, i64 %98, i32 7)
  store i64 %99, i64* %43, align 8
  %100 = load i32, i32* %25, align 4
  %101 = load i32, i32* %25, align 4
  %102 = load i32, i32* %26, align 4
  %103 = load i64, i64* %27, align 8
  %104 = call i64 @HORIZ_2TAP_FILT_UH(i32 %100, i32 %101, i32 %102, i64 %103, i32 7)
  store i64 %104, i64* %45, align 8
  %105 = load i64, i64* %39, align 8
  %106 = load i64, i64* %37, align 8
  %107 = load i64, i64* %41, align 8
  %108 = load i64, i64* %39, align 8
  %109 = load i64, i64* %43, align 8
  %110 = load i64, i64* %41, align 8
  %111 = load i64, i64* %38, align 8
  %112 = load i64, i64* %40, align 8
  %113 = load i64, i64* %42, align 8
  %114 = call i32 @SLDI_B3_UH(i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i32 8, i64 %111, i64 %112, i64 %113)
  %115 = load i64, i64* %45, align 8
  %116 = trunc i64 %115 to i32
  %117 = load i64, i64* %43, align 8
  %118 = trunc i64 %117 to i32
  %119 = call i64 @__msa_pckod_d(i32 %116, i32 %118)
  store i64 %119, i64* %44, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @LW4(i32* %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load i64, i64* %35, align 8
  %132 = call i32 @INSERT_W4_UB(i32 %127, i32 %128, i32 %129, i32 %130, i64 %131)
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %10, align 4
  %135 = mul nsw i32 4, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %16, align 4
  %143 = call i32 @LW4(i32* %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142)
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %16, align 4
  %148 = load i64, i64* %36, align 8
  %149 = call i32 @INSERT_W4_UB(i32 %144, i32 %145, i32 %146, i32 %147, i64 %148)
  %150 = load i64, i64* %37, align 8
  %151 = load i64, i64* %38, align 8
  %152 = load i64, i64* %39, align 8
  %153 = load i64, i64* %40, align 8
  %154 = load i64, i64* %29, align 8
  %155 = load i64, i64* %30, align 8
  %156 = call i32 @ILVEV_B2_UB(i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155)
  %157 = load i64, i64* %41, align 8
  %158 = load i64, i64* %42, align 8
  %159 = load i64, i64* %43, align 8
  %160 = load i64, i64* %44, align 8
  %161 = load i64, i64* %31, align 8
  %162 = load i64, i64* %32, align 8
  %163 = call i32 @ILVEV_B2_UB(i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162)
  %164 = load i64, i64* %29, align 8
  %165 = load i64, i64* %30, align 8
  %166 = load i64, i64* %31, align 8
  %167 = load i64, i64* %32, align 8
  %168 = load i64, i64* %28, align 8
  %169 = load i64, i64* %28, align 8
  %170 = load i64, i64* %28, align 8
  %171 = load i64, i64* %28, align 8
  %172 = load i64, i64* %46, align 8
  %173 = load i64, i64* %47, align 8
  %174 = load i64, i64* %48, align 8
  %175 = load i64, i64* %49, align 8
  %176 = call i32 @DOTP_UB4_UH(i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175)
  %177 = load i64, i64* %46, align 8
  %178 = load i64, i64* %47, align 8
  %179 = load i64, i64* %48, align 8
  %180 = load i64, i64* %49, align 8
  %181 = call i32 @SRARI_H4_UH(i64 %177, i64 %178, i64 %179, i64 %180, i32 7)
  %182 = load i64, i64* %46, align 8
  %183 = load i64, i64* %47, align 8
  %184 = load i64, i64* %48, align 8
  %185 = load i64, i64* %49, align 8
  %186 = call i32 @SAT_UH4_UH(i64 %182, i64 %183, i64 %184, i64 %185, i32 7)
  %187 = load i64, i64* %47, align 8
  %188 = load i64, i64* %46, align 8
  %189 = load i64, i64* %49, align 8
  %190 = load i64, i64* %48, align 8
  %191 = load i64, i64* %33, align 8
  %192 = load i64, i64* %34, align 8
  %193 = call i32 @PCKEV_B2_UB(i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192)
  %194 = load i64, i64* %33, align 8
  %195 = load i64, i64* %35, align 8
  %196 = load i64, i64* %34, align 8
  %197 = load i64, i64* %36, align 8
  %198 = load i64, i64* %33, align 8
  %199 = load i64, i64* %34, align 8
  %200 = call i32 @AVER_UB2_UB(i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199)
  %201 = load i64, i64* %33, align 8
  %202 = load i64, i64* %34, align 8
  %203 = load i32*, i32** %9, align 8
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @ST_W8(i64 %201, i64 %202, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %203, i32 %204)
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @HORIZ_2TAP_FILT_UH(i32, i32, i32, i64, i32) #1

declare dso_local i32 @SLDI_B3_UH(i64, i64, i64, i64, i64, i64, i32, i64, i64, i64) #1

declare dso_local i64 @__msa_pckod_d(i32, i32) #1

declare dso_local i32 @LW4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INSERT_W4_UB(i32, i32, i32, i32, i64) #1

declare dso_local i32 @ILVEV_B2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DOTP_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @SAT_UH4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @AVER_UB2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ST_W8(i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
