; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_4t_32w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_4t_32w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_4t_32w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_4t_32w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %33 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %34 = call i64 @LD_SB(i32* %33)
  store i64 %34, i64* %19, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 -1
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @LD_SH(i32* %37)
  store i32 %38, i32* %31, align 4
  %39 = load i32, i32* %31, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %18, align 4
  %42 = call i32 @SPLATI_H2_SH(i32 %39, i32 0, i32 1, i32 %40, i32 %41)
  %43 = call i32 @__msa_ldi_h(i32 128)
  store i32 %43, i32* %32, align 4
  %44 = load i32, i32* %32, align 4
  %45 = shl i32 %44, 6
  store i32 %45, i32* %32, align 4
  %46 = load i64, i64* %19, align 8
  %47 = add nsw i64 %46, 2
  store i64 %47, i64* %20, align 8
  %48 = load i64, i64* %19, align 8
  %49 = add nsw i64 %48, 8
  store i64 %49, i64* %21, align 8
  %50 = load i64, i64* %19, align 8
  %51 = add nsw i64 %50, 10
  store i64 %51, i64* %22, align 8
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %57, %6
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %13, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %57, label %149

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* %15, align 8
  %61 = call i32 @LD_SB2(i32* %58, i32 16, i64 %59, i64 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 24
  %64 = call i64 @LD_SB(i32* %63)
  store i64 %64, i64* %16, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %7, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %16, align 8
  %72 = call i32 @XORI_B3_128_SB(i64 %69, i64 %70, i64 %71)
  %73 = load i32, i32* %32, align 4
  store i32 %73, i32* %23, align 4
  %74 = load i32, i32* %32, align 4
  store i32 %74, i32* %24, align 4
  %75 = load i32, i32* %32, align 4
  store i32 %75, i32* %25, align 4
  %76 = load i32, i32* %32, align 4
  store i32 %76, i32* %26, align 4
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %15, align 8
  %81 = load i64, i64* %19, align 8
  %82 = load i64, i64* %21, align 8
  %83 = load i64, i64* %27, align 8
  %84 = load i64, i64* %28, align 8
  %85 = call i32 @VSHF_B2_SB(i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, i64 %84)
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %19, align 8
  %91 = load i64, i64* %19, align 8
  %92 = load i64, i64* %29, align 8
  %93 = load i64, i64* %30, align 8
  %94 = call i32 @VSHF_B2_SB(i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93)
  %95 = load i64, i64* %27, align 8
  %96 = load i64, i64* %28, align 8
  %97 = load i64, i64* %29, align 8
  %98 = load i64, i64* %30, align 8
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %23, align 4
  %104 = load i32, i32* %24, align 4
  %105 = load i32, i32* %25, align 4
  %106 = load i32, i32* %26, align 4
  %107 = call i32 @DPADD_SB4_SH(i64 %95, i64 %96, i64 %97, i64 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* %15, align 8
  %112 = load i64, i64* %20, align 8
  %113 = load i64, i64* %22, align 8
  %114 = load i64, i64* %27, align 8
  %115 = load i64, i64* %28, align 8
  %116 = call i32 @VSHF_B2_SB(i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115)
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* %15, align 8
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* %20, align 8
  %122 = load i64, i64* %20, align 8
  %123 = load i64, i64* %29, align 8
  %124 = load i64, i64* %30, align 8
  %125 = call i32 @VSHF_B2_SB(i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124)
  %126 = load i64, i64* %27, align 8
  %127 = load i64, i64* %28, align 8
  %128 = load i64, i64* %29, align 8
  %129 = load i64, i64* %30, align 8
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %23, align 4
  %135 = load i32, i32* %24, align 4
  %136 = load i32, i32* %25, align 4
  %137 = load i32, i32* %26, align 4
  %138 = call i32 @DPADD_SB4_SH(i64 %126, i64 %127, i64 %128, i64 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137)
  %139 = load i32, i32* %23, align 4
  %140 = load i32, i32* %24, align 4
  %141 = load i32, i32* %25, align 4
  %142 = load i32, i32* %26, align 4
  %143 = load i32*, i32** %9, align 8
  %144 = call i32 @ST_SH4(i32 %139, i32 %140, i32 %141, i32 %142, i32* %143, i32 8)
  %145 = load i32, i32* %10, align 4
  %146 = load i32*, i32** %9, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32* %148, i32** %9, align 8
  br label %53

149:                                              ; preds = %53
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
