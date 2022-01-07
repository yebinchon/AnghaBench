; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_pwm.c_p32x_pwm_ctl_changed.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_pwm.c_p32x_pwm_ctl_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@Pico32x = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pwm_cycles = common dso_local global i32 0, align 4
@pwm_mult = common dso_local global i32 0, align 4
@pwm_irq_reload = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p32x_pwm_ctl_changed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 0), align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 24
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %1, align 4
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 0), align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 25
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = sub nsw i32 %9, 1
  %11 = and i32 %10, 4095
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* @pwm_cycles, align 4
  store i32 0, i32* @pwm_mult, align 4
  %13 = load i32, i32* %1, align 4
  %14 = and i32 %13, 15
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i32, i32* %2, align 4
  %18 = sdiv i32 65536, %17
  store i32 %18, i32* @pwm_mult, align 4
  br label %19

19:                                               ; preds = %16, %0
  %20 = load i32, i32* %1, align 4
  %21 = and i32 %20, 3840
  %22 = ashr i32 %21, 8
  store i32 %22, i32* @pwm_irq_reload, align 4
  %23 = load i32, i32* @pwm_irq_reload, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %24, 15
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @pwm_irq_reload, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 1), align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* @pwm_irq_reload, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 1), align 8
  br label %31

31:                                               ; preds = %29, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
