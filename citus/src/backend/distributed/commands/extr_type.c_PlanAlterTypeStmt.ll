; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_PlanAlterTypeStmt.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_PlanAlterTypeStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@NIL = common dso_local global i32* null, align 8
@OBJECT_TYPE = common dso_local global i64 0, align 8
@DISABLE_DDL_PROPAGATION = common dso_local global i32 0, align 4
@ENABLE_DDL_PROPAGATION = common dso_local global i32 0, align 4
@ALL_WORKERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PlanAlterTypeStmt(%struct.TYPE_3__* %0, i8* %1) #0 {
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
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OBJECT_TYPE, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = bitcast %struct.TYPE_3__* %17 to i32*
  %19 = call i32* @GetObjectAddressFromParseTree(i32* %18, i32 0)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @ShouldPropagateAlterType(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32*, i32** @NIL, align 8
  store i32* %24, i32** %3, align 8
  br label %41

25:                                               ; preds = %2
  %26 = call i32 (...) @EnsureCoordinator()
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = bitcast %struct.TYPE_3__* %27 to i32*
  %29 = call i32 @QualifyTreeNode(i32* %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = bitcast %struct.TYPE_3__* %30 to i32*
  %32 = call i8* @DeparseTreeNode(i32* %31)
  store i8* %32, i8** %6, align 8
  %33 = call i32 (...) @EnsureSequentialModeForTypeDDL()
  %34 = load i32, i32* @DISABLE_DDL_PROPAGATION, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @ENABLE_DDL_PROPAGATION, align 4
  %37 = call i32* @list_make3(i32 %34, i8* %35, i32 %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32, i32* @ALL_WORKERS, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i32* @NodeDDLTaskList(i32 %38, i32* %39)
  store i32* %40, i32** %3, align 8
  br label %41

41:                                               ; preds = %25, %23
  %42 = load i32*, i32** %3, align 8
  ret i32* %42
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
