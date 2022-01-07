; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/extr_test_timer.c_tg_timer_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/extr_test_timer.c_tg_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER_SCALE = common dso_local global double 0.000000e+00, align 8
@test_timer_group_isr = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_LOWMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, double)* @tg_timer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg_timer_init(i32 %0, i32 %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @timer_pause(i32 %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @timer_set_counter_value(i32 %10, i32 %11, i32 0)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load double, double* %6, align 8
  %16 = load double, double* @TIMER_SCALE, align 8
  %17 = fmul double %15, %16
  %18 = call i32 @timer_set_alarm_value(i32 %13, i32 %14, double %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @timer_enable_intr(i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @test_timer_group_isr, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @GET_TIMER_INFO(i32 %25, i32 %26)
  %28 = load i32, i32* @ESP_INTR_FLAG_LOWMED, align 4
  %29 = call i32 @timer_isr_register(i32 %22, i32 %23, i32 %24, i32 %27, i32 %28, i32* null)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @timer_start(i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @timer_pause(i32, i32) #1

declare dso_local i32 @timer_set_counter_value(i32, i32, i32) #1

declare dso_local i32 @timer_set_alarm_value(i32, i32, double) #1

declare dso_local i32 @timer_enable_intr(i32, i32) #1

declare dso_local i32 @timer_isr_register(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @GET_TIMER_INFO(i32, i32) #1

declare dso_local i32 @timer_start(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
