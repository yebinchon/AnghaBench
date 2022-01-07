; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_pemu_prep_defconfig.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_pemu_prep_defconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32, double, double, double }

@defaultConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pemu_prep_defconfig() #0 {
  store i32 22050, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 0), align 8
  store i32 64, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 1), align 4
  store i32 333, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 2), align 8
  %1 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 3), align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 4
  store i32 1, i32* %2, align 4
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 3), align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 6
  store i32 2, i32* %4, align 4
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 3), align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 7
  store i32 4, i32* %6, align 4
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 3), align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 5
  store i32 8, i32* %8, align 4
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 3), align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 14
  store i32 16, i32* %10, align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 3), align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 13
  store i32 32, i32* %12, align 4
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 3), align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 15
  store i32 64, i32* %14, align 4
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 3), align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  store i32 128, i32* %16, align 4
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 3), align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 12
  store i32 67108864, i32* %18, align 4
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 3), align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 8
  store i32 134217728, i32* %20, align 4
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 3), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 9
  store i32 268435456, i32* %22, align 4
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 3), align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 28
  store i32 1, i32* %24, align 4
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 3), align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 30
  store i32 2, i32* %26, align 4
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 3), align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 31
  store i32 4, i32* %28, align 4
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 3), align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 29
  store i32 8, i32* %30, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 4), align 8
  store double 1.200000e+00, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 5), align 8
  store double 1.250000e+00, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 6), align 8
  store double 1.560000e+00, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 7), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
