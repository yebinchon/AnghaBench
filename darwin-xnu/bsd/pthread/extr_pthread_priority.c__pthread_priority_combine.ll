; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_priority.c__pthread_priority_combine.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_priority.c__pthread_priority_combine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PTHREAD_PRIORITY_EVENT_MANAGER_FLAG = common dso_local global i32 0, align 4
@_PTHREAD_PRIORITY_FALLBACK_FLAG = common dso_local global i32 0, align 4
@_PTHREAD_PRIORITY_OVERCOMMIT_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_priority_combine(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @_PTHREAD_PRIORITY_EVENT_MANAGER_FLAG, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @_PTHREAD_PRIORITY_EVENT_MANAGER_FLAG, align 4
  store i32 %11, i32* %3, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @_PTHREAD_PRIORITY_FALLBACK_FLAG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %3, align 4
  br label %37

22:                                               ; preds = %17
  br label %31

23:                                               ; preds = %12
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @_pthread_priority_thread_qos(i32 %25)
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %3, align 4
  br label %37

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @_PTHREAD_PRIORITY_OVERCOMMIT_FLAG, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @_pthread_priority_make_from_thread_qos(i64 %32, i32 0, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %28, %20, %10
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @_pthread_priority_thread_qos(i32) #1

declare dso_local i32 @_pthread_priority_make_from_thread_qos(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
