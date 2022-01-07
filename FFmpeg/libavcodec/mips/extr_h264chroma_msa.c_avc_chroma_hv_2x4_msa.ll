; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hv_2x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hv_2x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chroma_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32)* @avc_chroma_hv_2x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_chroma_hv_2x4_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
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
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @__msa_fill_b(i32 %35)
  store i32 %36, i32* %30, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @__msa_fill_b(i32 %37)
  store i32 %38, i32* %31, align 4
  %39 = load i32, i32* %30, align 4
  %40 = load i32, i32* %31, align 4
  %41 = call i32 @__msa_ilvr_b(i32 %39, i32 %40)
  store i32 %41, i32* %32, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i64 @__msa_fill_h(i32 %42)
  store i64 %43, i64* %33, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i64 @__msa_fill_h(i32 %44)
  store i64 %45, i64* %34, align 8
  %46 = load i32*, i32** @chroma_mask_arr, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 48
  %48 = call i32 @LD_SB(i32* %47)
  store i32 %48, i32* %29, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %19, align 4
  %56 = call i32 @LD_UB5(i32* %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %29, align 4
  %62 = load i32, i32* %29, align 4
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %21, align 4
  %65 = call i32 @VSHF_B2_UB(i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* %29, align 4
  %71 = load i32, i32* %29, align 4
  %72 = load i32, i32* %22, align 4
  %73 = load i32, i32* %23, align 4
  %74 = call i32 @VSHF_B2_UB(i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* %23, align 4
  %78 = load i32, i32* %22, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @ILVR_D2_UB(i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %32, align 4
  %85 = load i32, i32* %32, align 4
  %86 = load i64, i64* %24, align 8
  %87 = load i64, i64* %25, align 8
  %88 = call i32 @DOTP_UB2_UH(i32 %82, i32 %83, i32 %84, i32 %85, i64 %86, i64 %87)
  %89 = load i64, i64* %24, align 8
  %90 = load i64, i64* %34, align 8
  %91 = load i64, i64* %25, align 8
  %92 = load i64, i64* %33, align 8
  %93 = load i64, i64* %26, align 8
  %94 = load i64, i64* %27, align 8
  %95 = call i32 @MUL2(i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94)
  %96 = load i64, i64* %27, align 8
  %97 = load i64, i64* %26, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %26, align 8
  %99 = load i64, i64* %26, align 8
  %100 = call i64 @__msa_srari_h(i64 %99, i32 6)
  store i64 %100, i64* %26, align 8
  %101 = load i64, i64* %26, align 8
  %102 = call i64 @__msa_sat_u_h(i64 %101, i32 7)
  store i64 %102, i64* %26, align 8
  %103 = load i64, i64* %26, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i64, i64* %26, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i64 @__msa_pckev_b(i32 %104, i32 %106)
  store i64 %107, i64* %28, align 8
  %108 = load i64, i64* %28, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @ST_H4(i64 %108, i32 0, i32 1, i32 2, i32 3, i32* %109, i32 %110)
  ret void
}

declare dso_local i32 @__msa_fill_b(i32) #1

declare dso_local i32 @__msa_ilvr_b(i32, i32) #1

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i32 @LD_UB5(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_UB(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DOTP_UB2_UH(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @MUL2(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_srari_h(i64, i32) #1

declare dso_local i64 @__msa_sat_u_h(i64, i32) #1

declare dso_local i64 @__msa_pckev_b(i32, i32) #1

declare dso_local i32 @ST_H4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
