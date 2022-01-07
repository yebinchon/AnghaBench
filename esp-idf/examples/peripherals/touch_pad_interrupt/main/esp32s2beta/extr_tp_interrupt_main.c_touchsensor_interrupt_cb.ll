; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_interrupt/main/esp32s2beta/extr_tp_interrupt_main.c_touchsensor_interrupt_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/touch_pad_interrupt/main/esp32s2beta/extr_tp_interrupt_main.c_touchsensor_interrupt_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@pdFALSE = common dso_local global i32 0, align 4
@TOUCH_PAD_INTR_MASK_DONE = common dso_local global i32 0, align 4
@que_touch = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @touchsensor_interrupt_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @touchsensor_interrupt_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @pdFALSE, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @touch_pad_intr_status_get_mask()
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = call i32 (...) @touch_pad_get_status()
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  store i32 %8, i32* %9, align 4
  %10 = call i32 (...) @touch_pad_get_scan_curr()
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TOUCH_PAD_INTR_MASK_DONE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %21 = call i32 @touch_pad_filter_baseline_read(i32 %19, i32* %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load i32, i32* @que_touch, align 4
  %24 = call i32 @xQueueSendFromISR(i32 %23, %struct.TYPE_3__* %4, i32* %3)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @pdTRUE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 (...) @portYIELD_FROM_ISR()
  br label %30

30:                                               ; preds = %28, %22
  ret void
}

declare dso_local i32 @touch_pad_intr_status_get_mask(...) #1

declare dso_local i32 @touch_pad_get_status(...) #1

declare dso_local i32 @touch_pad_get_scan_curr(...) #1

declare dso_local i32 @touch_pad_filter_baseline_read(i32, i32*) #1

declare dso_local i32 @xQueueSendFromISR(i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @portYIELD_FROM_ISR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
