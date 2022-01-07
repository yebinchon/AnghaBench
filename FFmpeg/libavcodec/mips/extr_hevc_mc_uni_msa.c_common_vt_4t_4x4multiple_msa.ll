; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_vt_4t_4x4multiple_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_vt_4t_4x4multiple_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_vt_4t_4x4multiple_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_vt_4t_4x4multiple_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
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
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = sext i32 %34 to i64
  %37 = sub i64 0, %36
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @LD_SH(i32* %39)
  store i32 %40, i32* %30, align 4
  %41 = load i32, i32* %30, align 4
  %42 = load i64, i64* %28, align 8
  %43 = load i64, i64* %29, align 8
  %44 = call i32 @SPLATI_H2_SB(i32 %41, i32 0, i32 1, i64 %42, i64 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* %16, align 8
  %50 = call i32 @LD_SB3(i32* %45, i32 %46, i64 %47, i64 %48, i64 %49)
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 3, %51
  %53 = load i32*, i32** %7, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %7, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %16, align 8
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* %20, align 8
  %61 = load i64, i64* %23, align 8
  %62 = call i32 @ILVR_B2_SB(i64 %56, i64 %57, i64 %58, i64 %59, i64 %60, i64 %61)
  %63 = load i64, i64* %23, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i64, i64* %20, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i64 @__msa_ilvr_d(i32 %64, i32 %66)
  store i64 %67, i64* %26, align 8
  %68 = load i64, i64* %26, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i64 @__msa_xori_b(i32 %69, i32 128)
  store i64 %70, i64* %26, align 8
  %71 = load i32, i32* %12, align 4
  %72 = ashr i32 %71, 2
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %77, %6
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %13, align 4
  %76 = icmp ne i32 %74, 0
  br i1 %76, label %77, label %153

77:                                               ; preds = %73
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* %18, align 8
  %82 = load i64, i64* %19, align 8
  %83 = call i32 @LD_SB3(i32* %78, i32 %79, i64 %80, i64 %81, i64 %82)
  %84 = load i32, i32* %8, align 4
  %85 = mul nsw i32 3, %84
  %86 = load i32*, i32** %7, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %7, align 8
  %89 = load i64, i64* %17, align 8
  %90 = load i64, i64* %16, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %21, align 8
  %94 = load i64, i64* %24, align 8
  %95 = call i32 @ILVR_B2_SB(i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94)
  %96 = load i64, i64* %24, align 8
  %97 = trunc i64 %96 to i32
  %98 = load i64, i64* %21, align 8
  %99 = trunc i64 %98 to i32
  %100 = call i64 @__msa_ilvr_d(i32 %97, i32 %99)
  store i64 %100, i64* %27, align 8
  %101 = load i64, i64* %27, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i64 @__msa_xori_b(i32 %102, i32 128)
  store i64 %103, i64* %27, align 8
  %104 = load i64, i64* %26, align 8
  %105 = load i64, i64* %27, align 8
  %106 = load i64, i64* %28, align 8
  %107 = load i64, i64* %29, align 8
  %108 = call i32 @HEVC_FILT_4TAP_SH(i64 %104, i64 %105, i64 %106, i64 %107)
  store i32 %108, i32* %31, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = call i64 @LD_SB(i32* %109)
  store i64 %110, i64* %16, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %7, align 8
  %115 = load i64, i64* %19, align 8
  %116 = load i64, i64* %18, align 8
  %117 = load i64, i64* %16, align 8
  %118 = load i64, i64* %19, align 8
  %119 = load i64, i64* %22, align 8
  %120 = load i64, i64* %25, align 8
  %121 = call i32 @ILVR_B2_SB(i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120)
  %122 = load i64, i64* %25, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i64, i64* %22, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i64 @__msa_ilvr_d(i32 %123, i32 %125)
  store i64 %126, i64* %26, align 8
  %127 = load i64, i64* %26, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i64 @__msa_xori_b(i32 %128, i32 128)
  store i64 %129, i64* %26, align 8
  %130 = load i64, i64* %27, align 8
  %131 = load i64, i64* %26, align 8
  %132 = load i64, i64* %28, align 8
  %133 = load i64, i64* %29, align 8
  %134 = call i32 @HEVC_FILT_4TAP_SH(i64 %130, i64 %131, i64 %132, i64 %133)
  store i32 %134, i32* %32, align 4
  %135 = load i32, i32* %31, align 4
  %136 = load i32, i32* %32, align 4
  %137 = call i32 @SRARI_H2_SH(i32 %135, i32 %136, i32 6)
  %138 = load i32, i32* %31, align 4
  %139 = load i32, i32* %32, align 4
  %140 = call i32 @SAT_SH2_SH(i32 %138, i32 %139, i32 7)
  %141 = load i32, i32* %31, align 4
  %142 = load i32, i32* %32, align 4
  %143 = call i32 @PCKEV_XORI128_UB(i32 %141, i32 %142)
  store i32 %143, i32* %33, align 4
  %144 = load i32, i32* %33, align 4
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @ST_W4(i32 %144, i32 0, i32 1, i32 2, i32 3, i32* %145, i32 %146)
  %148 = load i32, i32* %10, align 4
  %149 = mul nsw i32 4, %148
  %150 = load i32*, i32** %9, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %9, align 8
  br label %73

153:                                              ; preds = %73
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i64 @__msa_xori_b(i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i64, i64) #1

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
