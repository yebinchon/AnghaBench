; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_cpu.c_av_force_cpu_flags.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_cpu.c_av_force_cpu_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARCH_X86 = common dso_local global i64 0, align 8
@AV_CPU_FLAG_3DNOW = common dso_local global i32 0, align 4
@AV_CPU_FLAG_3DNOWEXT = common dso_local global i32 0, align 4
@AV_CPU_FLAG_MMXEXT = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE2 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE2SLOW = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE3 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE3SLOW = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSSE3 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE4 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE42 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_AVX = common dso_local global i32 0, align 4
@AV_CPU_FLAG_AVXSLOW = common dso_local global i32 0, align 4
@AV_CPU_FLAG_XOP = common dso_local global i32 0, align 4
@AV_CPU_FLAG_FMA3 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_FMA4 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_AVX2 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_AVX512 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_MMX = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"MMX implied by specified flags\0A\00", align 1
@cpu_flags = common dso_local global i32 0, align 4
@memory_order_relaxed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_force_cpu_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @ARCH_X86, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %55

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @AV_CPU_FLAG_3DNOW, align 4
  %8 = load i32, i32* @AV_CPU_FLAG_3DNOWEXT, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @AV_CPU_FLAG_MMXEXT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @AV_CPU_FLAG_SSE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AV_CPU_FLAG_SSE2, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @AV_CPU_FLAG_SSE2SLOW, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @AV_CPU_FLAG_SSE3, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @AV_CPU_FLAG_SSE3SLOW, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @AV_CPU_FLAG_SSSE3, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @AV_CPU_FLAG_SSE4, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @AV_CPU_FLAG_SSE42, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @AV_CPU_FLAG_AVX, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @AV_CPU_FLAG_AVXSLOW, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @AV_CPU_FLAG_XOP, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @AV_CPU_FLAG_FMA3, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @AV_CPU_FLAG_FMA4, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @AV_CPU_FLAG_AVX2, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @AV_CPU_FLAG_AVX512, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %6, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %5
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @AV_CPU_FLAG_MMX, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @AV_LOG_WARNING, align 4
  %51 = call i32 @av_log(i32* null, i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @AV_CPU_FLAG_MMX, align 4
  %53 = load i32, i32* %2, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %49, %44, %5, %1
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @memory_order_relaxed, align 4
  %58 = call i32 @atomic_store_explicit(i32* @cpu_flags, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @atomic_store_explicit(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
