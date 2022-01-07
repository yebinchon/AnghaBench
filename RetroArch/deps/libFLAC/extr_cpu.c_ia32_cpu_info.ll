; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_cpu.c_ia32_cpu_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_cpu.c_ia32_cpu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FLAC__AVX_SUPPORTED = common dso_local global i64 0, align 8
@FLAC__CPUINFO_IA32_CPUID_AVX = common dso_local global i32 0, align 4
@FLAC__CPUINFO_IA32_CPUID_AVX2 = common dso_local global i32 0, align 4
@FLAC__CPUINFO_IA32_CPUID_CMOV = common dso_local global i32 0, align 4
@FLAC__CPUINFO_IA32_CPUID_FMA = common dso_local global i32 0, align 4
@FLAC__CPUINFO_IA32_CPUID_MMX = common dso_local global i32 0, align 4
@FLAC__CPUINFO_IA32_CPUID_OSXSAVE = common dso_local global i32 0, align 4
@FLAC__CPUINFO_IA32_CPUID_SSE = common dso_local global i32 0, align 4
@FLAC__CPUINFO_IA32_CPUID_SSE2 = common dso_local global i32 0, align 4
@FLAC__CPUINFO_IA32_CPUID_SSE3 = common dso_local global i32 0, align 4
@FLAC__CPUINFO_IA32_CPUID_SSE41 = common dso_local global i32 0, align 4
@FLAC__CPUINFO_IA32_CPUID_SSE42 = common dso_local global i32 0, align 4
@FLAC__CPUINFO_IA32_CPUID_SSSE3 = common dso_local global i32 0, align 4
@FLAC__HAS_X86INTRIN = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @ia32_cpu_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia32_cpu_info(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
