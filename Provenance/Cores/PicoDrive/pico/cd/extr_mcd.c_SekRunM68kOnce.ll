; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_mcd.c_SekRunM68kOnce.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_mcd.c_SekRunM68kOnce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EVT_RUN_START = common dso_local global i32 0, align 4
@SekCycleAim = common dso_local global i32 0, align 4
@SekCycleCnt = common dso_local global i32 0, align 4
@SekCyclesLeft = common dso_local global i64 0, align 8
@EVT_RUN_END = common dso_local global i32 0, align 4
@PicoCpuCM68k = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SekRunM68kOnce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SekRunM68kOnce() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @EVT_RUN_START, align 4
  %3 = call i32 @pevt_log_m68k_o(i32 %2)
  %4 = load i32, i32* @SekCycleAim, align 4
  %5 = load i32, i32* @SekCycleCnt, align 4
  %6 = sub nsw i32 %4, %5
  store i32 %6, i32* %1, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @SekCycleCnt, align 4
  %11 = add nsw i32 %10, %9
  store i32 %11, i32* @SekCycleCnt, align 4
  br label %12

12:                                               ; preds = %8, %0
  store i64 0, i64* @SekCyclesLeft, align 8
  %13 = call i32 @SekTrace(i32 0)
  %14 = load i32, i32* @EVT_RUN_END, align 4
  %15 = call i32 @pevt_log_m68k_o(i32 %14)
  ret void
}

declare dso_local i32 @pevt_log_m68k_o(i32) #1

declare dso_local i32 @SekTrace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
