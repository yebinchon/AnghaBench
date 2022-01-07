; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_4t_4x8multiple_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_4t_4x8multiple_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_4t_4x8multiple_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_4t_4x8multiple_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %34 = load i64, i64* @ff_hevc_mask_arr, align 8
  %35 = add nsw i64 %34, 16
  %36 = call i64 @LD_SB(i64 %35)
  store i64 %36, i64* %33, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 -1
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @LD_SH(i32* %39)
  store i32 %40, i32* %31, align 4
  %41 = load i32, i32* %31, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @SPLATI_H2_SH(i32 %41, i32 0, i32 1, i32 %42, i32 %43)
  %45 = load i64, i64* %33, align 8
  %46 = add nsw i64 %45, 2
  store i64 %46, i64* %24, align 8
  %47 = call i32 @__msa_ldi_h(i32 128)
  store i32 %47, i32* %32, align 4
  %48 = load i32, i32* %32, align 4
  %49 = shl i32 %48, 6
  store i32 %49, i32* %32, align 4
  %50 = load i32, i32* %12, align 4
  %51 = ashr i32 %50, 3
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %56, %6
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %13, align 4
  %55 = icmp ne i32 %53, 0
  br i1 %55, label %56, label %162

56:                                               ; preds = %52
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* %18, align 8
  %62 = load i64, i64* %19, align 8
  %63 = load i64, i64* %20, align 8
  %64 = load i64, i64* %21, align 8
  %65 = load i64, i64* %22, align 8
  %66 = load i64, i64* %23, align 8
  %67 = call i32 @LD_SB8(i32* %57, i32 %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66)
  %68 = load i32, i32* %8, align 4
  %69 = mul nsw i32 8, %68
  %70 = load i32*, i32** %7, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %7, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* %18, align 8
  %76 = load i64, i64* %19, align 8
  %77 = load i64, i64* %20, align 8
  %78 = load i64, i64* %21, align 8
  %79 = load i64, i64* %22, align 8
  %80 = load i64, i64* %23, align 8
  %81 = call i32 @XORI_B8_128_SB(i64 %73, i64 %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, i64 %80)
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* %17, align 8
  %86 = load i64, i64* %33, align 8
  %87 = load i64, i64* %24, align 8
  %88 = load i64, i64* %25, align 8
  %89 = load i64, i64* %26, align 8
  %90 = call i32 @VSHF_B2_SB(i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88, i64 %89)
  %91 = load i32, i32* %32, align 4
  store i32 %91, i32* %27, align 4
  %92 = load i64, i64* %25, align 8
  %93 = load i64, i64* %26, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %27, align 4
  %97 = load i32, i32* %27, align 4
  %98 = call i32 @DPADD_SB2_SH(i64 %92, i64 %93, i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load i64, i64* %18, align 8
  %100 = load i64, i64* %19, align 8
  %101 = load i64, i64* %18, align 8
  %102 = load i64, i64* %19, align 8
  %103 = load i64, i64* %33, align 8
  %104 = load i64, i64* %24, align 8
  %105 = load i64, i64* %25, align 8
  %106 = load i64, i64* %26, align 8
  %107 = call i32 @VSHF_B2_SB(i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106)
  %108 = load i32, i32* %32, align 4
  store i32 %108, i32* %28, align 4
  %109 = load i64, i64* %25, align 8
  %110 = load i64, i64* %26, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %28, align 4
  %114 = load i32, i32* %28, align 4
  %115 = call i32 @DPADD_SB2_SH(i64 %109, i64 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = load i64, i64* %20, align 8
  %117 = load i64, i64* %21, align 8
  %118 = load i64, i64* %20, align 8
  %119 = load i64, i64* %21, align 8
  %120 = load i64, i64* %33, align 8
  %121 = load i64, i64* %24, align 8
  %122 = load i64, i64* %25, align 8
  %123 = load i64, i64* %26, align 8
  %124 = call i32 @VSHF_B2_SB(i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123)
  %125 = load i32, i32* %32, align 4
  store i32 %125, i32* %29, align 4
  %126 = load i64, i64* %25, align 8
  %127 = load i64, i64* %26, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %29, align 4
  %131 = load i32, i32* %29, align 4
  %132 = call i32 @DPADD_SB2_SH(i64 %126, i64 %127, i32 %128, i32 %129, i32 %130, i32 %131)
  %133 = load i64, i64* %22, align 8
  %134 = load i64, i64* %23, align 8
  %135 = load i64, i64* %22, align 8
  %136 = load i64, i64* %23, align 8
  %137 = load i64, i64* %33, align 8
  %138 = load i64, i64* %24, align 8
  %139 = load i64, i64* %25, align 8
  %140 = load i64, i64* %26, align 8
  %141 = call i32 @VSHF_B2_SB(i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140)
  %142 = load i32, i32* %32, align 4
  store i32 %142, i32* %30, align 4
  %143 = load i64, i64* %25, align 8
  %144 = load i64, i64* %26, align 8
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %30, align 4
  %148 = load i32, i32* %30, align 4
  %149 = call i32 @DPADD_SB2_SH(i64 %143, i64 %144, i32 %145, i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %27, align 4
  %151 = load i32, i32* %28, align 4
  %152 = load i32, i32* %29, align 4
  %153 = load i32, i32* %30, align 4
  %154 = load i32*, i32** %9, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @ST_D8(i32 %150, i32 %151, i32 %152, i32 %153, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %154, i32 %155)
  %157 = load i32, i32* %10, align 4
  %158 = mul nsw i32 8, %157
  %159 = load i32*, i32** %9, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32* %161, i32** %9, align 8
  br label %52

162:                                              ; preds = %52
  ret void
}

declare dso_local i64 @LD_SB(i64) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
