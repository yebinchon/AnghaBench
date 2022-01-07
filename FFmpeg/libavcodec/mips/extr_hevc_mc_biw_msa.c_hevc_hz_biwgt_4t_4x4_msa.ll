; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_4x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_4x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32)* @hevc_hz_biwgt_4t_4x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_biwgt_4t_4x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
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
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
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
  %48 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 16
  %50 = call i64 @LD_SB(i32* %49)
  store i64 %50, i64* %34, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 -1
  store i32* %52, i32** %13, align 8
  %53 = load i32*, i32** %19, align 8
  %54 = call i64 @LD_SH(i32* %53)
  store i64 %54, i64* %44, align 8
  %55 = load i64, i64* %44, align 8
  %56 = load i64, i64* %28, align 8
  %57 = load i64, i64* %29, align 8
  %58 = call i32 @SPLATI_H2_SH(i64 %55, i32 0, i32 1, i64 %56, i64 %57)
  %59 = load i64, i64* %34, align 8
  %60 = add nsw i64 %59, 2
  store i64 %60, i64* %35, align 8
  %61 = load i32, i32* %22, align 4
  %62 = load i32, i32* %23, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %24, align 4
  %65 = shl i32 %63, %64
  store i32 %65, i32* %25, align 4
  %66 = load i32, i32* %20, align 4
  %67 = and i32 %66, 65535
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* %21, align 4
  %70 = shl i32 %69, 16
  %71 = or i32 %68, %70
  store i32 %71, i32* %26, align 4
  %72 = load i32, i32* %21, align 4
  %73 = mul nsw i32 128, %72
  store i32 %73, i32* %27, align 4
  %74 = load i32, i32* %27, align 4
  %75 = shl i32 %74, 6
  store i32 %75, i32* %27, align 4
  %76 = load i32, i32* %27, align 4
  %77 = load i32, i32* %25, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %25, align 4
  %79 = load i32, i32* %25, align 4
  %80 = call i32 @__msa_fill_w(i32 %79)
  store i32 %80, i32* %46, align 4
  %81 = load i32, i32* %26, align 4
  %82 = call i32 @__msa_fill_w(i32 %81)
  store i32 %82, i32* %45, align 4
  %83 = load i32, i32* %24, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @__msa_fill_w(i32 %84)
  store i32 %85, i32* %47, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i64, i64* %30, align 8
  %89 = load i64, i64* %31, align 8
  %90 = load i64, i64* %32, align 8
  %91 = load i64, i64* %33, align 8
  %92 = call i32 @LD_SB4(i32* %86, i32 %87, i64 %88, i64 %89, i64 %90, i64 %91)
  %93 = load i64, i64* %30, align 8
  %94 = load i64, i64* %31, align 8
  %95 = load i64, i64* %32, align 8
  %96 = load i64, i64* %33, align 8
  %97 = call i32 @XORI_B4_128_SB(i64 %93, i64 %94, i64 %95, i64 %96)
  %98 = load i32*, i32** %15, align 8
  %99 = load i32, i32* %16, align 4
  %100 = load i64, i64* %40, align 8
  %101 = load i64, i64* %41, align 8
  %102 = load i64, i64* %42, align 8
  %103 = load i64, i64* %43, align 8
  %104 = call i32 @LD_SH4(i32* %98, i32 %99, i64 %100, i64 %101, i64 %102, i64 %103)
  %105 = load i64, i64* %41, align 8
  %106 = load i64, i64* %40, align 8
  %107 = load i64, i64* %43, align 8
  %108 = load i64, i64* %42, align 8
  %109 = load i64, i64* %40, align 8
  %110 = load i64, i64* %41, align 8
  %111 = call i32 @ILVR_D2_SH(i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110)
  %112 = load i64, i64* %30, align 8
  %113 = load i64, i64* %31, align 8
  %114 = load i64, i64* %30, align 8
  %115 = load i64, i64* %31, align 8
  %116 = load i64, i64* %34, align 8
  %117 = load i64, i64* %35, align 8
  %118 = load i64, i64* %38, align 8
  %119 = load i64, i64* %39, align 8
  %120 = call i32 @VSHF_B2_SB(i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119)
  %121 = load i64, i64* %38, align 8
  %122 = load i64, i64* %39, align 8
  %123 = load i64, i64* %28, align 8
  %124 = load i64, i64* %29, align 8
  %125 = call i64 @HEVC_FILT_4TAP_SH(i64 %121, i64 %122, i64 %123, i64 %124)
  store i64 %125, i64* %36, align 8
  %126 = load i64, i64* %32, align 8
  %127 = load i64, i64* %33, align 8
  %128 = load i64, i64* %32, align 8
  %129 = load i64, i64* %33, align 8
  %130 = load i64, i64* %34, align 8
  %131 = load i64, i64* %35, align 8
  %132 = load i64, i64* %38, align 8
  %133 = load i64, i64* %39, align 8
  %134 = call i32 @VSHF_B2_SB(i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133)
  %135 = load i64, i64* %38, align 8
  %136 = load i64, i64* %39, align 8
  %137 = load i64, i64* %28, align 8
  %138 = load i64, i64* %29, align 8
  %139 = call i64 @HEVC_FILT_4TAP_SH(i64 %135, i64 %136, i64 %137, i64 %138)
  store i64 %139, i64* %37, align 8
  %140 = load i64, i64* %36, align 8
  %141 = load i64, i64* %37, align 8
  %142 = load i64, i64* %40, align 8
  %143 = load i64, i64* %41, align 8
  %144 = load i32, i32* %45, align 4
  %145 = load i32, i32* %47, align 4
  %146 = load i32, i32* %46, align 4
  %147 = load i64, i64* %36, align 8
  %148 = load i64, i64* %37, align 8
  %149 = call i32 @HEVC_BIW_RND_CLIP2(i64 %140, i64 %141, i64 %142, i64 %143, i32 %144, i32 %145, i32 %146, i64 %147, i64 %148)
  %150 = load i64, i64* %37, align 8
  %151 = load i64, i64* %36, align 8
  %152 = call i64 @__msa_pckev_b(i64 %150, i64 %151)
  store i64 %152, i64* %36, align 8
  %153 = load i64, i64* %36, align 8
  %154 = load i32*, i32** %17, align 8
  %155 = load i32, i32* %18, align 4
  %156 = call i32 @ST_W4(i64 %153, i32 0, i32 1, i32 2, i32 3, i32* %154, i32 %155)
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_D2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP2(i64, i64, i64, i64, i32, i32, i32, i64, i64) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
