; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_PlanAlterFunctionSchemaStmt.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_PlanAlterFunctionSchemaStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@DISABLE_DDL_PROPAGATION = common dso_local global i32 0, align 4
@ENABLE_DDL_PROPAGATION = common dso_local global i32 0, align 4
@ALL_WORKERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PlanAlterFunctionSchemaStmt(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32* null, i32** %7, align 8
  %9 = load i32*, i32** @NIL, align 8
  store i32* %9, i32** %8, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @AssertObjectTypeIsFunctional(i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = bitcast %struct.TYPE_3__* %14 to i32*
  %16 = call i32* @GetObjectAddressFromParseTree(i32* %15, i32 0)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @ShouldPropagateAlterFunction(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32*, i32** @NIL, align 8
  store i32* %21, i32** %3, align 8
  br label %38

22:                                               ; preds = %2
  %23 = call i32 (...) @EnsureCoordinator()
  %24 = call i32 (...) @EnsureSequentialModeForFunctionDDL()
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = bitcast %struct.TYPE_3__* %25 to i32*
  %27 = call i32 @QualifyTreeNode(i32* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = bitcast %struct.TYPE_3__* %28 to i32*
  %30 = call i8* @DeparseTreeNode(i32* %29)
  store i8* %30, i8** %6, align 8
  %31 = load i32, i32* @DISABLE_DDL_PROPAGATION, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @ENABLE_DDL_PROPAGATION, align 4
  %34 = call i32* @list_make3(i32 %31, i8* %32, i32 %33)
  store i32* %34, i32** %8, align 8
  %35 = load i32, i32* @ALL_WORKERS, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @NodeDDLTaskList(i32 %35, i32* %36)
  store i32* %37, i32** %3, align 8
  br label %38

38:                                               ; preds = %22, %20
  %39 = load i32*, i32** %3, align 8
  ret i32* %39
}

declare dso_local i32 @AssertObjectTypeIsFunctional(i32) #1

declare dso_local i32* @GetObjectAddressFromParseTree(i32*, i32) #1

declare dso_local i32 @ShouldPropagateAlterFunction(i32*) #1

declare dso_local i32 @EnsureCoordinator(...) #1

declare dso_local i32 @EnsureSequentialModeForFunctionDDL(...) #1

declare dso_local i32 @QualifyTreeNode(i32*) #1

declare dso_local i8* @DeparseTreeNode(i32*) #1

declare dso_local i32* @list_make3(i32, i8*, i32) #1

declare dso_local i32* @NodeDDLTaskList(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
