; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_z80_data_r_m5.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_z80_data_r_m5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pending = common dso_local global i64 0, align 8
@code = common dso_local global i32 0, align 4
@vram = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@vsram = common dso_local global i32 0, align 4
@cram = common dso_local global i32* null, align 8
@reg = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vdp_z80_data_r_m5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdp_z80_data_r_m5() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i64 0, i64* @pending, align 8
  %2 = load i32, i32* @code, align 4
  %3 = and i32 %2, 15
  switch i32 %3, label %42 [
    i32 0, label %4
    i32 4, label %9
    i32 8, label %15
  ]

4:                                                ; preds = %0
  %5 = load i32, i32* @vram, align 4
  %6 = load i32, i32* @addr, align 4
  %7 = xor i32 %6, 1
  %8 = call i32 @READ_BYTE(i32 %5, i32 %7)
  store i32 %8, i32* %1, align 4
  br label %42

9:                                                ; preds = %0
  %10 = load i32, i32* @vsram, align 4
  %11 = load i32, i32* @addr, align 4
  %12 = and i32 %11, 127
  %13 = xor i32 %12, 1
  %14 = call i32 @READ_BYTE(i32 %10, i32 %13)
  store i32 %14, i32* %1, align 4
  br label %42

15:                                               ; preds = %0
  %16 = load i32*, i32** @cram, align 8
  %17 = load i32, i32* @addr, align 4
  %18 = and i32 %17, 126
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = and i32 %22, 448
  %24 = shl i32 %23, 3
  %25 = load i32, i32* %1, align 4
  %26 = and i32 %25, 56
  %27 = shl i32 %26, 2
  %28 = or i32 %24, %27
  %29 = load i32, i32* %1, align 4
  %30 = and i32 %29, 7
  %31 = shl i32 %30, 1
  %32 = or i32 %28, %31
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* @addr, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %15
  %37 = load i32, i32* %1, align 4
  %38 = lshr i32 %37, 8
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %36, %15
  %40 = load i32, i32* %1, align 4
  %41 = and i32 %40, 255
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %0, %39, %9, %4
  %43 = load i64*, i64** @reg, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 15
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @addr, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* @addr, align 4
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @READ_BYTE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
