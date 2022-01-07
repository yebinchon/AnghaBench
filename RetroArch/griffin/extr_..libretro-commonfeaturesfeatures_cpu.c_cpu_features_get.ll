; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfeaturesfeatures_cpu.c_cpu_features_get.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfeaturesfeatures_cpu.c_cpu_features_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"neon\00", align 1
@RETRO_SIMD_NEON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"vfpv3\00", align 1
@RETRO_SIMD_VFPV3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"vfpv4\00", align 1
@RETRO_SIMD_VFPV4 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"asimd\00", align 1
@RETRO_SIMD_ASIMD = common dso_local global i32 0, align 4
@RETRO_SIMD_AES = common dso_local global i32 0, align 4
@RETRO_SIMD_AVX = common dso_local global i32 0, align 4
@RETRO_SIMD_AVX2 = common dso_local global i32 0, align 4
@RETRO_SIMD_CMOV = common dso_local global i32 0, align 4
@RETRO_SIMD_MMX = common dso_local global i32 0, align 4
@RETRO_SIMD_MMXEXT = common dso_local global i32 0, align 4
@RETRO_SIMD_MOVBE = common dso_local global i32 0, align 4
@RETRO_SIMD_POPCNT = common dso_local global i32 0, align 4
@RETRO_SIMD_PS = common dso_local global i32 0, align 4
@RETRO_SIMD_SSE = common dso_local global i32 0, align 4
@RETRO_SIMD_SSE2 = common dso_local global i32 0, align 4
@RETRO_SIMD_SSE3 = common dso_local global i32 0, align 4
@RETRO_SIMD_SSE4 = common dso_local global i32 0, align 4
@RETRO_SIMD_SSE42 = common dso_local global i32 0, align 4
@RETRO_SIMD_SSSE3 = common dso_local global i32 0, align 4
@RETRO_SIMD_VFPU = common dso_local global i32 0, align 4
@RETRO_SIMD_VMX = common dso_local global i32 0, align 4
@RETRO_SIMD_VMX128 = common dso_local global i32 0, align 4
@VENDOR_INTEL_b = common dso_local global i32 0, align 4
@VENDOR_INTEL_c = common dso_local global i32 0, align 4
@VENDOR_INTEL_d = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_features_get() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 @check_arm_cpu_feature(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @RETRO_SIMD_NEON, align 4
  %6 = load i32, i32* %1, align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* %1, align 4
  br label %8

8:                                                ; preds = %4, %0
  %9 = call i64 @check_arm_cpu_feature(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* @RETRO_SIMD_VFPV3, align 4
  %13 = load i32, i32* %1, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %11, %8
  %16 = call i64 @check_arm_cpu_feature(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @RETRO_SIMD_VFPV4, align 4
  %20 = load i32, i32* %1, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = call i64 @check_arm_cpu_feature(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @RETRO_SIMD_ASIMD, align 4
  %27 = load i32, i32* %1, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i64 @check_arm_cpu_feature(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
