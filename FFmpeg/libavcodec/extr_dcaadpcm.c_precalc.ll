; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaadpcm.c_precalc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaadpcm.c_precalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCA_ADPCM_VQCODEBOOK_SZ = common dso_local global i32 0, align 4
@DCA_ADPCM_COEFFS = common dso_local global i32 0, align 4
@ff_dca_adpcm_vb = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**)* @precalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @precalc(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %69, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @DCA_ADPCM_VQCODEBOOK_SZ, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %72

12:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %63, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @DCA_ADPCM_COEFFS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %59, %17
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @DCA_ADPCM_COEFFS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %19
  %24 = load i64**, i64*** @ff_dca_adpcm_vb, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64*, i64** %24, i64 %26
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i64**, i64*** @ff_dca_adpcm_vb, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64*, i64** %34, i64 %36
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = mul nsw i32 %33, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %23
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %49, 2
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %23
  %52 = load i32, i32* %7, align 4
  %53 = load i32**, i32*** %2, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %19

62:                                               ; preds = %19
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %13

66:                                               ; preds = %13
  %67 = load i32**, i32*** %2, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i32 1
  store i32** %68, i32*** %2, align 8
  br label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %8

72:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
