; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hz_2x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hz_2x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chroma_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @avc_chroma_hz_2x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_chroma_hz_2x2_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @__msa_fill_b(i32 %21)
  store i64 %22, i64* %18, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @__msa_fill_b(i32 %23)
  store i64 %24, i64* %19, align 8
  %25 = load i64, i64* %18, align 8
  %26 = load i64, i64* %19, align 8
  %27 = call i64 @__msa_ilvr_b(i64 %25, i64 %26)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %20, align 4
  %29 = load i32*, i32** @chroma_mask_arr, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i64 @LD_SB(i32* %30)
  store i64 %31, i64* %17, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %14, align 8
  %36 = call i32 @LD_SB2(i32* %32, i32 %33, i64 %34, i64 %35)
  %37 = load i64, i64* %17, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call i64 @__msa_vshf_b(i64 %37, i64 %38, i64 %39)
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %20, align 4
  %44 = call i32 @__msa_dotp_u_h(i32 %42, i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = shl i32 %45, 3
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = call i64 @__msa_srari_h(i64 %48, i32 6)
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @__msa_sat_u_h(i32 %51, i32 7)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = call i64 @__msa_pckev_b(i64 %54, i64 %56)
  store i64 %57, i64* %16, align 8
  %58 = load i64, i64* %16, align 8
  %59 = call i32 @__msa_copy_u_h(i64 %58, i32 0)
  store i32 %59, i32* %11, align 4
  %60 = load i64, i64* %16, align 8
  %61 = call i32 @__msa_copy_u_h(i64 %60, i32 2)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @SH(i32 %62, i32* %63)
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @SH(i32 %69, i32* %70)
  ret void
}

declare dso_local i64 @__msa_fill_b(i32) #1

declare dso_local i64 @__msa_ilvr_b(i64, i64) #1

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i64 @__msa_vshf_b(i64, i64, i64) #1

declare dso_local i32 @__msa_dotp_u_h(i32, i32) #1

declare dso_local i64 @__msa_srari_h(i64, i32) #1

declare dso_local i32 @__msa_sat_u_h(i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @__msa_copy_u_h(i64, i32) #1

declare dso_local i32 @SH(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
