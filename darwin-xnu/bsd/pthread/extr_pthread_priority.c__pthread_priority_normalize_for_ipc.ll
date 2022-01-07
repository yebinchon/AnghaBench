; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_priority.c__pthread_priority_normalize_for_ipc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_priority.c__pthread_priority_normalize_for_ipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QOS_MIN_RELATIVE_PRIORITY = common dso_local global i32 0, align 4
@_PTHREAD_PRIORITY_PRIORITY_MASK = common dso_local global i32 0, align 4
@_PTHREAD_PRIORITY_QOS_CLASS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_priority_normalize_for_ipc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @_pthread_priority_has_qos(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @_pthread_priority_relpri(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @QOS_MIN_RELATIVE_PRIORITY, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %8
  %18 = load i32, i32* @_PTHREAD_PRIORITY_PRIORITY_MASK, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @_PTHREAD_PRIORITY_QOS_CLASS_MASK, align 4
  %24 = load i32, i32* @_PTHREAD_PRIORITY_PRIORITY_MASK, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %1
  %28 = call i32 (...) @_pthread_unspecified_priority()
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* %2, align 4
  ret i32 %30
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
