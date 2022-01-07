; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/affinity/extr_pool.c_affinity_set.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/affinity/extr_pool.c_affinity_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@affinity = common dso_local global i64 0, align 8
@THREAD_AFFINITY_POLICY = common dso_local global i32 0, align 4
@THREAD_AFFINITY_POLICY_COUNT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"thread_policy_set(THREAD_AFFINITY_POLICY) returned %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @affinity_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_2__, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @affinity, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = call i32 (...) @mach_thread_self()
  %11 = load i32, i32* @THREAD_AFFINITY_POLICY, align 4
  %12 = ptrtoint %struct.TYPE_2__* %4 to i32
  %13 = load i32, i32* @THREAD_AFFINITY_POLICY_COUNT, align 4
  %14 = call i64 @thread_policy_set(i32 %10, i32 %11, i32 %12, i32 %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @KERN_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %7
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %21

21:                                               ; preds = %18, %7
  br label %22

22:                                               ; preds = %21, %1
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
