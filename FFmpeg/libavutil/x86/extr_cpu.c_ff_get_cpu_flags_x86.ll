; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/x86/extr_cpu.c_ff_get_cpu_flags_x86.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/x86/extr_cpu.c_ff_get_cpu_flags_x86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_CPU_FLAG_3DNOW = common dso_local global i32 0, align 4
@AV_CPU_FLAG_3DNOWEXT = common dso_local global i32 0, align 4
@AV_CPU_FLAG_AESNI = common dso_local global i32 0, align 4
@AV_CPU_FLAG_ATOM = common dso_local global i32 0, align 4
@AV_CPU_FLAG_AVX = common dso_local global i32 0, align 4
@AV_CPU_FLAG_AVX2 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_AVX512 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_AVXSLOW = common dso_local global i32 0, align 4
@AV_CPU_FLAG_BMI1 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_BMI2 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_CMOV = common dso_local global i32 0, align 4
@AV_CPU_FLAG_FMA3 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_FMA4 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_MMX = common dso_local global i32 0, align 4
@AV_CPU_FLAG_MMXEXT = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE2 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE2SLOW = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE3 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE3SLOW = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE4 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE42 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSSE3 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSSE3SLOW = common dso_local global i32 0, align 4
@AV_CPU_FLAG_XOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_get_cpu_flags_x86() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
