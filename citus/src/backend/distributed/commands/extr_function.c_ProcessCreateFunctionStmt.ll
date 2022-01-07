; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_ProcessCreateFunctionStmt.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_ProcessCreateFunctionStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@DISABLE_DDL_PROPAGATION = common dso_local global i32 0, align 4
@ENABLE_DDL_PROPAGATION = common dso_local global i32 0, align 4
@ALL_WORKERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ProcessCreateFunctionStmt(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  %8 = load i32*, i32** @NIL, align 8
  store i32* %8, i32** %7, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @ShouldPropagateCreateFunction(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** @NIL, align 8
  store i32* %13, i32** %3, align 8
  br label %33

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.TYPE_4__* @GetObjectAddressFromParseTree(i32* %15, i32 0)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %6, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = call i32 @EnsureDependenciesExistsOnAllNodes(%struct.TYPE_4__* %17)
  %19 = load i32, i32* @DISABLE_DDL_PROPAGATION, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @GetFunctionDDLCommand(i32 %22, i32 1)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @GetFunctionAlterOwnerCommand(i32 %26)
  %28 = load i32, i32* @ENABLE_DDL_PROPAGATION, align 4
  %29 = call i32* @list_make4(i32 %19, i32 %23, i32 %27, i32 %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32, i32* @ALL_WORKERS, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32* @NodeDDLTaskList(i32 %30, i32* %31)
  store i32* %32, i32** %3, align 8
  br label %33

33:                                               ; preds = %14, %12
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

declare dso_local i32 @ShouldPropagateCreateFunction(i32*) #1

declare dso_local %struct.TYPE_4__* @GetObjectAddressFromParseTree(i32*, i32) #1

declare dso_local i32 @EnsureDependenciesExistsOnAllNodes(%struct.TYPE_4__*) #1

declare dso_local i32* @list_make4(i32, i32, i32, i32) #1

declare dso_local i32 @GetFunctionDDLCommand(i32, i32) #1

declare dso_local i32 @GetFunctionAlterOwnerCommand(i32) #1

declare dso_local i32* @NodeDDLTaskList(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
