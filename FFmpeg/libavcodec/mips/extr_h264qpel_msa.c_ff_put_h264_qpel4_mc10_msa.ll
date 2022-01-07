; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel4_mc10_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel4_mc10_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luma_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_h264_qpel4_mc10_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
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
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %25 = call i64 @__msa_ldi_b(i32 -5)
  store i64 %25, i64* %23, align 8
  %26 = call i64 @__msa_ldi_b(i32 20)
  store i64 %26, i64* %24, align 8
  %27 = load i32*, i32** @luma_mask_arr, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 48
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @LD_SB3(i32* %28, i32 16, i64 %29, i64 %30, i64 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 -2
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @LD_SB4(i32* %34, i32 %35, i64 %36, i64 %37, i64 %38, i64 %39)
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @XORI_B4_128_SB(i64 %41, i64 %42, i64 %43, i64 %44)
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* %16, align 8
  %54 = call i32 @VSHF_B2_SB(i64 %46, i64 %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52, i64 %53)
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* %16, align 8
  %57 = load i64, i64* %21, align 8
  %58 = load i64, i64* %22, align 8
  %59 = call i32 @HADD_SB2_SH(i64 %55, i64 %56, i64 %57, i64 %58)
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* %18, align 8
  %68 = call i32 @VSHF_B2_SB(i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67)
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* %18, align 8
  %71 = load i64, i64* %23, align 8
  %72 = load i64, i64* %23, align 8
  %73 = load i64, i64* %21, align 8
  %74 = load i64, i64* %22, align 8
  %75 = call i32 @DPADD_SB2_SH(i64 %69, i64 %70, i64 %71, i64 %72, i64 %73, i64 %74)
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %19, align 8
  %83 = load i64, i64* %20, align 8
  %84 = call i32 @VSHF_B2_SB(i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83)
  %85 = load i64, i64* %19, align 8
  %86 = load i64, i64* %20, align 8
  %87 = load i64, i64* %24, align 8
  %88 = load i64, i64* %24, align 8
  %89 = load i64, i64* %21, align 8
  %90 = load i64, i64* %22, align 8
  %91 = call i32 @DPADD_SB2_SH(i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90)
  %92 = load i64, i64* %21, align 8
  %93 = load i64, i64* %22, align 8
  %94 = call i32 @SRARI_H2_SH(i64 %92, i64 %93, i32 5)
  %95 = load i64, i64* %21, align 8
  %96 = load i64, i64* %22, align 8
  %97 = call i32 @SAT_SH2_SH(i64 %95, i64 %96, i32 7)
  %98 = load i64, i64* %22, align 8
  %99 = load i64, i64* %21, align 8
  %100 = call i64 @__msa_pckev_b(i64 %98, i64 %99)
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @SLDI_B4_SB(i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i32 2, i64 %109, i64 %110, i64 %111, i64 %112)
  %114 = load i64, i64* %7, align 8
  %115 = trunc i64 %114 to i32
  %116 = load i64, i64* %8, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i64 @__msa_insve_w(i32 %115, i32 1, i32 %117)
  store i64 %118, i64* %7, align 8
  %119 = load i64, i64* %9, align 8
  %120 = trunc i64 %119 to i32
  %121 = load i64, i64* %10, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i64 @__msa_insve_w(i32 %120, i32 1, i32 %122)
  store i64 %123, i64* %8, align 8
  %124 = load i64, i64* %7, align 8
  %125 = trunc i64 %124 to i32
  %126 = load i64, i64* %8, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i64 @__msa_insve_d(i32 %125, i32 1, i32 %127)
  store i64 %128, i64* %7, align 8
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* %7, align 8
  %131 = call i64 @__msa_aver_s_b(i64 %129, i64 %130)
  store i64 %131, i64* %11, align 8
  %132 = load i64, i64* %11, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i64 @__msa_xori_b(i32 %133, i32 128)
  store i64 %134, i64* %11, align 8
  %135 = load i64, i64* %11, align 8
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @ST_W4(i64 %135, i32 0, i32 1, i32 2, i32 3, i32* %136, i32 %137)
  ret void
}

declare dso_local i64 @__msa_ldi_b(i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HADD_SB2_SH(i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H2_SH(i64, i64, i32) #1

declare dso_local i32 @SAT_SH2_SH(i64, i64, i32) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @SLDI_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_insve_w(i32, i32, i32) #1

declare dso_local i64 @__msa_insve_d(i32, i32, i32) #1

declare dso_local i64 @__msa_aver_s_b(i64, i64) #1

declare dso_local i64 @__msa_xori_b(i32, i32) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
