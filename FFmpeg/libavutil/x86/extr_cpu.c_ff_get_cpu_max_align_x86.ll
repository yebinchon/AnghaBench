; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/x86/extr_cpu.c_ff_get_cpu_max_align_x86.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/x86/extr_cpu.c_ff_get_cpu_max_align_x86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_CPU_FLAG_AVX512 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_AVX2 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_AVX = common dso_local global i32 0, align 4
@AV_CPU_FLAG_XOP = common dso_local global i32 0, align 4
@AV_CPU_FLAG_FMA4 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_FMA3 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_AVXSLOW = common dso_local global i32 0, align 4
@AV_CPU_FLAG_AESNI = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE42 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE4 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSSE3 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE3 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE2 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE = common dso_local global i32 0, align 4
@AV_CPU_FLAG_ATOM = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSSE3SLOW = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE3SLOW = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE2SLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ff_get_cpu_max_align_x86() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @av_get_cpu_flags()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @AV_CPU_FLAG_AVX512, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i64 64, i64* %1, align 8
  br label %52

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @AV_CPU_FLAG_AVX2, align 4
  %12 = load i32, i32* @AV_CPU_FLAG_AVX, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AV_CPU_FLAG_XOP, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @AV_CPU_FLAG_FMA4, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @AV_CPU_FLAG_FMA3, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @AV_CPU_FLAG_AVXSLOW, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %10, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %9
  store i64 32, i64* %1, align 8
  br label %52

25:                                               ; preds = %9
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @AV_CPU_FLAG_AESNI, align 4
  %28 = load i32, i32* @AV_CPU_FLAG_SSE42, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @AV_CPU_FLAG_SSE4, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @AV_CPU_FLAG_SSSE3, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @AV_CPU_FLAG_SSE3, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @AV_CPU_FLAG_SSE2, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @AV_CPU_FLAG_SSE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @AV_CPU_FLAG_ATOM, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @AV_CPU_FLAG_SSSE3SLOW, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @AV_CPU_FLAG_SSE3SLOW, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @AV_CPU_FLAG_SSE2SLOW, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %26, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %25
  store i64 16, i64* %1, align 8
  br label %52

51:                                               ; preds = %25
  store i64 8, i64* %1, align 8
  br label %52

52:                                               ; preds = %51, %50, %24, %8
  %53 = load i64, i64* %1, align 8
  ret i64 %53
}

declare dso_local i32 @av_get_cpu_flags(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
