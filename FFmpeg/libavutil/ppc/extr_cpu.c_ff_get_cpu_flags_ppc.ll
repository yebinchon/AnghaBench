; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/ppc/extr_cpu.c_ff_get_cpu_flags_ppc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/ppc/extr_cpu.c_ff_get_cpu_flags_ppc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AT_HWCAP = common dso_local global i64 0, align 8
@AT_HWCAP2 = common dso_local global i64 0, align 8
@AT_NULL = common dso_local global i64 0, align 8
@AV_CPU_FLAG_ALTIVEC = common dso_local global i32 0, align 4
@AV_CPU_FLAG_POWER8 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_VSX = common dso_local global i32 0, align 4
@CPU_ALTIVEC = common dso_local global i32 0, align 4
@CTL_HW = common dso_local global i32 0, align 4
@CTL_MACHDEP = common dso_local global i32 0, align 4
@GCIT_VectorUnit = common dso_local global i32 0, align 4
@HW_VECTORUNIT = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PPC_FEATURE2_ARCH_2_07 = common dso_local global i64 0, align 8
@PPC_FEATURE_HAS_ALTIVEC = common dso_local global i64 0, align 8
@PPC_FEATURE_HAS_VSX = common dso_local global i64 0, align 8
@PVR_CELL_PPU = common dso_local global i32 0, align 4
@PVR_G4_7400 = common dso_local global i32 0, align 4
@PVR_G5_970 = common dso_local global i32 0, align 4
@PVR_G5_970FX = common dso_local global i32 0, align 4
@PVR_G5_970GX = common dso_local global i32 0, align 4
@PVR_G5_970MP = common dso_local global i32 0, align 4
@PVR_POWER6 = common dso_local global i32 0, align 4
@PVR_POWER7 = common dso_local global i32 0, align 4
@PVR_POWER8 = common dso_local global i32 0, align 4
@TAG_DONE = common dso_local global i32 0, align 4
@VECTORTYPE_ALTIVEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_get_cpu_flags_ppc() #0 {
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
