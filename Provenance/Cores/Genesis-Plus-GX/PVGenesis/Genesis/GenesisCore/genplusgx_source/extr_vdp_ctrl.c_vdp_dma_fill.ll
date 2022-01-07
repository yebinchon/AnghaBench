; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_dma_fill.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_dma_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@code = common dso_local global i32 0, align 4
@dmafill = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@sat_base_mask = common dso_local global i32 0, align 4
@satb = common dso_local global i32 0, align 4
@sat = common dso_local global i32 0, align 4
@sat_addr_mask = common dso_local global i32 0, align 4
@vram = common dso_local global i32 0, align 4
@reg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vdp_dma_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdp_dma_fill(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @code, align 4
  %6 = and i32 %5, 31
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %42

8:                                                ; preds = %1
  %9 = load i32, i32* @dmafill, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %37, %8
  %11 = load i32, i32* @addr, align 4
  %12 = load i32, i32* @sat_base_mask, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @satb, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load i32, i32* @sat, align 4
  %18 = load i32, i32* @addr, align 4
  %19 = load i32, i32* @sat_addr_mask, align 4
  %20 = and i32 %18, %19
  %21 = xor i32 %20, 1
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @WRITE_BYTE(i32 %17, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %16, %10
  %25 = load i32, i32* @vram, align 4
  %26 = load i32, i32* @addr, align 4
  %27 = xor i32 %26, 1
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @WRITE_BYTE(i32 %25, i32 %27, i32 %28)
  %30 = load i32, i32* @addr, align 4
  %31 = call i32 @MARK_BG_DIRTY(i32 %30)
  %32 = load i32*, i32** @reg, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 15
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @addr, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* @addr, align 4
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %2, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %2, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %10, label %41

41:                                               ; preds = %37
  br label %50

42:                                               ; preds = %1
  %43 = load i32*, i32** @reg, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 15
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %2, align 4
  %47 = mul i32 %45, %46
  %48 = load i32, i32* @addr, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* @addr, align 4
  br label %50

50:                                               ; preds = %42, %41
  ret void
}

declare dso_local i32 @WRITE_BYTE(i32, i32, i32) #1

declare dso_local i32 @MARK_BG_DIRTY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
