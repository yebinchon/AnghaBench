; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_..pico_cmn.c_SekSyncM68k.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_..pico_cmn.c_SekSyncM68k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@m68k = common dso_local global i32 0, align 4
@EVT_RUN_START = common dso_local global i32 0, align 4
@SekCycleAim = common dso_local global i32 0, align 4
@SekCycleCnt = common dso_local global i32 0, align 4
@SekCyclesLeft = common dso_local global i64 0, align 8
@EVT_RUN_END = common dso_local global i32 0, align 4
@PicoCpuCM68k = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SekSyncM68k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SekSyncM68k() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @m68k, align 4
  %3 = call i32 @pprof_start(i32 %2)
  %4 = load i32, i32* @EVT_RUN_START, align 4
  %5 = call i32 @pevt_log_m68k_o(i32 %4)
  br label %6

6:                                                ; preds = %11, %0
  %7 = load i32, i32* @SekCycleAim, align 4
  %8 = load i32, i32* @SekCycleCnt, align 4
  %9 = sub nsw i32 %7, %8
  store i32 %9, i32* %1, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @SekCycleCnt, align 4
  %14 = add nsw i32 %13, %12
  store i32 %14, i32* @SekCycleCnt, align 4
  br label %6

15:                                               ; preds = %6
  store i64 0, i64* @SekCyclesLeft, align 8
  %16 = call i32 @SekTrace(i32 0)
  %17 = load i32, i32* @EVT_RUN_END, align 4
  %18 = call i32 @pevt_log_m68k_o(i32 %17)
  %19 = load i32, i32* @m68k, align 4
  %20 = call i32 @pprof_end(i32 %19)
  ret void
}

declare dso_local i32 @pprof_start(i32) #1

declare dso_local i32 @pevt_log_m68k_o(i32) #1

declare dso_local i32 @SekTrace(i32) #1

declare dso_local i32 @pprof_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
