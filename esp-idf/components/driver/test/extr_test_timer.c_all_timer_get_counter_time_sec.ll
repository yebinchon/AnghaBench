; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/extr_test_timer.c_all_timer_get_counter_time_sec.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/extr_test_timer.c_all_timer_get_counter_time_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER_GROUP_0 = common dso_local global i32 0, align 4
@TIMER_0 = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@TIMER_DELTA = common dso_local global i32 0, align 4
@TIMER_1 = common dso_local global i32 0, align 4
@TIMER_GROUP_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @all_timer_get_counter_time_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @all_timer_get_counter_time_sec(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @TIMER_GROUP_0, align 4
  %8 = load i32, i32* @TIMER_0, align 4
  %9 = call i64 @timer_get_counter_time_sec(i32 %7, i32 %8, double* %5)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @ESP_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @TEST_ASSERT(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @TIMER_DELTA, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load double, double* %5, align 8
  %21 = call i32 @TEST_ASSERT_FLOAT_WITHIN(i32 %18, i32 %19, double %20)
  br label %22

22:                                               ; preds = %17, %2
  %23 = load i32, i32* @TIMER_GROUP_0, align 4
  %24 = load i32, i32* @TIMER_1, align 4
  %25 = call i64 @timer_get_counter_time_sec(i32 %23, i32 %24, double* %5)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @ESP_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @TEST_ASSERT(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @TIMER_DELTA, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load double, double* %5, align 8
  %37 = call i32 @TEST_ASSERT_FLOAT_WITHIN(i32 %34, i32 %35, double %36)
  br label %38

38:                                               ; preds = %33, %22
  %39 = load i32, i32* @TIMER_GROUP_1, align 4
  %40 = load i32, i32* @TIMER_0, align 4
  %41 = call i64 @timer_get_counter_time_sec(i32 %39, i32 %40, double* %5)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @ESP_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @TEST_ASSERT(i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* @TIMER_DELTA, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load double, double* %5, align 8
  %53 = call i32 @TEST_ASSERT_FLOAT_WITHIN(i32 %50, i32 %51, double %52)
  br label %54

54:                                               ; preds = %49, %38
  %55 = load i32, i32* @TIMER_GROUP_1, align 4
  %56 = load i32, i32* @TIMER_1, align 4
  %57 = call i64 @timer_get_counter_time_sec(i32 %55, i32 %56, double* %5)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @ESP_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @TEST_ASSERT(i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* @TIMER_DELTA, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load double, double* %5, align 8
  %69 = call i32 @TEST_ASSERT_FLOAT_WITHIN(i32 %66, i32 %67, double %68)
  br label %70

70:                                               ; preds = %65, %54
  ret void
}

declare dso_local i64 @timer_get_counter_time_sec(i32, i32, double*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @TEST_ASSERT_FLOAT_WITHIN(i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
