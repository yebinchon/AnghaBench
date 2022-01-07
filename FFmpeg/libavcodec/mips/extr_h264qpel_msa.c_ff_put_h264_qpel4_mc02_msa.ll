; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel4_mc02_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel4_mc02_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_h264_qpel4_mc02_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 64257, i32* %7, align 4
  store i32 5140, i32* %8, align 4
  store i32 507, i32* %9, align 4
  %37 = call i64 @__msa_fill_h(i32 64257)
  store i64 %37, i64* %32, align 8
  %38 = call i64 @__msa_fill_h(i32 5140)
  store i64 %38, i64* %33, align 8
  %39 = call i64 @__msa_fill_h(i32 507)
  store i64 %39, i64* %34, align 8
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 %40, 2
  %42 = load i32*, i32** %5, align 8
  %43 = sext i32 %41 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32* %45, i32** %5, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %15, align 8
  %53 = call i32 @LD_SB5(i32* %46, i32 %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52)
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 5, %54
  %56 = load i32*, i32** %5, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %5, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i64, i64* %16, align 8
  %62 = load i64, i64* %17, align 8
  %63 = load i64, i64* %18, align 8
  %64 = load i64, i64* %19, align 8
  %65 = call i32 @LD_SB4(i32* %59, i32 %60, i64 %61, i64 %62, i64 %63, i64 %64)
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %20, align 8
  %75 = load i64, i64* %24, align 8
  %76 = load i64, i64* %21, align 8
  %77 = load i64, i64* %25, align 8
  %78 = call i32 @ILVR_B4_SB(i64 %66, i64 %67, i64 %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76, i64 %77)
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* %15, align 8
  %81 = load i64, i64* %17, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %18, align 8
  %84 = load i64, i64* %17, align 8
  %85 = load i64, i64* %19, align 8
  %86 = load i64, i64* %18, align 8
  %87 = load i64, i64* %22, align 8
  %88 = load i64, i64* %26, align 8
  %89 = load i64, i64* %23, align 8
  %90 = load i64, i64* %27, align 8
  %91 = call i32 @ILVR_B4_SB(i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90)
  %92 = load i64, i64* %24, align 8
  %93 = load i64, i64* %20, align 8
  %94 = load i64, i64* %25, align 8
  %95 = load i64, i64* %21, align 8
  %96 = load i64, i64* %26, align 8
  %97 = load i64, i64* %22, align 8
  %98 = load i64, i64* %27, align 8
  %99 = load i64, i64* %23, align 8
  %100 = load i64, i64* %28, align 8
  %101 = load i64, i64* %29, align 8
  %102 = load i64, i64* %30, align 8
  %103 = load i64, i64* %31, align 8
  %104 = call i32 @ILVR_D4_SB(i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103)
  %105 = load i64, i64* %28, align 8
  %106 = load i64, i64* %29, align 8
  %107 = load i64, i64* %30, align 8
  %108 = load i64, i64* %31, align 8
  %109 = call i32 @XORI_B4_128_SB(i64 %105, i64 %106, i64 %107, i64 %108)
  %110 = load i64, i64* %28, align 8
  %111 = load i64, i64* %29, align 8
  %112 = load i64, i64* %30, align 8
  %113 = load i64, i64* %32, align 8
  %114 = load i64, i64* %33, align 8
  %115 = load i64, i64* %34, align 8
  %116 = call i32 @AVC_DOT_SH3_SH(i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115)
  store i32 %116, i32* %35, align 4
  %117 = load i64, i64* %29, align 8
  %118 = load i64, i64* %30, align 8
  %119 = load i64, i64* %31, align 8
  %120 = load i64, i64* %32, align 8
  %121 = load i64, i64* %33, align 8
  %122 = load i64, i64* %34, align 8
  %123 = call i32 @AVC_DOT_SH3_SH(i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122)
  store i32 %123, i32* %36, align 4
  %124 = load i32, i32* %35, align 4
  %125 = load i32, i32* %36, align 4
  %126 = call i32 @SRARI_H2_SH(i32 %124, i32 %125, i32 5)
  %127 = load i32, i32* %35, align 4
  %128 = load i32, i32* %36, align 4
  %129 = call i32 @SAT_SH2_SH(i32 %127, i32 %128, i32 7)
  %130 = load i32, i32* %35, align 4
  %131 = load i32, i32* %36, align 4
  %132 = call i32 @PCKEV_XORI128_UB(i32 %130, i32 %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32*, i32** %4, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @ST_W4(i32 %133, i32 0, i32 1, i32 2, i32 3, i32* %134, i32 %135)
  ret void
}

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_D4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @AVC_DOT_SH3_SH(i64, i64, i64, i64, i64, i64) #1

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
