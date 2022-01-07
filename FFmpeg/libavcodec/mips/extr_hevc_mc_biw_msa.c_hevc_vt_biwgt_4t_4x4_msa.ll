; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_4x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_4x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32)* @hevc_vt_biwgt_4t_4x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_biwgt_4t_4x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
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
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
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
  %56 = load i32, i32* %14, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = sext i32 %56 to i64
  %59 = sub i64 0, %58
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32* %60, i32** %13, align 8
  %61 = load i32, i32* %22, align 4
  %62 = load i32, i32* %23, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %24, align 4
  %65 = shl i32 %63, %64
  store i32 %65, i32* %26, align 4
  %66 = load i32, i32* %20, align 4
  %67 = and i32 %66, 65535
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* %21, align 4
  %70 = shl i32 %69, 16
  %71 = or i32 %68, %70
  store i32 %71, i32* %25, align 4
  %72 = load i32, i32* %21, align 4
  %73 = mul nsw i32 128, %72
  store i32 %73, i32* %27, align 4
  %74 = load i32, i32* %27, align 4
  %75 = shl i32 %74, 6
  store i32 %75, i32* %27, align 4
  %76 = load i32, i32* %27, align 4
  %77 = load i32, i32* %26, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %26, align 4
  %79 = load i32, i32* %26, align 4
  %80 = call i32 @__msa_fill_w(i32 %79)
  store i32 %80, i32* %54, align 4
  %81 = load i32, i32* %25, align 4
  %82 = call i32 @__msa_fill_w(i32 %81)
  store i32 %82, i32* %53, align 4
  %83 = load i32, i32* %24, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @__msa_fill_w(i32 %84)
  store i32 %85, i32* %55, align 4
  %86 = load i32*, i32** %19, align 8
  %87 = call i64 @LD_SH(i32* %86)
  store i64 %87, i64* %52, align 8
  %88 = load i64, i64* %52, align 8
  %89 = load i64, i64* %50, align 8
  %90 = load i64, i64* %51, align 8
  %91 = call i32 @SPLATI_H2_SH(i64 %88, i32 0, i32 1, i64 %89, i64 %90)
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i64, i64* %28, align 8
  %95 = load i64, i64* %29, align 8
  %96 = load i64, i64* %30, align 8
  %97 = call i32 @LD_SB3(i32* %92, i32 %93, i64 %94, i64 %95, i64 %96)
  %98 = load i32, i32* %14, align 4
  %99 = mul nsw i32 3, %98
  %100 = load i32*, i32** %13, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %13, align 8
  %103 = load i64, i64* %29, align 8
  %104 = load i64, i64* %28, align 8
  %105 = load i64, i64* %30, align 8
  %106 = load i64, i64* %29, align 8
  %107 = load i64, i64* %39, align 8
  %108 = load i64, i64* %42, align 8
  %109 = call i32 @ILVR_B2_SB(i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108)
  %110 = load i64, i64* %42, align 8
  %111 = trunc i64 %110 to i32
  %112 = load i64, i64* %39, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i64 @__msa_ilvr_d(i32 %111, i32 %113)
  store i64 %114, i64* %45, align 8
  %115 = load i64, i64* %45, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i64 @__msa_xori_b(i32 %116, i32 128)
  store i64 %117, i64* %45, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load i64, i64* %31, align 8
  %121 = load i64, i64* %32, align 8
  %122 = load i64, i64* %33, align 8
  %123 = load i64, i64* %34, align 8
  %124 = call i32 @LD_SB4(i32* %118, i32 %119, i64 %120, i64 %121, i64 %122, i64 %123)
  %125 = load i32, i32* %14, align 4
  %126 = mul nsw i32 4, %125
  %127 = load i32*, i32** %13, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %13, align 8
  %130 = load i32*, i32** %15, align 8
  %131 = load i32, i32* %16, align 4
  %132 = load i64, i64* %35, align 8
  %133 = load i64, i64* %36, align 8
  %134 = load i64, i64* %37, align 8
  %135 = load i64, i64* %38, align 8
  %136 = call i32 @LD_SH4(i32* %130, i32 %131, i64 %132, i64 %133, i64 %134, i64 %135)
  %137 = load i32, i32* %16, align 4
  %138 = mul nsw i32 4, %137
  %139 = load i32*, i32** %15, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %15, align 8
  %142 = load i64, i64* %36, align 8
  %143 = load i64, i64* %35, align 8
  %144 = load i64, i64* %38, align 8
  %145 = load i64, i64* %37, align 8
  %146 = load i64, i64* %35, align 8
  %147 = load i64, i64* %36, align 8
  %148 = call i32 @ILVR_D2_SH(i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147)
  %149 = load i64, i64* %31, align 8
  %150 = load i64, i64* %30, align 8
  %151 = load i64, i64* %32, align 8
  %152 = load i64, i64* %31, align 8
  %153 = load i64, i64* %33, align 8
  %154 = load i64, i64* %32, align 8
  %155 = load i64, i64* %34, align 8
  %156 = load i64, i64* %33, align 8
  %157 = load i64, i64* %40, align 8
  %158 = load i64, i64* %43, align 8
  %159 = load i64, i64* %41, align 8
  %160 = load i64, i64* %44, align 8
  %161 = call i32 @ILVR_B4_SB(i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160)
  %162 = load i64, i64* %43, align 8
  %163 = load i64, i64* %40, align 8
  %164 = load i64, i64* %44, align 8
  %165 = load i64, i64* %41, align 8
  %166 = load i64, i64* %46, align 8
  %167 = load i64, i64* %47, align 8
  %168 = call i32 @ILVR_D2_SB(i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167)
  %169 = load i64, i64* %46, align 8
  %170 = load i64, i64* %47, align 8
  %171 = call i32 @XORI_B2_128_SB(i64 %169, i64 %170)
  %172 = load i64, i64* %45, align 8
  %173 = load i64, i64* %46, align 8
  %174 = load i64, i64* %50, align 8
  %175 = load i64, i64* %51, align 8
  %176 = call i64 @HEVC_FILT_4TAP_SH(i64 %172, i64 %173, i64 %174, i64 %175)
  store i64 %176, i64* %48, align 8
  %177 = load i64, i64* %46, align 8
  %178 = load i64, i64* %47, align 8
  %179 = load i64, i64* %50, align 8
  %180 = load i64, i64* %51, align 8
  %181 = call i64 @HEVC_FILT_4TAP_SH(i64 %177, i64 %178, i64 %179, i64 %180)
  store i64 %181, i64* %49, align 8
  %182 = load i64, i64* %48, align 8
  %183 = load i64, i64* %49, align 8
  %184 = load i64, i64* %35, align 8
  %185 = load i64, i64* %36, align 8
  %186 = load i32, i32* %53, align 4
  %187 = load i32, i32* %55, align 4
  %188 = load i32, i32* %54, align 4
  %189 = load i64, i64* %48, align 8
  %190 = load i64, i64* %49, align 8
  %191 = call i32 @HEVC_BIW_RND_CLIP2(i64 %182, i64 %183, i64 %184, i64 %185, i32 %186, i32 %187, i32 %188, i64 %189, i64 %190)
  %192 = load i64, i64* %49, align 8
  %193 = load i64, i64* %48, align 8
  %194 = call i64 @__msa_pckev_b(i64 %192, i64 %193)
  store i64 %194, i64* %48, align 8
  %195 = load i64, i64* %48, align 8
  %196 = load i32*, i32** %17, align 8
  %197 = load i32, i32* %18, align 4
  %198 = call i32 @ST_W4(i64 %195, i32 0, i32 1, i32 2, i32 3, i32* %196, i32 %197)
  %199 = load i32, i32* %18, align 4
  %200 = mul nsw i32 4, %199
  %201 = load i32*, i32** %17, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  store i32* %203, i32** %17, align 8
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i64 @__msa_xori_b(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_D2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_D2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

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
