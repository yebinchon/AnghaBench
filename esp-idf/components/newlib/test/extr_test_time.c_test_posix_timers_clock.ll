; ModuleID = '/home/carl/AnghaBench/esp-idf/components/newlib/test/extr_test_time.c_test_posix_timers_clock.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/newlib/test/extr_test_time.c_test_posix_timers_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64, i32 }

@.str = private unnamed_addr constant [31 x i8] c"_POSIX_TIMERS - is not defined\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Internal Frequency = %d Hz\0A\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_posix_timers_clock() #0 {
  %1 = alloca %struct.timespec, align 8
  %2 = call i32 @TEST_ASSERT_MESSAGE(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %3 = call i64 (...) @rtc_clk_slow_freq_get_hz()
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %3)
  %5 = load i32, i32* @CLOCK_REALTIME, align 4
  %6 = call i32 @clock_settime(i32 %5, %struct.timespec* null)
  %7 = icmp eq i32 %6, -1
  %8 = zext i1 %7 to i32
  %9 = call i32 @TEST_ASSERT(i32 %8)
  %10 = load i32, i32* @CLOCK_REALTIME, align 4
  %11 = call i32 @clock_gettime(i32 %10, %struct.timespec* null)
  %12 = icmp eq i32 %11, -1
  %13 = zext i1 %12 to i32
  %14 = call i32 @TEST_ASSERT(i32 %13)
  %15 = load i32, i32* @CLOCK_REALTIME, align 4
  %16 = call i32 @clock_getres(i32 %15, %struct.timespec* null)
  %17 = icmp eq i32 %16, -1
  %18 = zext i1 %17 to i32
  %19 = call i32 @TEST_ASSERT(i32 %18)
  %20 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %21 = call i32 @clock_settime(i32 %20, %struct.timespec* null)
  %22 = icmp eq i32 %21, -1
  %23 = zext i1 %22 to i32
  %24 = call i32 @TEST_ASSERT(i32 %23)
  %25 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %26 = call i32 @clock_gettime(i32 %25, %struct.timespec* null)
  %27 = icmp eq i32 %26, -1
  %28 = zext i1 %27 to i32
  %29 = call i32 @TEST_ASSERT(i32 %28)
  %30 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %31 = call i32 @clock_getres(i32 %30, %struct.timespec* null)
  %32 = icmp eq i32 %31, -1
  %33 = zext i1 %32 to i32
  %34 = call i32 @TEST_ASSERT(i32 %33)
  %35 = bitcast %struct.timespec* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 24, i1 false)
  %36 = load i32, i32* @CLOCK_REALTIME, align 4
  %37 = call i32 @clock_settime(i32 %36, %struct.timespec* %1)
  %38 = icmp eq i32 %37, -1
  %39 = zext i1 %38 to i32
  %40 = call i32 @TEST_ASSERT(i32 %39)
  %41 = load i32, i32* @CLOCK_REALTIME, align 4
  %42 = call i32 @clock_gettime(i32 %41, %struct.timespec* %1)
  %43 = icmp eq i32 %42, -1
  %44 = zext i1 %43 to i32
  %45 = call i32 @TEST_ASSERT(i32 %44)
  %46 = load i32, i32* @CLOCK_REALTIME, align 4
  %47 = call i32 @clock_getres(i32 %46, %struct.timespec* %1)
  %48 = icmp eq i32 %47, -1
  %49 = zext i1 %48 to i32
  %50 = call i32 @TEST_ASSERT(i32 %49)
  %51 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %52 = call i32 @clock_settime(i32 %51, %struct.timespec* %1)
  %53 = icmp eq i32 %52, -1
  %54 = zext i1 %53 to i32
  %55 = call i32 @TEST_ASSERT(i32 %54)
  %56 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %57 = call i32 @clock_gettime(i32 %56, %struct.timespec* %1)
  %58 = icmp eq i32 %57, -1
  %59 = zext i1 %58 to i32
  %60 = call i32 @TEST_ASSERT(i32 %59)
  %61 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %62 = call i32 @clock_getres(i32 %61, %struct.timespec* %1)
  %63 = icmp eq i32 %62, -1
  %64 = zext i1 %63 to i32
  %65 = call i32 @TEST_ASSERT(i32 %64)
  ret void
}

declare dso_local i32 @TEST_ASSERT_MESSAGE(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @rtc_clk_slow_freq_get_hz(...) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @clock_settime(i32, %struct.timespec*) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @clock_getres(i32, %struct.timespec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
