; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_priority.c__pthread_priority_normalize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_priority.c__pthread_priority_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PTHREAD_PRIORITY_EVENT_MANAGER_FLAG = common dso_local global i32 0, align 4
@QOS_MIN_RELATIVE_PRIORITY = common dso_local global i32 0, align 4
@_PTHREAD_PRIORITY_PRIORITY_MASK = common dso_local global i32 0, align 4
@_PTHREAD_PRIORITY_OVERCOMMIT_FLAG = common dso_local global i32 0, align 4
@_PTHREAD_PRIORITY_FALLBACK_FLAG = common dso_local global i32 0, align 4
@_PTHREAD_PRIORITY_QOS_CLASS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_priority_normalize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @_PTHREAD_PRIORITY_EVENT_MANAGER_FLAG, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @_PTHREAD_PRIORITY_EVENT_MANAGER_FLAG, align 4
  store i32 %10, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @_pthread_priority_has_qos(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @_pthread_priority_relpri(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @QOS_MIN_RELATIVE_PRIORITY, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20, %15
  %25 = load i32, i32* @_PTHREAD_PRIORITY_PRIORITY_MASK, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @_PTHREAD_PRIORITY_OVERCOMMIT_FLAG, align 4
  %31 = load i32, i32* @_PTHREAD_PRIORITY_FALLBACK_FLAG, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @_PTHREAD_PRIORITY_QOS_CLASS_MASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @_PTHREAD_PRIORITY_PRIORITY_MASK, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %29, %36
  store i32 %37, i32* %2, align 4
  br label %40

38:                                               ; preds = %11
  %39 = call i32 (...) @_pthread_unspecified_priority()
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %28, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @_pthread_priority_has_qos(i32) #1

declare dso_local i32 @_pthread_priority_relpri(i32) #1

declare dso_local i32 @_pthread_unspecified_priority(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
