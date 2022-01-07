; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hz_4x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hz_4x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chroma_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @avc_chroma_hz_4x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_chroma_hz_4x2_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @__msa_fill_b(i32 %19)
  store i64 %20, i64* %16, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @__msa_fill_b(i32 %21)
  store i64 %22, i64* %17, align 8
  %23 = load i64, i64* %16, align 8
  %24 = load i64, i64* %17, align 8
  %25 = call i64 @__msa_ilvr_b(i64 %23, i64 %24)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %18, align 4
  %27 = load i32*, i32** @chroma_mask_arr, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = call i64 @LD_SB(i32* %28)
  store i64 %29, i64* %15, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @LD_SB2(i32* %30, i32 %31, i64 %32, i64 %33)
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i64 @__msa_vshf_b(i64 %35, i64 %36, i64 %37)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %18, align 4
  %42 = call i32 @__msa_dotp_u_h(i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = shl i32 %43, 3
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i64 @__msa_srari_h(i32 %45, i32 6)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @__msa_sat_u_h(i32 %48, i32 7)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = call i64 @__msa_pckev_b(i64 %51, i64 %53)
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @ST_W2(i64 %55, i32 0, i32 1, i32* %56, i32 %57)
  ret void
}

declare dso_local i64 @__msa_fill_b(i32) #1

declare dso_local i64 @__msa_ilvr_b(i64, i64) #1

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i64 @__msa_vshf_b(i64, i64, i64) #1

declare dso_local i32 @__msa_dotp_u_h(i32, i32) #1

declare dso_local i64 @__msa_srari_h(i32, i32) #1

declare dso_local i32 @__msa_sat_u_h(i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_W2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
