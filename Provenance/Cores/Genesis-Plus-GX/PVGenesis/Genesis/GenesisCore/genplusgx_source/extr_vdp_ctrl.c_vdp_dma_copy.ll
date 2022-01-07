; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_dma_copy.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_dma_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@code = common dso_local global i32 0, align 4
@dma_src = common dso_local global i64 0, align 8
@vram = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@sat_base_mask = common dso_local global i32 0, align 4
@satb = common dso_local global i32 0, align 4
@sat = common dso_local global i32 0, align 4
@sat_addr_mask = common dso_local global i32 0, align 4
@reg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vdp_dma_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdp_dma_copy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @code, align 4
  %7 = and i32 %6, 30
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = load i64, i64* @dma_src, align 8
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %41, %9
  %12 = load i32, i32* @vram, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @READ_BYTE(i32 %12, i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @addr, align 4
  %16 = load i32, i32* @sat_base_mask, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @satb, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load i32, i32* @sat, align 4
  %22 = load i32, i32* @addr, align 4
  %23 = load i32, i32* @sat_addr_mask, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @WRITE_BYTE(i32 %21, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %11
  %28 = load i32, i32* @vram, align 4
  %29 = load i32, i32* @addr, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @WRITE_BYTE(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @addr, align 4
  %33 = call i32 @MARK_BG_DIRTY(i32 %32)
  %34 = load i64, i64* %5, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %5, align 8
  %36 = load i32*, i32** @reg, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 15
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @addr, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* @addr, align 4
  br label %41

41:                                               ; preds = %27
  %42 = load i32, i32* %2, align 4
  %43 = add i32 %42, -1
  store i32 %43, i32* %2, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %11, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* @dma_src, align 8
  br label %59

47:                                               ; preds = %1
  %48 = load i32*, i32** @reg, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 15
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %2, align 4
  %52 = mul i32 %50, %51
  %53 = load i32, i32* @addr, align 4
  %54 = add i32 %53, %52
  store i32 %54, i32* @addr, align 4
  %55 = load i32, i32* %2, align 4
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* @dma_src, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* @dma_src, align 8
  br label %59

59:                                               ; preds = %47, %45
  ret void
}

declare dso_local i32 @READ_BYTE(i32, i64) #1

declare dso_local i32 @WRITE_BYTE(i32, i32, i32) #1

declare dso_local i32 @MARK_BG_DIRTY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
