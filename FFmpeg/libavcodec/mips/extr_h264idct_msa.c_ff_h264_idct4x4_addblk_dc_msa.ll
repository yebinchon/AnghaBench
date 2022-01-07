; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264idct_msa.c_ff_h264_idct4x4_addblk_dc_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264idct_msa.c_ff_h264_idct4x4_addblk_dc_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h264_idct4x4_addblk_dc_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @LW(i32* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @LW(i32* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 2, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = call i32 @LW(i32* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 3, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = call i32 @LW(i32* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 32
  %41 = ashr i32 %40, 6
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i64 @__msa_fill_h(i32 %42)
  store i64 %43, i64* %16, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @INSERT_W4_UB(i32 %46, i32 %47, i32 %48, i32 %49, i32 %51)
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @UNPCK_UB_SH(i32 %56, i64 %53, i64 %54)
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %16, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @ADD2(i64 %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63)
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @CLIP_SH2_0_255(i64 %65, i64 %66)
  %68 = load i64, i64* %10, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i64, i64* %9, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @__msa_pckev_b(i32 %69, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @ST_W4(i32 %73, i32 0, i32 1, i32 2, i32 3, i32* %74, i32 %75)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LW(i32*) #2

declare dso_local i64 @__msa_fill_h(i32) #2

declare dso_local i32 @INSERT_W4_UB(i32, i32, i32, i32, i32) #2

declare dso_local i32 @UNPCK_UB_SH(i32, i64, i64) #2

declare dso_local i32 @ADD2(i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @CLIP_SH2_0_255(i64, i64) #2

declare dso_local i32 @__msa_pckev_b(i32, i32) #2

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
