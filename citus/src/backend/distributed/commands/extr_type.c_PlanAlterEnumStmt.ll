; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_PlanAlterEnumStmt.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_PlanAlterEnumStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@DISABLE_DDL_PROPAGATION = common dso_local global i32 0, align 4
@ENABLE_DDL_PROPAGATION = common dso_local global i32 0, align 4
@ALL_WORKERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PlanAlterEnumStmt(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32* null, i32** %7, align 8
  %9 = load i32*, i32** @NIL, align 8
  store i32* %9, i32** %8, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @GetObjectAddressFromParseTree(i32* %10, i32 0)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @ShouldPropagateAlterType(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** @NIL, align 8
  store i32* %16, i32** %3, align 8
  br label %37

17:                                               ; preds = %2
  %18 = call i32 (...) @EnsureSequentialModeForTypeDDL()
  %19 = call i32 (...) @EnsureCoordinator()
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @QualifyTreeNode(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i8* @DeparseTreeNode(i32* %22)
  store i8* %23, i8** %6, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @AlterEnumIsAddValue(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32*, i32** @NIL, align 8
  store i32* %28, i32** %3, align 8
  br label %37

29:                                               ; preds = %17
  %30 = load i32, i32* @DISABLE_DDL_PROPAGATION, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @ENABLE_DDL_PROPAGATION, align 4
  %33 = call i32* @list_make3(i32 %30, i8* %31, i32 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32, i32* @ALL_WORKERS, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @NodeDDLTaskList(i32 %34, i32* %35)
  store i32* %36, i32** %3, align 8
  br label %37

37:                                               ; preds = %29, %27, %15
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i32* @GetObjectAddressFromParseTree(i32*, i32) #1

declare dso_local i32 @ShouldPropagateAlterType(i32*) #1

declare dso_local i32 @EnsureSequentialModeForTypeDDL(...) #1

declare dso_local i32 @EnsureCoordinator(...) #1

declare dso_local i32 @QualifyTreeNode(i32*) #1

declare dso_local i8* @DeparseTreeNode(i32*) #1

declare dso_local i64 @AlterEnumIsAddValue(i32*) #1

declare dso_local i32* @list_make3(i32, i8*, i32) #1

declare dso_local i32* @NodeDDLTaskList(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
