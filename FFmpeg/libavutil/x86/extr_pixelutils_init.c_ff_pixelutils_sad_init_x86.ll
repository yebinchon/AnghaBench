; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/x86/extr_pixelutils_init.c_ff_pixelutils_sad_init_x86.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/x86/extr_pixelutils_init.c_ff_pixelutils_sad_init_x86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_pixelutils_sad_8x8_mmx = common dso_local global i32 0, align 4
@ff_pixelutils_sad_8x8_mmxext = common dso_local global i32 0, align 4
@ff_pixelutils_sad_16x16_mmxext = common dso_local global i32 0, align 4
@ff_pixelutils_sad_16x16_sse2 = common dso_local global i32 0, align 4
@ff_pixelutils_sad_u_16x16_sse2 = common dso_local global i32 0, align 4
@ff_pixelutils_sad_a_16x16_sse2 = common dso_local global i32 0, align 4
@ff_pixelutils_sad_32x32_sse2 = common dso_local global i32 0, align 4
@ff_pixelutils_sad_u_32x32_sse2 = common dso_local global i32 0, align 4
@ff_pixelutils_sad_a_32x32_sse2 = common dso_local global i32 0, align 4
@ff_pixelutils_sad_32x32_avx2 = common dso_local global i32 0, align 4
@ff_pixelutils_sad_u_32x32_avx2 = common dso_local global i32 0, align 4
@ff_pixelutils_sad_a_32x32_avx2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_pixelutils_sad_init_x86(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @av_get_cpu_flags()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @EXTERNAL_MMX(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @ff_pixelutils_sad_8x8_mmx, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  store i32 %11, i32* %13, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @EXTERNAL_MMXEXT(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i32, i32* @ff_pixelutils_sad_8x8_mmxext, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @ff_pixelutils_sad_16x16_mmxext, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %18, %14
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @EXTERNAL_SSE2(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %43 [
    i32 0, label %31
    i32 1, label %35
    i32 2, label %39
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @ff_pixelutils_sad_16x16_sse2, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 %32, i32* %34, align 4
  br label %43

35:                                               ; preds = %29
  %36 = load i32, i32* @ff_pixelutils_sad_u_16x16_sse2, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  store i32 %36, i32* %38, align 4
  br label %43

39:                                               ; preds = %29
  %40 = load i32, i32* @ff_pixelutils_sad_a_16x16_sse2, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %29, %39, %35, %31
  br label %44

44:                                               ; preds = %43, %25
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @EXTERNAL_SSE2(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  switch i32 %49, label %62 [
    i32 0, label %50
    i32 1, label %54
    i32 2, label %58
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* @ff_pixelutils_sad_32x32_sse2, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32 %51, i32* %53, align 4
  br label %62

54:                                               ; preds = %48
  %55 = load i32, i32* @ff_pixelutils_sad_u_32x32_sse2, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32 %55, i32* %57, align 4
  br label %62

58:                                               ; preds = %48
  %59 = load i32, i32* @ff_pixelutils_sad_a_32x32_sse2, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %48, %58, %54, %50
  br label %63

63:                                               ; preds = %62, %44
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @EXTERNAL_AVX2_FAST(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  switch i32 %68, label %81 [
    i32 0, label %69
    i32 1, label %73
    i32 2, label %77
  ]

69:                                               ; preds = %67
  %70 = load i32, i32* @ff_pixelutils_sad_32x32_avx2, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32 %70, i32* %72, align 4
  br label %81

73:                                               ; preds = %67
  %74 = load i32, i32* @ff_pixelutils_sad_u_32x32_avx2, align 4
  %75 = load i32*, i32** %3, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  store i32 %74, i32* %76, align 4
  br label %81

77:                                               ; preds = %67
  %78 = load i32, i32* @ff_pixelutils_sad_a_32x32_avx2, align 4
  %79 = load i32*, i32** %3, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %67, %77, %73, %69
  br label %82

82:                                               ; preds = %81, %63
  ret void
}

declare dso_local i32 @av_get_cpu_flags(...) #1

declare dso_local i64 @EXTERNAL_MMX(i32) #1

declare dso_local i64 @EXTERNAL_MMXEXT(i32) #1

declare dso_local i64 @EXTERNAL_SSE2(i32) #1

declare dso_local i64 @EXTERNAL_AVX2_FAST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
