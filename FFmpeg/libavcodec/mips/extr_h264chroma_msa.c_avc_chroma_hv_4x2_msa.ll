; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hv_4x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hv_4x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chroma_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32)* @avc_chroma_hv_4x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_chroma_hv_4x2_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @__msa_fill_b(i32 %29)
  store i32 %30, i32* %24, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @__msa_fill_b(i32 %31)
  store i32 %32, i32* %25, align 4
  %33 = load i32, i32* %24, align 4
  %34 = load i32, i32* %25, align 4
  %35 = call i32 @__msa_ilvr_b(i32 %33, i32 %34)
  store i32 %35, i32* %26, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i64 @__msa_fill_h(i32 %36)
  store i64 %37, i64* %27, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call i64 @__msa_fill_h(i32 %38)
  store i64 %39, i64* %28, align 8
  %40 = load i32*, i32** @chroma_mask_arr, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i32 @LD_SB(i32* %41)
  store i32 %42, i32* %22, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @LD_UB3(i32* %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %22, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @VSHF_B2_UB(i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %26, align 4
  %61 = load i32, i32* %26, align 4
  %62 = load i64, i64* %18, align 8
  %63 = load i64, i64* %19, align 8
  %64 = call i32 @DOTP_UB2_UH(i32 %58, i32 %59, i32 %60, i32 %61, i64 %62, i64 %63)
  %65 = load i64, i64* %18, align 8
  %66 = load i64, i64* %28, align 8
  %67 = load i64, i64* %19, align 8
  %68 = load i64, i64* %27, align 8
  %69 = load i64, i64* %20, align 8
  %70 = load i64, i64* %21, align 8
  %71 = call i32 @MUL2(i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i64 %70)
  %72 = load i64, i64* %21, align 8
  %73 = load i64, i64* %20, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %20, align 8
  %75 = load i64, i64* %20, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i64 @__msa_srari_h(i32 %76, i32 6)
  store i64 %77, i64* %20, align 8
  %78 = load i64, i64* %20, align 8
  %79 = call i64 @__msa_sat_u_h(i64 %78, i32 7)
  store i64 %79, i64* %20, align 8
  %80 = load i64, i64* %20, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i64, i64* %20, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i64 @__msa_pckev_b(i32 %81, i32 %83)
  store i64 %84, i64* %23, align 8
  %85 = load i64, i64* %23, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @ST_W2(i64 %85, i32 0, i32 1, i32* %86, i32 %87)
  ret void
}

declare dso_local i32 @__msa_fill_b(i32) #1

declare dso_local i32 @__msa_ilvr_b(i32, i32) #1

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i32 @LD_UB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_UB(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DOTP_UB2_UH(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @MUL2(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_srari_h(i32, i32) #1

declare dso_local i64 @__msa_sat_u_h(i64, i32) #1

declare dso_local i64 @__msa_pckev_b(i32, i32) #1

declare dso_local i32 @ST_W2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
