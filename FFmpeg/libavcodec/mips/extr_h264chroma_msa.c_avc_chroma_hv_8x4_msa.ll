; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hv_8x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hv_8x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chroma_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32)* @avc_chroma_hv_8x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_chroma_hv_8x4_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
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
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @__msa_fill_b(i32 %37)
  store i32 %38, i32* %32, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @__msa_fill_b(i32 %39)
  store i32 %40, i32* %33, align 4
  %41 = load i32, i32* %32, align 4
  %42 = load i32, i32* %33, align 4
  %43 = call i64 @__msa_ilvr_b(i32 %41, i32 %42)
  store i64 %43, i64* %34, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @__msa_fill_h(i32 %44)
  store i32 %45, i32* %35, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @__msa_fill_h(i32 %46)
  store i32 %47, i32* %36, align 4
  %48 = load i32*, i32** @chroma_mask_arr, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 32
  %50 = call i32 @LD_SB(i32* %49)
  store i32 %50, i32* %31, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i64 @LD_UB(i32* %51)
  store i64 %52, i64* %15, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %8, align 8
  %57 = load i32, i32* %31, align 4
  %58 = load i64, i64* %15, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i64, i64* %15, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i64 @__msa_vshf_b(i32 %57, i32 %59, i32 %61)
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %34, align 8
  %65 = call i32 @__msa_dotp_u_h(i64 %63, i64 %64)
  store i32 %65, i32* %22, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* %18, align 8
  %71 = load i64, i64* %19, align 8
  %72 = call i32 @LD_UB4(i32* %66, i32 %67, i64 %68, i64 %69, i64 %70, i64 %71)
  %73 = load i32, i32* %10, align 4
  %74 = mul nsw i32 4, %73
  %75 = load i32*, i32** %8, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %8, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* %17, align 8
  %82 = load i32, i32* %31, align 4
  %83 = load i32, i32* %31, align 4
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* %17, align 8
  %86 = call i32 @VSHF_B2_UB(i64 %78, i64 %79, i64 %80, i64 %81, i32 %82, i32 %83, i64 %84, i64 %85)
  %87 = load i64, i64* %18, align 8
  %88 = load i64, i64* %18, align 8
  %89 = load i64, i64* %19, align 8
  %90 = load i64, i64* %19, align 8
  %91 = load i32, i32* %31, align 4
  %92 = load i32, i32* %31, align 4
  %93 = load i64, i64* %18, align 8
  %94 = load i64, i64* %19, align 8
  %95 = call i32 @VSHF_B2_UB(i64 %87, i64 %88, i64 %89, i64 %90, i32 %91, i32 %92, i64 %93, i64 %94)
  %96 = load i64, i64* %16, align 8
  %97 = load i64, i64* %17, align 8
  %98 = load i64, i64* %18, align 8
  %99 = load i64, i64* %19, align 8
  %100 = load i64, i64* %34, align 8
  %101 = load i64, i64* %34, align 8
  %102 = load i64, i64* %34, align 8
  %103 = load i64, i64* %34, align 8
  %104 = load i32, i32* %23, align 4
  %105 = load i32, i32* %24, align 4
  %106 = load i32, i32* %25, align 4
  %107 = load i32, i32* %26, align 4
  %108 = call i32 @DOTP_UB4_UH(i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %35, align 4
  %111 = load i32, i32* %24, align 4
  %112 = load i32, i32* %35, align 4
  %113 = load i32, i32* %25, align 4
  %114 = load i32, i32* %35, align 4
  %115 = load i32, i32* %26, align 4
  %116 = load i32, i32* %35, align 4
  %117 = load i32, i32* %27, align 4
  %118 = load i32, i32* %28, align 4
  %119 = load i32, i32* %29, align 4
  %120 = load i32, i32* %30, align 4
  %121 = call i32 @MUL4(i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* %22, align 4
  %123 = load i32, i32* %36, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32, i32* %27, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %27, align 4
  %127 = load i32, i32* %23, align 4
  %128 = load i32, i32* %36, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load i32, i32* %28, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %28, align 4
  %132 = load i32, i32* %24, align 4
  %133 = load i32, i32* %36, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load i32, i32* %29, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %29, align 4
  %137 = load i32, i32* %25, align 4
  %138 = load i32, i32* %36, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load i32, i32* %30, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %30, align 4
  %142 = load i32, i32* %27, align 4
  %143 = load i32, i32* %28, align 4
  %144 = load i32, i32* %29, align 4
  %145 = load i32, i32* %30, align 4
  %146 = call i32 @SRARI_H4_UH(i32 %142, i32 %143, i32 %144, i32 %145, i32 6)
  %147 = load i32, i32* %27, align 4
  %148 = load i32, i32* %28, align 4
  %149 = load i32, i32* %29, align 4
  %150 = load i32, i32* %30, align 4
  %151 = call i32 @SAT_UH4_UH(i32 %147, i32 %148, i32 %149, i32 %150, i32 7)
  %152 = load i32, i32* %28, align 4
  %153 = load i32, i32* %27, align 4
  %154 = load i32, i32* %30, align 4
  %155 = load i32, i32* %29, align 4
  %156 = load i64, i64* %20, align 8
  %157 = load i64, i64* %21, align 8
  %158 = call i32 @PCKEV_B2_UB(i32 %152, i32 %153, i32 %154, i32 %155, i64 %156, i64 %157)
  %159 = load i64, i64* %20, align 8
  %160 = load i64, i64* %21, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @ST_D4(i64 %159, i64 %160, i32 0, i32 1, i32 0, i32 1, i32* %161, i32 %162)
  ret void
}

declare dso_local i32 @__msa_fill_b(i32) #1

declare dso_local i64 @__msa_ilvr_b(i32, i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i64 @__msa_vshf_b(i32, i32, i32) #1

declare dso_local i32 @__msa_dotp_u_h(i64, i64) #1

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_UB(i64, i64, i64, i64, i32, i32, i64, i64) #1

declare dso_local i32 @DOTP_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @MUL4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_UH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_UH4_UH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @ST_D4(i64, i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
