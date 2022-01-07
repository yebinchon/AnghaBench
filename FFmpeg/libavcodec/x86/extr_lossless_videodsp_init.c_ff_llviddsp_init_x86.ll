; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/x86/extr_lossless_videodsp_init.c_ff_llviddsp_init_x86.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/x86/extr_lossless_videodsp_init.c_ff_llviddsp_init_x86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@ARCH_X86_32 = common dso_local global i64 0, align 8
@ff_add_bytes_mmx = common dso_local global i32 0, align 4
@AV_CPU_FLAG_3DNOW = common dso_local global i32 0, align 4
@ff_add_median_pred_mmxext = common dso_local global i32 0, align 4
@ff_add_bytes_sse2 = common dso_local global i32 0, align 4
@ff_add_median_pred_sse2 = common dso_local global i32 0, align 4
@ff_add_left_pred_ssse3 = common dso_local global i32 0, align 4
@ff_add_left_pred_int16_ssse3 = common dso_local global i32 0, align 4
@ff_add_gradient_pred_ssse3 = common dso_local global i32 0, align 4
@ff_add_left_pred_unaligned_ssse3 = common dso_local global i32 0, align 4
@ff_add_left_pred_int16_unaligned_ssse3 = common dso_local global i32 0, align 4
@ff_add_bytes_avx2 = common dso_local global i32 0, align 4
@ff_add_left_pred_unaligned_avx2 = common dso_local global i32 0, align 4
@ff_add_gradient_pred_avx2 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_CMOV = common dso_local global i32 0, align 4
@add_median_pred_cmov = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_llviddsp_init_x86(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = call i32 (...) @av_get_cpu_flags()
  store i32 %4, i32* %3, align 4
  %5 = load i64, i64* @ARCH_X86_32, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @EXTERNAL_MMX(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32, i32* @ff_add_bytes_mmx, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %11, %7, %1
  %16 = load i64, i64* @ARCH_X86_32, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @EXTERNAL_MMXEXT(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @AV_CPU_FLAG_3DNOW, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ff_add_median_pred_mmxext, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %22
  br label %32

32:                                               ; preds = %31, %18, %15
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @EXTERNAL_SSE2(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* @ff_add_bytes_sse2, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ff_add_median_pred_sse2, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %32
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @EXTERNAL_SSSE3(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i32, i32* @ff_add_left_pred_ssse3, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @ff_add_left_pred_int16_ssse3, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ff_add_gradient_pred_ssse3, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %47, %43
  %58 = load i32, i32* %3, align 4
  %59 = call i64 @EXTERNAL_SSSE3_FAST(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* @ff_add_left_pred_unaligned_ssse3, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @ff_add_left_pred_int16_unaligned_ssse3, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %57
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @EXTERNAL_AVX2_FAST(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i32, i32* @ff_add_bytes_avx2, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @ff_add_left_pred_unaligned_avx2, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @ff_add_gradient_pred_avx2, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %72, %68
  ret void
}

declare dso_local i32 @av_get_cpu_flags(...) #1

declare dso_local i64 @EXTERNAL_MMX(i32) #1

declare dso_local i64 @EXTERNAL_MMXEXT(i32) #1

declare dso_local i64 @EXTERNAL_SSE2(i32) #1

declare dso_local i64 @EXTERNAL_SSSE3(i32) #1

declare dso_local i64 @EXTERNAL_SSSE3_FAST(i32) #1

declare dso_local i64 @EXTERNAL_AVX2_FAST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
