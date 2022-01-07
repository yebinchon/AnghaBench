; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/extr_test_timer.c_all_timer_set_alarm_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/extr_test_timer.c_all_timer_set_alarm_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER_GROUP_0 = common dso_local global i32 0, align 4
@TIMER_0 = common dso_local global i32 0, align 4
@TIMER_SCALE = common dso_local global double 0.000000e+00, align 8
@ESP_OK = common dso_local global i64 0, align 8
@TIMER_1 = common dso_local global i32 0, align 4
@TIMER_GROUP_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double)* @all_timer_set_alarm_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @all_timer_set_alarm_value(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i64, align 8
  store double %0, double* %2, align 8
  %4 = load i32, i32* @TIMER_GROUP_0, align 4
  %5 = load i32, i32* @TIMER_0, align 4
  %6 = load double, double* %2, align 8
  %7 = load double, double* @TIMER_SCALE, align 8
  %8 = fmul double %6, %7
  %9 = call i64 @timer_set_alarm_value(i32 %4, i32 %5, double %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @ESP_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @TEST_ASSERT(i32 %13)
  %15 = load i32, i32* @TIMER_GROUP_0, align 4
  %16 = load i32, i32* @TIMER_1, align 4
  %17 = load double, double* %2, align 8
  %18 = load double, double* @TIMER_SCALE, align 8
  %19 = fmul double %17, %18
  %20 = call i64 @timer_set_alarm_value(i32 %15, i32 %16, double %19)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @ESP_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @TEST_ASSERT(i32 %24)
  %26 = load i32, i32* @TIMER_GROUP_1, align 4
  %27 = load i32, i32* @TIMER_0, align 4
  %28 = load double, double* %2, align 8
  %29 = load double, double* @TIMER_SCALE, align 8
  %30 = fmul double %28, %29
  %31 = call i64 @timer_set_alarm_value(i32 %26, i32 %27, double %30)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @ESP_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @TEST_ASSERT(i32 %35)
  %37 = load i32, i32* @TIMER_GROUP_1, align 4
  %38 = load i32, i32* @TIMER_1, align 4
  %39 = load double, double* %2, align 8
  %40 = load double, double* @TIMER_SCALE, align 8
  %41 = fmul double %39, %40
  %42 = call i64 @timer_set_alarm_value(i32 %37, i32 %38, double %41)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @ESP_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @TEST_ASSERT(i32 %46)
  ret void
}

declare dso_local i64 @timer_set_alarm_value(i32, i32, double) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
