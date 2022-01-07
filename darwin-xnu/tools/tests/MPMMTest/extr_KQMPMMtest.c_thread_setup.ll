; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_KQMPMMtest.c_thread_setup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_KQMPMMtest.c_thread_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@timeshare = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@THREAD_EXTENDED_POLICY = common dso_local global i32 0, align 4
@THREAD_EXTENDED_POLICY_COUNT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"thread_policy_set(THREAD_EXTENDED_POLICY) returned %d\0A\00", align 1
@affinity = common dso_local global i64 0, align 8
@THREAD_AFFINITY_POLICY = common dso_local global i32 0, align 4
@THREAD_AFFINITY_POLICY_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"thread_policy_set(THREAD_AFFINITY_POLICY) returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @thread_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @timeshare, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @FALSE, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = call i32 (...) @mach_thread_self()
  %12 = load i32, i32* @THREAD_EXTENDED_POLICY, align 4
  %13 = ptrtoint %struct.TYPE_3__* %4 to i32
  %14 = load i32, i32* @THREAD_EXTENDED_POLICY_COUNT, align 4
  %15 = call i64 @thread_policy_set(i32 %11, i32 %12, i32 %13, i32 %14)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @KERN_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %8
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %22

22:                                               ; preds = %19, %8
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i64, i64* @affinity, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = call i32 (...) @mach_thread_self()
  %30 = load i32, i32* @THREAD_AFFINITY_POLICY, align 4
  %31 = ptrtoint %struct.TYPE_4__* %5 to i32
  %32 = load i32, i32* @THREAD_AFFINITY_POLICY_COUNT, align 4
  %33 = call i64 @thread_policy_set(i32 %29, i32 %30, i32 %31, i32 %32)
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @KERN_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %37, %26
  br label %41

41:                                               ; preds = %40, %23
  ret void
}

declare dso_local i64 @thread_policy_set(i32, i32, i32, i32) #1

declare dso_local i32 @mach_thread_self(...) #1

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
