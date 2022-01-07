; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_planner.c_UnaryOperator.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_planner.c_UnaryOperator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MultiTreeRoot = common dso_local global i32 0, align 4
@MultiTable = common dso_local global i32 0, align 4
@MultiCollect = common dso_local global i32 0, align 4
@MultiSelect = common dso_local global i32 0, align 4
@MultiProject = common dso_local global i32 0, align 4
@MultiPartition = common dso_local global i32 0, align 4
@MultiExtendedOp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UnaryOperator(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @MultiTreeRoot, align 4
  %6 = call i64 @CitusIsA(i32* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @MultiTable, align 4
  %11 = call i64 @CitusIsA(i32* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %8
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @MultiCollect, align 4
  %16 = call i64 @CitusIsA(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %13
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @MultiSelect, align 4
  %21 = call i64 @CitusIsA(i32* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @MultiProject, align 4
  %26 = call i64 @CitusIsA(i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @MultiPartition, align 4
  %31 = call i64 @CitusIsA(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @MultiExtendedOp, align 4
  %36 = call i64 @CitusIsA(i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %28, %23, %18, %13, %8, %1
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @CitusIsA(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
