; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_PlanCreateEnumStmt.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_PlanCreateEnumStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@DISABLE_DDL_PROPAGATION = common dso_local global i32 0, align 4
@ENABLE_DDL_PROPAGATION = common dso_local global i32 0, align 4
@ALL_WORKERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PlanCreateEnumStmt(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load i32*, i32** @NIL, align 8
  store i32* %8, i32** %7, align 8
  %9 = call i32 (...) @ShouldPropagateTypeCreate()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** @NIL, align 8
  store i32* %12, i32** %3, align 8
  br label %29

13:                                               ; preds = %2
  %14 = call i32 (...) @EnsureCoordinator()
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @QualifyTreeNode(i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i8* @DeparseCreateEnumStmt(i32* %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @WrapCreateOrReplace(i8* %19)
  store i8* %20, i8** %6, align 8
  %21 = call i32 (...) @EnsureSequentialModeForTypeDDL()
  %22 = load i32, i32* @DISABLE_DDL_PROPAGATION, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @ENABLE_DDL_PROPAGATION, align 4
  %25 = call i32* @list_make3(i32 %22, i8* %23, i32 %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32, i32* @ALL_WORKERS, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32* @NodeDDLTaskList(i32 %26, i32* %27)
  store i32* %28, i32** %3, align 8
  br label %29

29:                                               ; preds = %13, %11
  %30 = load i32*, i32** %3, align 8
  ret i32* %30
}

declare dso_local i32 @ShouldPropagateTypeCreate(...) #1

declare dso_local i32 @EnsureCoordinator(...) #1

declare dso_local i32 @QualifyTreeNode(i32*) #1

declare dso_local i8* @DeparseCreateEnumStmt(i32*) #1

declare dso_local i8* @WrapCreateOrReplace(i8*) #1

declare dso_local i32 @EnsureSequentialModeForTypeDDL(...) #1

declare dso_local i32* @list_make3(i32, i8*, i32) #1

declare dso_local i32* @NodeDDLTaskList(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
