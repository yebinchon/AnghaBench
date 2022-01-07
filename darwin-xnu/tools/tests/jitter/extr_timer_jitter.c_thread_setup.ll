; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/jitter/extr_timer_jitter.c_thread_setup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/jitter/extr_timer_jitter.c_thread_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@CONSTRAINT_NANOS = common dso_local global i32 0, align 4
@g_mti = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@COMPUTATION_NANOS = common dso_local global i32 0, align 4
@THREAD_TIME_CONSTRAINT_POLICY = common dso_local global i32 0, align 4
@THREAD_TIME_CONSTRAINT_POLICY_COUNT = common dso_local global i32 0, align 4
@fail = common dso_local global i32 0, align 4
@THREAD_EXTENDED_POLICY = common dso_local global i32 0, align 4
@THREAD_EXTENDED_POLICY_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid policy type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %46 [
    i32 128, label %8
    i32 129, label %9
    i32 130, label %34
  ]

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 100000, i32* %10, align 4
  %11 = load i32, i32* @CONSTRAINT_NANOS, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_mti, i32 0, i32 0), align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_mti, i32 0, i32 1), align 4
  %15 = sdiv i32 %13, %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @COMPUTATION_NANOS, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_mti, i32 0, i32 0), align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_mti, i32 0, i32 1), align 4
  %21 = sdiv i32 %19, %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = call i32 (...) @mach_thread_self()
  %25 = load i32, i32* @THREAD_TIME_CONSTRAINT_POLICY, align 4
  %26 = ptrtoint %struct.TYPE_4__* %5 to i32
  %27 = load i32, i32* @THREAD_TIME_CONSTRAINT_POLICY_COUNT, align 4
  %28 = call i32 @thread_policy_set(i32 %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* @fail, align 4
  %33 = call i32 @assert(i32 %31, i32 %32)
  br label %48

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = call i32 (...) @mach_thread_self()
  %37 = load i32, i32* @THREAD_EXTENDED_POLICY, align 4
  %38 = ptrtoint %struct.TYPE_5__* %6 to i32
  %39 = load i32, i32* @THREAD_EXTENDED_POLICY_COUNT, align 4
  %40 = call i32 @thread_policy_set(i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* @fail, align 4
  %45 = call i32 @assert(i32 %43, i32 %44)
  br label %48

46:                                               ; preds = %1
  %47 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %50

48:                                               ; preds = %34, %9
  store i32 0, i32* %2, align 4
  br label %50

49:                                               ; No predecessors!
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %48, %46, %8
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @thread_policy_set(i32, i32, i32, i32) #1

declare dso_local i32 @mach_thread_self(...) #1

declare dso_local i32 @assert(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
