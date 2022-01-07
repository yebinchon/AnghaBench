; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_dma_68k_ram.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_dma_68k_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = common dso_local global i32* null, align 8
@dma_src = common dso_local global i32 0, align 4
@work_ram = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vdp_dma_68k_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdp_dma_68k_ram(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32*, i32** @reg, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 23
  %7 = load i32, i32* %6, align 4
  %8 = shl i32 %7, 17
  %9 = load i32, i32* @dma_src, align 4
  %10 = shl i32 %9, 1
  %11 = or i32 %8, %10
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %31, %1
  %13 = load i64, i64* @work_ram, align 8
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 65535
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 2
  store i32 %21, i32* %4, align 4
  %22 = load i32*, i32** @reg, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 23
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 17
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 131071
  %28 = or i32 %25, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @vdp_bus_w(i32 %29)
  br label %31

31:                                               ; preds = %12
  %32 = load i32, i32* %2, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %12, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 1
  %38 = and i32 %37, 65535
  store i32 %38, i32* @dma_src, align 4
  ret void
}

declare dso_local i32 @vdp_bus_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
