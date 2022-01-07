; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel4_mc20_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel4_mc20_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luma_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_h264_qpel4_mc20_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %25 = call i32 @__msa_ldi_b(i32 -5)
  store i32 %25, i32* %23, align 4
  %26 = call i32 @__msa_ldi_b(i32 20)
  store i32 %26, i32* %24, align 4
  %27 = load i32*, i32** @luma_mask_arr, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 48
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @LD_SB3(i32* %28, i32 16, i32 %29, i32 %30, i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 -2
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @LD_SB4(i32* %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @XORI_B4_128_SB(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @VSHF_B2_SB(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %21, align 4
  %58 = load i32, i32* %22, align 4
  %59 = call i32 @HADD_SB2_SH(i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %18, align 4
  %68 = call i32 @VSHF_B2_SB(i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %23, align 4
  %72 = load i32, i32* %23, align 4
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %22, align 4
  %75 = call i32 @DPADD_SB2_SH(i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %20, align 4
  %84 = call i32 @VSHF_B2_SB(i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %24, align 4
  %88 = load i32, i32* %24, align 4
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %22, align 4
  %91 = call i32 @DPADD_SB2_SH(i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %21, align 4
  %93 = load i32, i32* %22, align 4
  %94 = call i32 @SRARI_H2_SH(i32 %92, i32 %93, i32 5)
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %22, align 4
  %97 = call i32 @SAT_SH2_SH(i32 %95, i32 %96, i32 7)
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %22, align 4
  %100 = call i32 @PCKEV_XORI128_UB(i32 %98, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @ST_W4(i32 %101, i32 0, i32 1, i32 2, i32 3, i32* %102, i32 %103)
  ret void
}

declare dso_local i32 @__msa_ldi_b(i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_SB(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HADD_SB2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i32, i32, i32, i32, i32, i32) #1

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
