; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_68k_data_r_m4.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_68k_data_r_m4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@addr = common dso_local global i32 0, align 4
@pending = common dso_local global i64 0, align 8
@reg = common dso_local global i64* null, align 8
@vram = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vdp_68k_data_r_m4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdp_68k_data_r_m4() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @addr, align 4
  %3 = shl i32 %2, 1
  %4 = and i32 %3, 1020
  %5 = load i32, i32* @addr, align 4
  %6 = and i32 %5, 512
  %7 = ashr i32 %6, 8
  %8 = or i32 %4, %7
  %9 = load i32, i32* @addr, align 4
  %10 = and i32 %9, 15360
  %11 = or i32 %8, %10
  store i32 %11, i32* %1, align 4
  store i64 0, i64* @pending, align 8
  %12 = load i64*, i64** @reg, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 15
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  %16 = load i32, i32* @addr, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* @addr, align 4
  %20 = load i32*, i32** @vram, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
