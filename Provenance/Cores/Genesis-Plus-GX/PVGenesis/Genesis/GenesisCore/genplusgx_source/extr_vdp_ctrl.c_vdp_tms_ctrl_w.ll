; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_tms_ctrl_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_tms_ctrl_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pending = common dso_local global i32 0, align 4
@addr_latch = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@vram = common dso_local global i32* null, align 8
@fifo = common dso_local global i32* null, align 8
@Z80 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@reg = common dso_local global i32* null, align 8
@render_bg_m0 = common dso_local global i32 0, align 4
@render_bg = common dso_local global i32 0, align 4
@render_bg_m1 = common dso_local global i32 0, align 4
@render_bg_m2 = common dso_local global i32 0, align 4
@render_bg_m1x = common dso_local global i32 0, align 4
@render_bg_m3 = common dso_local global i32 0, align 4
@render_bg_inv = common dso_local global i32 0, align 4
@render_bg_m3x = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdp_tms_ctrl_w(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @pending, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* @addr_latch, align 4
  store i32 1, i32* @pending, align 4
  br label %74

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = lshr i32 %9, 6
  %11 = and i32 %10, 3
  store i32 %11, i32* @code, align 4
  %12 = load i32, i32* %2, align 4
  %13 = shl i32 %12, 8
  %14 = load i32, i32* @addr_latch, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %15, 16383
  store i32 %16, i32* @addr, align 4
  store i32 0, i32* @pending, align 4
  %17 = load i32, i32* @code, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %8
  %20 = load i32*, i32** @vram, align 8
  %21 = load i32, i32* @addr, align 4
  %22 = and i32 %21, 16383
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @fifo, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @addr, align 4
  %29 = add nsw i32 %28, 1
  %30 = and i32 %29, 16383
  store i32 %30, i32* @addr, align 4
  br label %74

31:                                               ; preds = %8
  %32 = load i32, i32* @code, align 4
  %33 = and i32 %32, 2
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %31
  %36 = load i32, i32* %2, align 4
  %37 = and i32 %36, 7
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @addr_latch, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Z80, i32 0, i32 0), align 4
  %41 = call i32 @vdp_reg_w(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = icmp ult i32 %42, 2
  br i1 %43, label %44, label %72

44:                                               ; preds = %35
  %45 = load i32*, i32** @reg, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 2
  %49 = load i32*, i32** @reg, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 24
  %53 = or i32 %48, %52
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  switch i32 %54, label %71 [
    i32 0, label %55
    i32 16, label %57
    i32 2, label %59
    i32 18, label %61
    i32 8, label %63
    i32 24, label %65
    i32 10, label %67
    i32 26, label %69
  ]

55:                                               ; preds = %44
  %56 = load i32, i32* @render_bg_m0, align 4
  store i32 %56, i32* @render_bg, align 4
  br label %71

57:                                               ; preds = %44
  %58 = load i32, i32* @render_bg_m1, align 4
  store i32 %58, i32* @render_bg, align 4
  br label %71

59:                                               ; preds = %44
  %60 = load i32, i32* @render_bg_m2, align 4
  store i32 %60, i32* @render_bg, align 4
  br label %71

61:                                               ; preds = %44
  %62 = load i32, i32* @render_bg_m1x, align 4
  store i32 %62, i32* @render_bg, align 4
  br label %71

63:                                               ; preds = %44
  %64 = load i32, i32* @render_bg_m3, align 4
  store i32 %64, i32* @render_bg, align 4
  br label %71

65:                                               ; preds = %44
  %66 = load i32, i32* @render_bg_inv, align 4
  store i32 %66, i32* @render_bg, align 4
  br label %71

67:                                               ; preds = %44
  %68 = load i32, i32* @render_bg_m3x, align 4
  store i32 %68, i32* @render_bg, align 4
  br label %71

69:                                               ; preds = %44
  %70 = load i32, i32* @render_bg_inv, align 4
  store i32 %70, i32* @render_bg, align 4
  br label %71

71:                                               ; preds = %44, %69, %67, %65, %63, %61, %59, %57, %55
  br label %72

72:                                               ; preds = %71, %35
  br label %73

73:                                               ; preds = %72, %31
  br label %74

74:                                               ; preds = %19, %73, %6
  ret void
}

declare dso_local i32 @vdp_reg_w(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
