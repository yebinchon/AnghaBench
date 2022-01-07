; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspSyncThread.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspSyncThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scsp_clock = common dso_local global i32 0, align 4
@scsp_clock_target = common dso_local global i64 0, align 8
@YAB_THREAD_SCSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ScspSyncThread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ScspSyncThread() #0 {
  %1 = call i32 (...) @PSP_FLUSH_ALL()
  br label %2

2:                                                ; preds = %7, %0
  %3 = load i32, i32* @scsp_clock, align 4
  %4 = call i64 @PSP_UC(i32 %3)
  %5 = load i64, i64* @scsp_clock_target, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* @YAB_THREAD_SCSP, align 4
  %9 = call i32 @YabThreadWake(i32 %8)
  %10 = call i32 (...) @YabThreadYield()
  br label %2

11:                                               ; preds = %2
  ret void
}

declare dso_local i32 @PSP_FLUSH_ALL(...) #1

declare dso_local i64 @PSP_UC(i32) #1

declare dso_local i32 @YabThreadWake(i32) #1

declare dso_local i32 @YabThreadYield(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
