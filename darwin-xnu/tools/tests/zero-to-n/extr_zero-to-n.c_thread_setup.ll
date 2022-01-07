; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/zero-to-n/extr_zero-to-n.c_thread_setup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/zero-to-n/extr_zero-to-n.c_thread_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.sched_param = type { i32 }
%struct.TYPE_4__ = type { i32 }

@g_priority = common dso_local global i64 0, align 8
@SCHED_OTHER = common dso_local global i32 0, align 4
@g_policy = common dso_local global i32 0, align 4
@SCHED_RR = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pthread_setschedparam: %d\00", align 1
@CONSTRAINT_NANOS = common dso_local global i32 0, align 4
@COMPUTATION_NANOS = common dso_local global i32 0, align 4
@THREAD_TIME_CONSTRAINT_POLICY = common dso_local global i32 0, align 4
@THREAD_TIME_CONSTRAINT_POLICY_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"pthread_set_fixedpriority_self\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid policy type %d\00", align 1
@g_do_affinity = common dso_local global i64 0, align 8
@THREAD_AFFINITY_POLICY = common dso_local global i32 0, align 4
@THREAD_AFFINITY_POLICY_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @thread_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sched_param, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i64, i64* @g_priority, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load i32, i32* @SCHED_OTHER, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @g_policy, align 4
  %14 = icmp eq i32 %13, 130
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @SCHED_RR, align 4
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %7, i32 0, i32 0
  %19 = load i64, i64* @g_priority, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %18, align 4
  %21 = call i32 (...) @pthread_self()
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @pthread_setschedparam(i32 %21, i32 %22, %struct.sched_param* %7)
  store i32 %23, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load i32, i32* @EX_OSERR, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i32 (i32, i32, i8*, ...) @errc(i32 %26, i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %17
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i32, i32* @g_policy, align 4
  switch i32 %32, label %60 [
    i32 128, label %33
    i32 129, label %34
    i32 130, label %51
  ]

33:                                               ; preds = %31
  br label %64

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 100000, i32* %35, align 4
  %36 = load i32, i32* @CONSTRAINT_NANOS, align 4
  %37 = call i32 @nanos_to_abs(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @COMPUTATION_NANOS, align 4
  %40 = call i32 @nanos_to_abs(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store i32 0, i32* %42, align 4
  %43 = call i32 (...) @mach_thread_self()
  %44 = load i32, i32* @THREAD_TIME_CONSTRAINT_POLICY, align 4
  %45 = ptrtoint %struct.TYPE_3__* %5 to i32
  %46 = load i32, i32* @THREAD_TIME_CONSTRAINT_POLICY_COUNT, align 4
  %47 = call i32 @thread_policy_set(i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @mach_assert_zero_t(i32 %48, i32 %49)
  br label %64

51:                                               ; preds = %31
  %52 = call i32 (...) @pthread_set_fixedpriority_self()
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @EX_OSERR, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 (i32, i32, i8*, ...) @errc(i32 %56, i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %51
  br label %64

60:                                               ; preds = %31
  %61 = load i32, i32* @EX_USAGE, align 4
  %62 = load i32, i32* @g_policy, align 4
  %63 = call i32 @errx(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %59, %34, %33
  %65 = load i64, i64* @g_do_affinity, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load i32, i32* %2, align 4
  %69 = srem i32 %68, 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = call i32 (...) @mach_thread_self()
  %72 = load i32, i32* @THREAD_AFFINITY_POLICY, align 4
  %73 = ptrtoint %struct.TYPE_4__* %8 to i32
  %74 = load i32, i32* @THREAD_AFFINITY_POLICY_COUNT, align 4
  %75 = call i32 @thread_policy_set(i32 %71, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @mach_assert_zero_t(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %67, %64
  ret i32 0
}

declare dso_local i32 @pthread_setschedparam(i32, i32, %struct.sched_param*) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @errc(i32, i32, i8*, ...) #1

declare dso_local i32 @nanos_to_abs(i32) #1

declare dso_local i32 @thread_policy_set(i32, i32, i32, i32) #1

declare dso_local i32 @mach_thread_self(...) #1

declare dso_local i32 @mach_assert_zero_t(i32, i32) #1

declare dso_local i32 @pthread_set_fixedpriority_self(...) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
