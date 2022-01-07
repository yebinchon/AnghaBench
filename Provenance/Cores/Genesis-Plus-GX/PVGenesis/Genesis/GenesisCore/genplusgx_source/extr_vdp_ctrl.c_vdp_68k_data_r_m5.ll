; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_68k_data_r_m5.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_68k_data_r_m5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pending = common dso_local global i64 0, align 8
@code = common dso_local global i32 0, align 4
@vram = common dso_local global i32* null, align 8
@addr = common dso_local global i32 0, align 4
@vsram = common dso_local global i32* null, align 8
@cram = common dso_local global i32* null, align 8
@reg = common dso_local global i64* null, align 8
@M68K_REG_PC = common dso_local global i32 0, align 4
@MCYCLES_PER_LINE = common dso_local global i32 0, align 4
@m68k = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@v_counter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vdp_68k_data_r_m5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdp_68k_data_r_m5() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i64 0, i64* @pending, align 8
  %2 = load i32, i32* @code, align 4
  %3 = and i32 %2, 15
  switch i32 %3, label %44 [
    i32 0, label %4
    i32 4, label %11
    i32 8, label %18
    i32 12, label %36
  ]

4:                                                ; preds = %0
  %5 = load i32*, i32** @vram, align 8
  %6 = load i32, i32* @addr, align 4
  %7 = and i32 %6, 65534
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %5, i64 %8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %1, align 4
  br label %45

11:                                               ; preds = %0
  %12 = load i32*, i32** @vsram, align 8
  %13 = load i32, i32* @addr, align 4
  %14 = and i32 %13, 126
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %1, align 4
  br label %45

18:                                               ; preds = %0
  %19 = load i32*, i32** @cram, align 8
  %20 = load i32, i32* @addr, align 4
  %21 = and i32 %20, 126
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = and i32 %25, 448
  %27 = shl i32 %26, 3
  %28 = load i32, i32* %1, align 4
  %29 = and i32 %28, 56
  %30 = shl i32 %29, 2
  %31 = or i32 %27, %30
  %32 = load i32, i32* %1, align 4
  %33 = and i32 %32, 7
  %34 = shl i32 %33, 1
  %35 = or i32 %31, %34
  store i32 %35, i32* %1, align 4
  br label %45

36:                                               ; preds = %0
  %37 = load i32*, i32** @vram, align 8
  %38 = load i32, i32* @addr, align 4
  %39 = and i32 %38, 65534
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 255
  store i32 %43, i32* %1, align 4
  br label %45

44:                                               ; preds = %0
  br label %45

45:                                               ; preds = %44, %36, %18, %11, %4
  %46 = load i64*, i64** @reg, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 15
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @addr, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* @addr, align 4
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
