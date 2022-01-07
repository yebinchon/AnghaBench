; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_68k_data_w_m5.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_68k_data_w_m5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pending = common dso_local global i64 0, align 8
@status = common dso_local global i32 0, align 4
@reg = common dso_local global i32* null, align 8
@m68k = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@fifo_write_cnt = common dso_local global i32 0, align 4
@fifo_latency = common dso_local global i64 0, align 8
@fifo_lastwrite = common dso_local global i32 0, align 4
@dmafill = common dso_local global i32 0, align 4
@dma_length = common dso_local global i32 0, align 4
@dma_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vdp_68k_data_w_m5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdp_68k_data_w_m5(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 0, i64* @pending, align 8
  %3 = load i32, i32* @status, align 4
  %4 = and i32 %3, 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  %7 = load i32*, i32** @reg, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 64
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %6
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68k, i32 0, i32 0), align 4
  %14 = call i32 @vdp_fifo_update(i32 %13)
  %15 = load i32, i32* @status, align 4
  %16 = and i32 %15, 65023
  store i32 %16, i32* @status, align 4
  %17 = load i32, i32* @fifo_write_cnt, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load i32, i32* @fifo_write_cnt, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @fifo_write_cnt, align 4
  %22 = load i32, i32* @fifo_write_cnt, align 4
  %23 = and i32 %22, 4
  %24 = shl i32 %23, 6
  %25 = load i32, i32* @status, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* @status, align 4
  br label %34

27:                                               ; preds = %12
  %28 = load i64, i64* @fifo_latency, align 8
  %29 = load i32, i32* @fifo_lastwrite, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* @fifo_lastwrite, align 4
  %33 = load i32, i32* @fifo_lastwrite, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68k, i32 0, i32 0), align 4
  br label %34

34:                                               ; preds = %27, %19
  br label %35

35:                                               ; preds = %34, %6, %1
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @vdp_bus_w(i32 %36)
  %38 = load i32, i32* @dmafill, align 4
  %39 = and i32 %38, 256
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load i32, i32* %2, align 4
  %43 = lshr i32 %42, 8
  store i32 %43, i32* @dmafill, align 4
  %44 = load i32*, i32** @reg, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 20
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = load i32*, i32** @reg, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 19
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %47, %50
  store i32 %51, i32* @dma_length, align 4
  %52 = load i32, i32* @dma_length, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %41
  store i32 65536, i32* @dma_length, align 4
  br label %55

55:                                               ; preds = %54, %41
  store i32 2, i32* @dma_type, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68k, i32 0, i32 0), align 4
  %57 = call i32 @vdp_dma_update(i32 %56)
  br label %58

58:                                               ; preds = %55, %35
  ret void
}

declare dso_local i32 @vdp_fifo_update(i32) #1

declare dso_local i32 @vdp_bus_w(i32) #1

declare dso_local i32 @vdp_dma_update(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
