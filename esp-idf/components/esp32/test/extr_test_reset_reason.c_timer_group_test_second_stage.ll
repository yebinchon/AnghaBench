; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_reset_reason.c_timer_group_test_second_stage.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_reset_reason.c_timer_group_test_second_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@SW_CPU_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Not software reset\0A\00", align 1
@TIMERG0 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @timer_group_test_second_stage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_group_test_second_stage() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 @rtc_get_reset_reason(i32 0)
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @SW_CPU_RESET, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i64, i64* @SW_CPU_RESET, align 8
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @TEST_ASSERT_EQUAL(i64 %9, i64 %10)
  %12 = call i32 (...) @timer_group_test_init()
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @TIMERG0, i32 0, i32 0, i32 0), align 8
  %14 = call i32 @TEST_ASSERT_EQUAL(i64 0, i64 %13)
  ret void
}

declare dso_local i64 @rtc_get_reset_reason(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i64, i64) #1

declare dso_local i32 @timer_group_test_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
