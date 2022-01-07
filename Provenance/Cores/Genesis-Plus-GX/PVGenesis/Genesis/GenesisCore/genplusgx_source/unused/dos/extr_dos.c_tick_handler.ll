; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/dos/extr_dos.c_tick_handler.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/dos/extr_dos.c_tick_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tick_count = common dso_local global i32 0, align 4
@FRAMES_PER_SECOND = common dso_local global i32 0, align 4
@frames_rendered = common dso_local global i64 0, align 8
@frame_rate = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tick_handler() #0 {
  %1 = load i32, i32* @tick_count, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @tick_count, align 4
  %3 = load i32, i32* @tick_count, align 4
  %4 = load i32, i32* @FRAMES_PER_SECOND, align 4
  %5 = srem i32 %3, %4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i64, i64* @frames_rendered, align 8
  store i64 %8, i64* @frame_rate, align 8
  store i64 0, i64* @frames_rendered, align 8
  br label %9

9:                                                ; preds = %7, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
