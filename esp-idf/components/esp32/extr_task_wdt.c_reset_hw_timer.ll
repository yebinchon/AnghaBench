; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_task_wdt.c_reset_hw_timer.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_task_wdt.c_reset_hw_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_3__* }

@TIMERG0 = common dso_local global i32 0, align 4
@twdt_config = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reset_hw_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_hw_timer() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = call i32 @timer_ll_wdt_set_protect(i32* @TIMERG0, i32 0)
  %3 = call i32 @timer_ll_wdt_feed(i32* @TIMERG0)
  %4 = call i32 @timer_ll_wdt_set_protect(i32* @TIMERG0, i32 1)
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @twdt_config, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %1, align 8
  br label %8

8:                                                ; preds = %14, %0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  br label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %1, align 8
  br label %8

18:                                               ; preds = %8
  ret void
}

declare dso_local i32 @timer_ll_wdt_set_protect(i32*, i32) #1

declare dso_local i32 @timer_ll_wdt_feed(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
