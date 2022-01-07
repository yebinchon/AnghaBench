; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel4_v4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel4_v4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subpel_filters_msa = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_epel4_v4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
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
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %37 = load i32**, i32*** @subpel_filters_msa, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %37, i64 %40
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %16, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = sext i32 %43 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %16, align 8
  %49 = call i32 @LD_SH(i32* %48)
  store i32 %49, i32* %33, align 4
  %50 = load i32, i32* %33, align 4
  %51 = load i64, i64* %31, align 8
  %52 = load i64, i64* %32, align 8
  %53 = call i32 @SPLATI_H2_SB(i32 %50, i32 0, i32 1, i64 %51, i64 %52)
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i64, i64* %17, align 8
  %57 = load i64, i64* %18, align 8
  %58 = load i64, i64* %19, align 8
  %59 = call i32 @LD_SB3(i32* %54, i32 %55, i64 %56, i64 %57, i64 %58)
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 3, %60
  %62 = load i32*, i32** %10, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %10, align 8
  %65 = load i64, i64* %18, align 8
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* %19, align 8
  %68 = load i64, i64* %18, align 8
  %69 = load i64, i64* %23, align 8
  %70 = load i64, i64* %26, align 8
  %71 = call i32 @ILVR_B2_SB(i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i64 %70)
  %72 = load i64, i64* %26, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i64, i64* %23, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i64 @__msa_ilvr_d(i32 %73, i32 %75)
  store i64 %76, i64* %29, align 8
  %77 = load i64, i64* %29, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i64 @__msa_xori_b(i32 %78, i32 128)
  store i64 %79, i64* %29, align 8
  %80 = load i32, i32* %12, align 4
  %81 = ashr i32 %80, 2
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %86, %7
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %15, align 4
  %85 = icmp ne i32 %83, 0
  br i1 %85, label %86, label %162

86:                                               ; preds = %82
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i64, i64* %20, align 8
  %90 = load i64, i64* %21, align 8
  %91 = load i64, i64* %22, align 8
  %92 = call i32 @LD_SB3(i32* %87, i32 %88, i64 %89, i64 %90, i64 %91)
  %93 = load i32, i32* %11, align 4
  %94 = mul nsw i32 3, %93
  %95 = load i32*, i32** %10, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %10, align 8
  %98 = load i64, i64* %20, align 8
  %99 = load i64, i64* %19, align 8
  %100 = load i64, i64* %21, align 8
  %101 = load i64, i64* %20, align 8
  %102 = load i64, i64* %24, align 8
  %103 = load i64, i64* %27, align 8
  %104 = call i32 @ILVR_B2_SB(i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103)
  %105 = load i64, i64* %27, align 8
  %106 = trunc i64 %105 to i32
  %107 = load i64, i64* %24, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i64 @__msa_ilvr_d(i32 %106, i32 %108)
  store i64 %109, i64* %30, align 8
  %110 = load i64, i64* %30, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i64 @__msa_xori_b(i32 %111, i32 128)
  store i64 %112, i64* %30, align 8
  %113 = load i64, i64* %29, align 8
  %114 = load i64, i64* %30, align 8
  %115 = load i64, i64* %31, align 8
  %116 = load i64, i64* %32, align 8
  %117 = call i32 @FILT_4TAP_DPADD_S_H(i64 %113, i64 %114, i64 %115, i64 %116)
  store i32 %117, i32* %34, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = call i64 @LD_SB(i32* %118)
  store i64 %119, i64* %19, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load i32*, i32** %10, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %10, align 8
  %124 = load i64, i64* %22, align 8
  %125 = load i64, i64* %21, align 8
  %126 = load i64, i64* %19, align 8
  %127 = load i64, i64* %22, align 8
  %128 = load i64, i64* %25, align 8
  %129 = load i64, i64* %28, align 8
  %130 = call i32 @ILVR_B2_SB(i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129)
  %131 = load i64, i64* %28, align 8
  %132 = trunc i64 %131 to i32
  %133 = load i64, i64* %25, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i64 @__msa_ilvr_d(i32 %132, i32 %134)
  store i64 %135, i64* %29, align 8
  %136 = load i64, i64* %29, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i64 @__msa_xori_b(i32 %137, i32 128)
  store i64 %138, i64* %29, align 8
  %139 = load i64, i64* %30, align 8
  %140 = load i64, i64* %29, align 8
  %141 = load i64, i64* %31, align 8
  %142 = load i64, i64* %32, align 8
  %143 = call i32 @FILT_4TAP_DPADD_S_H(i64 %139, i64 %140, i64 %141, i64 %142)
  store i32 %143, i32* %35, align 4
  %144 = load i32, i32* %34, align 4
  %145 = load i32, i32* %35, align 4
  %146 = call i32 @SRARI_H2_SH(i32 %144, i32 %145, i32 7)
  %147 = load i32, i32* %34, align 4
  %148 = load i32, i32* %35, align 4
  %149 = call i32 @SAT_SH2_SH(i32 %147, i32 %148, i32 7)
  %150 = load i32, i32* %34, align 4
  %151 = load i32, i32* %35, align 4
  %152 = call i32 @PCKEV_XORI128_UB(i32 %150, i32 %151)
  store i32 %152, i32* %36, align 4
  %153 = load i32, i32* %36, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @ST_W4(i32 %153, i32 0, i32 1, i32 2, i32 3, i32* %154, i32 %155)
  %157 = load i32, i32* %9, align 4
  %158 = mul nsw i32 4, %157
  %159 = load i32*, i32** %8, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32* %161, i32** %8, align 8
  br label %82

162:                                              ; preds = %82
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i64 @__msa_xori_b(i32, i32) #1

declare dso_local i32 @FILT_4TAP_DPADD_S_H(i64, i64, i64, i64) #1

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @SRARI_H2_SH(i32, i32, i32) #1

declare dso_local i32 @SAT_SH2_SH(i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
