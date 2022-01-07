; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_PicoReset32x.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_PicoReset32x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PicoAHW = common dso_local global i32 0, align 4
@PAHW_32X = common dso_local global i32 0, align 4
@P32XI_VRES = common dso_local global i32 0, align 4
@msh2 = common dso_local global i32 0, align 4
@SH2_IDLE_STATES = common dso_local global i32 0, align 4
@ssh2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoReset32x() #0 {
  %1 = load i32, i32* @PicoAHW, align 4
  %2 = load i32, i32* @PAHW_32X, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = call i32 (...) @SekCyclesDone()
  %7 = load i32, i32* @P32XI_VRES, align 4
  %8 = call i32 @p32x_trigger_irq(i32* null, i32 %6, i32 %7)
  %9 = load i32, i32* @SH2_IDLE_STATES, align 4
  %10 = call i32 @p32x_sh2_poll_event(i32* @msh2, i32 %9, i32 0)
  %11 = load i32, i32* @SH2_IDLE_STATES, align 4
  %12 = call i32 @p32x_sh2_poll_event(i32* @ssh2, i32 %11, i32 0)
  %13 = call i32 (...) @p32x_pwm_ctl_changed()
  %14 = call i32 (...) @p32x_timers_recalc()
  br label %15

15:                                               ; preds = %5, %0
  ret void
}

declare dso_local i32 @p32x_trigger_irq(i32*, i32, i32) #1

declare dso_local i32 @SekCyclesDone(...) #1

declare dso_local i32 @p32x_sh2_poll_event(i32*, i32, i32) #1

declare dso_local i32 @p32x_pwm_ctl_changed(...) #1

declare dso_local i32 @p32x_timers_recalc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
