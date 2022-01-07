; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_PlanAlterTypeOwnerStmt.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_PlanAlterTypeOwnerStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@OBJECT_TYPE = common dso_local global i64 0, align 8
@NIL = common dso_local global i32* null, align 8
@DISABLE_DDL_PROPAGATION = common dso_local global i32 0, align 4
@ENABLE_DDL_PROPAGATION = common dso_local global i32 0, align 4
@ALL_WORKERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PlanAlterTypeOwnerStmt(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  store i8* null, i8** %7, align 8
  store i32* null, i32** %8, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OBJECT_TYPE, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @Assert(i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = bitcast %struct.TYPE_3__* %16 to i32*
  %18 = call i32* @GetObjectAddressFromParseTree(i32* %17, i32 0)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @ShouldPropagateAlterType(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32*, i32** @NIL, align 8
  store i32* %23, i32** %3, align 8
  br label %40

24:                                               ; preds = %2
  %25 = call i32 (...) @EnsureCoordinator()
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = bitcast %struct.TYPE_3__* %26 to i32*
  %28 = call i32 @QualifyTreeNode(i32* %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = bitcast %struct.TYPE_3__* %29 to i32*
  %31 = call i8* @DeparseTreeNode(i32* %30)
  store i8* %31, i8** %7, align 8
  %32 = call i32 (...) @EnsureSequentialModeForTypeDDL()
  %33 = load i32, i32* @DISABLE_DDL_PROPAGATION, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @ENABLE_DDL_PROPAGATION, align 4
  %36 = call i32* @list_make3(i32 %33, i8* %34, i32 %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32, i32* @ALL_WORKERS, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32* @NodeDDLTaskList(i32 %37, i32* %38)
  store i32* %39, i32** %3, align 8
  br label %40

40:                                               ; preds = %24, %22
  %41 = load i32*, i32** %3, align 8
  ret i32* %41
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @GetObjectAddressFromParseTree(i32*, i32) #1

declare dso_local i32 @ShouldPropagateAlterType(i32*) #1

declare dso_local i32 @EnsureCoordinator(...) #1

declare dso_local i32 @QualifyTreeNode(i32*) #1

declare dso_local i8* @DeparseTreeNode(i32*) #1

declare dso_local i32 @EnsureSequentialModeForTypeDDL(...) #1

declare dso_local i32* @list_make3(i32, i8*, i32) #1

declare dso_local i32* @NodeDDLTaskList(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
