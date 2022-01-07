; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_sleep.c_check_time_deepsleep.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_sleep.c_check_time_deepsleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.timeval = type { i32, i32 }

@DEEPSLEEP_RESET = common dso_local global i64 0, align 8
@start = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [18 x i8] c"delta time = %d \0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Time in deep sleep is negative\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_time_deepsleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_time_deepsleep() #0 {
  %1 = alloca %struct.timeval, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i64 @rtc_get_reset_reason(i32 0)
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @DEEPSLEEP_RESET, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @TEST_ASSERT(i32 %8)
  %10 = call i32 @gettimeofday(%struct.timeval* %1, i32* null)
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @start, i32 0, i32 0), align 4
  %14 = sub nsw i32 %12, %13
  %15 = mul nsw i32 %14, 1000
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @start, i32 0, i32 1), align 4
  %19 = sub nsw i32 %17, %18
  %20 = sdiv i32 %19, 1000
  %21 = add nsw i32 %15, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @TEST_ASSERT_MESSAGE(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i64 @rtc_get_reset_reason(i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @TEST_ASSERT_MESSAGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
