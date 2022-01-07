; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/deparser/extr_deparse.c_DeparseTreeNode.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/deparser/extr_deparse.c_DeparseTreeNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DropStmt = common dso_local global i32 0, align 4
@CompositeTypeStmt = common dso_local global i32 0, align 4
@CreateEnumStmt = common dso_local global i32 0, align 4
@AlterTableStmt = common dso_local global i32 0, align 4
@AlterEnumStmt = common dso_local global i32 0, align 4
@AlterFunctionStmt = common dso_local global i32 0, align 4
@RenameStmt = common dso_local global i32 0, align 4
@AlterObjectSchemaStmt = common dso_local global i32 0, align 4
@AlterOwnerStmt = common dso_local global i32 0, align 4
@AlterObjectDependsStmt = common dso_local global i32 0, align 4
@AlterRoleStmt = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unsupported statement for deparsing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @DeparseTreeNode(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i32 @nodeTag(i32* %4)
  switch i32 %5, label %61 [
    i32 129, label %6
    i32 131, label %11
    i32 130, label %16
    i32 132, label %21
    i32 138, label %26
    i32 137, label %31
    i32 128, label %36
    i32 135, label %41
    i32 134, label %46
    i32 136, label %51
    i32 133, label %56
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @DropStmt, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @castNode(i32 %7, i32* %8)
  %10 = call i8* @DeparseDropStmt(i32 %9)
  store i8* %10, i8** %2, align 8
  br label %65

11:                                               ; preds = %1
  %12 = load i32, i32* @CompositeTypeStmt, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @castNode(i32 %12, i32* %13)
  %15 = call i8* @DeparseCompositeTypeStmt(i32 %14)
  store i8* %15, i8** %2, align 8
  br label %65

16:                                               ; preds = %1
  %17 = load i32, i32* @CreateEnumStmt, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @castNode(i32 %17, i32* %18)
  %20 = call i8* @DeparseCreateEnumStmt(i32 %19)
  store i8* %20, i8** %2, align 8
  br label %65

21:                                               ; preds = %1
  %22 = load i32, i32* @AlterTableStmt, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @castNode(i32 %22, i32* %23)
  %25 = call i8* @DeparseAlterTableStmt(i32 %24)
  store i8* %25, i8** %2, align 8
  br label %65

26:                                               ; preds = %1
  %27 = load i32, i32* @AlterEnumStmt, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @castNode(i32 %27, i32* %28)
  %30 = call i8* @DeparseAlterEnumStmt(i32 %29)
  store i8* %30, i8** %2, align 8
  br label %65

31:                                               ; preds = %1
  %32 = load i32, i32* @AlterFunctionStmt, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @castNode(i32 %32, i32* %33)
  %35 = call i8* @DeparseAlterFunctionStmt(i32 %34)
  store i8* %35, i8** %2, align 8
  br label %65

36:                                               ; preds = %1
  %37 = load i32, i32* @RenameStmt, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @castNode(i32 %37, i32* %38)
  %40 = call i8* @DeparseRenameStmt(i32 %39)
  store i8* %40, i8** %2, align 8
  br label %65

41:                                               ; preds = %1
  %42 = load i32, i32* @AlterObjectSchemaStmt, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @castNode(i32 %42, i32* %43)
  %45 = call i8* @DeparseAlterObjectSchemaStmt(i32 %44)
  store i8* %45, i8** %2, align 8
  br label %65

46:                                               ; preds = %1
  %47 = load i32, i32* @AlterOwnerStmt, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @castNode(i32 %47, i32* %48)
  %50 = call i8* @DeparseAlterOwnerStmt(i32 %49)
  store i8* %50, i8** %2, align 8
  br label %65

51:                                               ; preds = %1
  %52 = load i32, i32* @AlterObjectDependsStmt, align 4
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @castNode(i32 %52, i32* %53)
  %55 = call i8* @DeparseAlterObjectDependsStmt(i32 %54)
  store i8* %55, i8** %2, align 8
  br label %65

56:                                               ; preds = %1
  %57 = load i32, i32* @AlterRoleStmt, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @castNode(i32 %57, i32* %58)
  %60 = call i8* @DeparseAlterRoleStmt(i32 %59)
  store i8* %60, i8** %2, align 8
  br label %65

61:                                               ; preds = %1
  %62 = load i32, i32* @ERROR, align 4
  %63 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %64 = call i32 @ereport(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %6, %11, %16, %21, %26, %31, %36, %41, %46, %51, %56, %61
  %66 = load i8*, i8** %2, align 8
  ret i8* %66
}

declare dso_local i32 @nodeTag(i32*) #1

declare dso_local i8* @DeparseDropStmt(i32) #1

declare dso_local i32 @castNode(i32, i32*) #1

declare dso_local i8* @DeparseCompositeTypeStmt(i32) #1

declare dso_local i8* @DeparseCreateEnumStmt(i32) #1

declare dso_local i8* @DeparseAlterTableStmt(i32) #1

declare dso_local i8* @DeparseAlterEnumStmt(i32) #1

declare dso_local i8* @DeparseAlterFunctionStmt(i32) #1

declare dso_local i8* @DeparseRenameStmt(i32) #1

declare dso_local i8* @DeparseAlterObjectSchemaStmt(i32) #1

declare dso_local i8* @DeparseAlterOwnerStmt(i32) #1

declare dso_local i8* @DeparseAlterObjectDependsStmt(i32) #1

declare dso_local i8* @DeparseAlterRoleStmt(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
