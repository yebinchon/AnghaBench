; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_CanPullUp.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_CanPullUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PULL_UP_INVALID_FIRST = common dso_local global i64 0, align 8
@PUSH_DOWN_INVALID_FIRST = common dso_local global i64 0, align 8
@PUSH_DOWN_VALID = common dso_local global i64 0, align 8
@PULL_UP_VALID = common dso_local global i64 0, align 8
@PULL_UP_NOT_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @CanPullUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CanPullUp(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i64, i64* @PULL_UP_INVALID_FIRST, align 8
  store i64 %8, i64* %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32* @ParentNode(i32* %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @UnaryOperator(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @BinaryOperator(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load i64, i64* @PUSH_DOWN_INVALID_FIRST, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @Commutative(i32* %19, i32* %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @PUSH_DOWN_VALID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i64, i64* @PULL_UP_VALID, align 8
  store i64 %26, i64* %3, align 8
  br label %29

27:                                               ; preds = %17
  %28 = load i64, i64* @PULL_UP_NOT_VALID, align 8
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %27, %25
  br label %38

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = call i64 @Factorizable(i32* %34, i32* %35)
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %33, %30
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @PULL_UP_INVALID_FIRST, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i32* @ParentNode(i32*) #1

declare dso_local i32 @UnaryOperator(i32*) #1

declare dso_local i32 @BinaryOperator(i32*) #1

declare dso_local i64 @Commutative(i32*, i32*) #1

declare dso_local i64 @Factorizable(i32*, i32*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
