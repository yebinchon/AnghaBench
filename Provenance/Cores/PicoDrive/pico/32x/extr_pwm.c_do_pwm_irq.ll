; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_pwm.c_do_pwm_irq.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_pwm.c_do_pwm_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@P32XI_PWM = common dso_local global i32 0, align 4
@Pico32x = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@P32XP_RTP = common dso_local global i32 0, align 4
@P32X_EVENT_PWM = common dso_local global i32 0, align 4
@pwm_cycles = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @do_pwm_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pwm_irq(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @P32XI_PWM, align 4
  %8 = call i32 @p32x_trigger_irq(i32* %5, i32 %6, i32 %7)
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 0), align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 24
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @P32XP_RTP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @P32X_EVENT_PWM, align 4
  %18 = load i32, i32* @pwm_cycles, align 4
  %19 = sdiv i32 %18, 3
  %20 = add nsw i32 %19, 1
  %21 = call i32 @p32x_event_schedule(i32 %16, i32 %17, i32 %20)
  %22 = call i32 (...) @p32x_dreq1_trigger()
  br label %23

23:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @p32x_trigger_irq(i32*, i32, i32) #1

declare dso_local i32 @p32x_event_schedule(i32, i32, i32) #1

declare dso_local i32 @p32x_dreq1_trigger(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
