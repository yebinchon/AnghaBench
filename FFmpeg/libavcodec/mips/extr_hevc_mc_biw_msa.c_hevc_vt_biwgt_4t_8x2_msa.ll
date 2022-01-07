; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_8x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_8x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32)* @hevc_vt_biwgt_4t_8x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_biwgt_4t_8x2_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
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
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
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
  %47 = load i32, i32* %14, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = sext i32 %47 to i64
  %50 = sub i64 0, %49
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %13, align 8
  %52 = load i32, i32* %22, align 4
  %53 = load i32, i32* %23, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %24, align 4
  %56 = shl i32 %54, %55
  store i32 %56, i32* %25, align 4
  %57 = load i32, i32* %20, align 4
  %58 = and i32 %57, 65535
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %21, align 4
  %61 = shl i32 %60, 16
  %62 = or i32 %59, %61
  store i32 %62, i32* %26, align 4
  %63 = load i32, i32* %21, align 4
  %64 = mul nsw i32 128, %63
  store i32 %64, i32* %27, align 4
  %65 = load i32, i32* %27, align 4
  %66 = shl i32 %65, 6
  store i32 %66, i32* %27, align 4
  %67 = load i32, i32* %27, align 4
  %68 = load i32, i32* %25, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %25, align 4
  %70 = load i32, i32* %25, align 4
  %71 = call i32 @__msa_fill_w(i32 %70)
  store i32 %71, i32* %45, align 4
  %72 = load i32, i32* %26, align 4
  %73 = call i32 @__msa_fill_w(i32 %72)
  store i32 %73, i32* %44, align 4
  %74 = load i32, i32* %24, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @__msa_fill_w(i32 %75)
  store i32 %76, i32* %46, align 4
  %77 = load i32*, i32** %19, align 8
  %78 = call i64 @LD_SH(i32* %77)
  store i64 %78, i64* %43, align 8
  %79 = load i64, i64* %43, align 8
  %80 = load i64, i64* %41, align 8
  %81 = load i64, i64* %42, align 8
  %82 = call i32 @SPLATI_H2_SH(i64 %79, i32 0, i32 1, i64 %80, i64 %81)
  %83 = load i32*, i32** %13, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %28, align 4
  %86 = load i32, i32* %29, align 4
  %87 = load i32, i32* %30, align 4
  %88 = call i32 @LD_SB3(i32* %83, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %14, align 4
  %90 = mul nsw i32 3, %89
  %91 = load i32*, i32** %13, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %13, align 8
  %94 = load i32, i32* %28, align 4
  %95 = load i32, i32* %29, align 4
  %96 = load i32, i32* %30, align 4
  %97 = call i32 @XORI_B3_128_SB(i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %29, align 4
  %99 = load i32, i32* %28, align 4
  %100 = load i32, i32* %30, align 4
  %101 = load i32, i32* %29, align 4
  %102 = load i32, i32* %37, align 4
  %103 = load i32, i32* %39, align 4
  %104 = call i32 @ILVR_B2_SB(i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32*, i32** %13, align 8
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %31, align 4
  %108 = load i32, i32* %32, align 4
  %109 = call i32 @LD_SB2(i32* %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32*, i32** %15, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load i64, i64* %33, align 8
  %113 = load i64, i64* %34, align 8
  %114 = call i32 @LD_SH2(i32* %110, i32 %111, i64 %112, i64 %113)
  %115 = load i32, i32* %31, align 4
  %116 = load i32, i32* %32, align 4
  %117 = call i32 @XORI_B2_128_SB(i32 %115, i32 %116)
  %118 = load i32, i32* %31, align 4
  %119 = load i32, i32* %30, align 4
  %120 = load i32, i32* %32, align 4
  %121 = load i32, i32* %31, align 4
  %122 = load i32, i32* %38, align 4
  %123 = load i32, i32* %40, align 4
  %124 = call i32 @ILVR_B2_SB(i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123)
  %125 = load i32, i32* %37, align 4
  %126 = load i32, i32* %38, align 4
  %127 = load i64, i64* %41, align 8
  %128 = load i64, i64* %42, align 8
  %129 = call i64 @HEVC_FILT_4TAP_SH(i32 %125, i32 %126, i64 %127, i64 %128)
  store i64 %129, i64* %35, align 8
  %130 = load i32, i32* %39, align 4
  %131 = load i32, i32* %40, align 4
  %132 = load i64, i64* %41, align 8
  %133 = load i64, i64* %42, align 8
  %134 = call i64 @HEVC_FILT_4TAP_SH(i32 %130, i32 %131, i64 %132, i64 %133)
  store i64 %134, i64* %36, align 8
  %135 = load i64, i64* %35, align 8
  %136 = load i64, i64* %36, align 8
  %137 = load i64, i64* %33, align 8
  %138 = load i64, i64* %34, align 8
  %139 = load i32, i32* %44, align 4
  %140 = load i32, i32* %46, align 4
  %141 = load i32, i32* %45, align 4
  %142 = load i64, i64* %35, align 8
  %143 = load i64, i64* %36, align 8
  %144 = call i32 @HEVC_BIW_RND_CLIP2(i64 %135, i64 %136, i64 %137, i64 %138, i32 %139, i32 %140, i32 %141, i64 %142, i64 %143)
  %145 = load i64, i64* %36, align 8
  %146 = trunc i64 %145 to i32
  %147 = load i64, i64* %35, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i64 @__msa_pckev_b(i32 %146, i32 %148)
  store i64 %149, i64* %35, align 8
  %150 = load i64, i64* %35, align 8
  %151 = load i32*, i32** %17, align 8
  %152 = load i32, i32* %18, align 4
  %153 = call i32 @ST_D2(i64 %150, i32 0, i32 1, i32* %151, i32 %152)
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @LD_SH2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i32, i32, i64, i64) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP2(i64, i64, i64, i64, i32, i32, i32, i64, i64) #1

declare dso_local i64 @__msa_pckev_b(i32, i32) #1

declare dso_local i32 @ST_D2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
