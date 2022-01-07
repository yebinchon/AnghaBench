; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_event/test/extr_test_event.c_test_event_get_core.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_event/test/extr_test_event.c_test_event_get_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_event_get_core.calls = internal global i32 0, align 4
@portNUM_PROCESSORS = common dso_local global i32 0, align 4
@s_test_core_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_event_get_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_event_get_core() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @portNUM_PROCESSORS, align 4
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32, i32* @s_test_core_id, align 4
  %6 = load i32, i32* @test_event_get_core.calls, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @test_event_get_core.calls, align 4
  %8 = add nsw i32 %5, %6
  %9 = load i32, i32* @portNUM_PROCESSORS, align 4
  %10 = srem i32 %8, %9
  store i32 %10, i32* %1, align 4
  br label %13

11:                                               ; preds = %0
  %12 = load i32, i32* @s_test_core_id, align 4
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %11, %4
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
