; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_4t_8x4multiple_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_4t_8x4multiple_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_4t_8x4multiple_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_4t_8x4multiple_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %30 = load i32, i32* @ff_hevc_mask_arr, align 4
  %31 = call i64 @LD_SB(i32 %30)
  store i64 %31, i64* %20, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 -1
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @LD_SH(i32* %34)
  store i32 %35, i32* %28, align 4
  %36 = load i32, i32* %28, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @SPLATI_H2_SH(i32 %36, i32 0, i32 1, i32 %37, i32 %38)
  %40 = load i64, i64* %20, align 8
  %41 = add nsw i64 %40, 2
  store i64 %41, i64* %21, align 8
  %42 = call i32 @__msa_ldi_h(i32 128)
  store i32 %42, i32* %29, align 4
  %43 = load i32, i32* %29, align 4
  %44 = shl i32 %43, 6
  store i32 %44, i32* %29, align 4
  %45 = load i32, i32* %12, align 4
  %46 = ashr i32 %45, 2
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %51, %6
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %13, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %149

51:                                               ; preds = %47
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i64, i64* %16, align 8
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* %18, align 8
  %57 = load i64, i64* %19, align 8
  %58 = call i32 @LD_SB4(i32* %52, i32 %53, i64 %54, i64 %55, i64 %56, i64 %57)
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 4, %59
  %61 = load i32*, i32** %7, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %7, align 8
  %64 = load i64, i64* %16, align 8
  %65 = load i64, i64* %17, align 8
  %66 = load i64, i64* %18, align 8
  %67 = load i64, i64* %19, align 8
  %68 = call i32 @XORI_B4_128_SB(i64 %64, i64 %65, i64 %66, i64 %67)
  %69 = load i64, i64* %16, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* %20, align 8
  %74 = load i64, i64* %21, align 8
  %75 = load i64, i64* %22, align 8
  %76 = load i64, i64* %23, align 8
  %77 = call i32 @VSHF_B2_SB(i64 %69, i64 %70, i64 %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76)
  %78 = load i32, i32* %29, align 4
  store i32 %78, i32* %24, align 4
  %79 = load i64, i64* %22, align 8
  %80 = load i64, i64* %23, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* %24, align 4
  %85 = call i32 @DPADD_SB2_SH(i64 %79, i64 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i64, i64* %17, align 8
  %87 = load i64, i64* %17, align 8
  %88 = load i64, i64* %17, align 8
  %89 = load i64, i64* %17, align 8
  %90 = load i64, i64* %20, align 8
  %91 = load i64, i64* %21, align 8
  %92 = load i64, i64* %22, align 8
  %93 = load i64, i64* %23, align 8
  %94 = call i32 @VSHF_B2_SB(i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93)
  %95 = load i32, i32* %29, align 4
  store i32 %95, i32* %25, align 4
  %96 = load i64, i64* %22, align 8
  %97 = load i64, i64* %23, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %25, align 4
  %101 = load i32, i32* %25, align 4
  %102 = call i32 @DPADD_SB2_SH(i64 %96, i64 %97, i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load i64, i64* %18, align 8
  %104 = load i64, i64* %18, align 8
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* %18, align 8
  %107 = load i64, i64* %20, align 8
  %108 = load i64, i64* %21, align 8
  %109 = load i64, i64* %22, align 8
  %110 = load i64, i64* %23, align 8
  %111 = call i32 @VSHF_B2_SB(i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110)
  %112 = load i32, i32* %29, align 4
  store i32 %112, i32* %26, align 4
  %113 = load i64, i64* %22, align 8
  %114 = load i64, i64* %23, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %26, align 4
  %118 = load i32, i32* %26, align 4
  %119 = call i32 @DPADD_SB2_SH(i64 %113, i64 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i64, i64* %19, align 8
  %121 = load i64, i64* %19, align 8
  %122 = load i64, i64* %19, align 8
  %123 = load i64, i64* %19, align 8
  %124 = load i64, i64* %20, align 8
  %125 = load i64, i64* %21, align 8
  %126 = load i64, i64* %22, align 8
  %127 = load i64, i64* %23, align 8
  %128 = call i32 @VSHF_B2_SB(i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127)
  %129 = load i32, i32* %29, align 4
  store i32 %129, i32* %27, align 4
  %130 = load i64, i64* %22, align 8
  %131 = load i64, i64* %23, align 8
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %27, align 4
  %135 = load i32, i32* %27, align 4
  %136 = call i32 @DPADD_SB2_SH(i64 %130, i64 %131, i32 %132, i32 %133, i32 %134, i32 %135)
  %137 = load i32, i32* %24, align 4
  %138 = load i32, i32* %25, align 4
  %139 = load i32, i32* %26, align 4
  %140 = load i32, i32* %27, align 4
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @ST_SH4(i32 %137, i32 %138, i32 %139, i32 %140, i32* %141, i32 %142)
  %144 = load i32, i32* %10, align 4
  %145 = mul nsw i32 4, %144
  %146 = load i32*, i32** %9, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32* %148, i32** %9, align 8
  br label %47

149:                                              ; preds = %47
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
