; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_router_planner.c_MasterIrreducibleExpressionFunctionChecker.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_router_planner.c_MasterIrreducibleExpressionFunctionChecker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROVOLATILE_VOLATILE = common dso_local global i8 0, align 1
@PROVOLATILE_STABLE = common dso_local global i8 0, align 1
@PROVOLATILE_IMMUTABLE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @MasterIrreducibleExpressionFunctionChecker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MasterIrreducibleExpressionFunctionChecker(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call signext i8 @func_volatile(i32 %7)
  store i8 %8, i8* %5, align 1
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8, i8* %5, align 1
  %11 = sext i8 %10 to i32
  %12 = load i8, i8* @PROVOLATILE_VOLATILE, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* @PROVOLATILE_VOLATILE, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15, %2
  %23 = load i8, i8* @PROVOLATILE_VOLATILE, align 1
  %24 = load i8*, i8** %6, align 8
  store i8 %23, i8* %24, align 1
  br label %45

25:                                               ; preds = %15
  %26 = load i8, i8* %5, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @PROVOLATILE_STABLE, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* @PROVOLATILE_STABLE, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31, %25
  %39 = load i8, i8* @PROVOLATILE_STABLE, align 1
  %40 = load i8*, i8** %6, align 8
  store i8 %39, i8* %40, align 1
  br label %44

41:                                               ; preds = %31
  %42 = load i8, i8* @PROVOLATILE_IMMUTABLE, align 1
  %43 = load i8*, i8** %6, align 8
  store i8 %42, i8* %43, align 1
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %22
  %46 = load i8, i8* %5, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* @PROVOLATILE_VOLATILE, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  %51 = zext i1 %50 to i32
  ret i32 %51
}

declare dso_local signext i8 @func_volatile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
