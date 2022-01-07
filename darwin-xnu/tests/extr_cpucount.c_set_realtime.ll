; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_cpucount.c_set_realtime.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_cpucount.c_set_realtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i8*, i8* }

@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"pthread_mach_thread_np\00", align 1
@THREAD_TIME_CONSTRAINT_POLICY = common dso_local global i32 0, align 4
@THREAD_TIME_CONSTRAINT_POLICY_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"thread_policy_set(THREAD_TIME_CONSTRAINT_POLICY)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_realtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_realtime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @pthread_mach_thread_np(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @T_QUIET, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @T_ASSERT_NOTNULL(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = call i64 @nanos_to_abs(i32 1000000000)
  %12 = inttoptr i64 %11 to i8*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 3
  store i8* %12, i8** %13, align 8
  %14 = call i64 @nanos_to_abs(i32 100000000)
  %15 = inttoptr i64 %14 to i8*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  store i8* %15, i8** %16, align 8
  %17 = call i64 @nanos_to_abs(i32 10000000)
  %18 = inttoptr i64 %17 to i8*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @THREAD_TIME_CONSTRAINT_POLICY, align 4
  %23 = ptrtoint %struct.TYPE_2__* %4 to i32
  %24 = load i32, i32* @THREAD_TIME_CONSTRAINT_POLICY_COUNT, align 4
  %25 = call i32 @thread_policy_set(i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @T_QUIET, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %27, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pthread_mach_thread_np(i32) #1

declare dso_local i32 @T_ASSERT_NOTNULL(i32, i8*) #1

declare dso_local i64 @nanos_to_abs(i32) #1

declare dso_local i32 @thread_policy_set(i32, i32, i32, i32) #1

declare dso_local i32 @T_ASSERT_MACH_SUCCESS(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
