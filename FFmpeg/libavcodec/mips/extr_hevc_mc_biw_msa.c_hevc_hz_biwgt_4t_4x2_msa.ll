; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_4x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_4x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32)* @hevc_hz_biwgt_4t_4x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_biwgt_4t_4x2_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
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
  store i32* %0, i32** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32* %4, i32** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %46 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 16
  %48 = call i64 @LD_SB(i32* %47)
  store i64 %48, i64* %34, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 -1
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %19, align 8
  %52 = call i64 @LD_SH(i32* %51)
  store i64 %52, i64* %42, align 8
  %53 = load i64, i64* %42, align 8
  %54 = load i64, i64* %28, align 8
  %55 = load i64, i64* %29, align 8
  %56 = call i32 @SPLATI_H2_SH(i64 %53, i32 0, i32 1, i64 %54, i64 %55)
  %57 = load i64, i64* %34, align 8
  %58 = add nsw i64 %57, 2
  store i64 %58, i64* %35, align 8
  %59 = load i32, i32* %22, align 4
  %60 = load i32, i32* %23, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %24, align 4
  %63 = shl i32 %61, %62
  store i32 %63, i32* %25, align 4
  %64 = load i32, i32* %20, align 4
  %65 = and i32 %64, 65535
  store i32 %65, i32* %20, align 4
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %21, align 4
  %68 = shl i32 %67, 16
  %69 = or i32 %66, %68
  store i32 %69, i32* %26, align 4
  %70 = load i32, i32* %21, align 4
  %71 = mul nsw i32 128, %70
  store i32 %71, i32* %27, align 4
  %72 = load i32, i32* %27, align 4
  %73 = shl i32 %72, 6
  store i32 %73, i32* %27, align 4
  %74 = load i32, i32* %27, align 4
  %75 = load i32, i32* %25, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %25, align 4
  %77 = load i32, i32* %25, align 4
  %78 = call i64 @__msa_fill_w(i32 %77)
  store i64 %78, i64* %44, align 8
  %79 = load i32, i32* %26, align 4
  %80 = call i64 @__msa_fill_w(i32 %79)
  store i64 %80, i64* %43, align 8
  %81 = load i32, i32* %24, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i64 @__msa_fill_w(i32 %82)
  store i64 %83, i64* %45, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i64, i64* %30, align 8
  %87 = load i64, i64* %31, align 8
  %88 = call i32 @LD_SB2(i32* %84, i32 %85, i64 %86, i64 %87)
  %89 = load i32*, i32** %15, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load i64, i64* %32, align 8
  %92 = load i64, i64* %33, align 8
  %93 = call i32 @LD_SH2(i32* %89, i32 %90, i64 %91, i64 %92)
  %94 = load i64, i64* %33, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i64, i64* %32, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i64 @__msa_ilvr_d(i32 %95, i32 %97)
  store i64 %98, i64* %32, align 8
  %99 = load i64, i64* %30, align 8
  %100 = load i64, i64* %31, align 8
  %101 = call i32 @XORI_B2_128_SB(i64 %99, i64 %100)
  %102 = load i64, i64* %30, align 8
  %103 = load i64, i64* %31, align 8
  %104 = load i64, i64* %30, align 8
  %105 = load i64, i64* %31, align 8
  %106 = load i64, i64* %34, align 8
  %107 = load i64, i64* %35, align 8
  %108 = load i64, i64* %36, align 8
  %109 = load i64, i64* %37, align 8
  %110 = call i32 @VSHF_B2_SB(i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109)
  %111 = load i64, i64* %36, align 8
  %112 = load i64, i64* %37, align 8
  %113 = load i64, i64* %28, align 8
  %114 = load i64, i64* %29, align 8
  %115 = call i64 @HEVC_FILT_4TAP_SH(i64 %111, i64 %112, i64 %113, i64 %114)
  store i64 %115, i64* %38, align 8
  %116 = load i64, i64* %38, align 8
  %117 = load i64, i64* %32, align 8
  %118 = load i64, i64* %39, align 8
  %119 = load i64, i64* %40, align 8
  %120 = call i32 @ILVRL_H2_SW(i64 %116, i64 %117, i64 %118, i64 %119)
  %121 = load i64, i64* %44, align 8
  %122 = load i64, i64* %39, align 8
  %123 = load i64, i64* %43, align 8
  %124 = call i64 @__msa_dpadd_s_w(i64 %121, i64 %122, i64 %123)
  store i64 %124, i64* %39, align 8
  %125 = load i64, i64* %44, align 8
  %126 = load i64, i64* %40, align 8
  %127 = load i64, i64* %43, align 8
  %128 = call i64 @__msa_dpadd_s_w(i64 %125, i64 %126, i64 %127)
  store i64 %128, i64* %40, align 8
  %129 = load i64, i64* %39, align 8
  %130 = load i64, i64* %40, align 8
  %131 = load i64, i64* %45, align 8
  %132 = call i32 @SRAR_W2_SW(i64 %129, i64 %130, i64 %131)
  %133 = load i64, i64* %40, align 8
  %134 = load i64, i64* %39, align 8
  %135 = call i64 @__msa_pckev_h(i64 %133, i64 %134)
  store i64 %135, i64* %41, align 8
  %136 = load i64, i64* %41, align 8
  %137 = call i32 @CLIP_SH_0_255(i64 %136)
  %138 = load i64, i64* %41, align 8
  %139 = load i64, i64* %41, align 8
  %140 = call i64 @__msa_pckev_b(i64 %138, i64 %139)
  store i64 %140, i64* %41, align 8
  %141 = load i64, i64* %41, align 8
  %142 = load i32*, i32** %17, align 8
  %143 = load i32, i32* %18, align 4
  %144 = call i32 @ST_W2(i64 %141, i32 0, i32 1, i32* %142, i32 %143)
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i64 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH2(i32*, i32, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i64, i64, i64, i64) #1

declare dso_local i32 @ILVRL_H2_SW(i64, i64, i64, i64) #1

declare dso_local i64 @__msa_dpadd_s_w(i64, i64, i64) #1

declare dso_local i32 @SRAR_W2_SW(i64, i64, i64) #1

declare dso_local i64 @__msa_pckev_h(i64, i64) #1

declare dso_local i32 @CLIP_SH_0_255(i64) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_W2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
