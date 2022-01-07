; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_task_wdt.c_reset_hw_timer.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_task_wdt.c_reset_hw_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_4__* }

@TIMG_WDT_WKEY_VALUE = common dso_local global i64 0, align 8
@TIMERG0 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@twdt_config = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reset_hw_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_hw_timer() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load i64, i64* @TIMG_WDT_WKEY_VALUE, align 8
  store i64 %2, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TIMERG0, i32 0, i32 1), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TIMERG0, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TIMERG0, i32 0, i32 1), align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @twdt_config, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %1, align 8
  br label %6

6:                                                ; preds = %12, %0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  br label %12

12:                                               ; preds = %9
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %1, align 8
  br label %6

16:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
