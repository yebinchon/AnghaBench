; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_intr_alloc.c_my_timer_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_intr_alloc.c_my_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@TIMER_COUNT_UP = common dso_local global i32 0, align 4
@TIMER_DIVIDER = common dso_local global i32 0, align 4
@TIMER_INTR_LEVEL = common dso_local global i32 0, align 4
@TIMER_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @my_timer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_timer_init(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @TIMER_COUNT_UP, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @TIMER_DIVIDER, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @TIMER_INTR_LEVEL, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @TIMER_PAUSE, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @timer_init(i32 %18, i32 %19, %struct.TYPE_3__* %7)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @timer_pause(i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @timer_set_counter_value(i32 %24, i32 %25, i32 0)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @timer_set_alarm_value(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @timer_enable_intr(i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @timer_init(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @timer_pause(i32, i32) #1

declare dso_local i32 @timer_set_counter_value(i32, i32, i32) #1

declare dso_local i32 @timer_set_alarm_value(i32, i32, i32) #1

declare dso_local i32 @timer_enable_intr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
