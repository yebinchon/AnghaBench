; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_fifo_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_fifo_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fifo_write_cnt = common dso_local global i64 0, align 8
@fifo_lastwrite = common dso_local global i32 0, align 4
@fifo_latency = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vdp_fifo_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdp_fifo_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @fifo_write_cnt, align 8
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @fifo_lastwrite, align 4
  %9 = sub i32 %7, %8
  %10 = load i32, i32* @fifo_latency, align 4
  %11 = udiv i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %6
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @fifo_write_cnt, align 8
  %18 = sub nsw i64 %17, %16
  store i64 %18, i64* @fifo_write_cnt, align 8
  %19 = load i32, i32* @status, align 4
  %20 = and i32 %19, 65279
  store i32 %20, i32* @status, align 4
  %21 = load i64, i64* @fifo_write_cnt, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32, i32* @status, align 4
  %25 = or i32 %24, 512
  store i32 %25, i32* @status, align 4
  store i64 0, i64* @fifo_write_cnt, align 8
  br label %26

26:                                               ; preds = %23, %14
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @fifo_latency, align 4
  %29 = mul i32 %27, %28
  %30 = load i32, i32* @fifo_lastwrite, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* @fifo_lastwrite, align 4
  br label %32

32:                                               ; preds = %26, %6
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
