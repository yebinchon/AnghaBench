; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_8x6_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_8x6_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_bi_4t_8x6_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_bi_4t_8x6_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
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
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = sext i32 %50 to i64
  %53 = sub i64 0, %52
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32* %54, i32** %9, align 8
  %55 = call i32 @__msa_ldi_h(i32 128)
  store i32 %55, i32* %49, align 4
  %56 = load i32, i32* %49, align 4
  %57 = shl i32 %56, 6
  store i32 %57, i32* %49, align 4
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @LD_SH(i32* %58)
  store i32 %59, i32* %48, align 4
  %60 = load i32, i32* %48, align 4
  %61 = load i32, i32* %46, align 4
  %62 = load i32, i32* %47, align 4
  %63 = call i32 @SPLATI_H2_SH(i32 %60, i32 0, i32 1, i32 %61, i32 %62)
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %19, align 4
  %69 = call i32 @LD_SB3(i32* %64, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = mul nsw i32 3, %70
  %72 = load i32*, i32** %9, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %9, align 8
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %19, align 4
  %78 = call i32 @XORI_B3_128_SB(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %32, align 4
  %84 = load i32, i32* %36, align 4
  %85 = call i32 @ILVR_B2_SB(i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %22, align 4
  %91 = load i32, i32* %23, align 4
  %92 = load i32, i32* %24, align 4
  %93 = load i32, i32* %25, align 4
  %94 = call i32 @LD_SB6(i32* %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %26, align 4
  %98 = load i32, i32* %27, align 4
  %99 = load i32, i32* %28, align 4
  %100 = load i32, i32* %29, align 4
  %101 = load i32, i32* %30, align 4
  %102 = load i32, i32* %31, align 4
  %103 = call i32 @LD_SH6(i32* %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* %23, align 4
  %108 = load i32, i32* %24, align 4
  %109 = load i32, i32* %25, align 4
  %110 = call i32 @XORI_B6_128_SB(i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* %23, align 4
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* %33, align 4
  %120 = load i32, i32* %37, align 4
  %121 = load i32, i32* %34, align 4
  %122 = load i32, i32* %38, align 4
  %123 = call i32 @ILVR_B4_SB(i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %24, align 4
  %125 = load i32, i32* %23, align 4
  %126 = load i32, i32* %25, align 4
  %127 = load i32, i32* %24, align 4
  %128 = load i32, i32* %35, align 4
  %129 = load i32, i32* %39, align 4
  %130 = call i32 @ILVR_B2_SB(i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %49, align 4
  store i32 %131, i32* %40, align 4
  %132 = load i32, i32* %32, align 4
  %133 = load i32, i32* %33, align 4
  %134 = load i32, i32* %46, align 4
  %135 = load i32, i32* %47, align 4
  %136 = load i32, i32* %40, align 4
  %137 = load i32, i32* %40, align 4
  %138 = call i32 @DPADD_SB2_SH(i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137)
  %139 = load i32, i32* %49, align 4
  store i32 %139, i32* %41, align 4
  %140 = load i32, i32* %36, align 4
  %141 = load i32, i32* %37, align 4
  %142 = load i32, i32* %46, align 4
  %143 = load i32, i32* %47, align 4
  %144 = load i32, i32* %41, align 4
  %145 = load i32, i32* %41, align 4
  %146 = call i32 @DPADD_SB2_SH(i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145)
  %147 = load i32, i32* %49, align 4
  store i32 %147, i32* %42, align 4
  %148 = load i32, i32* %33, align 4
  %149 = load i32, i32* %34, align 4
  %150 = load i32, i32* %46, align 4
  %151 = load i32, i32* %47, align 4
  %152 = load i32, i32* %42, align 4
  %153 = load i32, i32* %42, align 4
  %154 = call i32 @DPADD_SB2_SH(i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %49, align 4
  store i32 %155, i32* %43, align 4
  %156 = load i32, i32* %37, align 4
  %157 = load i32, i32* %38, align 4
  %158 = load i32, i32* %46, align 4
  %159 = load i32, i32* %47, align 4
  %160 = load i32, i32* %43, align 4
  %161 = load i32, i32* %43, align 4
  %162 = call i32 @DPADD_SB2_SH(i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* %49, align 4
  store i32 %163, i32* %44, align 4
  %164 = load i32, i32* %34, align 4
  %165 = load i32, i32* %35, align 4
  %166 = load i32, i32* %46, align 4
  %167 = load i32, i32* %47, align 4
  %168 = load i32, i32* %44, align 4
  %169 = load i32, i32* %44, align 4
  %170 = call i32 @DPADD_SB2_SH(i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169)
  %171 = load i32, i32* %49, align 4
  store i32 %171, i32* %45, align 4
  %172 = load i32, i32* %38, align 4
  %173 = load i32, i32* %39, align 4
  %174 = load i32, i32* %46, align 4
  %175 = load i32, i32* %47, align 4
  %176 = load i32, i32* %45, align 4
  %177 = load i32, i32* %45, align 4
  %178 = call i32 @DPADD_SB2_SH(i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %26, align 4
  %180 = load i32, i32* %27, align 4
  %181 = load i32, i32* %28, align 4
  %182 = load i32, i32* %29, align 4
  %183 = load i32, i32* %40, align 4
  %184 = load i32, i32* %41, align 4
  %185 = load i32, i32* %42, align 4
  %186 = load i32, i32* %43, align 4
  %187 = load i32, i32* %40, align 4
  %188 = load i32, i32* %41, align 4
  %189 = load i32, i32* %42, align 4
  %190 = load i32, i32* %43, align 4
  %191 = call i32 @HEVC_BI_RND_CLIP4(i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 7, i32 %187, i32 %188, i32 %189, i32 %190)
  %192 = load i32, i32* %30, align 4
  %193 = load i32, i32* %31, align 4
  %194 = load i32, i32* %44, align 4
  %195 = load i32, i32* %45, align 4
  %196 = load i32, i32* %44, align 4
  %197 = load i32, i32* %45, align 4
  %198 = call i32 @HEVC_BI_RND_CLIP2(i32 %192, i32 %193, i32 %194, i32 %195, i32 7, i32 %196, i32 %197)
  %199 = load i32, i32* %41, align 4
  %200 = load i32, i32* %40, align 4
  %201 = load i32, i32* %43, align 4
  %202 = load i32, i32* %42, align 4
  %203 = load i32, i32* %40, align 4
  %204 = load i32, i32* %41, align 4
  %205 = call i32 @PCKEV_B2_SH(i32 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %45, align 4
  %207 = load i32, i32* %44, align 4
  %208 = call i64 @__msa_pckev_b(i32 %206, i32 %207)
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %42, align 4
  %210 = load i32, i32* %40, align 4
  %211 = load i32, i32* %41, align 4
  %212 = load i32*, i32** %13, align 8
  %213 = load i32, i32* %14, align 4
  %214 = call i32 @ST_D4(i32 %210, i32 %211, i32 0, i32 1, i32 0, i32 1, i32* %212, i32 %213)
  %215 = load i32, i32* %42, align 4
  %216 = load i32*, i32** %13, align 8
  %217 = load i32, i32* %14, align 4
  %218 = mul nsw i32 4, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  %221 = load i32, i32* %14, align 4
  %222 = call i32 @ST_D2(i32 %215, i32 0, i32 1, i32* %220, i32 %221)
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB6(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SH6(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B6_128_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP2(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_D2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
