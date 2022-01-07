; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_8x6_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_8x6_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @hevc_vt_4t_8x6_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_4t_8x6_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
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
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = sext i32 %26 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32* %30, i32** %6, align 8
  %31 = call i32 @__msa_ldi_h(i32 128)
  store i32 %31, i32* %25, align 4
  %32 = load i32, i32* %25, align 4
  %33 = shl i32 %32, 6
  store i32 %33, i32* %25, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @LD_SH(i32* %34)
  store i32 %35, i32* %24, align 4
  %36 = load i32, i32* %24, align 4
  %37 = load i32, i32* %22, align 4
  %38 = load i32, i32* %23, align 4
  %39 = call i32 @SPLATI_H2_SH(i32 %36, i32 0, i32 1, i32 %37, i32 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @LD_SB3(i32* %40, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 3, %46
  %48 = load i32*, i32** %6, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @XORI_B3_128_SB(i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %18, align 4
  %61 = call i32 @ILVR_B2_SB(i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @LD_SB2(i32* %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 2, %67
  %69 = load i32*, i32** %6, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %6, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @XORI_B2_128_SB(i32 %72, i32 %73)
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %19, align 4
  %81 = call i32 @ILVR_B2_SB(i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %25, align 4
  store i32 %82, i32* %20, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %22, align 4
  %86 = load i32, i32* %23, align 4
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %20, align 4
  %89 = call i32 @DPADD_SB2_SH(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %25, align 4
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %22, align 4
  %94 = load i32, i32* %23, align 4
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %21, align 4
  %97 = call i32 @DPADD_SB2_SH(i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %21, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @ST_SH2(i32 %98, i32 %99, i32* %100, i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = mul nsw i32 2, %103
  %105 = load i32*, i32** %8, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %8, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @LD_SB2(i32* %108, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = mul nsw i32 2, %113
  %115 = load i32*, i32** %6, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %6, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @XORI_B2_128_SB(i32 %118, i32 %119)
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @ILVR_B2_SB(i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %25, align 4
  store i32 %128, i32* %20, align 4
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %22, align 4
  %132 = load i32, i32* %23, align 4
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* %20, align 4
  %135 = call i32 @DPADD_SB2_SH(i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %25, align 4
  store i32 %136, i32* %21, align 4
  %137 = load i32, i32* %19, align 4
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %22, align 4
  %140 = load i32, i32* %23, align 4
  %141 = load i32, i32* %21, align 4
  %142 = load i32, i32* %21, align 4
  %143 = call i32 @DPADD_SB2_SH(i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142)
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %21, align 4
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @ST_SH2(i32 %144, i32 %145, i32* %146, i32 %147)
  %149 = load i32, i32* %9, align 4
  %150 = mul nsw i32 2, %149
  %151 = load i32*, i32** %8, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %8, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %15, align 4
  %158 = call i32 @LD_SB2(i32* %154, i32 %155, i32 %156, i32 %157)
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %15, align 4
  %161 = call i32 @XORI_B2_128_SB(i32 %159, i32 %160)
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %19, align 4
  %168 = call i32 @ILVR_B2_SB(i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167)
  %169 = load i32, i32* %25, align 4
  store i32 %169, i32* %20, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* %22, align 4
  %173 = load i32, i32* %23, align 4
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %20, align 4
  %176 = call i32 @DPADD_SB2_SH(i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175)
  %177 = load i32, i32* %25, align 4
  store i32 %177, i32* %21, align 4
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* %22, align 4
  %181 = load i32, i32* %23, align 4
  %182 = load i32, i32* %21, align 4
  %183 = load i32, i32* %21, align 4
  %184 = call i32 @DPADD_SB2_SH(i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183)
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* %21, align 4
  %187 = load i32*, i32** %8, align 8
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @ST_SH2(i32 %185, i32 %186, i32* %187, i32 %188)
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
