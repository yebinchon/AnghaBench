; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hv_4t_4x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hv_4t_4x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*, i64, i32*, i32*)* @hevc_hv_4t_4x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_4t_4x2_msa(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %41 = load i64, i64* @ff_hevc_mask_arr, align 8
  %42 = add nsw i64 %41, 16
  %43 = call i64 @LD_SB(i64 %42)
  store i64 %43, i64* %22, align 8
  %44 = load i64, i64* %8, align 8
  %45 = add nsw i64 %44, 1
  %46 = load i32*, i32** %7, align 8
  %47 = sub i64 0, %45
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @LD_SH(i32* %49)
  store i32 %50, i32* %24, align 4
  %51 = load i32, i32* %24, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %19, align 4
  %54 = call i32 @SPLATI_H2_SH(i32 %51, i32 0, i32 1, i32 %52, i32 %53)
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @LD_SH(i32* %55)
  store i32 %56, i32* %24, align 4
  %57 = load i32, i32* %24, align 4
  %58 = load i32, i32* %24, align 4
  %59 = call i32 @UNPCK_R_SB_SH(i32 %57, i32 %58)
  %60 = load i32, i32* %24, align 4
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* %21, align 4
  %63 = call i32 @SPLATI_W2_SH(i32 %60, i32 0, i32 %61, i32 %62)
  %64 = load i64, i64* %22, align 8
  %65 = add nsw i64 %64, 2
  store i64 %65, i64* %23, align 8
  %66 = call i32 @__msa_ldi_h(i32 128)
  store i32 %66, i32* %25, align 4
  %67 = load i32, i32* %25, align 4
  %68 = shl i32 %67, 6
  store i32 %68, i32* %25, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* %17, align 8
  %76 = call i32 @LD_SB5(i32* %69, i64 %70, i64 %71, i64 %72, i64 %73, i64 %74, i64 %75)
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %17, align 8
  %82 = call i32 @XORI_B5_128_SB(i64 %77, i64 %78, i64 %79, i64 %80, i64 %81)
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* %22, align 8
  %88 = load i64, i64* %23, align 8
  %89 = load i64, i64* %26, align 8
  %90 = load i64, i64* %27, align 8
  %91 = call i32 @VSHF_B2_SB(i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90)
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %16, align 8
  %96 = load i64, i64* %22, align 8
  %97 = load i64, i64* %23, align 8
  %98 = load i64, i64* %28, align 8
  %99 = load i64, i64* %29, align 8
  %100 = call i32 @VSHF_B2_SB(i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99)
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* %17, align 8
  %103 = load i64, i64* %15, align 8
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* %22, align 8
  %106 = load i64, i64* %23, align 8
  %107 = load i64, i64* %30, align 8
  %108 = load i64, i64* %31, align 8
  %109 = call i32 @VSHF_B2_SB(i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108)
  %110 = load i32, i32* %25, align 4
  store i32 %110, i32* %32, align 4
  %111 = load i32, i32* %25, align 4
  store i32 %111, i32* %33, align 4
  %112 = load i32, i32* %25, align 4
  store i32 %112, i32* %34, align 4
  %113 = load i64, i64* %26, align 8
  %114 = load i64, i64* %27, align 8
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* %32, align 4
  %118 = load i32, i32* %32, align 4
  %119 = call i32 @DPADD_SB2_SH(i64 %113, i64 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i64, i64* %28, align 8
  %121 = load i64, i64* %29, align 8
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %19, align 4
  %124 = load i32, i32* %33, align 4
  %125 = load i32, i32* %33, align 4
  %126 = call i32 @DPADD_SB2_SH(i64 %120, i64 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = load i64, i64* %30, align 8
  %128 = load i64, i64* %31, align 8
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %34, align 4
  %132 = load i32, i32* %34, align 4
  %133 = call i32 @DPADD_SB2_SH(i64 %127, i64 %128, i32 %129, i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* %33, align 4
  %135 = load i32, i32* %32, align 4
  %136 = load i32, i32* %35, align 4
  %137 = load i32, i32* %36, align 4
  %138 = call i32 @ILVRL_H2_SH(i32 %134, i32 %135, i32 %136, i32 %137)
  %139 = load i32, i32* %34, align 4
  %140 = load i32, i32* %33, align 4
  %141 = load i32, i32* %37, align 4
  %142 = load i32, i32* %38, align 4
  %143 = call i32 @ILVRL_H2_SH(i32 %139, i32 %140, i32 %141, i32 %142)
  %144 = load i32, i32* %35, align 4
  %145 = load i32, i32* %36, align 4
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* %21, align 4
  %148 = call i32 @HEVC_FILT_4TAP(i32 %144, i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %39, align 4
  %149 = load i32, i32* %37, align 4
  %150 = load i32, i32* %38, align 4
  %151 = load i32, i32* %20, align 4
  %152 = load i32, i32* %21, align 4
  %153 = call i32 @HEVC_FILT_4TAP(i32 %149, i32 %150, i32 %151, i32 %152)
  store i32 %153, i32* %40, align 4
  %154 = load i32, i32* %39, align 4
  %155 = ashr i32 %154, 6
  store i32 %155, i32* %39, align 4
  %156 = load i32, i32* %40, align 4
  %157 = ashr i32 %156, 6
  store i32 %157, i32* %40, align 4
  %158 = load i32, i32* %40, align 4
  %159 = load i32, i32* %39, align 4
  %160 = call i64 @__msa_pckev_h(i32 %158, i32 %159)
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %39, align 4
  %162 = load i32, i32* %39, align 4
  %163 = load i32*, i32** %9, align 8
  %164 = load i64, i64* %10, align 8
  %165 = call i32 @ST_D2(i32 %162, i32 0, i32 1, i32* %163, i64 %164)
  ret void
}

declare dso_local i64 @LD_SB(i64) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB5(i32*, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP(i32, i32, i32, i32) #1

declare dso_local i64 @__msa_pckev_h(i32, i32) #1

declare dso_local i32 @ST_D2(i32, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
