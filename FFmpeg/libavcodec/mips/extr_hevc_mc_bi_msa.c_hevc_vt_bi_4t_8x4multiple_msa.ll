; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_8x4multiple_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_8x4multiple_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_bi_4t_8x4multiple_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_bi_4t_8x4multiple_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
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
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = sext i32 %40 to i64
  %43 = sub i64 0, %42
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32* %44, i32** %9, align 8
  %45 = call i32 @__msa_ldi_h(i32 128)
  store i32 %45, i32* %39, align 4
  %46 = load i32, i32* %39, align 4
  %47 = shl i32 %46, 6
  store i32 %47, i32* %39, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = call i32 @LD_SH(i32* %48)
  store i32 %49, i32* %38, align 4
  %50 = load i32, i32* %38, align 4
  %51 = load i32, i32* %36, align 4
  %52 = load i32, i32* %37, align 4
  %53 = call i32 @SPLATI_H2_SH(i32 %50, i32 0, i32 1, i32 %51, i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %20, align 4
  %59 = call i32 @LD_SB3(i32* %54, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = mul nsw i32 3, %60
  %62 = load i32*, i32** %9, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %9, align 8
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %20, align 4
  %68 = call i32 @XORI_B3_128_SB(i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %28, align 4
  %74 = load i32, i32* %30, align 4
  %75 = call i32 @ILVR_B2_SB(i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* %16, align 4
  %77 = ashr i32 %76, 2
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %82, %8
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %17, align 4
  %81 = icmp ne i32 %79, 0
  br i1 %81, label %82, label %197

82:                                               ; preds = %78
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* %22, align 4
  %87 = call i32 @LD_SB2(i32* %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %10, align 4
  %89 = mul nsw i32 2, %88
  %90 = load i32*, i32** %9, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %9, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %24, align 4
  %96 = load i32, i32* %25, align 4
  %97 = load i32, i32* %26, align 4
  %98 = load i32, i32* %27, align 4
  %99 = call i32 @LD_SH4(i32* %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = mul nsw i32 4, %100
  %102 = load i32*, i32** %11, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %11, align 8
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* %22, align 4
  %107 = call i32 @XORI_B2_128_SB(i32 %105, i32 %106)
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* %29, align 4
  %113 = load i32, i32* %31, align 4
  %114 = call i32 @ILVR_B2_SB(i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %39, align 4
  store i32 %115, i32* %32, align 4
  %116 = load i32, i32* %28, align 4
  %117 = load i32, i32* %29, align 4
  %118 = load i32, i32* %36, align 4
  %119 = load i32, i32* %37, align 4
  %120 = load i32, i32* %32, align 4
  %121 = load i32, i32* %32, align 4
  %122 = call i32 @DPADD_SB2_SH(i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* %39, align 4
  store i32 %123, i32* %33, align 4
  %124 = load i32, i32* %30, align 4
  %125 = load i32, i32* %31, align 4
  %126 = load i32, i32* %36, align 4
  %127 = load i32, i32* %37, align 4
  %128 = load i32, i32* %33, align 4
  %129 = load i32, i32* %33, align 4
  %130 = call i32 @DPADD_SB2_SH(i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %23, align 4
  %134 = load i32, i32* %20, align 4
  %135 = call i32 @LD_SB2(i32* %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %10, align 4
  %137 = mul nsw i32 2, %136
  %138 = load i32*, i32** %9, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %9, align 8
  %141 = load i32, i32* %23, align 4
  %142 = load i32, i32* %20, align 4
  %143 = call i32 @XORI_B2_128_SB(i32 %141, i32 %142)
  %144 = load i32, i32* %23, align 4
  %145 = load i32, i32* %22, align 4
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* %23, align 4
  %148 = load i32, i32* %28, align 4
  %149 = load i32, i32* %30, align 4
  %150 = call i32 @ILVR_B2_SB(i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %39, align 4
  store i32 %151, i32* %34, align 4
  %152 = load i32, i32* %29, align 4
  %153 = load i32, i32* %28, align 4
  %154 = load i32, i32* %36, align 4
  %155 = load i32, i32* %37, align 4
  %156 = load i32, i32* %34, align 4
  %157 = load i32, i32* %34, align 4
  %158 = call i32 @DPADD_SB2_SH(i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157)
  %159 = load i32, i32* %39, align 4
  store i32 %159, i32* %35, align 4
  %160 = load i32, i32* %31, align 4
  %161 = load i32, i32* %30, align 4
  %162 = load i32, i32* %36, align 4
  %163 = load i32, i32* %37, align 4
  %164 = load i32, i32* %35, align 4
  %165 = load i32, i32* %35, align 4
  %166 = call i32 @DPADD_SB2_SH(i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165)
  %167 = load i32, i32* %24, align 4
  %168 = load i32, i32* %25, align 4
  %169 = load i32, i32* %26, align 4
  %170 = load i32, i32* %27, align 4
  %171 = load i32, i32* %32, align 4
  %172 = load i32, i32* %33, align 4
  %173 = load i32, i32* %34, align 4
  %174 = load i32, i32* %35, align 4
  %175 = load i32, i32* %32, align 4
  %176 = load i32, i32* %33, align 4
  %177 = load i32, i32* %34, align 4
  %178 = load i32, i32* %35, align 4
  %179 = call i32 @HEVC_BI_RND_CLIP4(i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 7, i32 %175, i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %33, align 4
  %181 = load i32, i32* %32, align 4
  %182 = load i32, i32* %35, align 4
  %183 = load i32, i32* %34, align 4
  %184 = load i32, i32* %32, align 4
  %185 = load i32, i32* %33, align 4
  %186 = call i32 @PCKEV_B2_SH(i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185)
  %187 = load i32, i32* %32, align 4
  %188 = load i32, i32* %33, align 4
  %189 = load i32*, i32** %13, align 8
  %190 = load i32, i32* %14, align 4
  %191 = call i32 @ST_D4(i32 %187, i32 %188, i32 0, i32 1, i32 0, i32 1, i32* %189, i32 %190)
  %192 = load i32, i32* %14, align 4
  %193 = mul nsw i32 4, %192
  %194 = load i32*, i32** %13, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  store i32* %196, i32** %13, align 8
  br label %78

197:                                              ; preds = %78
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
