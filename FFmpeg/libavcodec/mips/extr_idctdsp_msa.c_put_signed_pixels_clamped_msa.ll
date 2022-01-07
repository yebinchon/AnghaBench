; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_idctdsp_msa.c_put_signed_pixels_clamped_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_idctdsp_msa.c_put_signed_pixels_clamped_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @put_signed_pixels_clamped_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_signed_pixels_clamped_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %22 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* %16, align 8
  %26 = load i64, i64* %17, align 8
  %27 = load i64, i64* %18, align 8
  %28 = load i64, i64* %19, align 8
  %29 = load i64, i64* %20, align 8
  %30 = load i64, i64* %21, align 8
  %31 = load i64, i64* %22, align 8
  %32 = call i32 @LD_SH8(i32* %23, i32 8, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29, i64 %30, i64 %31)
  %33 = load i64, i64* %15, align 8
  %34 = add nsw i64 %33, 128
  store i64 %34, i64* %15, align 8
  %35 = load i64, i64* %16, align 8
  %36 = add nsw i64 %35, 128
  store i64 %36, i64* %16, align 8
  %37 = load i64, i64* %17, align 8
  %38 = add nsw i64 %37, 128
  store i64 %38, i64* %17, align 8
  %39 = load i64, i64* %18, align 8
  %40 = add nsw i64 %39, 128
  store i64 %40, i64* %18, align 8
  %41 = load i64, i64* %19, align 8
  %42 = add nsw i64 %41, 128
  store i64 %42, i64* %19, align 8
  %43 = load i64, i64* %20, align 8
  %44 = add nsw i64 %43, 128
  store i64 %44, i64* %20, align 8
  %45 = load i64, i64* %21, align 8
  %46 = add nsw i64 %45, 128
  store i64 %46, i64* %21, align 8
  %47 = load i64, i64* %22, align 8
  %48 = add nsw i64 %47, 128
  store i64 %48, i64* %22, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* %17, align 8
  %52 = load i64, i64* %18, align 8
  %53 = load i64, i64* %19, align 8
  %54 = load i64, i64* %20, align 8
  %55 = load i64, i64* %21, align 8
  %56 = load i64, i64* %22, align 8
  %57 = call i32 @CLIP_SH8_0_255(i64 %49, i64 %50, i64 %51, i64 %52, i64 %53, i64 %54, i64 %55, i64 %56)
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* %16, align 8
  %62 = load i64, i64* %17, align 8
  %63 = load i64, i64* %17, align 8
  %64 = load i64, i64* %18, align 8
  %65 = load i64, i64* %18, align 8
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* %18, align 8
  %70 = call i32 @PCKEV_B4_SH(i64 %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69)
  %71 = load i64, i64* %19, align 8
  %72 = load i64, i64* %19, align 8
  %73 = load i64, i64* %20, align 8
  %74 = load i64, i64* %20, align 8
  %75 = load i64, i64* %21, align 8
  %76 = load i64, i64* %21, align 8
  %77 = load i64, i64* %22, align 8
  %78 = load i64, i64* %22, align 8
  %79 = load i64, i64* %19, align 8
  %80 = load i64, i64* %20, align 8
  %81 = load i64, i64* %21, align 8
  %82 = load i64, i64* %22, align 8
  %83 = call i32 @PCKEV_B4_SH(i64 %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %82)
  %84 = load i64, i64* %15, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @__msa_copy_u_d(i32 %85, i32 0)
  store i32 %86, i32* %7, align 4
  %87 = load i64, i64* %16, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @__msa_copy_u_d(i32 %88, i32 0)
  store i32 %89, i32* %8, align 4
  %90 = load i64, i64* %17, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @__msa_copy_u_d(i32 %91, i32 0)
  store i32 %92, i32* %9, align 4
  %93 = load i64, i64* %18, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @__msa_copy_u_d(i32 %94, i32 0)
  store i32 %95, i32* %10, align 4
  %96 = load i64, i64* %19, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @__msa_copy_u_d(i32 %97, i32 0)
  store i32 %98, i32* %11, align 4
  %99 = load i64, i64* %20, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @__msa_copy_u_d(i32 %100, i32 0)
  store i32 %101, i32* %12, align 4
  %102 = load i64, i64* %21, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @__msa_copy_u_d(i32 %103, i32 0)
  store i32 %104, i32* %13, align 4
  %105 = load i64, i64* %22, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @__msa_copy_u_d(i32 %106, i32 0)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @SD4(i32 %108, i32 %109, i32 %110, i32 %111, i32* %112, i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = mul nsw i32 4, %115
  %117 = load i32*, i32** %5, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %5, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @SD4(i32 %120, i32 %121, i32 %122, i32 %123, i32* %124, i32 %125)
  ret void
}

declare dso_local i32 @LD_SH8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @CLIP_SH8_0_255(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @PCKEV_B4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @__msa_copy_u_d(i32, i32) #1

declare dso_local i32 @SD4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
