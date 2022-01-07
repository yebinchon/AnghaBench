; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_put_bilin_16v_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_put_bilin_16v_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vp9_bilinear_filters_msa = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_bilin_16v_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %36 = load i32**, i32*** @vp9_bilinear_filters_msa, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %36, i64 %39
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %16, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = call i32 @LD_SH(i32* %42)
  store i32 %43, i32* %35, align 4
  %44 = load i32, i32* %35, align 4
  %45 = call i64 @__msa_splati_h(i32 %44, i32 0)
  store i64 %45, i64* %30, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i64 @LD_UB(i32* %46)
  store i64 %47, i64* %17, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %10, align 8
  %52 = load i32, i32* %12, align 4
  %53 = ashr i32 %52, 2
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %58, %7
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %15, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %58, label %184

58:                                               ; preds = %54
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i64, i64* %18, align 8
  %62 = load i64, i64* %19, align 8
  %63 = load i64, i64* %20, align 8
  %64 = load i64, i64* %21, align 8
  %65 = call i32 @LD_UB4(i32* %59, i32 %60, i64 %61, i64 %62, i64 %63, i64 %64)
  %66 = load i32, i32* %11, align 4
  %67 = mul nsw i32 4, %66
  %68 = load i32*, i32** %10, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %10, align 8
  %71 = load i64, i64* %18, align 8
  %72 = load i64, i64* %17, align 8
  %73 = load i64, i64* %19, align 8
  %74 = load i64, i64* %18, align 8
  %75 = load i64, i64* %22, align 8
  %76 = load i64, i64* %24, align 8
  %77 = call i32 @ILVR_B2_UB(i64 %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76)
  %78 = load i64, i64* %18, align 8
  %79 = load i64, i64* %17, align 8
  %80 = load i64, i64* %19, align 8
  %81 = load i64, i64* %18, align 8
  %82 = load i64, i64* %23, align 8
  %83 = load i64, i64* %25, align 8
  %84 = call i32 @ILVL_B2_UB(i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83)
  %85 = load i64, i64* %22, align 8
  %86 = load i64, i64* %23, align 8
  %87 = load i64, i64* %30, align 8
  %88 = load i64, i64* %30, align 8
  %89 = load i32, i32* %31, align 4
  %90 = load i32, i32* %32, align 4
  %91 = call i32 @DOTP_UB2_UH(i64 %85, i64 %86, i64 %87, i64 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %31, align 4
  %93 = load i32, i32* %32, align 4
  %94 = call i32 @SRARI_H2_UH(i32 %92, i32 %93, i32 7)
  %95 = load i32, i32* %31, align 4
  %96 = load i32, i32* %32, align 4
  %97 = call i32 @SAT_UH2_UH(i32 %95, i32 %96, i32 7)
  %98 = load i32, i32* %31, align 4
  %99 = load i32, i32* %32, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @PCKEV_ST_SB(i32 %98, i32 %99, i32* %100)
  %102 = load i32, i32* %9, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %8, align 8
  %106 = load i64, i64* %20, align 8
  %107 = load i64, i64* %19, align 8
  %108 = load i64, i64* %21, align 8
  %109 = load i64, i64* %20, align 8
  %110 = load i64, i64* %26, align 8
  %111 = load i64, i64* %28, align 8
  %112 = call i32 @ILVR_B2_UB(i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111)
  %113 = load i64, i64* %20, align 8
  %114 = load i64, i64* %19, align 8
  %115 = load i64, i64* %21, align 8
  %116 = load i64, i64* %20, align 8
  %117 = load i64, i64* %27, align 8
  %118 = load i64, i64* %29, align 8
  %119 = call i32 @ILVL_B2_UB(i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118)
  %120 = load i64, i64* %24, align 8
  %121 = load i64, i64* %25, align 8
  %122 = load i64, i64* %30, align 8
  %123 = load i64, i64* %30, align 8
  %124 = load i32, i32* %33, align 4
  %125 = load i32, i32* %34, align 4
  %126 = call i32 @DOTP_UB2_UH(i64 %120, i64 %121, i64 %122, i64 %123, i32 %124, i32 %125)
  %127 = load i32, i32* %33, align 4
  %128 = load i32, i32* %34, align 4
  %129 = call i32 @SRARI_H2_UH(i32 %127, i32 %128, i32 7)
  %130 = load i32, i32* %33, align 4
  %131 = load i32, i32* %34, align 4
  %132 = call i32 @SAT_UH2_UH(i32 %130, i32 %131, i32 7)
  %133 = load i32, i32* %33, align 4
  %134 = load i32, i32* %34, align 4
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @PCKEV_ST_SB(i32 %133, i32 %134, i32* %135)
  %137 = load i32, i32* %9, align 4
  %138 = load i32*, i32** %8, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %8, align 8
  %141 = load i64, i64* %26, align 8
  %142 = load i64, i64* %27, align 8
  %143 = load i64, i64* %30, align 8
  %144 = load i64, i64* %30, align 8
  %145 = load i32, i32* %31, align 4
  %146 = load i32, i32* %32, align 4
  %147 = call i32 @DOTP_UB2_UH(i64 %141, i64 %142, i64 %143, i64 %144, i32 %145, i32 %146)
  %148 = load i32, i32* %31, align 4
  %149 = load i32, i32* %32, align 4
  %150 = call i32 @SRARI_H2_UH(i32 %148, i32 %149, i32 7)
  %151 = load i32, i32* %31, align 4
  %152 = load i32, i32* %32, align 4
  %153 = call i32 @SAT_UH2_UH(i32 %151, i32 %152, i32 7)
  %154 = load i32, i32* %31, align 4
  %155 = load i32, i32* %32, align 4
  %156 = load i32*, i32** %8, align 8
  %157 = call i32 @PCKEV_ST_SB(i32 %154, i32 %155, i32* %156)
  %158 = load i32, i32* %9, align 4
  %159 = load i32*, i32** %8, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32* %161, i32** %8, align 8
  %162 = load i64, i64* %28, align 8
  %163 = load i64, i64* %29, align 8
  %164 = load i64, i64* %30, align 8
  %165 = load i64, i64* %30, align 8
  %166 = load i32, i32* %33, align 4
  %167 = load i32, i32* %34, align 4
  %168 = call i32 @DOTP_UB2_UH(i64 %162, i64 %163, i64 %164, i64 %165, i32 %166, i32 %167)
  %169 = load i32, i32* %33, align 4
  %170 = load i32, i32* %34, align 4
  %171 = call i32 @SRARI_H2_UH(i32 %169, i32 %170, i32 7)
  %172 = load i32, i32* %33, align 4
  %173 = load i32, i32* %34, align 4
  %174 = call i32 @SAT_UH2_UH(i32 %172, i32 %173, i32 7)
  %175 = load i32, i32* %33, align 4
  %176 = load i32, i32* %34, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = call i32 @PCKEV_ST_SB(i32 %175, i32 %176, i32* %177)
  %179 = load i32, i32* %9, align 4
  %180 = load i32*, i32** %8, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32* %182, i32** %8, align 8
  %183 = load i64, i64* %21, align 8
  store i64 %183, i64* %17, align 8
  br label %54

184:                                              ; preds = %54
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVL_B2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DOTP_UB2_UH(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @SRARI_H2_UH(i32, i32, i32) #1

declare dso_local i32 @SAT_UH2_UH(i32, i32, i32) #1

declare dso_local i32 @PCKEV_ST_SB(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
