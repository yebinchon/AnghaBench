; ModuleID = '/home/carl/AnghaBench/TDengine/deps/pthread/extr_ptw32_getprocessors.c_ptw32_getprocessors.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/pthread/extr_ptw32_getprocessors.c_ptw32_getprocessors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptw32_getprocessors(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  %8 = call i32 (...) @GetCurrentProcess()
  %9 = call i64 @GetProcessAffinityMask(i32 %8, i32* %3, i32* %4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %12

12:                                               ; preds = %24, %11
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %15
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %12

27:                                               ; preds = %12
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %2, align 8
  store i32 %28, i32* %29, align 4
  br label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @EAGAIN, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i64 @GetProcessAffinityMask(i32, i32*, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
