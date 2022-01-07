; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_intra_msa.c_ff_dc_32x32_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_intra_msa.c_ff_dc_32x32_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_dc_32x32_msa(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @LD_UB2(i32* %22, i32 16, i64 %23, i64 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @LD_UB2(i32* %26, i32 16, i64 %27, i64 %28)
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %16, align 8
  %33 = load i64, i64* %17, align 8
  %34 = call i32 @HADD_UB2_UH(i64 %30, i64 %31, i64 %32, i64 %33)
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %18, align 8
  %38 = load i64, i64* %19, align 8
  %39 = call i32 @HADD_UB2_UH(i64 %35, i64 %36, i64 %37, i64 %38)
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* %17, align 8
  %42 = add nsw i64 %40, %41
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %18, align 8
  %44 = load i64, i64* %19, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* %15, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %15, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i64 @__msa_hadd_u_w(i64 %48, i64 %49)
  store i64 %50, i64* %20, align 8
  %51 = load i64, i64* %20, align 8
  %52 = load i64, i64* %20, align 8
  %53 = call i64 @__msa_hadd_u_d(i64 %51, i64 %52)
  store i64 %53, i64* %21, align 8
  %54 = load i64, i64* %21, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %21, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i64 @__msa_pckev_w(i32 %55, i32 %57)
  store i64 %58, i64* %20, align 8
  %59 = load i64, i64* %20, align 8
  %60 = load i64, i64* %20, align 8
  %61 = call i64 @__msa_hadd_u_d(i64 %59, i64 %60)
  store i64 %61, i64* %21, align 8
  %62 = load i64, i64* %21, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i64 @__msa_srari_w(i32 %63, i32 6)
  store i64 %64, i64* %20, align 8
  %65 = load i64, i64* %20, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i64 @__msa_splati_b(i32 %66, i32 0)
  store i64 %67, i64* %14, align 8
  store i32 16, i32* %9, align 4
  br label %68

68:                                               ; preds = %72, %4
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %9, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %68
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @ST_UB2(i64 %73, i64 %74, i32* %75, i32 16)
  %77 = load i32, i32* %6, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %5, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %14, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @ST_UB2(i64 %81, i64 %82, i32* %83, i32 16)
  %85 = load i32, i32* %6, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %5, align 8
  br label %68

89:                                               ; preds = %68
  ret void
}

declare dso_local i32 @LD_UB2(i32*, i32, i64, i64) #1

declare dso_local i32 @HADD_UB2_UH(i64, i64, i64, i64) #1

declare dso_local i64 @__msa_hadd_u_w(i64, i64) #1

declare dso_local i64 @__msa_hadd_u_d(i64, i64) #1

declare dso_local i64 @__msa_pckev_w(i32, i32) #1

declare dso_local i64 @__msa_srari_w(i32, i32) #1

declare dso_local i64 @__msa_splati_b(i32, i32) #1

declare dso_local i32 @ST_UB2(i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
