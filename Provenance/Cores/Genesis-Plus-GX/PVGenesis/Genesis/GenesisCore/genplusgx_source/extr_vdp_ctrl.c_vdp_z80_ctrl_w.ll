; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_z80_ctrl_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_z80_ctrl_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pending = common dso_local global i32 0, align 4
@addr_latch = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@Z80 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@reg = common dso_local global i32* null, align 8
@vram = common dso_local global i32* null, align 8
@fifo = common dso_local global i32* null, align 8
@dmafill = common dso_local global i32 0, align 4
@dma_length = common dso_local global i32 0, align 4
@dma_src = common dso_local global i32 0, align 4
@dma_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdp_z80_ctrl_w(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @pending, align 4
  switch i32 %3, label %115 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %58
    i32 3, label %60
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* @addr_latch, align 4
  store i32 1, i32* @pending, align 4
  br label %115

6:                                                ; preds = %1
  %7 = load i32, i32* @addr, align 4
  %8 = and i32 %7, 49152
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, 63
  %11 = shl i32 %10, 8
  %12 = or i32 %8, %11
  %13 = load i32, i32* @addr_latch, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* @addr, align 4
  %15 = load i32, i32* @code, align 4
  %16 = and i32 %15, 60
  %17 = load i32, i32* %2, align 4
  %18 = lshr i32 %17, 6
  %19 = and i32 %18, 3
  %20 = or i32 %16, %19
  store i32 %20, i32* @code, align 4
  %21 = load i32, i32* @code, align 4
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %30

24:                                               ; preds = %6
  %25 = load i32, i32* %2, align 4
  %26 = and i32 %25, 31
  %27 = load i32, i32* @addr_latch, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Z80, i32 0, i32 0), align 4
  %29 = call i32 @vdp_reg_w(i32 %26, i32 %27, i32 %28)
  store i32 0, i32* @pending, align 4
  br label %115

30:                                               ; preds = %6
  %31 = load i32*, i32** @reg, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 4
  %35 = ashr i32 %34, 1
  store i32 %35, i32* @pending, align 4
  %36 = load i32, i32* @pending, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @code, align 4
  %40 = and i32 %39, 3
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %38
  %43 = load i32*, i32** @vram, align 8
  %44 = load i32, i32* @addr, align 4
  %45 = and i32 %44, 16383
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** @fifo, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** @reg, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 15
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* @addr, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* @addr, align 4
  br label %57

57:                                               ; preds = %42, %38, %30
  br label %115

58:                                               ; preds = %1
  %59 = load i32, i32* %2, align 4
  store i32 %59, i32* @addr_latch, align 4
  store i32 3, i32* @pending, align 4
  br label %115

60:                                               ; preds = %1
  store i32 0, i32* @pending, align 4
  %61 = load i32, i32* @addr_latch, align 4
  %62 = and i32 %61, 3
  %63 = shl i32 %62, 14
  %64 = load i32, i32* @addr, align 4
  %65 = and i32 %64, 16383
  %66 = or i32 %63, %65
  store i32 %66, i32* @addr, align 4
  %67 = load i32, i32* @code, align 4
  %68 = and i32 %67, 3
  %69 = load i32, i32* @addr_latch, align 4
  %70 = ashr i32 %69, 2
  %71 = and i32 %70, 60
  %72 = or i32 %68, %71
  store i32 %72, i32* @code, align 4
  %73 = load i32, i32* @code, align 4
  %74 = and i32 %73, 32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %114

76:                                               ; preds = %60
  %77 = load i32*, i32** @reg, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 16
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %113

82:                                               ; preds = %76
  %83 = load i32*, i32** @reg, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 23
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 6
  switch i32 %86, label %111 [
    i32 2, label %87
    i32 3, label %88
  ]

87:                                               ; preds = %82
  store i32 256, i32* @dmafill, align 4
  br label %112

88:                                               ; preds = %82
  %89 = load i32*, i32** @reg, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 20
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 8
  %93 = load i32*, i32** @reg, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 19
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %92, %95
  store i32 %96, i32* @dma_length, align 4
  %97 = load i32, i32* @dma_length, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %88
  store i32 65536, i32* @dma_length, align 4
  br label %100

100:                                              ; preds = %99, %88
  %101 = load i32*, i32** @reg, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 22
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 8
  %105 = load i32*, i32** @reg, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 21
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %104, %107
  store i32 %108, i32* @dma_src, align 4
  store i32 3, i32* @dma_type, align 4
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Z80, i32 0, i32 0), align 4
  %110 = call i32 @vdp_dma_update(i32 %109)
  br label %112

111:                                              ; preds = %82
  br label %112

112:                                              ; preds = %111, %100, %87
  br label %113

113:                                              ; preds = %112, %76
  br label %114

114:                                              ; preds = %113, %60
  br label %115

115:                                              ; preds = %4, %24, %57, %58, %114, %1
  ret void
}

declare dso_local i32 @vdp_reg_w(i32, i32, i32) #1

declare dso_local i32 @vdp_dma_update(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
