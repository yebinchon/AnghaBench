; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/deparser/extr_qualify.c_QualifyTreeNode.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/deparser/extr_qualify.c_QualifyTreeNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RenameStmt = common dso_local global i32 0, align 4
@AlterEnumStmt = common dso_local global i32 0, align 4
@AlterTableStmt = common dso_local global i32 0, align 4
@CompositeTypeStmt = common dso_local global i32 0, align 4
@CreateEnumStmt = common dso_local global i32 0, align 4
@AlterObjectSchemaStmt = common dso_local global i32 0, align 4
@AlterOwnerStmt = common dso_local global i32 0, align 4
@AlterFunctionStmt = common dso_local global i32 0, align 4
@AlterObjectDependsStmt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @QualifyTreeNode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @nodeTag(i32* %3)
  switch i32 %4, label %50 [
    i32 128, label %5
    i32 136, label %10
    i32 131, label %15
    i32 130, label %20
    i32 129, label %25
    i32 133, label %30
    i32 132, label %35
    i32 135, label %40
    i32 134, label %45
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @RenameStmt, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @castNode(i32 %6, i32* %7)
  %9 = call i32 @QualifyRenameStmt(i32 %8)
  br label %51

10:                                               ; preds = %1
  %11 = load i32, i32* @AlterEnumStmt, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @castNode(i32 %11, i32* %12)
  %14 = call i32 @QualifyAlterEnumStmt(i32 %13)
  br label %51

15:                                               ; preds = %1
  %16 = load i32, i32* @AlterTableStmt, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @castNode(i32 %16, i32* %17)
  %19 = call i32 @QualifyAlterTableStmt(i32 %18)
  br label %51

20:                                               ; preds = %1
  %21 = load i32, i32* @CompositeTypeStmt, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @castNode(i32 %21, i32* %22)
  %24 = call i32 @QualifyCompositeTypeStmt(i32 %23)
  br label %51

25:                                               ; preds = %1
  %26 = load i32, i32* @CreateEnumStmt, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @castNode(i32 %26, i32* %27)
  %29 = call i32 @QualifyCreateEnumStmt(i32 %28)
  br label %51

30:                                               ; preds = %1
  %31 = load i32, i32* @AlterObjectSchemaStmt, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @castNode(i32 %31, i32* %32)
  %34 = call i32 @QualifyAlterObjectSchemaStmt(i32 %33)
  br label %51

35:                                               ; preds = %1
  %36 = load i32, i32* @AlterOwnerStmt, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @castNode(i32 %36, i32* %37)
  %39 = call i32 @QualifyAlterOwnerStmt(i32 %38)
  br label %51

40:                                               ; preds = %1
  %41 = load i32, i32* @AlterFunctionStmt, align 4
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @castNode(i32 %41, i32* %42)
  %44 = call i32 @QualifyAlterFunctionStmt(i32 %43)
  br label %51

45:                                               ; preds = %1
  %46 = load i32, i32* @AlterObjectDependsStmt, align 4
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @castNode(i32 %46, i32* %47)
  %49 = call i32 @QualifyAlterObjectDependsStmt(i32 %48)
  br label %51

50:                                               ; preds = %1
  br label %51

51:                                               ; preds = %5, %10, %15, %20, %25, %30, %35, %40, %45, %50
  ret void
}

declare dso_local i32 @nodeTag(i32*) #1

declare dso_local i32 @QualifyRenameStmt(i32) #1

declare dso_local i32 @castNode(i32, i32*) #1

declare dso_local i32 @QualifyAlterEnumStmt(i32) #1

declare dso_local i32 @QualifyAlterTableStmt(i32) #1

declare dso_local i32 @QualifyCompositeTypeStmt(i32) #1

declare dso_local i32 @QualifyCreateEnumStmt(i32) #1

declare dso_local i32 @QualifyAlterObjectSchemaStmt(i32) #1

declare dso_local i32 @QualifyAlterOwnerStmt(i32) #1

declare dso_local i32 @QualifyAlterFunctionStmt(i32) #1

declare dso_local i32 @QualifyAlterObjectDependsStmt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
