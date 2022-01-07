; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_ps2.c_timer_shutdown.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_ps2.c_timer_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T0_MODE = common dso_local global i64 0, align 8
@t0_interrupt_id = common dso_local global i32 0, align 4
@INTC_TIM0 = common dso_local global i32 0, align 4
@T1_MODE = common dso_local global i64 0, align 8
@t1_interrupt_id = common dso_local global i32 0, align 4
@INTC_TIM1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @timer_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_shutdown() #0 {
  store i64 0, i64* @T0_MODE, align 8
  %1 = load i32, i32* @t0_interrupt_id, align 4
  %2 = icmp sge i32 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i32, i32* @INTC_TIM0, align 4
  %5 = call i32 @DisableIntc(i32 %4)
  %6 = load i32, i32* @INTC_TIM0, align 4
  %7 = load i32, i32* @t0_interrupt_id, align 4
  %8 = call i32 @RemoveIntcHandler(i32 %6, i32 %7)
  store i32 -1, i32* @t0_interrupt_id, align 4
  br label %9

9:                                                ; preds = %3, %0
  store i64 0, i64* @T1_MODE, align 8
  %10 = load i32, i32* @t1_interrupt_id, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* @INTC_TIM1, align 4
  %14 = call i32 @DisableIntc(i32 %13)
  %15 = load i32, i32* @INTC_TIM1, align 4
  %16 = load i32, i32* @t1_interrupt_id, align 4
  %17 = call i32 @RemoveIntcHandler(i32 %15, i32 %16)
  store i32 -1, i32* @t1_interrupt_id, align 4
  br label %18

18:                                               ; preds = %12, %9
  ret void
}

declare dso_local i32 @DisableIntc(i32) #1

declare dso_local i32 @RemoveIntcHandler(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
