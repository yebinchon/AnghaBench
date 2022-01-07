; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/test/extr_test_ringbuf.c_setup_timer.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/test/extr_test_ringbuf.c_setup_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@TIMER_GROUP = common dso_local global i32 0, align 4
@TIMER_NUMBER = common dso_local global i32 0, align 4
@TIMER_COUNT_UP = common dso_local global i32 0, align 4
@TIMER_INTR_LEVEL = common dso_local global i32 0, align 4
@TIMER_PAUSE = common dso_local global i32 0, align 4
@ringbuffer_isr = common dso_local global i32 0, align 4
@ringbuffer_isr_handle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_timer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = load i32, i32* @TIMER_GROUP, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @TIMER_NUMBER, align 4
  store i32 %5, i32* %2, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* @TIMER_COUNT_UP, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 5
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 10000, i32* %10, align 4
  %11 = load i32, i32* @TIMER_INTR_LEVEL, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @TIMER_PAUSE, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @timer_init(i32 %15, i32 %16, %struct.TYPE_3__* %3)
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @timer_pause(i32 %18, i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @timer_set_counter_value(i32 %21, i32 %22, i32 0)
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @timer_set_alarm_value(i32 %24, i32 %25, i32 20)
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @timer_enable_intr(i32 %27, i32 %28)
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @timer_set_auto_reload(i32 %30, i32 %31, i32 1)
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @ringbuffer_isr, align 4
  %36 = call i32 @timer_isr_register(i32 %33, i32 %34, i32 %35, i32* null, i32 0, i32* @ringbuffer_isr_handle)
  ret void
}

declare dso_local i32 @timer_init(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @timer_pause(i32, i32) #1

declare dso_local i32 @timer_set_counter_value(i32, i32, i32) #1

declare dso_local i32 @timer_set_alarm_value(i32, i32, i32) #1

declare dso_local i32 @timer_enable_intr(i32, i32) #1

declare dso_local i32 @timer_set_auto_reload(i32, i32, i32) #1

declare dso_local i32 @timer_isr_register(i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
