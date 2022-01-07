; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_atomic_test_and_set32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_atomic_test_and_set32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32, i32, i64)* @atomic_test_and_set32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atomic_test_and_set32(i32* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  br label %14

14:                                               ; preds = %43, %5
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @atomic_exchange_begin32(i32* %15, i32* %13, i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (...) @wait_for_event()
  br label %29

27:                                               ; preds = %22
  %28 = call i32 (...) @atomic_exchange_abort()
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %6, align 8
  br label %44

31:                                               ; preds = %14
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %12, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %12, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @atomic_exchange_complete32(i32* %35, i32 %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i64, i64* @TRUE, align 8
  store i64 %42, i64* %6, align 8
  br label %44

43:                                               ; preds = %31
  br label %14

44:                                               ; preds = %41, %29
  %45 = load i64, i64* %6, align 8
  ret i64 %45
}

declare dso_local i32 @atomic_exchange_begin32(i32*, i32*, i32) #1

declare dso_local i32 @wait_for_event(...) #1

declare dso_local i32 @atomic_exchange_abort(...) #1

declare dso_local i64 @atomic_exchange_complete32(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
