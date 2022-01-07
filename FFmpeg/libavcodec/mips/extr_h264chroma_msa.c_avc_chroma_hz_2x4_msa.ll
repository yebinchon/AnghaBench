; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hz_2x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hz_2x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chroma_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @avc_chroma_hz_2x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_chroma_hz_2x4_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @__msa_fill_b(i32 %21)
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @__msa_fill_b(i32 %23)
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* %18, align 4
  %26 = load i32, i32* %19, align 4
  %27 = call i64 @__msa_ilvr_b(i32 %25, i32 %26)
  store i64 %27, i64* %20, align 8
  %28 = load i32*, i32** @chroma_mask_arr, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 64
  %30 = call i32 @LD_SB(i32* %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %14, align 8
  %37 = call i32 @LD_UB4(i32* %31, i32 %32, i64 %33, i64 %34, i64 %35, i64 %36)
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @VSHF_B2_UB(i64 %38, i64 %39, i64 %40, i64 %41, i32 %42, i32 %43, i64 %44, i64 %45)
  %47 = load i64, i64* %13, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i64, i64* %11, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i64 @__msa_ilvr_d(i32 %48, i32 %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %20, align 8
  %54 = call i32 @__msa_dotp_u_h(i64 %52, i64 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = shl i32 %55, 3
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = call i64 @__msa_srari_h(i64 %58, i32 6)
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @__msa_sat_u_h(i32 %61, i32 7)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call i64 @__msa_pckev_b(i32 %63, i32 %64)
  store i64 %65, i64* %16, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @ST_H4(i64 %66, i32 0, i32 1, i32 2, i32 3, i32* %67, i32 %68)
  ret void
}

declare dso_local i32 @__msa_fill_b(i32) #1

declare dso_local i64 @__msa_ilvr_b(i32, i32) #1

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_UB(i64, i64, i64, i64, i32, i32, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i32 @__msa_dotp_u_h(i64, i64) #1

declare dso_local i64 @__msa_srari_h(i64, i32) #1

declare dso_local i32 @__msa_sat_u_h(i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i32, i32) #1

declare dso_local i32 @ST_H4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
