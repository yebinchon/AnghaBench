; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_idct_msa.c_ff_vp8_idct_dc_add_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_idct_msa.c_ff_vp8_idct_dc_add_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.ff_vp8_idct_dc_add_msa.mask = private unnamed_addr constant %struct.TYPE_19__ { i32 0, i32 2, i32 4, i32 6, i32 16, i32 18, i32 20, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vp8_idct_dc_add_msa(i32* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__, align 8
  %13 = alloca %struct.TYPE_19__, align 8
  %14 = alloca %struct.TYPE_19__, align 8
  %15 = alloca %struct.TYPE_19__, align 8
  %16 = alloca %struct.TYPE_19__, align 8
  %17 = alloca %struct.TYPE_19__, align 8
  %18 = alloca %struct.TYPE_19__, align 8
  %19 = alloca %struct.TYPE_19__, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = bitcast %struct.TYPE_19__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 64, i1 false)
  %21 = bitcast %struct.TYPE_19__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.TYPE_19__* @__const.ff_vp8_idct_dc_add_msa.mask to i8*), i64 64, i1 false)
  %22 = load i64*, i64** %5, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @__msa_fill_h(i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @__msa_srari_h(i32 %26, i32 3)
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @LD_SB4(i32* %28, i32 %29, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %13, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %14, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %15, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %16)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @ILVR_B4_SH(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %12, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %13, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %12, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %14, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %12, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %15, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %12, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %16, i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @ADD4(i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @CLIP_SH4_0_255(i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @VSHF_B2_SB(i32 %54, i32 %55, i32 %56, i32 %57, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %19, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %19, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %17, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %18)
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ST_W2(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %17, i32 0, i32 1, i32* %59, i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 2, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @ST_W2(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %18, i32 0, i32 1, i32* %66, i32 %67)
  %69 = load i64*, i64** %5, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  store i64 0, i64* %70, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @__msa_fill_h(i64) #2

declare dso_local i32 @__msa_srari_h(i32, i32) #2

declare dso_local i32 @LD_SB4(i32*, i32, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8) #2

declare dso_local i32 @ILVR_B4_SH(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, i32, i32, i32, i32) #2

declare dso_local i32 @ADD4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @CLIP_SH4_0_255(i32, i32, i32, i32) #2

declare dso_local i32 @VSHF_B2_SB(i32, i32, i32, i32, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8) #2

declare dso_local i32 @ST_W2(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
