; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_GetCallStack.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_GetCallStack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_not_get_callstack = common dso_local global i64 0, align 8
@cs_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetCallStack() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i64, i64* @do_not_get_callstack, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %19

6:                                                ; preds = %0
  %7 = load i32, i32* @cs_lock, align 4
  %8 = call i32 @OSLock(i32 %7)
  %9 = call i32* (...) @OSGetCallStack()
  store i32* %9, i32** %2, align 8
  %10 = load i32, i32* @cs_lock, align 4
  %11 = call i32 @OSUnlock(i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  store i32* null, i32** %1, align 8
  br label %19

15:                                               ; preds = %6
  %16 = load i32*, i32** %2, align 8
  %17 = call i32* @WalkDownCallStack(i32* %16, i32 3)
  store i32* %17, i32** %2, align 8
  %18 = load i32*, i32** %2, align 8
  store i32* %18, i32** %1, align 8
  br label %19

19:                                               ; preds = %15, %14, %5
  %20 = load i32*, i32** %1, align 8
  ret i32* %20
}

declare dso_local i32 @OSLock(i32) #1

declare dso_local i32* @OSGetCallStack(...) #1

declare dso_local i32 @OSUnlock(i32) #1

declare dso_local i32* @WalkDownCallStack(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
