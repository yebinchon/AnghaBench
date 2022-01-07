; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_8x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_8x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32)* @hevc_vt_uniwgt_4t_8x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_uniwgt_4t_8x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %19 = alloca i32, align 4
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
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = sext i32 %44 to i64
  %47 = sub i64 0, %46
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32* %48, i32** %9, align 8
  %49 = load i32, i32* %14, align 4
  %50 = and i32 %49, 65535
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @__msa_fill_w(i32 %51)
  store i32 %52, i32* %42, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @__msa_fill_w(i32 %53)
  store i32 %54, i32* %43, align 4
  %55 = load i32, i32* %14, align 4
  %56 = mul nsw i32 %55, 128
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %16, align 4
  %58 = sub nsw i32 %57, 6
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @__msa_fill_h(i32 %59)
  store i32 %60, i32* %39, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @__msa_fill_h(i32 %61)
  store i32 %62, i32* %40, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @__msa_fill_h(i32 %63)
  store i32 %64, i32* %41, align 4
  %65 = load i32, i32* %39, align 4
  %66 = load i32, i32* %41, align 4
  %67 = call i32 @__msa_srar_h(i32 %65, i32 %66)
  store i32 %67, i32* %39, align 4
  %68 = load i32, i32* %40, align 4
  %69 = load i32, i32* %39, align 4
  %70 = call i32 @__msa_adds_s_h(i32 %68, i32 %69)
  store i32 %70, i32* %40, align 4
  %71 = load i32*, i32** %13, align 8
  %72 = call i32 @LD_SH(i32* %71)
  store i32 %72, i32* %38, align 4
  %73 = load i32, i32* %38, align 4
  %74 = load i32, i32* %32, align 4
  %75 = load i32, i32* %33, align 4
  %76 = call i32 @SPLATI_H2_SH(i32 %73, i32 0, i32 1, i32 %74, i32 %75)
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* %22, align 4
  %83 = load i32, i32* %23, align 4
  %84 = load i32, i32* %28, align 4
  %85 = load i32, i32* %29, align 4
  %86 = call i32 @LD_SB7(i32* %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 3, %87
  %89 = load i32*, i32** %9, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %9, align 8
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* %28, align 4
  %98 = load i32, i32* %29, align 4
  %99 = call i32 @XORI_B7_128_SB(i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %24, align 4
  %105 = load i32, i32* %26, align 4
  %106 = call i32 @ILVR_B2_SB(i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* %25, align 4
  %112 = load i32, i32* %27, align 4
  %113 = call i32 @ILVR_B2_SB(i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %28, align 4
  %115 = load i32, i32* %23, align 4
  %116 = load i32, i32* %29, align 4
  %117 = load i32, i32* %28, align 4
  %118 = load i32, i32* %30, align 4
  %119 = load i32, i32* %31, align 4
  %120 = call i32 @ILVR_B2_SB(i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %24, align 4
  %122 = load i32, i32* %25, align 4
  %123 = load i32, i32* %32, align 4
  %124 = load i32, i32* %33, align 4
  %125 = call i32 @HEVC_FILT_4TAP_SH(i32 %121, i32 %122, i32 %123, i32 %124)
  store i32 %125, i32* %34, align 4
  %126 = load i32, i32* %26, align 4
  %127 = load i32, i32* %27, align 4
  %128 = load i32, i32* %32, align 4
  %129 = load i32, i32* %33, align 4
  %130 = call i32 @HEVC_FILT_4TAP_SH(i32 %126, i32 %127, i32 %128, i32 %129)
  store i32 %130, i32* %35, align 4
  %131 = load i32, i32* %25, align 4
  %132 = load i32, i32* %30, align 4
  %133 = load i32, i32* %32, align 4
  %134 = load i32, i32* %33, align 4
  %135 = call i32 @HEVC_FILT_4TAP_SH(i32 %131, i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %36, align 4
  %136 = load i32, i32* %27, align 4
  %137 = load i32, i32* %31, align 4
  %138 = load i32, i32* %32, align 4
  %139 = load i32, i32* %33, align 4
  %140 = call i32 @HEVC_FILT_4TAP_SH(i32 %136, i32 %137, i32 %138, i32 %139)
  store i32 %140, i32* %37, align 4
  %141 = load i32, i32* %34, align 4
  %142 = load i32, i32* %35, align 4
  %143 = load i32, i32* %36, align 4
  %144 = load i32, i32* %37, align 4
  %145 = load i32, i32* %42, align 4
  %146 = load i32, i32* %40, align 4
  %147 = load i32, i32* %43, align 4
  %148 = load i32, i32* %34, align 4
  %149 = load i32, i32* %35, align 4
  %150 = load i32, i32* %36, align 4
  %151 = load i32, i32* %37, align 4
  %152 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* %35, align 4
  %154 = load i32, i32* %34, align 4
  %155 = load i32, i32* %37, align 4
  %156 = load i32, i32* %36, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %18, align 4
  %159 = call i32 @PCKEV_B2_UB(i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %18, align 4
  %162 = load i32*, i32** %11, align 8
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @ST_D4(i32 %160, i32 %161, i32 0, i32 1, i32 0, i32 1, i32* %162, i32 %163)
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_srar_h(i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB7(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B7_128_SB(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
