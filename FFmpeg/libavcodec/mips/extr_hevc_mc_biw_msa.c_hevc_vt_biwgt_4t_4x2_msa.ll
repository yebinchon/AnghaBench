; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_4x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_4x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32)* @hevc_vt_biwgt_4t_4x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_biwgt_4t_4x2_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
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
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
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
  %51 = load i32, i32* %14, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = sext i32 %51 to i64
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32* %55, i32** %13, align 8
  %56 = load i32, i32* %22, align 4
  %57 = load i32, i32* %23, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %24, align 4
  %60 = shl i32 %58, %59
  store i32 %60, i32* %26, align 4
  %61 = load i32, i32* %20, align 4
  %62 = and i32 %61, 65535
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %21, align 4
  %65 = shl i32 %64, 16
  %66 = or i32 %63, %65
  store i32 %66, i32* %25, align 4
  %67 = load i32, i32* %21, align 4
  %68 = mul nsw i32 128, %67
  store i32 %68, i32* %27, align 4
  %69 = load i32, i32* %27, align 4
  %70 = shl i32 %69, 6
  store i32 %70, i32* %27, align 4
  %71 = load i32, i32* %27, align 4
  %72 = load i32, i32* %26, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %26, align 4
  %74 = load i32, i32* %26, align 4
  %75 = call i64 @__msa_fill_w(i32 %74)
  store i64 %75, i64* %49, align 8
  %76 = load i32, i32* %25, align 4
  %77 = call i64 @__msa_fill_w(i32 %76)
  store i64 %77, i64* %48, align 8
  %78 = load i32, i32* %24, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i64 @__msa_fill_w(i32 %79)
  store i64 %80, i64* %50, align 8
  %81 = load i32*, i32** %19, align 8
  %82 = call i64 @LD_SH(i32* %81)
  store i64 %82, i64* %46, align 8
  %83 = load i64, i64* %46, align 8
  %84 = load i64, i64* %44, align 8
  %85 = load i64, i64* %45, align 8
  %86 = call i32 @SPLATI_H2_SH(i64 %83, i32 0, i32 1, i64 %84, i64 %85)
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i64, i64* %28, align 8
  %90 = load i64, i64* %29, align 8
  %91 = load i64, i64* %30, align 8
  %92 = call i32 @LD_SB3(i32* %87, i32 %88, i64 %89, i64 %90, i64 %91)
  %93 = load i32, i32* %14, align 4
  %94 = mul nsw i32 3, %93
  %95 = load i32*, i32** %13, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %13, align 8
  %98 = load i64, i64* %29, align 8
  %99 = load i64, i64* %28, align 8
  %100 = load i64, i64* %30, align 8
  %101 = load i64, i64* %29, align 8
  %102 = load i64, i64* %36, align 8
  %103 = load i64, i64* %38, align 8
  %104 = call i32 @ILVR_B2_SB(i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103)
  %105 = load i64, i64* %38, align 8
  %106 = trunc i64 %105 to i32
  %107 = load i64, i64* %36, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i64 @__msa_ilvr_d(i32 %106, i32 %108)
  store i64 %109, i64* %40, align 8
  %110 = load i64, i64* %40, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i64 @__msa_xori_b(i32 %111, i32 128)
  store i64 %112, i64* %40, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load i64, i64* %31, align 8
  %116 = load i64, i64* %32, align 8
  %117 = call i32 @LD_SB2(i32* %113, i32 %114, i64 %115, i64 %116)
  %118 = load i32, i32* %14, align 4
  %119 = mul nsw i32 2, %118
  %120 = load i32*, i32** %13, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %13, align 8
  %123 = load i32*, i32** %15, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load i64, i64* %33, align 8
  %126 = load i64, i64* %34, align 8
  %127 = call i32 @LD_SH2(i32* %123, i32 %124, i64 %125, i64 %126)
  %128 = load i32, i32* %16, align 4
  %129 = mul nsw i32 2, %128
  %130 = load i32*, i32** %15, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32* %132, i32** %15, align 8
  %133 = load i64, i64* %34, align 8
  %134 = trunc i64 %133 to i32
  %135 = load i64, i64* %33, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i64 @__msa_ilvr_d(i32 %134, i32 %136)
  store i64 %137, i64* %33, align 8
  %138 = load i64, i64* %31, align 8
  %139 = load i64, i64* %30, align 8
  %140 = load i64, i64* %32, align 8
  %141 = load i64, i64* %31, align 8
  %142 = load i64, i64* %37, align 8
  %143 = load i64, i64* %39, align 8
  %144 = call i32 @ILVR_B2_SB(i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143)
  %145 = load i64, i64* %39, align 8
  %146 = trunc i64 %145 to i32
  %147 = load i64, i64* %37, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i64 @__msa_ilvr_d(i32 %146, i32 %148)
  store i64 %149, i64* %41, align 8
  %150 = load i64, i64* %41, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i64 @__msa_xori_b(i32 %151, i32 128)
  store i64 %152, i64* %41, align 8
  %153 = load i64, i64* %40, align 8
  %154 = load i64, i64* %41, align 8
  %155 = load i64, i64* %44, align 8
  %156 = load i64, i64* %45, align 8
  %157 = call i64 @HEVC_FILT_4TAP_SH(i64 %153, i64 %154, i64 %155, i64 %156)
  store i64 %157, i64* %35, align 8
  %158 = load i64, i64* %35, align 8
  %159 = load i64, i64* %33, align 8
  %160 = load i64, i64* %42, align 8
  %161 = load i64, i64* %43, align 8
  %162 = call i32 @ILVRL_H2_SW(i64 %158, i64 %159, i64 %160, i64 %161)
  %163 = load i64, i64* %49, align 8
  %164 = load i64, i64* %42, align 8
  %165 = load i64, i64* %48, align 8
  %166 = call i64 @__msa_dpadd_s_w(i64 %163, i64 %164, i64 %165)
  store i64 %166, i64* %42, align 8
  %167 = load i64, i64* %49, align 8
  %168 = load i64, i64* %43, align 8
  %169 = load i64, i64* %48, align 8
  %170 = call i64 @__msa_dpadd_s_w(i64 %167, i64 %168, i64 %169)
  store i64 %170, i64* %43, align 8
  %171 = load i64, i64* %42, align 8
  %172 = load i64, i64* %43, align 8
  %173 = load i64, i64* %50, align 8
  %174 = call i32 @SRAR_W2_SW(i64 %171, i64 %172, i64 %173)
  %175 = load i64, i64* %43, align 8
  %176 = load i64, i64* %42, align 8
  %177 = call i64 @__msa_pckev_h(i64 %175, i64 %176)
  store i64 %177, i64* %47, align 8
  %178 = load i64, i64* %47, align 8
  %179 = call i32 @CLIP_SH_0_255(i64 %178)
  %180 = load i64, i64* %47, align 8
  %181 = load i64, i64* %47, align 8
  %182 = call i64 @__msa_pckev_b(i64 %180, i64 %181)
  store i64 %182, i64* %47, align 8
  %183 = load i64, i64* %47, align 8
  %184 = load i32*, i32** %17, align 8
  %185 = load i32, i32* %18, align 4
  %186 = call i32 @ST_W2(i64 %183, i32 0, i32 1, i32* %184, i32 %185)
  ret void
}

declare dso_local i64 @__msa_fill_w(i32) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i64 @__msa_xori_b(i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH2(i32*, i32, i64, i64) #1

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
