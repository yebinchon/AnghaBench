; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_4t_8x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_4t_8x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32)* @hevc_hz_uniwgt_4t_8x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_uniwgt_4t_8x2_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
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
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %36 = load i32, i32* @ff_hevc_mask_arr, align 4
  %37 = call i64 @LD_SB(i32 %36)
  store i64 %37, i64* %24, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 -1
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i64 @LD_SH(i32* %40)
  store i64 %41, i64* %30, align 8
  %42 = load i64, i64* %30, align 8
  %43 = load i64, i64* %18, align 8
  %44 = load i64, i64* %19, align 8
  %45 = call i32 @SPLATI_H2_SH(i64 %42, i32 0, i32 1, i64 %43, i64 %44)
  %46 = load i32, i32* %14, align 4
  %47 = and i32 %46, 65535
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @__msa_fill_w(i32 %48)
  store i32 %49, i32* %34, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @__msa_fill_w(i32 %50)
  store i32 %51, i32* %35, align 4
  %52 = load i32, i32* %14, align 4
  %53 = mul nsw i32 %52, 128
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %16, align 4
  %55 = sub nsw i32 %54, 6
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i64 @__msa_fill_h(i32 %56)
  store i64 %57, i64* %31, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call i64 @__msa_fill_h(i32 %58)
  store i64 %59, i64* %32, align 8
  %60 = load i32, i32* %16, align 4
  %61 = call i64 @__msa_fill_h(i32 %60)
  store i64 %61, i64* %33, align 8
  %62 = load i64, i64* %31, align 8
  %63 = load i64, i64* %33, align 8
  %64 = call i64 @__msa_srar_h(i64 %62, i64 %63)
  store i64 %64, i64* %31, align 8
  %65 = load i64, i64* %32, align 8
  %66 = load i64, i64* %31, align 8
  %67 = call i64 @__msa_adds_s_h(i64 %65, i64 %66)
  store i64 %67, i64* %32, align 8
  %68 = load i64, i64* %24, align 8
  %69 = add nsw i64 %68, 2
  store i64 %69, i64* %25, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i64, i64* %22, align 8
  %73 = load i64, i64* %23, align 8
  %74 = call i32 @LD_SB2(i32* %70, i32 %71, i64 %72, i64 %73)
  %75 = load i64, i64* %22, align 8
  %76 = load i64, i64* %23, align 8
  %77 = call i32 @XORI_B2_128_SB(i64 %75, i64 %76)
  %78 = load i64, i64* %22, align 8
  %79 = load i64, i64* %22, align 8
  %80 = load i64, i64* %22, align 8
  %81 = load i64, i64* %22, align 8
  %82 = load i64, i64* %24, align 8
  %83 = load i64, i64* %25, align 8
  %84 = load i64, i64* %26, align 8
  %85 = load i64, i64* %27, align 8
  %86 = call i32 @VSHF_B2_SB(i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85)
  %87 = load i64, i64* %23, align 8
  %88 = load i64, i64* %23, align 8
  %89 = load i64, i64* %23, align 8
  %90 = load i64, i64* %23, align 8
  %91 = load i64, i64* %24, align 8
  %92 = load i64, i64* %25, align 8
  %93 = load i64, i64* %28, align 8
  %94 = load i64, i64* %29, align 8
  %95 = call i32 @VSHF_B2_SB(i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94)
  %96 = load i64, i64* %26, align 8
  %97 = load i64, i64* %27, align 8
  %98 = load i64, i64* %18, align 8
  %99 = load i64, i64* %19, align 8
  %100 = call i64 @HEVC_FILT_4TAP_SH(i64 %96, i64 %97, i64 %98, i64 %99)
  store i64 %100, i64* %20, align 8
  %101 = load i64, i64* %28, align 8
  %102 = load i64, i64* %29, align 8
  %103 = load i64, i64* %18, align 8
  %104 = load i64, i64* %19, align 8
  %105 = call i64 @HEVC_FILT_4TAP_SH(i64 %101, i64 %102, i64 %103, i64 %104)
  store i64 %105, i64* %21, align 8
  %106 = load i64, i64* %20, align 8
  %107 = load i64, i64* %21, align 8
  %108 = load i32, i32* %34, align 4
  %109 = load i64, i64* %32, align 8
  %110 = load i32, i32* %35, align 4
  %111 = load i64, i64* %20, align 8
  %112 = load i64, i64* %21, align 8
  %113 = call i32 @HEVC_UNIW_RND_CLIP2_MAX_SATU_H(i64 %106, i64 %107, i32 %108, i64 %109, i32 %110, i64 %111, i64 %112)
  %114 = load i64, i64* %21, align 8
  %115 = load i64, i64* %20, align 8
  %116 = call i64 @__msa_pckev_b(i64 %114, i64 %115)
  store i64 %116, i64* %17, align 8
  %117 = load i64, i64* %17, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @ST_D2(i64 %117, i32 0, i32 1, i32* %118, i32 %119)
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i64 @__msa_srar_h(i64, i64) #1

declare dso_local i64 @__msa_adds_s_h(i64, i64) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP2_MAX_SATU_H(i64, i64, i32, i64, i32, i64, i64) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_D2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
