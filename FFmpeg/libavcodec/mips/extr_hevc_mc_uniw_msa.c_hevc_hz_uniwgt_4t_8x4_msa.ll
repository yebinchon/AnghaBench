; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_4t_8x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_4t_8x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32)* @hevc_hz_uniwgt_4t_8x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_uniwgt_4t_8x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
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
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 -1
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @LD_SH(i32* %47)
  store i32 %48, i32* %39, align 4
  %49 = load i32, i32* %39, align 4
  %50 = load i32, i32* %33, align 4
  %51 = load i32, i32* %34, align 4
  %52 = call i32 @SPLATI_H2_SH(i32 %49, i32 0, i32 1, i32 %50, i32 %51)
  %53 = load i32, i32* %14, align 4
  %54 = and i32 %53, 65535
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @__msa_fill_w(i32 %55)
  store i32 %56, i32* %43, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @__msa_fill_w(i32 %57)
  store i32 %58, i32* %44, align 4
  %59 = load i32, i32* %14, align 4
  %60 = mul nsw i32 %59, 128
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %16, align 4
  %62 = sub nsw i32 %61, 6
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @__msa_fill_h(i32 %63)
  store i32 %64, i32* %40, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @__msa_fill_h(i32 %65)
  store i32 %66, i32* %41, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @__msa_fill_h(i32 %67)
  store i32 %68, i32* %42, align 4
  %69 = load i32, i32* %40, align 4
  %70 = load i32, i32* %42, align 4
  %71 = call i32 @__msa_srar_h(i32 %69, i32 %70)
  store i32 %71, i32* %40, align 4
  %72 = load i32, i32* %41, align 4
  %73 = load i32, i32* %40, align 4
  %74 = call i32 @__msa_adds_s_h(i32 %72, i32 %73)
  store i32 %74, i32* %41, align 4
  %75 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = call i64 @LD_SB(i32* %76)
  store i64 %77, i64* %23, align 8
  %78 = load i64, i64* %23, align 8
  %79 = add nsw i64 %78, 2
  store i64 %79, i64* %24, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i64, i64* %19, align 8
  %83 = load i64, i64* %20, align 8
  %84 = load i64, i64* %21, align 8
  %85 = load i64, i64* %22, align 8
  %86 = call i32 @LD_SB4(i32* %80, i32 %81, i64 %82, i64 %83, i64 %84, i64 %85)
  %87 = load i64, i64* %19, align 8
  %88 = load i64, i64* %20, align 8
  %89 = load i64, i64* %21, align 8
  %90 = load i64, i64* %22, align 8
  %91 = call i32 @XORI_B4_128_SB(i64 %87, i64 %88, i64 %89, i64 %90)
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* %19, align 8
  %94 = load i64, i64* %19, align 8
  %95 = load i64, i64* %19, align 8
  %96 = load i64, i64* %23, align 8
  %97 = load i64, i64* %24, align 8
  %98 = load i64, i64* %25, align 8
  %99 = load i64, i64* %26, align 8
  %100 = call i32 @VSHF_B2_SB(i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99)
  %101 = load i64, i64* %20, align 8
  %102 = load i64, i64* %20, align 8
  %103 = load i64, i64* %20, align 8
  %104 = load i64, i64* %20, align 8
  %105 = load i64, i64* %23, align 8
  %106 = load i64, i64* %24, align 8
  %107 = load i64, i64* %27, align 8
  %108 = load i64, i64* %28, align 8
  %109 = call i32 @VSHF_B2_SB(i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108)
  %110 = load i64, i64* %21, align 8
  %111 = load i64, i64* %21, align 8
  %112 = load i64, i64* %21, align 8
  %113 = load i64, i64* %21, align 8
  %114 = load i64, i64* %23, align 8
  %115 = load i64, i64* %24, align 8
  %116 = load i64, i64* %29, align 8
  %117 = load i64, i64* %30, align 8
  %118 = call i32 @VSHF_B2_SB(i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117)
  %119 = load i64, i64* %22, align 8
  %120 = load i64, i64* %22, align 8
  %121 = load i64, i64* %22, align 8
  %122 = load i64, i64* %22, align 8
  %123 = load i64, i64* %23, align 8
  %124 = load i64, i64* %24, align 8
  %125 = load i64, i64* %31, align 8
  %126 = load i64, i64* %32, align 8
  %127 = call i32 @VSHF_B2_SB(i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126)
  %128 = load i64, i64* %25, align 8
  %129 = load i64, i64* %26, align 8
  %130 = load i32, i32* %33, align 4
  %131 = load i32, i32* %34, align 4
  %132 = call i32 @HEVC_FILT_4TAP_SH(i64 %128, i64 %129, i32 %130, i32 %131)
  store i32 %132, i32* %35, align 4
  %133 = load i64, i64* %27, align 8
  %134 = load i64, i64* %28, align 8
  %135 = load i32, i32* %33, align 4
  %136 = load i32, i32* %34, align 4
  %137 = call i32 @HEVC_FILT_4TAP_SH(i64 %133, i64 %134, i32 %135, i32 %136)
  store i32 %137, i32* %36, align 4
  %138 = load i64, i64* %29, align 8
  %139 = load i64, i64* %30, align 8
  %140 = load i32, i32* %33, align 4
  %141 = load i32, i32* %34, align 4
  %142 = call i32 @HEVC_FILT_4TAP_SH(i64 %138, i64 %139, i32 %140, i32 %141)
  store i32 %142, i32* %37, align 4
  %143 = load i64, i64* %31, align 8
  %144 = load i64, i64* %32, align 8
  %145 = load i32, i32* %33, align 4
  %146 = load i32, i32* %34, align 4
  %147 = call i32 @HEVC_FILT_4TAP_SH(i64 %143, i64 %144, i32 %145, i32 %146)
  store i32 %147, i32* %38, align 4
  %148 = load i32, i32* %35, align 4
  %149 = load i32, i32* %36, align 4
  %150 = load i32, i32* %37, align 4
  %151 = load i32, i32* %38, align 4
  %152 = load i32, i32* %43, align 4
  %153 = load i32, i32* %41, align 4
  %154 = load i32, i32* %44, align 4
  %155 = load i32, i32* %35, align 4
  %156 = load i32, i32* %36, align 4
  %157 = load i32, i32* %37, align 4
  %158 = load i32, i32* %38, align 4
  %159 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* %36, align 4
  %161 = load i32, i32* %35, align 4
  %162 = load i32, i32* %38, align 4
  %163 = load i32, i32* %37, align 4
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* %18, align 4
  %166 = call i32 @PCKEV_B2_UB(i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165)
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %18, align 4
  %169 = load i32*, i32** %11, align 8
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @ST_D4(i32 %167, i32 %168, i32 0, i32 1, i32 0, i32 1, i32* %169, i32 %170)
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_srar_h(i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
